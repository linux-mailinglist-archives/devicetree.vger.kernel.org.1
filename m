Return-Path: <devicetree+bounces-105183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A5898551C
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 10:07:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 62B2BB22ADA
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 08:07:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6412E158D7B;
	Wed, 25 Sep 2024 08:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BNysbl1B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9550D14D2BB
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 08:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727251650; cv=none; b=JXvayBHRN0tLnPOp9aSG3hvP/pjjnIWuujUaUDBo6XJoyMlNli059L6A2rQh35+TIoJNJTizmy20/KrvpE9Z/M8INJj9sWp5uCJd3ljM499L/mpctOozx0cl/kX3eHkwClyvZwlKyL4+1oQP/Ogg3/Be97fAxlh0UjJ0PW9wfzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727251650; c=relaxed/simple;
	bh=NCvEqalJkNobkK4xCLa4xTHDtYUKlDxJri6i+vjftgI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LAPTFNS/nIJLD39ePYa3JoGf0rdy0vx9WKR5xNBgaoZsaiuJOGCo5Bk+rZyRwN/h5Q11DYhsXQa5T1HoeMUjut9Rkjvk2cnvq80cRMKQ9G/6sUqOrqPkNeC9b0AYkD0suFztCgq0rArKEnURCl2HVit2YE7+MntCE6HDFD4xsGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BNysbl1B; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-42cc43454d5so52399295e9.3
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 01:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727251647; x=1727856447; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YXVU8v0cgzQWSNcs1WDVL/U60/ljsd6Fh51Q9oFrZbQ=;
        b=BNysbl1BuiRsRQ4Wq85x4ivITW2+USJm++R5WSP8AOyyqRCzBdrtLGCN8ZsG3GD+sP
         Qic3TS+2TGleF9ZLOCAFLSplpYSMi+rgxcmJYbfkJPVfl6tlJQ2lBO6H+WviHm2w9i77
         sz7lGDXKPT/ytnRiPcQgvoqRHHI5U3tfBHUEb5yZYs+bcrqXZs/NwtZSkqEL3Wp9o4Ym
         zaArtnAUfoSyP7ULHZaZtBnpf+mfG6QtkEuF6TgtOYWiheseicTSNUj0fVwbeRYiRJHr
         hegUyEZo4KAB55R/7xt/9ogvNTQoeN9x/+91+w3sUiPOph2y6nLg9jeUjEKNOYpCydEJ
         8KRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727251647; x=1727856447;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YXVU8v0cgzQWSNcs1WDVL/U60/ljsd6Fh51Q9oFrZbQ=;
        b=NHAT1kKZqDSxiZze4kUyxNPgfGd/q2idXtgK8HXEqSPo7QOJhciFQ/VuJz2KKvZRx/
         rwMeKClDBADoUSIWedquIfFLCZP/B8GlGxZY+GB/2RbDHMHbvH06UNvq9vqwkFHFoO+1
         LsP2EFAqjdyvH1qbm5zgQYVveqmAgA7Tvs8+baFwsvCtuyKA1yqHyaKnLora+gL6N8mh
         ZfCw/DtGPGq0vqJour7xNnJ4klC4W7/gGFBLNnzMgDUiVNe4toBhllroYcrmiF0pHbmS
         OR8GHbZYhpvtMaFcoehhWtpIu8ysdPRvTtV5gzkHc5DN1h44NnX21c0Bl+9NjZ+h4b/2
         azwg==
X-Forwarded-Encrypted: i=1; AJvYcCWVqy0EbaHuIPgoLGIf0H5d02sj7oP0oVcI8r2kecQx95cAyvL2EWJlG3aKTSGBsTltPcoL/4dIuKzr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/NavtUylOOhRolhFGybnPs9SvMBP1750l1RZ8XEpDvtwclGDy
	ztDdR8XUpzMWYJLY4DOEPFdSMD3fuHsKieUihOMG3O/pwfhBUXgebTxIU2Oxsw==
X-Google-Smtp-Source: AGHT+IF3d7MLoLPQr09BqD6UIJTxajPOYuaB+UljK19usG1V4QJtMVf1uk6Oji0/gyQV5Qdf5Z5vNg==
X-Received: by 2002:adf:f88c:0:b0:374:bb34:9fd2 with SMTP id ffacd0b85a97d-37cc24ab641mr976949f8f.36.1727251646741;
        Wed, 25 Sep 2024 01:07:26 -0700 (PDT)
Received: from thinkpad ([80.66.138.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cbc31f5c9sm3287058f8f.102.2024.09.25.01.07.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 01:07:26 -0700 (PDT)
Date: Wed, 25 Sep 2024 10:07:24 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 5/6] PCI: qcom: Add support for X1E80100 SoC
Message-ID: <20240925080724.vgkgmnqc44aoiarv@thinkpad>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-6-quic_qianyu@quicinc.com>
 <20240924135021.ybpyoahlpuvedma5@thinkpad>
 <ZvLX_wkh7_y7sjPZ@hovoldconsulting.com>
 <4368503f-fb33-4e6a-bef4-517e2b959400@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4368503f-fb33-4e6a-bef4-517e2b959400@quicinc.com>

On Wed, Sep 25, 2024 at 11:47:02AM +0800, Qiang Yu wrote:
> 
> On 9/24/2024 11:17 PM, Johan Hovold wrote:
> > On Tue, Sep 24, 2024 at 03:50:21PM +0200, Manivannan Sadhasivam wrote:
> > > On Tue, Sep 24, 2024 at 03:14:43AM -0700, Qiang Yu wrote:
> > > > X1E80100 has PCIe ports that support up to Gen4 x8 based on hardware IP
> > > > version 1.38.0.
> > > > 
> > > > Currently the ops_1_9_0 which is being used for X1E80100 has config_sid
> > > > callback to config BDF to SID table. However, this callback is not
> > > > required for X1E80100 because it has smmuv3 support and BDF to SID table
> > > > will be not present.
> > > > 
> > > > Hence add support for X1E80100 by introducing a new ops and cfg structures
> > > > that don't require the config_sid callback. This could be reused by the
> > > > future platforms based on SMMUv3.
> > > > 
> > > Oops... I completely overlooked that you are not adding the SoC support but
> > > fixing the existing one :( Sorry for suggesting a commit message that changed
> > > the context.
> > > 
> > > For this, you can have something like:
> > > 
> > > "PCI: qcom: Fix the ops for X1E80100 SoC
> > > 
> > > X1E80100 SoC is based on SMMUv3, hence it doesn't need the BDF2SID mapping
> > > present in the existing cfg_1_9_0 ops. This is fixed by introducing new ops
> > > 'ops_1_38_0' and cfg 'cfg_1_38_0' structures. These are exactly same as the
> > > 1_9_0 ones, but they don't have the 'config_sid()' callback that handles the
> > > BDF2SID mapping in the hardware. These new structures could also be used by the
> > > future SoCs making use of SMMUv3."
> > Don't we need something like this for sc8280xp and other platforms using
> > SMMUv3 as well?
> From what I know, sc8280xp and other qcom platforms are not using SMMUv3.

sc8280xp indeed has SMMUv3 for PCIe, but I'm not sure how it is configured. So
not completely sure whether we can avoid the mapping table or not.

Qiang, please check with the hw team and let us know.

- Mani

-- 
மணிவண்ணன் சதாசிவம்


Return-Path: <devicetree+bounces-71790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D098D7F65
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 11:52:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29AF01F244A7
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 09:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4F90128374;
	Mon,  3 Jun 2024 09:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z3Cy/wzC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185EC8564F
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 09:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717408035; cv=none; b=f1iutl+/A5PP3MlYFrqlm2BpO18eJUtCl8y6u92DCEvMDKA8PietZ44QTYlepD4Ebd15Ap9D+L7R2n60QrgpcBbkwuyqnRVWZPzEQr/Jz5xQ0d7sP7nlxPefc7aCwKJmY0y8tKL/EUzW3BwyhBAu1zQchcrPZpAj1vQxTgXS0zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717408035; c=relaxed/simple;
	bh=6gg7YEbYw3oXjaXLbgqmAAtlO3IQBeBTRiuKsnpoAfs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=APMF71pNTiXQllgn+cS4Jl0hXi9F0anHRJm9bknUDDvGM5oEeD+r9gtGC4L8xUxAEXZpG2x1m3xH1qvP1F8R12OeFT8C4FIL2Ei+dkg4qmP6yV0OtgC4kIRfSHP5Byg5TNByq2M/VDNXEnYTyma/58vkBPrwmbMoWzYNv9OVs6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z3Cy/wzC; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2eaae2a6dc1so14340391fa.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 02:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717408032; x=1718012832; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3WmOmLn0eohQ9kYr2DkEN87e2AtA0gf0TsDqgHg/fjQ=;
        b=Z3Cy/wzCiSRcbaccRc5tTMvFs9v98XW9QlgQm2Nin41XOfi0FHc8iFOAW2Nkm9fEhM
         iqKRkSDEC44BPTUZpymwIL8amZwxf5pKp16XExy+XjDA2Zjv+Qzl4DufODQRC0656Y0T
         8lulaK7mFXwVjamT0PR9hCEuGGfgbCp//QeF0OdMlqZsxh+M7nwwnl2CKWvPMEK9pP77
         wo7K2g2pJxmETFRol14gv2nMpoJVfe2nvozcsOALoqp9km5wKJSFKfW58zDMICPjA9W3
         bZ+Y4ooAgMugy2m8OtkbO4r20x1bx9ZaY1V1FWgqewVmlHeWG9uf9BtlYc10+nDshN+F
         8FgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717408032; x=1718012832;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3WmOmLn0eohQ9kYr2DkEN87e2AtA0gf0TsDqgHg/fjQ=;
        b=HkO3ChMMPp+3OI/s1bSLm9K0/Vn1qx20rKkPZyE7AgHSrHvYzTt0G7JCb6atoRRtDl
         /7yZk6qDcvUooj8Ajb7IAhZfBtJ7qcqmx5LBCe9daVRteIBQvoXZWmVPed/02uwq4zSg
         rP8+4RRDUPaWUEY3a9ZCyPj12Q/SkjrzvISh9yfwODrJnGmcG+p8nCwomLCkmUpaloX9
         M3Q6JEhkH7ck9VoRXKrMVL/Eb3Y7g69nb28PubH+MZ+lPbQvkv0sClAfUVRBGJbZfj2m
         NufaqVRuiP0xxmoAtlQnKulSV21DBmyY+bNdugJON9opWisWPSNIHE9IeHIL7pprI/Fo
         zm6A==
X-Forwarded-Encrypted: i=1; AJvYcCWZxpYHkBODjO4BGWvU/tmPyz/QhJtfWZwPfSJJFZPNDZUCmgucM95VZBDpL0KVDEjGSP5/qk92Hn5Sp6yyoRJ+wIpDCv5Vcnfn5g==
X-Gm-Message-State: AOJu0YwpgBbIOQ7DwfAeEt7tZyHU4BaO40cf2t01c99W1FEhZNHI61LM
	rOs29IQEBHHtS1m51qvB/DGOkdhSeuxHLVL8t6wPPqDLM/JuulffslrlxQNuWZc=
X-Google-Smtp-Source: AGHT+IHDmqQcTgo32nUWtN43sSH01Az8MpztVUPLU9r+pZ87YCrnAATbJYQ1MBRmasgT1pZJDiztIA==
X-Received: by 2002:a2e:984b:0:b0:2ea:8009:be9a with SMTP id 38308e7fff4ca-2ea951542b3mr78598041fa.28.1717408032255;
        Mon, 03 Jun 2024 02:47:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ea91bb45c0sm11614231fa.29.2024.06.03.02.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 02:47:11 -0700 (PDT)
Date: Mon, 3 Jun 2024 12:47:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: x1e80100-crd: Add pmic-glink node
 with all 3 connectors
Message-ID: <4hoxi5vyqrlyrn75sjbb4b34tqwkiacjasu63saspja36l6fwj@6twv7zv42sno>
References: <20240527-x1e80100-dts-pmic-glink-v1-0-7ea5c8eb4d2b@linaro.org>
 <20240527-x1e80100-dts-pmic-glink-v1-2-7ea5c8eb4d2b@linaro.org>
 <Zl2DUXWUN0088-Af@hovoldconsulting.com>
 <CAA8EJpp2hK1P86vrZOwXfNBz3nBXugCcERE9yBRCaCE3aDbqOA@mail.gmail.com>
 <Zl2MRMqY0Y3siXFm@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zl2MRMqY0Y3siXFm@hovoldconsulting.com>

On Mon, Jun 03, 2024 at 11:26:28AM +0200, Johan Hovold wrote:
> On Mon, Jun 03, 2024 at 11:49:51AM +0300, Dmitry Baryshkov wrote:
> > On Mon, 3 Jun 2024 at 11:48, Johan Hovold <johan@kernel.org> wrote:
> > > On Mon, May 27, 2024 at 11:07:28AM +0300, Abel Vesa wrote:
> > > > Add the pmic-glink node and describe all 3 USB Type-C connectors. Do this
> > > > for USB only, for now. The DP port will come at a later stage since it
> > > > uses a retimer.
> 
> > > With this series applied, I'm getting the following error on boot of the
> > > CRD:
> > >
> > >         ucsi_glink.pmic_glink_ucsi pmic_glink.ucsi.0: PPM init failed, stop trying
> > >
> > > Known issue? Do you need to enable some quirk in the UCSI driver?
> > 
> > Not that I know. The message is caused by the UCSI not responding to
> > the PPM_RESET command. A trace from pmic-glink would be helpful.
> 
> I don't have time to look into this right now, so only reporting to
> Abel.

Not having the hardware and not having the dumps I probalby can't help
either.

> Looks like there are two more warnings earlier on boot which appear to
> be related:
> 
> [   10.730571] ucsi_glink.pmic_glink_ucsi pmic_glink.ucsi.0: invalid connector number, ignoring
> [   10.730656] pmic_glink_altmode.pmic_glink_altmode pmic_glink.altmode.0: invalid connector number, ignoring

It well might be.

-- 
With best wishes
Dmitry


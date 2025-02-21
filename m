Return-Path: <devicetree+bounces-149314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB17A3F0CA
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 10:47:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6ED43B6DEA
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 09:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 560FF205ADE;
	Fri, 21 Feb 2025 09:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XHUjeeBY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9E0204681
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 09:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740130914; cv=none; b=Q5Z9x2NJo/Dh1nPzlEMR/PDKkMVTK56gZhenRomH4R2hrbXToc9UK9Wpk4CwLaL7mDU13lXw+C1Fyff2+jFillcW0b8NpsG6BxV8RMFFJ7QAjNKvFQatGU5sh8b/m+xLJbC2kIhu/a5PELgOXGJDjf9yDvSFhz16G5BeWiMDVl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740130914; c=relaxed/simple;
	bh=Ekj3mlDaIzCTqaCGVbDb2HM9pKkxti3ayHLfFEuWNB4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b4j1bvp3N8boSjlh4kA1bwyLplz3juhbNd9hE6ZZvx3u+06esFphEsvXdzcJ1rO9XzJD/HGDCTIlvCCM+AeqDZsPgE5xHV/ljX/vWA0KFD0CEgrPSU/FPWMJqPOCXCrRqmV4IF/0E+LKU+PP2kBkJU7lYrvw3gbRB8pqeWJRiKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XHUjeeBY; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-abb8045c3f3so234203666b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 01:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740130911; x=1740735711; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Hf5UFYhuzwCYSZfhV/w3wT5Q92fYNVjy6s3M1z5Zdlw=;
        b=XHUjeeBYb8sZNEgp9l7fGPOIxO33Tu5eOAnP/sbzrQzHe3EqSxunMmaP2qbb7TiiHr
         bDkzuFxen1SmQ2DqbDEBNJJzoynktqTeg4SJ3olHREsZv+sxVqNWiq9AZlg5fyiN33bq
         NuqntajhvBkRCEd0QH7wlRzXEVvbDeJv4F6xNJzwKeDOyZTDgdviBtHHoSin9PMLfFHe
         6/neaiaqHgNG5TENClCIZ1PKThJKn/WL54vxJQxfKifs7kv84s9i22Q3quB3ryr8Rh2x
         B9pJPhtNumPMOPj+cUzzHpI1kqIT6T2qo5jTk3KuNe79eb8blL9Et1y9bZLHZOLKmF8K
         5sgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740130911; x=1740735711;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hf5UFYhuzwCYSZfhV/w3wT5Q92fYNVjy6s3M1z5Zdlw=;
        b=STuJeROhj7hJPpY8y5QdnlkLh6uAFn3Unu6kakKNBXPK/LbTd73ACAL3MD8Lx7H4a0
         NEMN5e6uijTqdHrtPjsLYTKRyOnuhjBSAnlcgSfLLl1VWeIBPPG/68rhYf5Mw6MWkk6k
         2JWnl2VbpiuTW5LZ3rloVI8TH6/I8DQ0SYKA//3vVXWOViG04UytzIKRrz6d8TgJBwzT
         i0iPYysbceSx/tqwEfELqOCgWT8+8naCZnAzT1nXNBXZPyZByJGaTJ4ah++u8EJeBlu6
         nK21EJnNdS3CoxAfRNMqevoBwuaFAiSq+BYeGKebEozxfmdyJ1MqeE7JVUDHX5S65Qga
         J+bA==
X-Forwarded-Encrypted: i=1; AJvYcCVAQr/jrAa+5BHs8ZmIZuSwit8hqqcbcoCUpHVot6R+jHi3Pwh0vCgmWF6I3YHBDZt1AVATJnAKq1Ce@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8uyh1YuxmLSrwkCzclHYQUVTK1/TUBvRx2id5URyg/S1VY+rp
	TOxdig50HU2kipZHX1El3qJ98QUX3aVg/xiniYJSITYSVR3ZozYk6QUNxxXms64=
X-Gm-Gg: ASbGncuERigFca8mqyWWf+TAMGJGgc8UNTMofG2mfgN/JPEA7qKNhDlrK4sL49ADlK4
	7Vdw31aWWsf1hgkXIMnrAPs+7ia4331dVYPgpNwDKWjyaLKH90j/oYDoLFieVnq1rkMZXU+4Dx3
	Xiwf2yho531cLuODq5wnlkbjhRZd1g/ZBRDJfpEc40biHgVTc/t01ZcSf7X63TCSSuO4MOyL4u+
	u64U/SryD6GgvDHF1cdFWZz2pN050o18tllpUoG1+lOOl/GYV0UeU4di65clZdAUpE/ZcJZ0dTr
	G68VoftyF9dC8JcjRB7y2lg=
X-Google-Smtp-Source: AGHT+IGbaRycsJ0mOBkrChn5+O4lWjguYUx2LL4IDLzJpPhuq5e6fQovvvo7BGaxVVcet2Lgi3vlnA==
X-Received: by 2002:a17:907:7ea0:b0:ab7:e8d6:3b12 with SMTP id a640c23a62f3a-abc099b83e0mr313942266b.1.1740130910690;
        Fri, 21 Feb 2025 01:41:50 -0800 (PST)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbaa56026fsm814380366b.113.2025.02.21.01.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 01:41:50 -0800 (PST)
Date: Fri, 21 Feb 2025 11:41:48 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND v5 0/4] arm64: dts: qcom: x1e80100: crd/t14s:
 Enable Parade Type-C retimers
Message-ID: <Z7hKXNOwHlLLNtNx@linaro.org>
References: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-0-380a3e0e7edc@linaro.org>
 <Z7hGbEUsQU_MUL5t@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z7hGbEUsQU_MUL5t@hovoldconsulting.com>

On 25-02-21 10:25:00, Johan Hovold wrote:
> On Thu, Feb 20, 2025 at 07:42:29PM +0200, Abel Vesa wrote:
> > Since the driver and dt-bindings have been alread merged, it has been
> > agreed offline that there is no point of holding on to these DT patches
> > even though there are some issues with plug/unplug during suspend in
> > both pmic-glink-altmode and ucsi-glink. These issues are being worked on
> > meanwhile. Merging these means that even though this will provide external DP
> > and USB orientation, plug/unplug during suspend will give some splats
> > and render both the USB orientation and DP broken. But then, other
> > X Elite boards already have these nodes described, so lets bring the crd
> > and t14s to the same level.
> > 
> > These patches are just a resend of the ones found in v5 and dropped in the v6
> > patchset of the driver and dt-bindings.
> > 
> > Link to v5: https://lore.kernel.org/all/20241112-x1e80100-ps8830-v5-0-4ad83af4d162@linaro.org/
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > Abel Vesa (4):
> >       arm64: dts: qcom: x1e80100-crd: Describe the Parade PS8830 retimers
> >       arm64: dts: qcom: x1e80100-crd: Enable external DisplayPort support
> >       arm64: dts: qcom: x1e80100-t14s: Describe the Parade PS8830 retimers
> >       arm64: dts: qcom: x1e80100-t14s: Enable external DisplayPort support
> 
> It looks like you've addressed all the comments I had on v1 (except for

Oh, sorry, missed that one.

Let me respin.

> a stray newline after a t14s port@2 node) and I've been running with
> these patches for a long time now without any issues (other than the
> glink hotplug issues mentioned above):
> 
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> Tested-by: Johan Hovold <johan+linaro@kernel.org>
> 
> Johan

Thanks for reviewing and testing!

Abel


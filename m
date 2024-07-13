Return-Path: <devicetree+bounces-85531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F06FE93064C
	for <lists+devicetree@lfdr.de>; Sat, 13 Jul 2024 18:12:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 031CB1C20FE7
	for <lists+devicetree@lfdr.de>; Sat, 13 Jul 2024 16:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3B9C13BC39;
	Sat, 13 Jul 2024 16:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VGY73Ynz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1CD139CE2
	for <devicetree@vger.kernel.org>; Sat, 13 Jul 2024 16:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720887152; cv=none; b=Q/U5xZKYoEMavaNShvRXAmafJZl97k/46T15nGA77WNAs+S00E67pRUykLReaTbzNHssXyTOLP0Z4d1bwcHw9PQmtYY5A4FvcN8XY4Iae87EEg96WkigKODbF4fmAmUOdky2S2gPLM+ZPllIrAcvFBLghhdmH0L/ne0QyNQwbuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720887152; c=relaxed/simple;
	bh=n4f0kbBWtSQQdrFUEOgyXErNn2QGVgtgKUa+M3mREDU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gYcAvwtHFdwiDVfwcBAsAyd+4VBaROdJmCgQ1kSJRUpoMh70WflTLr6JUmKYAPDjyRJGpJd5atwk2WTqG8fVCNk88X21I4636kzcNXB+PGzP7IS8+se41Ce9J7RueIAlaaFidGmOrnUUweaGGsDybcUri4oG+Mc6RJwF/LsohA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VGY73Ynz; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52e9a920e73so3321895e87.2
        for <devicetree@vger.kernel.org>; Sat, 13 Jul 2024 09:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720887148; x=1721491948; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mPU4EUA/HyzvYcLhA94gZrzAZTZ9p1xhBdpXeQosR5c=;
        b=VGY73YnziONf5wl/onKA1cdAHKleP7GQjBY8jEOYiqPweWeZWRMZWinlKkUTChNFkl
         4odgVwvuk+5cfhifV5/kKDOqJ5nMiDk9/r7xlKdLAt/rrBz8X94A9VFdvLfwsq4hlUH2
         J2Db7M4//yjW/kHX3Kijpv0T2Ot2HW8SqPxGrbbVHqr1xS8pjlGC+B4JbLOTsuCQHblW
         /MZil2eSBbHpb55JSt1PPXVhD2D2nz+QRaiJWbY2Q1YfWnTBZ+NvJWf5iuOKpqtO3c18
         xvqMipsswjDjvK8dFG27ukQKewpOXR4sXE8Vi7txosd7gjcbEK/8qNSAXgNTyM+IPjZG
         tcmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720887148; x=1721491948;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mPU4EUA/HyzvYcLhA94gZrzAZTZ9p1xhBdpXeQosR5c=;
        b=pUfLyU/c1PJY2ILdKDNWNChpso14ejXDHikjxMo72azKjzhj8zGejHPk118GV0R6ge
         ZvdaGeGz7ug9KaMdgpGLEidgE0DyvxgY/YVfPVb+0+KC0fRSmoYwI5DdEzz3zSsax03u
         k3k1CirI2LWKFCSgwsqUA/x39ZYWFUUAcIbxKR/3MoHIRLco/sP8ce4vykaxecr5l4Fb
         HCHQ64b5SBs4DqlHoJ03VmzTlE1RV+u/3pwiZJZ5O9cyZWH60Qw9+ajrYLiYdTmNSIpz
         Lcyp0MvqlNYk++3Swtxb9YkeCYypD2/+nlc00Uu//uuqnp+7qtM4Vz7lrf9jLgdhuLL0
         7dmg==
X-Forwarded-Encrypted: i=1; AJvYcCWC4F/aCcoTwcphCqQENWZiBeDVuUc40x5rYufHAKQTVknl9v7+zKR9Z8gkvBdMAduOCKXsB2035UOlm/cc029yHh7KEabcXgU0ig==
X-Gm-Message-State: AOJu0Yy5oxNK3tX4+g+HeZFDfBWudIEW+zt0EUZZCKmDEHCL6N9dtzMw
	i8iw3XkI1GWdGU3x4GeBQjfQ+7pyM/dnQ3sZUVQ4PR5ABqbIbFgSNKklipvt5Qs=
X-Google-Smtp-Source: AGHT+IGpP3S10ZQuIO+TfFvNUUUAtqlPAilkg3Nl/n3bjRukjuOByZVXJ876HFixWSY4WOoxy5VMwQ==
X-Received: by 2002:a05:6512:1189:b0:52c:d8e9:5d8b with SMTP id 2adb3069b0e04-52eb999446emr9980958e87.25.1720887147957;
        Sat, 13 Jul 2024 09:12:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed24e17a4sm236217e87.19.2024.07.13.09.12.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jul 2024 09:12:27 -0700 (PDT)
Date: Sat, 13 Jul 2024 19:12:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Nikita Travkin <nikita@trvn.ru>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
	Adam =?utf-8?B?U8WCYWJvxYQ=?= <asaillen@protonmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: msm8939-wingtech-wt82918: Add
 Lenovo Vibe K5 devices
Message-ID: <znzgr6hqbokis7zrouh2zbzvigdl4gnm5ewqoiph5eqdk4qcg6@zlw2b2bzbmgs>
References: <20240712-msm89xx-wingtech-init-v1-0-64f4aa1870bd@trvn.ru>
 <20240712-msm89xx-wingtech-init-v1-3-64f4aa1870bd@trvn.ru>
 <f377a55c-4a74-4555-926d-afb7dd813e00@kernel.org>
 <28e2dc758c8867693a183d758a9dad6a@trvn.ru>
 <932efd4bd08a2877ee1e7c7409ff1512@trvn.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <932efd4bd08a2877ee1e7c7409ff1512@trvn.ru>

On Sat, Jul 13, 2024 at 04:07:13PM GMT, Nikita Travkin wrote:
> Nikita Travkin писал(а) 13.07.2024 15:37:
> > Krzysztof Kozlowski писал(а) 13.07.2024 15:02:
> >> On 12/07/2024 18:04, Nikita Travkin wrote:
> >>> From: Adam Słaboń <asaillen@protonmail.com>
> >>>
> >>> This commit introduces multiple hardware variants of Lenovo Vibe K5.
> >>>
> >>> - A6020a40 (msm8929-wingtech-wt82918hd)
> >>> - A6020a46/A6020l36 (msm8939-wingtech-wt82918)
> >>> - A6020a40 S616 H39 (msm8939-wingtech-wt82918hd)
> >>>
> >>> These devices are added with support for many features, notably:
> >>>
> >>> - Basic features like USB, mmc/sd storage, wifi, buttons, leds;
> >>> - Accelerometer;
> >>> - Touchscreen;
> >>> - Sound and modem.
> >>>

> >>> diff --git a/arch/arm64/boot/dts/qcom/msm8929.dtsi b/arch/arm64/boot/dts/qcom/msm8929.dtsi
> >>> new file mode 100644
> >>> index 000000000000..c3d1d1ace2f6
> >>> --- /dev/null
> >>> +++ b/arch/arm64/boot/dts/qcom/msm8929.dtsi
> >>> @@ -0,0 +1,5 @@
> >>> +// SPDX-License-Identifier: GPL-2.0-only
> >>> +
> >>> +&opp_table {
> >>> +	/delete-node/ opp-550000000;
> >>> +};
> >>
> >> That's a very odd SoC DTSI.
> >>
> >> SoCs DTSIs are not meant to be included as complementary, but rather as
> >> full DTSI.
> >>
> >> IOW, this is very confusing code and will confuse everyone reading it.
> >>
> > 
> > I think Adam wanted to keep the common device dtsi based on msm8939.dtsi to
> > simplify things a bit. I was also a bit unsure if I should change how it's
> > done but decided to keep it as it was. I will rework the v2 so:
> > 
> > - msm8929.dtsi includes msm8939.dtsi
> > - devices .dts include needed soc.dtsi, then include the common.dtsi
> > - common.dtsi doesn't include any soc.dtsi
> > 
> 
> (...) except gah this makes things quite a bit more complicated since the
> device makes use of the "generic design" msm8939-pm8916.dtsi and duplicating
> that would be quite silly IMO...
> 
> I wonder if we can clarify things without making everything too complicated 
> by calling that dtsi "msm8929-opp.dtsi" and keeping it as extension for now,
> then if we find that msm8929 has more differences - we can unfold and refactor
> everything.
> 
> What do you think?

What about adding msm8929-pm8916.dtsi, which includes just the right
things? This might result in duplication with the existing files, but in
the end msm8939-pm8916 and msm8919-pm8916 are also very similar.

-- 
With best wishes
Dmitry


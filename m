Return-Path: <devicetree+bounces-130050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A49B09EDCA2
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:46:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 602FC1886B4E
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B100DEAD0;
	Thu, 12 Dec 2024 00:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JXfSUy6P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F4C3C39
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733964401; cv=none; b=n66dPHUOWRwR0ocHPRXmTyupYaHy/wCLywN4Lwq3PsQjv0bIFwXII6tEjW/2ENltFJKNl+IRihPZ0EGYvz4bxGaOpywTylGOQPENwn9RklVMWobtfL61eB3J1gOVsVygBeJaVi2C+lIEVaiIyBc+NmO+SrpZ+aDwgRGQm8dKceM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733964401; c=relaxed/simple;
	bh=YS324n3d0zCyweuCVOsAXOrw2hHW8jnoR0Fe0uJwpIU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=BUVsvu544wF7ipEV9nf2Z0uhk42qUSxVi8U5EyYtFhR3qHE0ZoEiuNo3k/+a6JGVn4AjSQ8M62ZIb3JYD+N3t/+7A+b+fucXGSxepIyN5my37mXxbGvjnynfCjYXcLhHtufjndyBVoe4lNPRoKhBVJzxt5B5WYwXulWMVaPPtU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JXfSUy6P; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38634c35129so12345f8f.3
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733964398; x=1734569198; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W17CG2GTV8JKUXeGnJwgV9wPZYIX0+hpf6sa4ld+5Nk=;
        b=JXfSUy6POPURyLBLq37slshbvFeWN4dfVrp8XL494JzIJB/ZRtK39JSd4SWXihhtn1
         pYEr4ooRev87nJwsa79Kix8vaVY/ANxIc1hxzsR4BCR03+MKCWtCUCjabOM/3FqaBw9J
         vasjUr431y+GyFc9np7sjc+bnpMjiLKv5fOEVEDOrWFswTAiR9oem485ax+OE2lq6I23
         yaJyKAIR6I8xG41I5yTMOsfyBVqCX5L7bJTndlUXYMNR67oJmAGJMPa09vK+K7e945XN
         kuy7yB9J132nXR4kDJPEpLI0ltdw7pbdLS8BY2y9f7GfiFwgzz5mVEnyHOCzEhrel+vp
         DjCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733964398; x=1734569198;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=W17CG2GTV8JKUXeGnJwgV9wPZYIX0+hpf6sa4ld+5Nk=;
        b=XnJpDwOXV4DvF4t6EMNKdsHjNaCr+HeXfuO6Smog0XlOrqSbNNnHmx2pPEZARHGZXE
         roGi9tczymKlGJeaW2mh8mnUxkW9jDRF9OUhIOruPivCNM64TduleBKr4ofdFG2Gunv6
         jCrZg1xfwUoHGsVKffV11J4eJR3vKDkdiEac865UiEltE4erNbFBvuaTxd62veBbgdgd
         FSr2bROWfwBWcT4az7IM04vOmHZde/pExDw5C12ne6htOKGlTfatx1BGDcsE0VrBeT+j
         H70MSuZKH2+FAtNU/hR1kIRer9/ZGR+SL285EE3FHeBSFFm0Qk7vKfuVmLS4/x2lIuLh
         uYvw==
X-Forwarded-Encrypted: i=1; AJvYcCUBx2M9eBxsaNIW+hD94FUUxrxRcSrYpR3gCFMQfVSKRK9jK0vtzLmpf3ljFJyDi6P8T43TAsEtCVEC@vger.kernel.org
X-Gm-Message-State: AOJu0YxgVRYMBeMM91C+183oyjnpXlrn6YLR6Dr9mYcHrmuEyGdKVpiY
	AJSQuVlc2BEdzZXqoiS2IddVPxub0Vxvkxo8Qvxf7CtL7TZFiwx27kLrUooCQPk=
X-Gm-Gg: ASbGncsq4uODkZcGPFakRt2LM89sLxb3uX95hvbzY7jSROItQQceXJZsCrOPKbGMgCh
	zcYXVgLANlk5QIWq+luzlqO5iPryIb612NebVLsv5aiFMGCtByAzWDI9Mmgux5NFP467kniAAgM
	RbqlreX0/ZqMKLm3PvH8McUpeve61CebXKOYl1kSZWlnVl40ljjcs7pto66gf6WMEvZ5T3wk/YC
	oq0TuJsu5h3AmkPl5fUaXKmX1kHiwB99vi2slovdWDbChHR8IGo/0t6
X-Google-Smtp-Source: AGHT+IG/oETOt4H+tqPxItW6KT0fnyooyBtrlajq83xl8GbCXw88vPt0o39pURb6dfsB5qsKrcBpKw==
X-Received: by 2002:a05:6000:1a86:b0:385:e4a7:df07 with SMTP id ffacd0b85a97d-3864cec38ddmr4347181f8f.42.1733964397937;
        Wed, 11 Dec 2024 16:46:37 -0800 (PST)
Received: from localhost ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38782514e54sm2494722f8f.85.2024.12.11.16.46.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 16:46:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 12 Dec 2024 00:46:35 +0000
Message-Id: <D69B2UDQELCR.2HEVIK3QO8W0G@linaro.org>
Cc: <broonie@kernel.org>, <konradybcio@kernel.org>,
 <konrad.dybcio@oss.qualcomm.com>, <andersson@kernel.org>,
 <srinivas.kandagatla@linaro.org>, <tiwai@suse.com>, <lgirdwood@gmail.com>,
 <perex@perex.cz>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <dmitry.baryshkov@linaro.org>,
 <linux-sound@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 08/10] arm64: dts: qcom: qrb4210-rb2: enable wsa881x
 amplifier
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
X-Mailer: aerc 0.18.2
References: <20241101053154.497550-1-alexey.klimov@linaro.org>
 <20241101053154.497550-9-alexey.klimov@linaro.org>
 <5zkslmf7m5vphs2wjcdg3536eo7tuh3stjthh3ulkr7oic5i25@qtnsog5ladsb>
In-Reply-To: <5zkslmf7m5vphs2wjcdg3536eo7tuh3stjthh3ulkr7oic5i25@qtnsog5ladsb>

On Fri Nov 1, 2024 at 8:14 AM GMT, Krzysztof Kozlowski wrote:
> On Fri, Nov 01, 2024 at 05:31:52AM +0000, Alexey Klimov wrote:
> > One WSA881X amplifier is connected on QRB4210 RB2 board
> > hence only mono speaker is supported. This amplifier is set
> > to work in analog mode only. Also add required powerdown
> > pins/gpios.
> >=20
> > Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> > Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 45 ++++++++++++++++++++++++
> >  1 file changed, 45 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot=
/dts/qcom/qrb4210-rb2.dts
> > index fc71f5930688..76b9ae1b0ebc 100644
> > --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> > +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> > @@ -63,6 +63,16 @@ hdmi_con: endpoint {

[..]

> > +	wsa_en_sleep: wsa-en-sleep-state {
> > +		pins =3D "gpio106";
> > +		function =3D "gpio";
> > +		drive-strength =3D <2>;
> > +		bias-pull-down;
> > +		input-enable;
>
> Are you sure this passes dtbs_check? I think this was not allowed since
> 1.5 years.

I guess you were referring to thing that input-enable is not allowed
and output-disable must be used instead introduced by:
c4a48b0df8bf dt-bindings: pinctrl: qcom: tlmm should use output-disable, no=
t input-enable

Noted.
This sleep state seems to be unused hence I will remove it.

Also, I am going to use Konrad's suggestion about i2c gpio for now. Hope it
is okay.

Thanks,
Alexey



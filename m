Return-Path: <devicetree+bounces-129983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DA39ED749
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 21:35:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD8E816847F
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 20:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E569720A5DD;
	Wed, 11 Dec 2024 20:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ypZ384k9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D34209695
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 20:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733949325; cv=none; b=IR+VXt8rJajYNvYoZ6UGW1JTqoJWEXnqpWD8yBPHv3UakIV8+FbBfk1PM3p/lLbkWdo61VAm0Go2LJfAb1NaDwPVE6+/0tirAeZdXUCKymSNedPLnCL1MBGujs+XMFMoQaJ/iyFWqtwomIhfPJlUQaUyBH/IhzU30mT9OL64L34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733949325; c=relaxed/simple;
	bh=Tj2T0jHpnxc9hzjyEB3IbVNpdJMAMoG6iZPl2j/XGQ0=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=iM435GYqEsERj1kv1Q34x+6YqN7BrIRSzAJjdTHcJf8ZDo5YGhCaMIjbrHvf7B1FXUHMq3kCJI7n3/ZLlB6Uoji7cFNcTGoHBlAx3CK6BmTEjwUr+2wausGLrjbgjSHagD/xzOYCWM9WAUGlKtlYH4VRfLAGErkPsH1ow7HhjAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ypZ384k9; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4361c705434so8105275e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 12:35:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733949322; x=1734554122; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uFRzH/Iv8Aaw4sWsAQhZm9VRnaxy7gZCZYmxkSDRSlw=;
        b=ypZ384k9YprNIGK66fxB1tBMaGFZiqNxEgZpDBoUf0l5QFURs04aCjOwHkxHPH5o5u
         WPctAyhqptAoNfevf9fmLHovXIv6eDKEmyb76mwZWH+lH1yESx5YboB6F8PPolSdP5zd
         8v+U/mNey4rMSfcgaZlOeWh/Y1sGF340JRN0bbrbt2mF0ogGtFc2BzwwbZCJUR7hecEe
         CKtLTyYQDppU8zDfszGj6RnQ60Hch3czjrHltn54ghNI8fpWvEst4HFkk/51v+ac1SvU
         YN4B2LE1Yp/Gh42oj0ygFr7p/ebpm6UoMqHVqhLe44CTTNK5XB5wIllBo0dqoUUUiqly
         aGcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733949322; x=1734554122;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uFRzH/Iv8Aaw4sWsAQhZm9VRnaxy7gZCZYmxkSDRSlw=;
        b=RdlsHCtSf/RaEPCIPll8I3VK5z3cD/a9aYVg3uMkoeGaoVpucIugXjRDcpZnqWsF7j
         DM+EHThpde55awCDGAZSwbusdBqq6HgKNQwC+xXZqpm97aD9ZKAQ1SrD44nuXY44sog0
         xfVlL9R539TJc8heNGT1YO39x3yU8ifQPXLpufbkoRMnJp/PDczLD//6iJhiMJJXf1As
         G7YMyzpoCqOD4FVWRNL0AFKk18s3/KXcF68YCThmWcK0a0EjtCihoZtbVks2cfZ7klts
         +VyPDFHoean1y8gXwmk5jdH8wVMFBivZLbcgHdSIkbqoInBKJbubYRD0QgVMufrPShzs
         eJ6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVCkGSsrcchwcGS7bIbKh4IMjr8aBCCXTgvawnMyXom7Wl01KQE2WG+QPKLXxXcM9JKqOYKRrWzGOTJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzAFdSAd33OcVSwGVwhEsqA4p+gG5JPPP6Flno3eI5nbdf8OR01
	WSwMlw/xxsjMzsk6jvTYQBiLOenBUx9SFAPIXnmbEGnJydkw7vfTQUIQf6g67bw=
X-Gm-Gg: ASbGncuhRJ58CMc6rm0zxdbN7ca9OxNusTQS5RVc9BjG1KETXh5cNGNQ15PCShFRojJ
	9/zAafgxX3kSyoIzXrOGO6SHw4S4hJCo39w/LDBLU36IH6u3cCMRoyCHbEI28a6bCZtqSErGXKQ
	levxjix8gHgjMvQ7Jm+xxqgwwomuxRXt97T96peAkz1Lp5RGM9McxCA7cNPT4fSqqpj5cALBOFm
	AYv7KsOuT3je1rriHe6HKcLrpi7h+nWJxKT98k4qQrMYeaZlr4pYzoq
X-Google-Smtp-Source: AGHT+IEvGMvfNKL3Lr/V0TIh8L5co6EyNTn2QDgjDa1ZNU6WRGQ6MpM69ERpnAXmDRumCMLvlZCOWA==
X-Received: by 2002:a05:600c:3593:b0:431:55af:a230 with SMTP id 5b1f17b1804b1-4361c43ed3fmr33174845e9.33.1733949322346;
        Wed, 11 Dec 2024 12:35:22 -0800 (PST)
Received: from localhost ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4361eccec81sm25126715e9.37.2024.12.11.12.35.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 12:35:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 11 Dec 2024 20:35:21 +0000
Message-Id: <D695QHHBLGUF.7HOOI1E8RMTS@linaro.org>
Cc: <broonie@kernel.org>, <konradybcio@kernel.org>,
 <konrad.dybcio@oss.qualcomm.com>, <andersson@kernel.org>,
 <srinivas.kandagatla@linaro.org>, <tiwai@suse.com>, <lgirdwood@gmail.com>,
 <perex@perex.cz>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <dmitry.baryshkov@linaro.org>,
 <linux-sound@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 06/10] ASoC: dt-bindings: add wsa881x-i2c binding for
 analog mode
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
X-Mailer: aerc 0.18.2
References: <20241101053154.497550-1-alexey.klimov@linaro.org>
 <20241101053154.497550-7-alexey.klimov@linaro.org>
 <woeeh7cosv47z4ckqbomfc3rqqxfolyfycgcz32do2yadg7xdj@geqank3dp55t>
In-Reply-To: <woeeh7cosv47z4ckqbomfc3rqqxfolyfycgcz32do2yadg7xdj@geqank3dp55t>

On Fri Nov 1, 2024 at 7:57 AM GMT, Krzysztof Kozlowski wrote:
> On Fri, Nov 01, 2024 at 05:31:50AM +0000, Alexey Klimov wrote:
> > Add binding document for WSA881X family of smart speaker amplifiers
> > that set to work in analog mode only and configurable via i2c only.
> > Such devices are found in Qualcomm QRB4210 RB2 boards with
> > SM4250/SM6115 SoCs.
> >=20
> > Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> > Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> > ---
> >  .../bindings/sound/qcom,wsa881x-i2c.yaml      | 103 ++++++++++++++++++
> >  1 file changed, 103 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881=
x-i2c.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa881x-i2c.y=
aml b/Documentation/devicetree/bindings/sound/qcom,wsa881x-i2c.yaml
> > new file mode 100644
> > index 000000000000..51b040b134d2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sound/qcom,wsa881x-i2c.yaml
>
> Filename must match compatible.
>
> > @@ -0,0 +1,103 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/sound/qcom,wsa881x-i2c.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm WSA8810/WSA8815 Class-D Smart Speaker Amplifier in Ana=
log mode
> > +
> > +maintainers:
> > +  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> > +  - Alexey Klimov <alexey.klimov@linaro.org>
> > +
> > +description: |
> > +  WSA8810 is a class-D smart speaker amplifier and WSA8815
> > +  is a high-output power class-D smart speaker amplifier.
> > +  Their primary operating mode uses a SoundWire digital audio
> > +  interface however the amplifier also supports analog mode and it
> > +  can be controlled via I2C. This binding is for I2C interface.
> > +
> > +allOf:
> > +  - $ref: dai-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: qcom,qrb4210-wsa881x-i2c-codec
>
> qrb4210 is a name of a board, not codec. i2c is redundant, codec as
> well. 'x' is not allowed.

qcom,qrb4210-wsa881x-i2c-codec came from qcom-soc.yaml with the advice
that it should be qcom,SoC-IP.

Anyway I am working on updating the qcom,wsa881x.yaml as you pointed out
in another email.

> This is qcom,wsa8810 and qcom,wsa8815 compatible with it.
>

[..]

> > +
> > +      wsa881x@e {
>
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-device=
tree-basics.html#generic-names-recommendation

The best I can come up with is "amplifier", or it should be at least "codec=
'.

Thanks for the review!
Best regards,
Alexey


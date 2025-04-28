Return-Path: <devicetree+bounces-171394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B18CFA9E96A
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 09:34:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 491A916CDB4
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 07:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B81D1DBB0C;
	Mon, 28 Apr 2025 07:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="qlcAOjVY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498B31552FA
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 07:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745825671; cv=none; b=Aki6ghT1jo5Kl1sWkU8b0QoswA7YKlweUVo019klYutOfuJVLNoXumkmH+1057tOL9wFD9sQbFCIie3oXmYuDc0Yjyfms2SMNQkIxy78K6X2jf8BBnn+Kn9hKkljq7nhk4RsdNqgrSfdKyi0bK9jAyVLiuGTpjnuLVetRxR1tdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745825671; c=relaxed/simple;
	bh=eft2JoylGrB+ciB4KeCOT35p4mm0t9TkaDvaqE5nOyM=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=kfQf9YBnU6SlUfiNcDjZ+EeIEEVVojs0n6w5R1gioMuegxa2D+TjeJAPybCOd20bbPH4HOftPYaiZEUaKi2RfcVN2tvIVKwjqDisThe1IM+SRlsJRNKxUqbSNMxuztsCAEIHIQZCqJD0cJyoPc46nioruGT3Jq1EnrLl83Stoe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=qlcAOjVY; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3913d129c1aso2871589f8f.0
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 00:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745825666; x=1746430466; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3by7P9uqNKQnnEqWzZ9SaEm5TrOyLTIcc/CCu2Gerdg=;
        b=qlcAOjVYVuRyZOM5jF92lVIQdyZrbKBVmOu65ROJsMkImeA4sLwJQ6M9T6fUbKrUpn
         nkJIsrdV5RhOdhca5PYnt2c+wCF2eqYrrH+9HZQlSjr5uP3bXxFr7iK9Af8z5RG9EETu
         w6tS4YXGOl/+fV+5z7FUJhdQUNeTQkJPlgRnwYE1+0E+jMYbYH/Z2KM+LzhDqWXAx8Qz
         4M66117P0vdig6qJUpGl2TKSrk4stX6V2hbLnLey3Gb9BK/tBr8jgq9qhm5HljTLreTa
         ArnddgCiH+A+8drZVuAczugeCUiEa4h1Q32exmW44PEYbmuDE1sTH4szP9uRRPjT/mRs
         MrbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745825666; x=1746430466;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3by7P9uqNKQnnEqWzZ9SaEm5TrOyLTIcc/CCu2Gerdg=;
        b=K5RnpF9PJ3sIwzTNlZVRlh46lVu74WYS+68HWFAq6o+cO8Qg3HckFqzcGE4DybZB8c
         BeWScYKmgSFio5U0f+IZWCV83PKZPMXAyzRHWfwpr/ZjexMbmtiA+VGvuHqokHgMo5xo
         qomWkoARgsmgHKc65zRS4ujuIhS14dg7lJMObi1Y3f9RyyA+COSlg2xkw5vNenMYv7TS
         DyT1FmmkvHVsgp4EgLJxzDxOqzfSDmnstZ00Bw2Pr7k5c/VTejZ67XZjeFSwHYpgymV2
         T8bDNDrDHKWy6ymeCHWSjHEbII0gAqQfU4G51uFJZwjtuplGdI54z++zHuKQQjGuriDi
         RmBA==
X-Forwarded-Encrypted: i=1; AJvYcCVFXlvzZCLP6sDYEaJQNK4kd+JC8UqiLvIauNoGKq0lJpoZY/h48S6OiM/X2mgRelmpB8t6gtNTqCVA@vger.kernel.org
X-Gm-Message-State: AOJu0YxO2cgzPpXnkp01TmEfBtNova3oggHCUqDbxmqGLwDGN9yf3RMg
	DrXx1ENWu/b4eU/je9xHqu4v1HQr0H1GpFbHn4WVK6yqSCItbFGyONC+RqJc4j8=
X-Gm-Gg: ASbGncsWL5BBam3fAzh1t0GSrG7UzriUgHoUp+ccDj64J2C8Zx907ViUnaxcrtOR2HH
	eTJAtUjcESGbexVrzkRS1KSODi7VifjH9QXumHukiu6odp6lPmKpEhglxKRYWXTOkHmYhJwmaUa
	kuAYSEASvq20wcMJpmVoy0hYmxcKr55QEFapSnW7cDh3KWoFFeuWqcD5A+Rp579DajFwH0Zzcfg
	F+atQ000d+jX7bSuQqwK5ea/5VsOgnlf4knSGH25RQ1XwWMUjihUMmo0j89qYjsf7Xpqw93Pry7
	MX2ehzkdQhyw2ushHLLJow5eutzDN63m2xTgHxA=
X-Google-Smtp-Source: AGHT+IG6mQ0mWvZUOVVdCR4TtZrofNh7QSmslDahUY667QO2MOymPlIMBngYJDdrDo3lzJhhVfpRTw==
X-Received: by 2002:a05:6000:2505:b0:39c:30d8:32a4 with SMTP id ffacd0b85a97d-3a06d6dd524mr11640891f8f.26.1745825666481;
        Mon, 28 Apr 2025 00:34:26 -0700 (PDT)
Received: from localhost ([41.66.99.1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e461casm10504935f8f.74.2025.04.28.00.34.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 00:34:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 28 Apr 2025 09:34:11 +0200
Message-Id: <D9I3JK9RAP0C.NT3K81FYMLCR@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Wesley Cheng" <quic_wcheng@quicinc.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Felipe Balbi" <balbi@kernel.org>, "Srinivas Kandagatla"
 <srini@kernel.org>, "Liam Girdwood" <lgirdwood@gmail.com>, "Mark Brown"
 <broonie@kernel.org>, "Jaroslav Kysela" <perex@perex.cz>, "Takashi Iwai"
 <tiwai@suse.com>, "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Stephan Gerhold" <stephan.gerhold@linaro.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-sound@vger.kernel.org>
Subject: Re: [PATCH 1/6] dt-bindings: usb: dwc3: Document usb-soc-be
 property
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250425-fp4-usb-audio-offload-v1-0-f90f571636e4@fairphone.com>
 <20250425-fp4-usb-audio-offload-v1-1-f90f571636e4@fairphone.com>
 <bcca2d97-2092-42f0-951d-f09f144e515d@quicinc.com>
In-Reply-To: <bcca2d97-2092-42f0-951d-f09f144e515d@quicinc.com>

On Fri Apr 25, 2025 at 11:39 PM CEST, Wesley Cheng wrote:
>
>
> On 4/25/2025 3:44 AM, Luca Weiss wrote:
>> The property usb-soc-be is used by the new SoC USB layer which is used
>> for USB audio offloading on Qualcomm SoCs.
>
> Hi Luca,
>
> This property can be dropped now, as in the latest revision I added
> utilizing the auxiliary device/bus now between the Q6USB backend DAI and
> the vendor USB offload driver.  Reduces the need to add more properties.

Great, thanks for letting me know! Will remove it in v2.

I see the code in sound/soc/soc-usb.c is still parsing 'usb-soc-be', is
that now kept for other use cases or should that be removed as well?

Regards
Luca

>
> Thanks
> Wesley Cheng
>
>>=20
>> Cc: Wesley Cheng <quic_wcheng@quicinc.com>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml | 4 ++++
>>  1 file changed, 4 insertions(+)
>>=20
>> diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml=
 b/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
>> index 6c0b8b6538246adf746fe7ccd6df936131c61444..07549dec0f74234465fa9b6a=
b21871762a2f5127 100644
>> --- a/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
>> +++ b/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
>> @@ -38,6 +38,10 @@ properties:
>>        - description: USB2/HS PHY
>>        - description: USB3/SS PHY
>> =20
>> +  usb-soc-be:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description: Link to the USB SoC sound backend
>> +
>>    phys:
>>      minItems: 1
>>      maxItems: 19
>>=20



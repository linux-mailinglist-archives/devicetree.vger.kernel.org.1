Return-Path: <devicetree+bounces-216277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CC4B543C8
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:24:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 083DE16D66B
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 07:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD04E2C08C5;
	Fri, 12 Sep 2025 07:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="diB98gXK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAE22BEFE5
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757661874; cv=none; b=F9la9KfmMerfIQASIcwz1B2yk3Oj5pJPJf0gQhMOvLMrbOjZpZdLbynydFfMlM/OZx6U/qQIVLiegohkhsMhZ7Xe6qz/Em64nLwr9DFOWd5AobsgdsLP0nTl+NjYhWL7uZ/f+N88lT76UkG2vNrJSEWfQ0PHcdpm29klKc9q9Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757661874; c=relaxed/simple;
	bh=ov0o+N7VlhjyhV78KxdzxA6UTh8zdhFtw9m5AFWO1II=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=rfyqmSYOZvWBdS8ZdYgydyrqp7nwJnS7D/3OyiXrSeilaGoKei4QGrb93sUOmvP/q8/X3aUiLvpfuSrDxyjV6+vF/Qo3ee8AJzSDxi9zA1aUkHBlHn09jf/ER0sxccmA/lh8Jf1/mT7DjQCJs9l0DLcQKH1Wiwi8Eh+3SuwLALM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=diB98gXK; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b079c13240eso255970166b.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 00:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1757661870; x=1758266670; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uaHiq8VH1qzCN6aCnAst3zvDqtwjzvVk1OyYrGXolto=;
        b=diB98gXK4dZXzwzBGUPRLjJ3EBr/uT2s+OXXXAkMiFkwF4lgo6b2pvuj2z46iqVqRV
         N+CW3ztFuwjuq7r0/lpunEnGISP0ufh8TvG6Af7jvI8bx4YYp2lcYc9Ga6kSFcG54kzS
         CexscO4HTY9Gvo2NdIgj6M0AzwSD46bd0ZV4DP/uVOeOFKJ3V3r5XKbY6vq2jCfQt6xp
         KNEC7jzbjQDNDH9BlIprYnz38qiggic1/vwCmWvoShNyeTFiMlwn3otJYR8vpmKA2sYt
         jWIV6Ubhq2v0R+Qhc65V19p7ahp/iY9lrG+Jp6hkpnzzfeys7lF2shO6g9mfb1yUx7MK
         dO1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757661870; x=1758266670;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uaHiq8VH1qzCN6aCnAst3zvDqtwjzvVk1OyYrGXolto=;
        b=gFlbP5bZQAOcef59Z7O6P9cxXk5vWJtjkR/N4YaxXAOZ87LY8fb7GvKyTje6btu3/c
         je8Bezp6pd65RI+v/c6TNymxIBm7ouY76SXeXO9IIOwGnwnBHnIgt2RNwgy39C3IN7o1
         lYXGmO0WWlSEjJUqoINU/7WWzdJqDpWH/CGa8E/Jy39e7ULuRDG8fF/wRkCY0d3tW3NI
         3GQkTK6p5QjEdNhWT+0Huf9zltrsfEODwsLw4seeH+ic5NEhBMYFn+vSIhLtpnTyALFG
         xlovzZc9sGlb2JdHLukO8it4eutz/r7xFYecbUoTwmp8BsfxDg6+dO3VlC++EnQEhJqo
         S6Nw==
X-Forwarded-Encrypted: i=1; AJvYcCVTMjwdOFgrJluR9dC1O+3A84Er2mg4SN7YLUmQeP+bDIiMXRlm+mo1Wituhfjx/a+81KdRUrQc8XrE@vger.kernel.org
X-Gm-Message-State: AOJu0YwBNxQ9O9XZXF7B2EFkjeu7n8XHTqaQRGrD5yk3xS47+PUGQ9hU
	wrQZqZginKheSq88cSOa4PEEJdpf4EYt/gXoG+tr8Az5Z/XY6pyUSfA+Ig0TQEEUVjE=
X-Gm-Gg: ASbGnctvB0BXIGpdRQ+ZA/prH+ZE6SEodZXM6/Mw7ZkiqjTf9nWijvOtYDQXg4Vjbuu
	YZXNUUWvoeo21wh48JfEYmsoWe37jhVOjtROV+hl6gMEX8fsVKfTzOm0FIUstGWhvwKrmvLoOI9
	HZwx+hGBsV06NP47RuV+QGByYAuWWgxDyvATwRY65bq9SgUouG7cT75jxKAG1LLvMC6ajPtflqY
	IaA7wlOMMl4kxLJ3AgZB1Yjsa1DxU2U/qQzz5h9G3jancvAGT7Wmt9jTNBXiho5UxuUtzmkEluB
	+nh/X2QHo2eMfeXJnBOz3TwwQ9xlpg8aXtia85HQLhPr2d320vx5NsP/zNsUabK/W7O17F8oBBB
	cYeo+K0CgUsTNrFPDpK2fBmaaTllnrkK14skscMK8F36iZoLf3MjmWNZJOV9HF2Ymc3PGkHuxlV
	8vvlS2AAs8ThcEcStiJKP0iy8CwO1+0P8Xqrpwg/GoIwg=
X-Google-Smtp-Source: AGHT+IElFju5c0ol0hw7nESeIjDDTstVEiLNQomQ5v8H5idD7G4pKPF7+MO6caJyGVA3MvvQLK7alQ==
X-Received: by 2002:a17:907:2d0c:b0:b04:1957:8e72 with SMTP id a640c23a62f3a-b07c3ad9ce3mr161741066b.65.1757661870248;
        Fri, 12 Sep 2025 00:24:30 -0700 (PDT)
Received: from localhost (2001-1c00-3b8a-ea00-c4de-d39d-05f4-c77a.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b8a:ea00:c4de:d39d:5f4:c77a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07c2d043desm139043466b.40.2025.09.12.00.24.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 00:24:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 12 Sep 2025 09:24:29 +0200
Message-Id: <DCQN4RMOO9OV.8H4YABRJY4BV@fairphone.com>
To: "Tamura Dai" <kirinode0@gmail.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Joel Selvaraj"
 <joelselvaraj.oss@gmail.com>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <stable@vger.kernel.org>
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm845-shift-axolotl: Fix typo of
 compatible
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <38c24430-16ce-4d9a-8641-3340cc9364cf@kernel.org>
 <20250912070145.54312-1-kirinode0@gmail.com>
In-Reply-To: <20250912070145.54312-1-kirinode0@gmail.com>

Hi Tamura,

On Fri Sep 12, 2025 at 9:01 AM CEST, Tamura Dai wrote:
> The bug is a typo in the compatible string for the touchscreen node.
> According to Documentation/devicetree/bindings/input/touchscreen/edt-ft5x=
06.yaml,
> the correct compatible is "focaltech,ft8719", but the device tree used
> "focaltech,fts8719".

+Joel

I don't think this patch is really correct, in the sdm845-mainline fork
there's a different commit which has some more changes to make the
touchscreen work:

https://gitlab.com/sdm845-mainline/linux/-/commit/2ca76ac2e046158814b043fd4=
e37949014930d70

Regards
Luca


>
> Fixes: 45882459159de (arm64: dts: qcom: sdm845: add device tree for SHIFT=
6mq)
> Cc: stable@vger.kernel.org
> Signed-off-by: Tamura Dai <kirinode0@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts b/arch/arm=
64/boot/dts/qcom/sdm845-shift-axolotl.dts
> index 2cf7b5e1243c..a0b288d6162f 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> @@ -432,7 +432,7 @@ &i2c5 {
>  	status =3D "okay";
> =20
>  	touchscreen@38 {
> -		compatible =3D "focaltech,fts8719";
> +		compatible =3D "focaltech,ft8719";
>  		reg =3D <0x38>;
>  		wakeup-source;
>  		interrupt-parent =3D <&tlmm>;



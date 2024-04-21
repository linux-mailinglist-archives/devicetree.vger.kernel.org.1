Return-Path: <devicetree+bounces-61231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1408AC126
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 22:06:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DCF91C2017F
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 20:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9615741C87;
	Sun, 21 Apr 2024 20:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fxTpE8Ws"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AEF219F9
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 20:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713730009; cv=none; b=N8JwRvbqFF/Yir/RYAPIVnWWGvtIsQu3jF/Rx8XuJMw82eEGoFfu4XtDtHIE5O1LefNSe4W30TKrGRwoxfC1KV3lA/b9fv9I9fVa7VBW3eFqIF4aYAFowGZWkP1/WNP6gzJJLsHWFo1o39OEhWXZTeIBY3ii94wAP7UOK0IWOKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713730009; c=relaxed/simple;
	bh=hgojV3GIIl3CJ/W+5Aj/j6JOXjVVVtp4oVkpIJvA5Lc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QJGuTNm9bcBjNyNE4VIdwjEFVaxgrC6LeYjpIZMl+p0DcRyg4n0SaHoMdLaDxz/9La/XiqOvWCzot7s99QjtfYWMlO1ADw4k0u5AZOg3CIb0mp+12dC2hjMDIlDXh7q+clkj1IzL1ioHxQxw2jKuKTywLjYbnwRX8QjH2A7fCQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fxTpE8Ws; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-41a41c89954so3599515e9.0
        for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 13:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713730006; x=1714334806; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jL23OrHQEvtzokbYyBc6E+JAMoW6a1hpEFDs+++zhYo=;
        b=fxTpE8Wsfr9Fh79LRjh8Kyxe0afkziqqowd6Al/ldWz05k0aymtRskOqKgiFbMiIte
         KiQ8T788JkLVobWA9FIS7Q9nBlL8Ydo/UKm+zsEMRooCEQOsaDKTyBbRutpJGmnOZ5eq
         hal5HA9rMFtRBc0+pa64gJrVJMGJNjdHJ/5ho2tR7IYwbmBz+HMVz/3Z9IpNLYvOPBQ9
         7XJFHbuzg/d8tYwZny9wm2A51prJSsFa8EOR0chE5qDx1PEy5GDKw3L067+MSwZOel/f
         gJMeLMQqFOWfw4GslPbqL28lpvdJzE3ClJaTOeuUlV7JiSvxlElxtgQYWksV6Ae2dVbN
         B4pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713730006; x=1714334806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jL23OrHQEvtzokbYyBc6E+JAMoW6a1hpEFDs+++zhYo=;
        b=oTPLhaQthFwMLQb/H7jYyVnsSctZfTFGIP0JEPa/vYsH7GeOLIvKW4zGvJ8ssYhGdY
         MdfLm/VFoSMaoO6uwfW1+zoYi8PvlopKrzYOVD234VlEVK08JPIQs0lFyRyV3X+xq65T
         gyK6QAF/ymlevDmkHut3aYHNR0b+PrpkNC8FL/aBZIeEVq1eMHHK3Z2SZqp2fRvm4RE7
         KkUTLjxDv9LQWT5X2iGHhNjIhSRBjU2ec2VPyVDSjXW8Y+tNhklISoDONMTY7686mBqw
         0s3XBv19b1meFtYQMC4R94McHeCfa7MQSGBAt39N3JYtPmNbmpkPq+VfrFrZzZxyzoXi
         gqWA==
X-Gm-Message-State: AOJu0Yy0IB2VKA2fYPmw9Tn+HpkMQ+Q8DUqRTBc6tOs6w/QTlzMEj+Te
	ARXHufiQ3qjAtP7QkwnSN9kyQVj7D4pzGCNM95d+T9P424jXUveX
X-Google-Smtp-Source: AGHT+IGHSK1GUn0NJtEnOV4tdeXl3xAjml5XChwI32E0WIECeOtZb6ab6z+4WxvRuVKu1qbxxIXFsA==
X-Received: by 2002:a05:600c:4f41:b0:41a:ea0:4bbc with SMTP id m1-20020a05600c4f4100b0041a0ea04bbcmr3348701wmq.38.1713730006401;
        Sun, 21 Apr 2024 13:06:46 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id l16-20020a05600c4f1000b0041a1fee2854sm3699213wmq.17.2024.04.21.13.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Apr 2024 13:06:46 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, tglx@linutronix.de,
 Chris Morgan <macromorgan@hotmail.com>,
 Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH V2 2/2] arm64: dts: allwinner: h616: Add NMI device node
Date: Sun, 21 Apr 2024 22:06:45 +0200
Message-ID: <1882404.tdWV9SEqCh@jernej-laptop>
In-Reply-To: <20240418181615.1370179-3-macroalpha82@gmail.com>
References:
 <20240418181615.1370179-1-macroalpha82@gmail.com>
 <20240418181615.1370179-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne =C4=8Detrtek, 18. april 2024 ob 20:16:15 GMT +2 je Chris Morgan napisal=
(a):
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add device node for the H616 Non Maskable Interrupt (NMI) controller.
> This controller is present on all H616 boards and derivatives such as
> the T507 and H700. Note that on the H616 no NMI pad is exposed.
>=20
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/=
boot/dts/allwinner/sun50i-h616.dtsi
> index b2e85e52d1a1..1e066f3057be 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> @@ -775,6 +775,15 @@ r_ccu: clock@7010000 {
>  			#reset-cells =3D <1>;
>  		};
> =20
> +		nmi_intc: interrupt-controller@7010320 {
> +			compatible =3D "allwinner,sun50i-h616-nmi",
> +				     "allwinner,sun9i-a80-nmi";
> +			reg =3D <0x07010320 0xc>;
> +			interrupt-controller;
> +			#interrupt-cells =3D <2>;
> +			interrupts =3D <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
>  		r_pio: pinctrl@7022000 {
>  			compatible =3D "allwinner,sun50i-h616-r-pinctrl";
>  			reg =3D <0x07022000 0x400>;
>=20






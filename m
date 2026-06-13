Return-Path: <devicetree+bounces-311262-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UZ2bLOESLWq/awQAu9opvQ
	(envelope-from <devicetree+bounces-311262-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:20:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4081B67E1E2
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:20:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=a5wM6jYe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311262-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311262-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 906B030157CB
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58E8039E9C8;
	Sat, 13 Jun 2026 08:20:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0643C4143
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 08:20:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781338840; cv=none; b=gETyKqG0+8FuAw9TG3Zh/9bBs2J9d5TcKx1eay52H3n6xUFIFI4ibDkhiBizfRW4G1YyPk7DwoXFUTFYw7q6B41RrCqfITuBztfTPfH4kIW4/1ptZ/7C08cq107W1Rrkyr1OKkIXzW+KC5MISvwCksP1iZwE0aZpy0Aq+pwMbQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781338840; c=relaxed/simple;
	bh=sv6/e/ZTEkkgP8TdkpODVWO7G+8MZcZpFN0/dqmSQ2s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=snrhwG39r58f+VRd4/RdWJqJtSMl2QeZsP6pthrAkZwRgt56+nD/7P2CoZ5B3jEAwOmPms/YCL7fFfLhSXBRXRTC3AX/uMrSZZWo94eFm+8qJUtXfOl9sQ9MQ1zE5HJ95ZIWafEJu4E7D75QsA9HEjncXyNAUWrnosjbnnDSIq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a5wM6jYe; arc=none smtp.client-ip=209.85.128.48
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-490b915ded5so16781795e9.3
        for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 01:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781338837; x=1781943637; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ud8CqUMs31Lbag+rPY0L/C65qKiCj6gLmHREZB+Ipfw=;
        b=a5wM6jYeOzlQFGFEgovDEwHqTGHDsbXcWZV95mfihKJpW1g+6dGbf91NPDWL/x5dn7
         Ny5YrLt0FRcaSK3H0YpfyXFxZOaIcPZMqQmtoIroZ2OzScgVAUtExD4+xfHxgFq3Ydvf
         FFg3+ZtpeMJq0dugsrXMifsZl+w63rxzdffm0mVhPm9hKEudK5I9b7tZfcYZvOecxhrI
         mzJjxy+WurhqhnrQVi6dyF0Tiu1WHkspFYfDvk59qoDsuGqoEe74qNEsBI9dw7iK4Xei
         OpXLDKfqiTuo1n4Tq9AqT/NjJ8o0RA8NklmHM92DHPt0D1P8kFx4xec6ag28ip5N1fqF
         uMWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781338837; x=1781943637;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ud8CqUMs31Lbag+rPY0L/C65qKiCj6gLmHREZB+Ipfw=;
        b=jG2UXKXHrTb8eYKbmysj/HcWBEAzIOdu622q+3voF7jcgW7RrjLhGAlhZjmTej3W7M
         hpvxXTRZGLsoRsqkTislmr0eE7qkeKaGSx3UammBlZAoN1Q40w131/jgBqtAQKe5a0ET
         qIB2s6ZkMAHENptox+77gjFmVw1OWsk0jcPH//h9lDjR47UejXVtfGtsnNElykxYwm1G
         9gI3JUBBqHv5OHVrzbHs6Lboz9qY8dFopANljGxFZ2QOEv6X6/PRNTnqvJuFkMrqjeE8
         /eT5tHThBeDVZhxUIA4qlbZUfboMRiOS9en7smunDK7q1LxUfVzy0VNJtoea1Lk502Tm
         DGLQ==
X-Forwarded-Encrypted: i=1; AFNElJ9LpwKx16ZYBIRmKgVpan/BkXL+CNq5xQzYg3qA/n7tnuWFSWl1M2OKf/6yEGVYEXHuHwl9le+6aFHD@vger.kernel.org
X-Gm-Message-State: AOJu0YxqNVEOxZkjE7sRP8RdIG5/O71GXmnmH5sxyRkq6kqQtbk6FbAQ
	ol491bgJ3oez1ls8wF7UEaBuMmxZ+wbJMM+SHwZ1wbs5R5VRGvwe3l1k
X-Gm-Gg: Acq92OH49Nxn1rlc3vw1JiEKz1WD27I0ZzU6/Sy0Ad8rhw1zIqLCdcL2a6q1kZDBxSg
	Hmetrw5XTO7fMKiu7yF941ir3X3cs0D8HAgCI/LtarOmr3AApnuHy8jKlKG3+RPkZu3GyHu3AhO
	zQIv/2RF44Sdn5mmYV+vFpzE3e+lusBSorlv2mRyk/hn6DJZZlc3bMTUXnXhB1klpE/k1obb3tE
	4LBHUtuzBEbKEmrO56/6XqV/GOmJ5rPveU4V2FrOQCMVNJW+StHms639Gky/yY/MvGVq6eHM/8I
	zMTfUGI1wpQy/v7IIjg7iaCmfzttQARnh0y2HYEKJKNSeUSTtruzOuTFht51BMlUyjwTxPZMdsl
	XYwmE2ykluFZYjjglbZmcbhmMBhFQg30QsP/Tuzawv7CI4qxG8ec1ISNqW/7pFJG3oBUV0qoKLy
	GAPx4XDGQKKh1CzhZgL3o2VkiPQxJFLOG2tnZjSdxdvj8Z
X-Received: by 2002:a05:600c:c3cd:20b0:490:d3ef:fa4a with SMTP id 5b1f17b1804b1-490ec4ea4f1mr58033045e9.14.1781338837061;
        Sat, 13 Jun 2026 01:20:37 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4922032ae56sm54483765e9.7.2026.06.13.01.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jun 2026 01:20:36 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Hans de Goede <hansg@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Andre Przywara <andre.przywara@arm.com>, Jun Yan <jerrysteve1101@gmail.com>,
 Lukas Schmid <lukas.schmid@netcube.li>,
 =?UTF-8?B?Si4gTmV1c2Now6RmZXI=?= <j.ne@posteo.net>,
 Eric Biggers <ebiggers@kernel.org>, Michal Simek <michal.simek@amd.com>,
 Luca Weiss <luca@lucaweiss.eu>, Sven Peter <sven@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org
Subject: Re: [PATCH v4 5/7] arm64: dts: allwinner: a100: Add LRADC node
Date: Sat, 13 Jun 2026 10:20:35 +0200
Message-ID: <5lITDd8mTsaQJaoJhGu1EA@gmail.com>
In-Reply-To: <20260605070923.3045073-6-alexander.sverdlin@gmail.com>
References:
 <20260605070923.3045073-1-alexander.sverdlin@gmail.com>
 <20260605070923.3045073-6-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311262-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:alexander.sverdlin@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:samuel@sholland.org,m:hansg@kernel.org,m:dmitry.torokhov@gmail.com,m:andre.przywara@arm.com,m:jerrysteve1101@gmail.com,m:lukas.schmid@netcube.li,m:j.ne@posteo.net,m:ebiggers@kernel.org,m:michal.simek@amd.com,m:luca@lucaweiss.eu,m:sven@kernel.org,m:mripard@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-input@vger.kernel.org,m:alexandersverdlin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[lists.infradead.org,lists.linux.dev,gmail.com];
	FORGED_SENDER(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,sholland.org,arm.com,netcube.li,posteo.net,amd.com,lucaweiss.eu,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4081B67E1E2

Dne petek, 5. junij 2026 ob 09:09:19 Srednjeevropski poletni =C4=8Das je Al=
exander Sverdlin napisal(a):
> A100/A133 SoCs feature a Low Rate ADC (LRADC) for Key application.
>=20
> Specs:
> - Power supply voltage: 1.8 V
> - Reference voltage: 1.35 V
> - Interrupt support
> - Support Hold Key and General Key
> - Support normal, continue and single work mode
> - 6-bits resolution, sample rate up to 2 kHz
> - Voltage input range between 0 and 1.35 V
>=20
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> ---
> Changelog:
> v4:
> - added allwinner,sun50i-a100-lradc compatible
> v3:
> - new patch
>=20
>  arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi b/arch/arm64/=
boot/dts/allwinner/sun50i-a100.dtsi
> index b3fb1e0ee796..7cb06b19b5a5 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
> @@ -466,6 +466,15 @@ ths: thermal-sensor@5070400 {
>  			#thermal-sensor-cells =3D <1>;
>  		};
> =20
> +		lradc: lradc@5070800 {
> +			compatible =3D "allwinner,sun50i-a100-lradc", "allwinner,sun50i-r329-=
lradc";

Break this into two lines, like usb_otg below. With that:
Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej Skrabec

> +			reg =3D <0x05070800 0x400>;
> +			interrupts =3D <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&ccu CLK_BUS_LRADC>;
> +			resets =3D <&ccu RST_BUS_LRADC>;
> +			status =3D "disabled";
> +		};
> +
>  		usb_otg: usb@5100000 {
>  			compatible =3D "allwinner,sun50i-a100-musb",
>  				     "allwinner,sun8i-a33-musb";
>=20






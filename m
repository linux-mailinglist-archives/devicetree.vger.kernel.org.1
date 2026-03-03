Return-Path: <devicetree+bounces-270701-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOAkNNcqp2nSfAAAu9opvQ
	(envelope-from <devicetree+bounces-270701-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 19:39:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A60D1F565A
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 19:39:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0D49302E324
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 18:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26B043C278F;
	Tue,  3 Mar 2026 18:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hwJkfc1c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E12370D4C
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 18:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772563111; cv=none; b=crzDgpP4d9mgqmEamcAHmaiwB4ECNH1Q0MPFr0NIVrZfH1vr34u/HqEhAasbAMHqL7dekwSLxRTPAZSjMYupkTJkDBdG8eFGdnfeeK3ICjWm0ZfJ3ZeCGoKmwrUfRXTVOhYKu6gwC2ybDM6kqRbdlpHHctBhVtM5Fm5KnyZmr/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772563111; c=relaxed/simple;
	bh=0B+INJpmx5ghoy4TOBH7nj7HmVMBE/uFPhIqDvN0Pw4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fUcps37pc6DWcymT5onFl8p7yLTzrjpZAzQeRoySP9QpqGMQhs7mwHdO1V5Kl7tCGOb6pVRwR1bLDMauADtRQQiT9RlEbyRIYQKWPz4ZT5b1KJeKjn4SqZAqFRbs2HsChJ2yctmQbgD3of+1+oWKnyTtXtb4Th1pVYgvEwuCNt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hwJkfc1c; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48336a6e932so37196305e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 10:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772563108; x=1773167908; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zWbdBUMEXH4g8LJKj8OiXeXSCrn4OD1jl9QXgu59+fk=;
        b=hwJkfc1cV19NKvrFAg9Zhbb9LMYinunRgAUMKcsvWF7S69CzTZ5XdORJ2UDDbrjo97
         CrgUnEEnuWYKzj4kuPB1riMmdigKFuXAmthxz6V/P73bZtjXDpv/VxyI8wGTZWjmwXvP
         334agoFC2rxEinkzPcx+YcLAHrEWMBtfDpOisidNyb/u3qNugqAboTl4f2syGPh73jtx
         XOWu9JUnfkHFqyEe0Hsoab+LTXA9SWjPlTRFA7/uAq+oFCQHoaLnDHz3SHFl9fTTpUv3
         Fyatmpz6mo7V+bm9BoejKuYvEy++qMmCf5WJiMKlTuWwQiGOr1cW78+u7TFHmFo56B+W
         5iHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772563108; x=1773167908;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zWbdBUMEXH4g8LJKj8OiXeXSCrn4OD1jl9QXgu59+fk=;
        b=XR+8gZx6JabrPni2e5EkaYUxiT5/SGgwuJ4XcfkK1ryz6aMiFrq0XX5OnaX8ZipQyU
         qscVd7Gy3+0/JMBv/qV4OIIQN2uj9ANocWgAbJh272ynpUAs6PZtLOv4fg3iMZjBYcBM
         5WLqbt5QoZmtcR8VeyXMcHL9j1zgTNdHqJZg3J54wWZr7L108wKms+uXF9XzeXxc3Eh8
         B4lmWE0GoCz7O00n9C6yhVUH6wKBIcpFWOBlfUPmDpm25MEK9gYEkNLvsP5MysjRMRvp
         u3syl8Wo/d3z4akJUxIY7qs01WI2DNU8EQwx9IbLGmpty8YafKMW5djrVIIrd7SkuiV/
         LcVQ==
X-Gm-Message-State: AOJu0YwSVfaEaJ0U0VlKmoE0HCrt3nbpUnEJe3u8UEweKLJWebSqV3te
	0+QBQaX5sdG1/T2VL6gFB+qgiFpyHc96k1pWO18FRWaWM6z7KIAfA+03cD6ZDQ==
X-Gm-Gg: ATEYQzwYW3n+n1WxoRL9OL0j+DhzQ/WAsCPo4nVE2J8+n2cGBnkEIUjLD/gzLLPw6Tv
	SkSykL1x757cq2mRFomYWRWEV4wAwKbB61KSn3srySx1Yz6Zzib7IsK+EaMwelrp9+YJrNyeCk6
	XYL0QXERTETnPVs6BhLXfivQxAdbshFOQoSsb9IcjByGip+/hmxnFC8wPGtL+g9OGlG0kAig+EK
	4JzyXoVKb+6io6BleIPf2QW4jJmQZWUNUZMjE/52ZRswDKFw6PlHPUWFe5luNxmLdO1WQEZmhlj
	VvCsxI1bj7AZN3GBE2jla+1ixN0ZhUAk4i0Scyx21XpgOGf5JnJh4s7v0re7MqrRV2oCUeAzWLB
	Dli7lkWqsmuSE0k74PXqaaCg4vO080L1iz7HQTcWVE6gA38e1xZz80PwTrPJvcwGC2p6LP8WEqh
	+aYbG6+UGjRWG73qz9eDSko7ByJ8Tn31S1mDg3wnXQgbCBf0s3s3itVd+/rzVku8vxjmdMqW0Td
	b5ugPao7FGf/tkcpVk=
X-Received: by 2002:a05:600c:1e85:b0:47d:3ffa:5f03 with SMTP id 5b1f17b1804b1-483c9bbbe23mr300242825e9.21.1772563107874;
        Tue, 03 Mar 2026 10:38:27 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-126-118.dynamic.telemach.net. [86.58.126.118])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b841absm409737345e9.13.2026.03.03.10.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 10:38:27 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Jun Yan <jerrysteve1101@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, wens@kernel.org,
 samuel@sholland.org, mripard@kernel.org, andre.przywara@arm.com,
 Jun Yan <jerrysteve1101@gmail.com>
Subject:
 Re: [PATCH v3 3/3] arm64: dts: allwinner: h6: Add TaiqiCat (TQC) A01 support
Date: Tue, 03 Mar 2026 19:38:26 +0100
Message-ID: <5969847.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <20260302020956.96424-4-jerrysteve1101@gmail.com>
References:
 <20260302020956.96424-1-jerrysteve1101@gmail.com>
 <20260302020956.96424-4-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: 1A60D1F565A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270701-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,sholland.org,arm.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,arm.com:email,archive.org:url]
X-Rspamd-Action: no action

Dne ponedeljek, 2. marec 2026 ob 03:09:56 Srednjeevropski standardni =C4=8D=
as je Jun Yan napisal(a):
> TaiqiCat (TQC) A01 is a set-top box powered by an Allwinner H6 SoC,
> equipped with an AXP305 PMIC, 1GB LPDDR3 RAM, 8GB eMMC, an AP6212
> WiFi/BT combo module, one 100M Ethernet port, one USB 3.0 Type-A port,
> one USB 2.0 Type-A port, one Micro USB port, HDMI, SPDIF, Micro-SD, and
> infrared input.
>=20
> It was released by Ultrapower(UQSoft) as a blockchain-based terminal and =
is
> now discontinued and no longer supported.
>=20
>   https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn=
/product.html
>=20
> Hardware schematics are not available at this time; however, the
> dts from the vendor firmware is provided for reference [1].
>=20
> Based on the PCB silkscreen marking "AZW-KT02 2.0", the ODM/OEM
> can be confirmed as AZW, and the overall hardware circuit design
> is highly similar to the Beelink GS1.
>=20
> Tested, works:
> - debug UART
> - status LED
> - USB 3.0 Type-A port
> - USB 2.0 Type-A port
> - Micro USB port (Host)
> - MicroSD
> - eMMC
> - WiFi/Bluetooth
> - HDMI video output
>=20
> Does not work:
> - Ethernet (requires AC200 MFD/EPHY driver)
> - HDMI audio
>=20
> Untested:
> - SPDIF
> - IR receiver
>=20
> [1] https://archive.org/download/tqc-a01-stock-fw/tqc-a01-stock-fw.dts
>=20
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../dts/allwinner/sun50i-h6-taiqicat-a01.dts  | 361 ++++++++++++++++++
>  2 files changed, 362 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-taiqicat-a01.=
dts
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts=
/allwinner/Makefile
> index 2edfa7bf4ab3..d116864b6c2b 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -38,6 +38,7 @@ dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-orangepi-lite2.=
dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-orangepi-one-plus.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-pine-h64.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-pine-h64-model-b.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-taiqicat-a01.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-tanix-tx6.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-tanix-tx6-mini.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h313-tanix-tx1.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-taiqicat-a01.dts b/a=
rch/arm64/boot/dts/allwinner/sun50i-h6-taiqicat-a01.dts
> new file mode 100644
> index 000000000000..3138292abb45
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-taiqicat-a01.dts
> @@ -0,0 +1,361 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (C) 2026 Jun Yan <jerrysteve1101@gmail.com>
> +
> +/dts-v1/;
> +
> +#include "sun50i-h6.dtsi"
> +#include "sun50i-h6-cpu-opp.dtsi"
> +#include "sun50i-h6-gpu-opp.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	model =3D "TaiqiCat (TQC) A01";
> +	compatible =3D "ultrapower,taiqicat-a01", "allwinner,sun50i-h6";
> +
> +	aliases {
> +		ethernet0 =3D &sdio_wifi;

Wifi has alias ethernet1 on H6.

Other that that, it looks good. With that fixed:
Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej




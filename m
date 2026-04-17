Return-Path: <devicetree+bounces-288332-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2dhnDwEX42nxBwEAu9opvQ
	(envelope-from <devicetree+bounces-288332-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 18 Apr 2026 07:30:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 470A342002E
	for <lists+devicetree@lfdr.de>; Sat, 18 Apr 2026 07:30:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8B2EA302735A
	for <lists+devicetree@lfdr.de>; Sat, 18 Apr 2026 05:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13B84342CB3;
	Sat, 18 Apr 2026 05:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HyPjaF87"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE2927CB35
	for <devicetree@vger.kernel.org>; Sat, 18 Apr 2026 05:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776490187; cv=none; b=TMR2ir8OScm35DMI0EaMdaYzvdNkkJ0hTKxAoRpGdeOaGq5t0m/FTVr7NxQUgtPeQcnsIOAldOFqDy2uupngPflJqpT24l7cKzQsTLjVdSU1gr5UAXgzLO6zR4Mk0A920YTfJwtW+GyTqab1G+vjzvaZT5LpENn0W82wpMfHltc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776490187; c=relaxed/simple;
	bh=w2lV6yC4k2EbLUaFguBxKzs3MB3cxMwZ+q+LhjXlej0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=c+VR9L1D4XsvAAZI4NOcaD90b7HfpgvnKffefGP/2e3UOGxfqvbOK7nSv6mC4lkGjriPhckPGRXZ+UJVVUtzWtpJ5lDCWm+Dgz81Dz/phgXEL+hi5BmS5MwIBBIAMDyMxaUwX6ft7tp0fnhpLDin00+QMDqqOZGurvpT5WCvgvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HyPjaF87; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4887f49ec5aso17213595e9.1
        for <devicetree@vger.kernel.org>; Fri, 17 Apr 2026 22:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776490183; x=1777094983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OqIGWzZtvPAAeCWKpwkY2/edDBYVB2pJE2Twv+s/yFw=;
        b=HyPjaF87qTFgaLCauQK02wBsO/gAskE1ji3AX8p3neOyZbxTxq71xJQCPPPghAnMg9
         cLR5n8CYawomPyQmMzSfWQyJ5r7GC9oJcTWUaJttbt1IywNeFGrhaveS5vE+87y6pEjR
         AgSWc7CtSRw4YUiGQxqUzqdHh4T1FZCo63QdRsIGgg4SnNF5ojM8c/wUJ3Fusgz+nk+Q
         daFAYKrzE0d9qkmyxOPCwOnNo81ytzRxwdGnik7j55m0pm2NJkqP/oh2zPgm4MCAhRvW
         qChumI4RdO6YkB5/NeMmHTKYALusmDUrBtBv2oOMKYkNmHp+yJ5xKVtF/TNB52lROGVr
         BJug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776490183; x=1777094983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OqIGWzZtvPAAeCWKpwkY2/edDBYVB2pJE2Twv+s/yFw=;
        b=AGF/gasMbB2PD6pGbmzbifHSNGAFIWOOSHiKgMcZGWVh51Mr/7aOUSnYiTrwQoMlOz
         mSqxfrY6LqanN7Ony2t+RYh57SIL1KHWvCHT6Z9Ot95pD+GilFzC6FLX12cSKYwZ9XVP
         wgnGzO0i6/JmKQSj2t+eO6cNWieogp6bjPecSkUq2W9DBFY9VX/EkZgdNPQ/gagEQV1m
         AIbxdPSlaet6hxH7aukG1YHYnShn+yoSIpyGmdnafsRGt7WKWCg/Ozs7ms243cCSTX5Y
         HQv7F/UgEYyOj28CmieWeX7jCqngn97em9Z99/W4yKr/IymB862MScyFQj4G8JA4ACPt
         zrGg==
X-Gm-Message-State: AOJu0YzjsxMUQ4C0DWEZ8aZGqyNgZvMP+xwbUIGgqeNdebZn5GI44Qcd
	pF5u/YyZ3yuk/w+SiEk37rxZJvT9supVqQK+3Wiyn3g4AE9R2OReu+SB
X-Gm-Gg: AeBDievzs5fP4xxasoayfnItrBfdpIYVFBjGM+0PINbDXcCDYFHh6R/mDlIbkaOjsgX
	dpvFo2w8rkBoTi1S8H7b6iCSTvkwX/7SPfQSZ9hRwihdZ5ywA2kCjg4AxBmgb4R7lbSt44OJDMI
	W4iYzkkkHnhphwffhBW2J+XXpTRKkZ7FXCRahF8psDe3Zq6gzpRi1KdrIsnub921ilHmgt8Qsh5
	ZLHfRS1bOSNWqKMDwslfRV9yEcf11r+w1gfLAaSMkO9Ldq47Gj7Q86w1sGe5tIWiWoHjud5sMpk
	ZH5+HnAMYgJ+52lU+ZUACmRblJBA4UYJ6rJGIO+GQLZSmS/M+nxMjQsCAUMksnouuE+YBCSGQJY
	5ANdQBu9MHAOaPCrssP3iN8ZW1nVKuFWC/RD67M4B430wCAKWBiGNZ+k4NvPINSrC8S3ktgvHyi
	VuU6OH/Vrm1cUgRZpECvuORo6koHbElNRo0qVaZR8bXUX7EmZtQ45spz0=
X-Received: by 2002:a05:600c:3110:b0:488:8c89:cfaa with SMTP id 5b1f17b1804b1-488fb73841dmr76103025e9.3.1776490182315;
        Fri, 17 Apr 2026 22:29:42 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fb75ab25sm33521165e9.11.2026.04.17.22.29.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2026 22:29:41 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Michal Piekos <michal.piekos@mmpsystems.pl>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 Michal Piekos <michal.piekos@mmpsystems.pl>
Subject:
 Re: [PATCH] arm: dts: allwinner: t113s mangopi: enable watchdog for reboot
Date: Fri, 17 Apr 2026 20:19:20 +0200
Message-ID: <2825865.mvXUDI8C0e@jernej-laptop>
In-Reply-To:
 <20260412-t113-mangopi-reboot-hang-v1-1-5002cfa6e0cc@mmpsystems.pl>
References:
 <20260412-t113-mangopi-reboot-hang-v1-1-5002cfa6e0cc@mmpsystems.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288332-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mmpsystems.pl:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 470A342002E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

Dne nedelja, 12. april 2026 ob 19:42:10 Srednjeevropski poletni =C4=8Das je=
 Michal Piekos napisal(a):
> Reboot hangs on MangoPi MQ-R T113s because no restart handler is
> available.
>=20
> Enable the SoC watchdog whose driver registers a restart handler.
>=20
> Tested on MangoPi MQ-R T113s.
>=20
> Signed-off-by: Michal Piekos <michal.piekos@mmpsystems.pl>
> ---
>  arch/arm/boot/dts/allwinner/sun8i-t113s-mangopi-mq-r-t113.dts | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/allwinner/sun8i-t113s-mangopi-mq-r-t113.dt=
s b/arch/arm/boot/dts/allwinner/sun8i-t113s-mangopi-mq-r-t113.dts
> index 8b3a75383816..f0232a5e903b 100644
> --- a/arch/arm/boot/dts/allwinner/sun8i-t113s-mangopi-mq-r-t113.dts
> +++ b/arch/arm/boot/dts/allwinner/sun8i-t113s-mangopi-mq-r-t113.dts
> @@ -33,3 +33,7 @@ rtl8189ftv: wifi@1 {
>  		interrupt-names =3D "host-wake";
>  	};
>  };
> +
> +&wdt {
> +	status =3D "okay";
> +};

Move this to sun8i-t113s.dtsi. All t113 boards have the same issue.
Watchdog should be always enabled on ARM.

Best regards,
Jernej





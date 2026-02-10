Return-Path: <devicetree+bounces-264439-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EvcNp8+i2mfRwAAu9opvQ
	(envelope-from <devicetree+bounces-264439-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:20:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F26DD11BD09
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:20:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7C68730055C3
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DAF4366813;
	Tue, 10 Feb 2026 14:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D5yk/LBe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f47.google.com (mail-dl1-f47.google.com [74.125.82.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A05030E0CC
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 14:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770733210; cv=pass; b=QQjKvCzinurPP2F/0wQG1En1yK0ysXFxNwyRsOVksKsAig+sx+OebWOYyHAjKli1yuypb7pbhZxLJ+e7h1ttJhBb7GSwlDnLMuBYTdYYnDyV7Ahupaia8bJ01+SdhODzvtP63r+CC4qjlM7q8IV69CQtl2FTAGXpDJjU81L8eCE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770733210; c=relaxed/simple;
	bh=HWAPDOPHGsIADIUA/tNycOqyhfgD2V6TuXz+MSfX++c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rH2smYGtyHbBOFf9mHPUIhSZ3nKj0t7nA7kCbGTmC5GpmwoWPy/zv4sVpmrgcD73vzzD+uOZcwESnc3rEfb3GVLlUyfXLUDmjQt3i+VLC5je0WwBfZBeXC2abRLivW7VbHk5k2DoYJy9rn3u2d0rd4E2Bo+atpFf45UmBW9Y0+U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D5yk/LBe; arc=pass smtp.client-ip=74.125.82.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f47.google.com with SMTP id a92af1059eb24-124a635476fso1104774c88.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 06:20:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770733208; cv=none;
        d=google.com; s=arc-20240605;
        b=i8zUEDYN2MrQZi3r9rN/0lb93acikN8Cn7F9LHJd79qfrvFZWpyI5ib7Dd+gNONzyV
         fEgV72vDlc+RvvI3YS1SN8a6r+QY/4yhhO6okaW6t7de2UpmDmXCF49Yn+8B5E8sEQRh
         r/g1hsnvlPWArq5KC+fXyM2+HpRGRhZdKNfAQD4rCXvWBwthXOaDvbhFOZIwnp+uCQWo
         09DGyeZGfLtIYJk297iP03OJMH2y1+MwoVRf4bkbeg86f3tgxOPMIJ7PYa8YGY5nqepI
         Dsfy1GxjSMo9CyA5oxd1iRuXfXcpXbgJ21+L0EIXTFuktApuS9gJYZadfe1OLu7zTdsN
         b3yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HWAPDOPHGsIADIUA/tNycOqyhfgD2V6TuXz+MSfX++c=;
        fh=p/xcI1L9h1yoG8rqyIg1bfjOHitxm5nsPIA+xF4BG3w=;
        b=RKFST6O0oPEc6JMxZjGrbYSfIVFJynoaO91yHt4MfPvWGLDyw6KxbKMh2cjsNjUPIh
         DeBEygxkUhJ5EIQ1wVp7DJa4NtoWvTGlQHl6hzwRWKeya8U4GPgDWsPYHBLa2a/XeaCV
         oQ4gUSNGJOvIdMbYqXA8YojBtnMJsh2g7ACIjrEQOF9w4h2EhJrTOczfZYSqu/+PpXmr
         rpU0i1pfgxOsYTR4MLJYV77pSWlREv7ab/vArBMdj5B3ZCXIWZj68ZDT9A58w14Bw96I
         oGZp86mB0kmKZMMCrGpNqcjJeRiYSEiUckJhGdr8d6fY4wARG+3fPwFDok5kVs5zbgZI
         uKYw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770733208; x=1771338008; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HWAPDOPHGsIADIUA/tNycOqyhfgD2V6TuXz+MSfX++c=;
        b=D5yk/LBeH7Y7jOU6YTQiCRnXhN7u1iErGF0w67zIiwTfgZtgQKB4ats9JN9em4kFDP
         ana/A5vq+0DecMyKKZwB3gCWMIh0Y7TJEfl7QxI1+8jDO62mw+mt+MSq6zpWv5sC7kLg
         02aAdX2/iYyNR58Z47n2etvURBHvV9s7EeTf6jp9sg2bl//aw4fiU2JIC6ID0dHupRme
         FVzbcthmJ+JXfmKxOkgICwNvRMNxYuAuBoIX2zmaARQppQHjbPH3rjlD8N1pcHjPKLE5
         rSFPknLdbXgAbw7sg+/HbBrG09bg+DDDNDUikF1J8DnIfY3hzEYervkQf4B7vrS8BQLd
         4jwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770733208; x=1771338008;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HWAPDOPHGsIADIUA/tNycOqyhfgD2V6TuXz+MSfX++c=;
        b=tQ7o+67aCb1xWVrx6VvIQjQg44QQTF2o8Fx7sxbN8BzwG4xW+cjfMsWnJL4L7QdXpg
         9e6mNx2PBsuBHgneKA+2SdumYgMqtJ8NPdgBOHBTZA9IPsIXAP0f83kRgC5gQvPgOjI/
         3Sxo/daBYPp39y2M7vi1I3YW54k3vBYu38XvCcNd57VXnCF/3gGgSZU508WmXJXOKU8U
         em0Iwoe4/xxAigX51sik/ryw5AIlxFybu2PAzPai7LMYFYaIRQoiekTvgQClAP//KnZy
         qjXT0t6GQLl3sKjhWkS4yn3KsCoLjBD2BsReHVsTEHACb3TQ2W0TJQoVUtfPR5ZgJlBh
         0wHg==
X-Forwarded-Encrypted: i=1; AJvYcCUILLXGvDNLR3BsD7mc3zoyXdXi1y/D4O+QjYrTsRr/7+DvI28KHkc4ErUffAHlNvuOvPmNpgK35525@vger.kernel.org
X-Gm-Message-State: AOJu0YyaRioVtzHamP6LEzpICKD5xsxNxPQzh0wruaJ/VpY5a5YMyjmZ
	3AotQyo56KwX2fFwnKqHjURkq3zYrLLQ0sKWdUbzQozciTgupsErXb6QgesFOxVOghjHH6cK8wY
	X4b01WCTIidEG9RxY6BuqZpqRZKo5siw=
X-Gm-Gg: AZuq6aIaF+JVtE/q87aamJ/cZHeJVaX0zwiaTeHZQD9aw9Fp/zXWov7oJC9bCiXtukY
	Rjb67A5L90Td0nOTEiBq9IBiIngAXxHESVxEQA+ptYlj5UJs85yU4sCnYlRbT2nTYY75YaiU5zr
	11VQutPrKnS5G8eezLbwjjrc14QtN3IrQUFoE42VDqt0HbKzjmTaeeSwPa5QOwdtt9J6QiGMdLb
	GFMIELq5Szm340sy9vh8UN1l2kTb8glxh4g3atlxpkCWsUB4yu5hVf6+x/cFPQX84NLhmGmLMul
	d4VuJx+ME9uE6DPJN9ZjocemTQsyw5jWfKyRzYc3URkwHFeTfed2DNVPZ4XNuwrhnsAsOqFf83i
	YGGUW9us3iG2yDRcYb/FwHQ==
X-Received: by 2002:a05:7022:699f:b0:11f:3483:bbb2 with SMTP id
 a92af1059eb24-12704010c61mr6241858c88.12.1770733208182; Tue, 10 Feb 2026
 06:20:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260210-imx91s-frdm-v5-0-b3e9a67d2285@nxp.com> <20260210-imx91s-frdm-v5-2-b3e9a67d2285@nxp.com>
In-Reply-To: <20260210-imx91s-frdm-v5-2-b3e9a67d2285@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 10 Feb 2026 16:22:51 +0200
X-Gm-Features: AZwV_Qi9nzL8plrh9S_oCJOUxLkKzuCBMraJPAzRuE6y3RzYD0VAbIX8BlC4J5w
Message-ID: <CAEnQRZCXwJUz5rw0dWP_rVbjw=ianqADbjXaX=fPvmMY+C6KRg@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] arm64: dts: freescale: add NXP FRDM-IMX91S board support
To: Yanan Yang <yanan.yang@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, qijian.guo@nxp.com, 
	justin.jiang@nxp.com, Lei Xu <lei.xu@nxp.com>, Xiaofeng Wei <xiaofeng.wei@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264439-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,nxp.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,nxp.com:url,nxp.com:email]
X-Rspamd-Queue-Id: F26DD11BD09
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 12:49=E2=80=AFPM Yanan Yang <yanan.yang@nxp.com> wr=
ote:
>
> Add DeviceTree support for the NXP FRDM-IMX91S development board based
> on the i.MX91 SoC. FRDM-IMX91S is a cost-optimized variant of FRDM-IMX91
> and differs in memory, storage, Ethernet, and PMIC configuration:
>
> - 512MB LPDDR4 (FRDM-IMX91 uses 1GB)
> - 256MB FlexSPI-NAND (FRDM-IMX91 uses 8GB eMMC)
> - Single GbE port (FRDM-IMX91 has dual GbE)
> - PMIC PF9453 (FRDM-IMX91 uses PCA9451A)
>
> This DT enables:
> - ADC1
> - UART1 and UART5
> - I2C bus and children nodes
> - USB and related nodes
> - uSDHC1 and uSDHC2
> - FlexSPI NAND flash
> - Watchdog3
> - Ethernet (eqos)
> - FlexCAN
> - MQS
>
> Link: https://www.nxp.com/design/design-center/development-boards-and-des=
igns/FRDM-IMX91S
> (FRDM-IMX91S board page)
> Link: https://www.nxp.com/design/design-center/development-boards-and-des=
igns/FRDM-IMX91
> (FRDM-IMX91 board page)


Tested-by: Daniel Baluta <daniel.baluta@nxp.com>

Used your patches on top of linux-next 20260209 and managed to boot the boa=
rd
using serial downloader and rootfs via nfs.


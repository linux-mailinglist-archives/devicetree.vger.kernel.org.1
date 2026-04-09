Return-Path: <devicetree+bounces-286018-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIRtGkdh12keNQgAu9opvQ
	(envelope-from <devicetree+bounces-286018-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 10:20:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C477B3C7ACA
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 10:20:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39D05304E316
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 08:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3A68355F4F;
	Thu,  9 Apr 2026 08:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="r1HkkXUH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD7138838F
	for <devicetree@vger.kernel.org>; Thu,  9 Apr 2026 08:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775722542; cv=none; b=ZaC8Llts1xFioVPvg02wx0oZ6mjexySXwH4vtAYUtvXiXxh/YR6+L1enCgn10EKDGofscqM1gAvM5sZm48ljSnEtmFU9LmmKHq2R9xDgnuLDBNqSNS6YEmYlXsoKtKt3AfBZn/USydzmt7PvSQKUtC/4VkoxM67XxHHdwSVScYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775722542; c=relaxed/simple;
	bh=gGOYm5JUaNKc4HwAwGvH6PthwvR4u5tZurrxiG4WjpM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=No3ZC2f3tDfF26Lpx9yX8ogNXItRBNBdH2J+h8y/cWfZbTTEDLqilD/sFyJyBBrgRC1vG4WQ0BNi4r0vL5SILnaqCFuMLi1e97kPTjObaxfQZWcifz1yR3B8YdgGEPVEBod6ZwBmfFS5p0LYP+3U/3b0BO+CDCE3UAex4WLoxjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=r1HkkXUH; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 3ED1E1A31F7;
	Thu,  9 Apr 2026 08:15:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 114105FDEB;
	Thu,  9 Apr 2026 08:15:33 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id ADD2F1045022E;
	Thu,  9 Apr 2026 10:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775722532; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=5RNSE3ufA8gLPjXh9tO8uxYCJoZORLDy0cXiQmS6dbg=;
	b=r1HkkXUHEaOVxOe99BnC2YM+DmWmHOzDzmLO73IAaDKTKo1l0vQbwrWBxpmPp9hW1FuAsF
	dTfKGWPuOv0c0DrmTKcNJPlV3WSBPS4hJNEnPiAyKyoQdaUV6G9Qfl7FeEpenCCM5uZeGd
	3rHBUXKaMnrJdH3HnGYY9KRZ7CG4Z2SxeoMSkefaALgMXLENyQwbTISUr+EyvZqjr2JwuV
	7u3u0R1qCOf9TiIWxD4GaYZRdaer5VQtQeZrrJv/CoHrsbEg5hJK80+1EBo/JYFeSnzqFn
	0mn6QU8dvvHhL2W8iYORQFntybooRYx4Yg1GphZC+8Fp/t7HpMp4XdBfxr7w2Q==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Gabor Juhos <j4g8y7@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Robert Marko
 <robert.marko@sartura.hr>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Stanley Chang
 <stanley_chang@realtek.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
Subject: Re: [PATCH 0/2] arm64: dts: marvell: armada-37xx: USB3 PHY cleanup
In-Reply-To: <20260330-armada-37xx-usb3-phy-cleanup-v1-0-34d77f1a1784@gmail.com>
References: <20260330-armada-37xx-usb3-phy-cleanup-v1-0-34d77f1a1784@gmail.com>
Date: Thu, 09 Apr 2026 10:15:28 +0200
Message-ID: <87wlyg35y7.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286018-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lunn.ch,sartura.hr,kernel.org,linuxfoundation.org,realtek.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregory.clement@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:url,BLaptop.bootlin.com:mid]
X-Rspamd-Queue-Id: C477B3C7ACA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Gabor Juhos <j4g8y7@gmail.com> writes:

> There are two small patches in the series. The first helps to avoid
> triggering a bug in the USB core code, whereas the second one is a=20
> small cleanup to align PHY definitions of the USB3 node with other
> platforms.
>
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
> ---
> Gabor Juhos (2):
>       arm64: dts: marvell: armada-37xx: use 'usb2-phy' in USB3 controller=
's phy-names
>       arm64: dts: marvell: armada-37xx: swap PHYs' order in USB3 controll=
er node
>
>  arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi | 2 +-
>  arch/arm64/boot/dts/marvell/armada-37xx.dtsi      | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)

Applied on mvebu/dt64

Thanks,

Gregory

> ---
> base-commit: 2ff6cc999a04bcb094b8cbba68a9251f03a5c876
> change-id: 20260330-armada-37xx-usb3-phy-cleanup-922a5472794a
>
> Best regards,
> --=20
> Gabor Juhos <j4g8y7@gmail.com>
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


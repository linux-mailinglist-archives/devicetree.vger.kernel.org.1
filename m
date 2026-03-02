Return-Path: <devicetree+bounces-270111-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPsGLLCwpWkiEgAAu9opvQ
	(envelope-from <devicetree+bounces-270111-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:45:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 464621DC1BE
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:45:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7269B3006445
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:45:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD326411605;
	Mon,  2 Mar 2026 15:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="NhhGyxUx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8239C326D75
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772466349; cv=none; b=LUr65kVINTmp8dXJgNLpOkHDlaGtVd5Sd5al+FabC6LMClIQnKYtEkSZJdev04eEJWPzz6wbBwnaw/uGo67rCfwi4ixkdiFj9ubAECrIDia4SqY1y8a8OHwNM3b4RYCpDp9/0D4k+HNx7q0CgwmCsoNooTBQNBMhR+gUJfs2Wsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772466349; c=relaxed/simple;
	bh=FL7pqSjhaXtHBrrZKfNpZT5Ht7DocztkkmI5nIIqWeg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=uCraUMMoHumaovBgPJok00acFeIf84PK8sJ5Y/PmFScZ+lxuP6UA4kGEITz0glJp11tp7QLF2Lpq3Gv0i61NBozmd8O+k2lhxnTiFHuLcTJS6FG0mNgWX8w9uMmCYyiu5BAX2HHID9p4S0jxzK1TugQMMLr/s8R0AlrgD4hCsUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=NhhGyxUx; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 137D41A1F34;
	Mon,  2 Mar 2026 15:45:47 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id DBF9A5FE89;
	Mon,  2 Mar 2026 15:45:46 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D0DF510369450;
	Mon,  2 Mar 2026 16:45:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772466346; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=IKc6dncBvpCzLVVy5eLwzF3fQEzsiCYpuqqJpKtYgdY=;
	b=NhhGyxUxSZEVr92VqQydLdmxl/4vDOLsc7bp++8GflFzymW/Se7h1Xwvl0caop5Jj6pg0X
	2x1s25MrPAIzIDEOQk8QphW/KjKUA6vGbV2dpZTrGY85lKBPa4SkEvwIS/vABBK/iRIWi8
	9bLHO17DvRvkPf7mXtXl9eRwcI6kqqxysr+pPz+THT35zmbkABjv2VkBtTy+9R4hD+TWSB
	VM7e/cETdP1jwgFRqTwogRlrTfHzHMTn2SsTZRDTaCQsRb8LsmN9nB/mZdZxPl8f+/i+7W
	cJ/QX1vFfq/XH/cuRysJTjA/C82/Tv9CqA6ga54g1ecA4/YAPjZnmjIWB3gZ+w==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Gabor Juhos <j4g8y7@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
Subject: Re: [PATCH] arm64: dts: marvell: armada-37xx: drop redundant status
 property
In-Reply-To: <20260220-armada-37xx-status-fix-v1-1-716180561d86@gmail.com>
References: <20260220-armada-37xx-status-fix-v1-1-716180561d86@gmail.com>
Date: Mon, 02 Mar 2026 16:45:44 +0100
Message-ID: <87h5qyfd5j.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 464621DC1BE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-270111-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lunn.ch,kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregory.clement@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:url,BLaptop.bootlin.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

Gabor Juhos <j4g8y7@gmail.com> writes:

> Remove the 'status'  property from the 'armada-3700-rwtm' node. Device
> nodes are enabled by default, so specifying the status as "okay" is
> superfluous.
>
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>

Applied on mvebu/dt64

Thanks,

Gregory
> ---
>  arch/arm64/boot/dts/marvell/armada-37xx.dtsi | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi b/arch/arm64/bo=
ot/dts/marvell/armada-37xx.dtsi
> index 87f9367aec1227c2c6de52f358d51bcff758c147..6237334833a247855bedb5c5d=
6c7618f5819a967 100644
> --- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
> @@ -534,7 +534,6 @@ firmware {
>  		armada-3700-rwtm {
>  			compatible =3D "marvell,armada-3700-rwtm-firmware";
>  			mboxes =3D <&rwtm 0>;
> -			status =3D "okay";
>  		};
>  	};
>  };
>
> ---
> base-commit: fcaf733ca526b69595ed1d227e2cc59ddd24eff7
> change-id: 20260219-armada-37xx-status-fix-7478c1d3b1bf
>
> Best regards,
> --=20
> Gabor Juhos <j4g8y7@gmail.com>
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


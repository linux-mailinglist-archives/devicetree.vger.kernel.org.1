Return-Path: <devicetree+bounces-297798-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNx8HCcpBmorfwIAu9opvQ
	(envelope-from <devicetree+bounces-297798-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:57:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CB634546978
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:57:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D36843008D11
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 19:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC0A63BF66E;
	Thu, 14 May 2026 19:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImwLdzqY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88F423B38BD
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 19:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778788586; cv=none; b=Qela665jcvNF5Jlwon3HXN6v+7NiMtM5YgyTPrABZYEI6CqVWgr8h2SpUnZT0DOl6UU/7GhmJ9TJMnWGhiHjoxw0AccU4D18ceMocbysgp/HLqGL1AhCFrDV1zMXcKClWyQEEgnLM+WeOefwr6MGdj8Rqy7gkOoJI1rJGgJm1UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778788586; c=relaxed/simple;
	bh=P+KxIrEJ6MQTG6cvpJhwy148LOivrbw+JNzKktvNsOE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Xg7GOwCMTDosqrFX/hvMTHQzYsRXAk1MZymuEeqq4nWWuhcRdkTPnhagt20J5WCHcV6a9oygFEHg16ykg4qnl8ywSts1dXs49ZMEmITphGnPAim4tuVIPY/jyomOwTlYMGiePknZhLmC8LT0KjnUw3FU3w1FcK/rf9Ix0UijG3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImwLdzqY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAC5BC2BCB3;
	Thu, 14 May 2026 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778788586;
	bh=P+KxIrEJ6MQTG6cvpJhwy148LOivrbw+JNzKktvNsOE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=ImwLdzqYyDuF+F3INLIjLkZOY17QFuuHBh3llLrsn+JYkPenqO6nGAmiOU7cUSR9l
	 4X9o6kqxthJttEyPTRmUOZMMOmmWk75QZTxNGCsPbPZqtJtw6tcpUFaO96kiU+iQlk
	 X3GtzBDBkxVNUtYLrdtPagXS7DsRqiWAk8i44rN5k1RzLfzYQvvG96dFOt9k5CvraP
	 3GfN9dPRIFpUCozguCZA5QWRRNGz8CnrYb88Bc4ZQCwuMWlp2fFFk02qS3R3PEBkS7
	 YRJpdEkkeC8+mPRReUrXo93icq05Q7MHCtD5FSDyAuijRFee4wmKMkEutTITadV3hz
	 NPmq6AlljFeHg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: ti: k3-am67a-beagley-ai: Add overlay
 for IMX219 on CSI0
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jai Luthra" <jai.luthra@ideasonboard.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260514-beagley-cameras-v1-3-5c3500b5a436@ideasonboard.com>
References: <20260514-beagley-cameras-v1-3-5c3500b5a436@ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 19:56:25 +0000
Message-Id: <20260514195625.BAC5BC2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: CB634546978
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297798-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The camera reset GPIO pin is incorrectly configured as PIN_INPUT in=
stead of PIN_OUTPUT.
--

commit 993d862219c5039d0e1b221804ac5c16ba10eb4d
Author: Jai Luthra <jai.luthra@ideasonboard.com>

arm64: dts: ti: k3-am67a-beagley-ai: Add overlay for IMX219 on CSI0

This commit adds a device tree overlay for the BeagleY AI board to enable
the IMX219 camera sensor. It configures the clocks, regulators, pinmuxing,
and CSI2 receiver endpoints for the camera connected to the CSI0 port.

> diff --git a/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai-csi0-imx219.dtso =
b/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai-csi0-imx219.dtso
> new file mode 100644
> index 0000000000000..52698d1a0f08f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai-csi0-imx219.dtso

[ ... ]

> +&mcu_pmx0 {
> +	cam0_reset_pins_default: cam0-default-reset-pins {
> +		pinctrl-single,pins =3D <
> +			J722S_MCU_IOPAD(0x003c, PIN_INPUT, 7) /* (C1) MCU_MCAN1_TX.MCU_GPIO0_=
15 */

Is PIN_INPUT the intended configuration for this camera reset pin?

Since this pin is used as an output signal to drive the reset line for the
IMX219 sensor, should it be configured as PIN_OUTPUT? While the GPIO
subsystem will set the direction correctly, configuring it as an input
enables the input receiver which might be unnecessary for a unidirectional
output.

> +		>;
> +	};
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-beagley-ca=
meras-v1-0-5c3500b5a436@ideasonboard.com?part=3D3


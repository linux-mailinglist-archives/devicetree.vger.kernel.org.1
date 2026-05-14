Return-Path: <devicetree+bounces-297304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FSgOmBbBWomVQIAu9opvQ
	(envelope-from <devicetree+bounces-297304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 07:19:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7251A53DF64
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 07:19:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CE243007F49
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 05:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E09A36D9F1;
	Thu, 14 May 2026 05:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcDRgA+t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEE325B098
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 05:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778735860; cv=none; b=cFHQVwNxlKtsxwXgUKoJ2imvePUWIAhYsmk0A7X3Z/vrhcEBJ09Vw+veLC/Bl63nREQSNeQUY7pSCD5vxUqfMIoLTCdwhfYP4xIzIhworY37CfCcZpf8nP2+oGS8LZpWboKJVhJghlzKyy6n1wL2HxshhAhH/VnMTmFGgbt24Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778735860; c=relaxed/simple;
	bh=1IjWY3llMBWroCpaBTuqeax5xUPoC9qv+OlS/SMKqbo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ocTOXe8M0k/5TI7lqkfMqEEcKATyQiDae8PA+aupoXIBx+rv7J7xHvoYe4T184fipsGLyjCKpTOkMfjFQCVM3gcKqTNNq9NPGSm6J3ZbdqZ18QMDII1oDe7cWhXAak2Uzv9dTZD/TO1oFA7qk5NjPDKOATdL6v1LLLXs+f/+9vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcDRgA+t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2D32C2BCB7;
	Thu, 14 May 2026 05:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778735860;
	bh=1IjWY3llMBWroCpaBTuqeax5xUPoC9qv+OlS/SMKqbo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=AcDRgA+twluLPyZUuv21hm/rqwCUxj2Ll+XUJ38/VHkGTEcEA9CgPI3/0y2Zm/JY+
	 ZLkaI5zQN/9nXfvneRt6Lt584J9gXWM8AAwqQ2Bl6IRBO8p3Xo7gu3sAxsA8Vn5KNe
	 EraDKdfm4FjQKybFcJgLf1Px2DlS8gzf88e0wjyC6QlGUAi9moe57QvJZQE/aBDUeL
	 D+xFufRnVAlEme/ttJnMjSKkyZSa1Z/jyamjOaMuojfyKg0NbwbYRBfU4+I1Tou48g
	 i+0mGuzGjw2AcHoJJ1uzs3qsOEhIC9IcTptWuYtcR/MC4IRiM1LJNnKk+w+M+UGsWn
	 n6brldqqHR94w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: add support for NXPs TJA1145
 CAN transceiver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dimitri Fedrau via B4 Relay" <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Cc: linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org
In-Reply-To: <20260513-tja1145-support-v5-1-38720a7ee63e@liebherr.com>
References: <20260513-tja1145-support-v5-1-38720a7ee63e@liebherr.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 05:17:38 +0000
Message-Id: <20260514051738.B2D32C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 7251A53DF64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,vger.kernel.org,gmail.com,linaro.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-297304-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dimitri.fedrau.liebherr.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The dt-binding omits support for the `max-bitrate` property.
- [Medium] The dt-binding omits support for the `interrupts` property for w=
ake-up routing.
--

commit 853ad7c93ebe1c2a625ddddde401c4aaad496a8e
Author: Dimitri Fedrau <dimitri.fedrau@liebherr.com>

dt-bindings: phy: add support for NXPs TJA1145 CAN transceiver

This commit adds documentation for the NXP TJA1145 CAN transceiver, residing
in the generic PHY subsystem bindings. It describes the required SPI
configurations and supply properties for the device.

> diff --git a/Documentation/devicetree/bindings/phy/nxp,tja1145.yaml b/Doc=
umentation/devicetree/bindings/phy/nxp,tja1145.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/nxp,tja1145.yaml

[ ... ]

> +  vbat-supply:
> +    description:
> +      Battery supply voltage
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - spi-cpha
> +
> +additionalProperties: false

Does this binding need to include the max-bitrate property?

This property is standard for CAN transceivers to describe board-level
capability constraints where the layout cannot support the chip's theoretic=
al
maximum speed. Since additionalProperties is set to false, valid device tre=
es
specifying a maximum bitrate will fail validation.

Also, does this device tree binding need support for the interrupts propert=
y?

The TJA1145 supports partial networking and wake-up functionality, which can
route a wake-up signal to an interrupt line on the host processor. With
additionalProperties set to false, it is impossible to describe this hardwa=
re
interrupt routing in the device tree.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-tja1145-su=
pport-v5-0-38720a7ee63e@liebherr.com?part=3D1


Return-Path: <devicetree+bounces-298480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +C15C6FRB2rBxgIAu9opvQ
	(envelope-from <devicetree+bounces-298480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:02:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E132554593
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:02:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0816F3028552
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 16:51:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 053414C040D;
	Fri, 15 May 2026 16:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTAoHnJT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4CFD3FF1D0;
	Fri, 15 May 2026 16:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778863885; cv=none; b=CoWAM6lRGbkoCi2XR37mkE1lZYXePzYY5HiwG+6cAw2npGLBt2OcDSjmuKzSFSbvkDaAmhm+WPCI8Y7Rd6Ek/xSHR3ZmU9oWUVedCH1e+AGQIQ2Ai4yz7sYtG8mrgDJ2s+dOburcqtCwKyEl8EzSAmJM5TK84jH8bJC88Kb0uyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778863885; c=relaxed/simple;
	bh=gYnz88czFF/TXVF5StMI73PYX0W16Hr9d9tw3EzwPjc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ezkweKU2Vy+nLjxvD1CwAbZunM5dH+ujswAcU/QeVk/vPWOYvNAYRhc0b4aBzBcAoJ2YrdOf0CBCf25DoITYxiOSyPDVFbiCJFfQTHbiVOALtWqLJIcT4iZkglJcL3kQXBF1RhcX9LHwynym2kog8kiiVx/WGDU1GYEMvjh9vlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTAoHnJT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26C53C2BCB3;
	Fri, 15 May 2026 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778863885;
	bh=gYnz88czFF/TXVF5StMI73PYX0W16Hr9d9tw3EzwPjc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=nTAoHnJTCjvgaVWYUBrwzcaF2pGaKGNG/IpnxRnEidsQdDNb1fg7ToJCxiVrhiqVM
	 rlELrcRv3x3mJWAHut3BRwEhGOcvqCtsiJmjgID5I7//+3hJQHOMXBKuG7yNd9vnMS
	 OH1ZJIqpcLqmwBdgLnJina3MBA0eboLGPuzvTss2A8BIquVl3pRGdei0OWLLob6Iw9
	 uB/PP+tydHuW38FiU8T2+mjx1zczh/r39YUpdpphVoYMzh3euSazuzEqXdl9D6UJZe
	 djPeUezDu9oBjTKy9/8DHF1OkmqWNPZ9C/fm5DXHpruERcAnJxugQ9zHkbd3L4uuaF
	 23dV6YmI7zo4Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: trivial-devices: add fsl,mc1323
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: imx@lists.linux.dev, krzk+dt@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260515163959.1948799-1-Frank.Li@oss.nxp.com>
References: <20260515163959.1948799-1-Frank.Li@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 16:51:24 +0000
Message-Id: <20260515165125.26C53C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 2E132554593
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-298480-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Miscategorization of the fsl,mc1323 complex network transceiver =
as a trivial device.
--

commit 21d3bd06bf5d8d09338547376852b755873e842b
Author: Frank Li <Frank.Li@nxp.com>
dt-bindings: trivial-devices: add fsl,mc1323

This commit adds support for the Freescale 2.4 GHz IEEE 802.15.4/ZigBee
mc1323 by listing it as a compatible string in the trivial-devices schema.

> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Doc=
umentation/devicetree/bindings/trivial-devices.yaml
> index 23fd4513933a4..28b059c858dd1 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
[ ... ]
> @@ -127,6 +127,8 @@ properties:
>            - domintech,dmard09
>              # DMARD10: 3-axis Accelerometer
>            - domintech,dmard10
> +            # Freescale 2.4 GHz IEEE=C2=AE 802.15.4/ZigBee
> +          - fsl,mc1323

The trivial-devices.yaml binding is intended for simple SPI/I2C devices and
strictly enforces additionalProperties: false. Since the Freescale MC1323 is
a complex System-on-Chip that includes an MCU and a transceiver, wouldn't it
require additional properties like reset lines, regulators, clocks, or MAC
address configurations?

Adding it here might restrict the binding and cause future schema validation
failures when someone attempts to properly define those necessary hardware
properties.

Should this device have a dedicated binding schema instead of being
categorized as a trivial device?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515163959.1948=
799-1-Frank.Li@oss.nxp.com?part=3D1


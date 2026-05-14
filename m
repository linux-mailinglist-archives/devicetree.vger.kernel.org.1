Return-Path: <devicetree+bounces-297229-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qB9oL/sUBWrWSAIAu9opvQ
	(envelope-from <devicetree+bounces-297229-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:19:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B52D353C4B1
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:19:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5AB19301A0AA
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F77123C516;
	Thu, 14 May 2026 00:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHSQV5vY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3D2190473;
	Thu, 14 May 2026 00:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778717940; cv=none; b=ACiX1uKSwl2ojkw78dT8H2QvW1K56H5PeX/fbjwcf4wyWX/aSZUVW8Hp5HPZrYbc20n0MZtqRHh85XEXANMmCimLWeR9e76O8B/puvNynvpawoSUI7WL1qCIvdu7qSt8EN00vQ94JfbYWGZiHl6ouxZheojSqYuw4Kbw1vf7XPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778717940; c=relaxed/simple;
	bh=Kb8beeGldOMtP8VGFDc0GQozSIqbhJM6BE5TUhEp5JU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hnkxLMArZV3w1ydTk2W7Xyl7JXTNMA2pOzBmMWHNh6Chqt9VS0/1xloVgxRa5x6cifyoJFXBsuTWM+fTCGUyJwhfR5qGEOmwap6qCsTvlxzZQHj8+h8Pii/QDz/nRAFEL9l7z2kWEMVMbnIf3+26ti8jJzw4l3vPNOsvopBzHys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHSQV5vY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C352C19425;
	Thu, 14 May 2026 00:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778717939;
	bh=Kb8beeGldOMtP8VGFDc0GQozSIqbhJM6BE5TUhEp5JU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=gHSQV5vYwDVNncN/qBYrbfk6siiTKFckrADFmcCt0LMBcEogxgWQchKV852V/5PdC
	 7vGKiOtrEb4YaGvd45caqGlUgmd5ex12ou+sLMeoIR+Le6AlUZHBb7VLPzqfaxrumt
	 q0xk7nza3vxyCV1CKTlklr18fGVg98Hzp0hLWuHuM6oyuY+gZVl6jmtjrb8Iiwke1h
	 5IaAQJ4w6ZmqLKYDXtdTOfs/wD2suq1iBnVUE/kKozbqi2bnJDsLFkX+j8T6FCsbXx
	 z/n65+g2m/CZUtqIam96RdzFrr3Q7GfwzxoZIuNYMR+sGBkQoAwowriRFz1GGTejKo
	 wXd7mgQ2jlBew==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: regulator: convert ltc3589 to yaml
 format
Reply-To: sashiko-reviews@lists.linux.dev
To: "Frank Li" <Frank.Li@nxp.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260512224544.1223283-1-Frank.Li@nxp.com>
References: <20260512224544.1223283-1-Frank.Li@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 00:18:58 +0000
Message-Id: <20260514001859.6C352C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: B52D353C4B1
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
	TAGGED_FROM(0.00)[bounces-297229-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The YAML binding schema omits the `interrupts` property, which b=
reaks schema validation for valid hardware configurations that use the PMIC=
's interrupt line.
--

commit 6cc3d4149b88e8fe5fe483876ec1bdf0a91a59e7
Author: Frank Li <Frank.Li@nxp.com>

dt-bindings: regulator: convert ltc3589 to yaml format

Convert the Linear Technology LTC3589/LTC3589-1/LTC3589-2 regulator
binding from text to yaml format.

> diff --git a/Documentation/devicetree/bindings/regulator/lltc,ltc3589.yam=
l b/Documentation/devicetree/bindings/regulator/lltc,ltc3589.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/lltc,ltc3589.yaml
[ ... ]
> +properties:
> +  compatible:
> +    enum:
> +      - lltc,ltc3589
> +      - lltc,ltc3589-1
> +      - lltc,ltc3589-2
> +
> +  reg:
> +    maxItems: 1
> +
> +  regulators:
[ ... ]
> +required:
> +  - compatible
> +  - reg
> +  - regulators
> +
> +additionalProperties: false

Does this conversion accidentally drop support for the interrupts property?

The LTC3589 driver in drivers/regulator/ltc3589.c checks for and requests
an IRQ using client->irq to handle internal regulator events like thermal
warnings and under-voltage.

Since the schema enforces additionalProperties: false at the top level,
valid device tree configurations that define the physical interrupt
connection for this PMIC will be rejected by dtbs_check.

Should interrupts (e.g. with maxItems: 1) be explicitly permitted in the
properties list?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512224544.1223=
283-1-Frank.Li@nxp.com?part=3D1


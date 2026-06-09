Return-Path: <devicetree+bounces-308926-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RGFxLpHrJ2pf5AIAu9opvQ
	(envelope-from <devicetree+bounces-308926-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:31:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 284D965EF15
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:31:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Az403fi5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308926-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308926-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 14F0931C59F9
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 10:22:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEB1A3F076D;
	Tue,  9 Jun 2026 10:22:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DA83F1ACC
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 10:22:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781000544; cv=none; b=lh0znwlOb0/CYcyHE2+SnTkIjbhrsPOZ4mvkYr/CguESqLCnOZraSCwiBHOPDRj8L5p+KwwnUjpp6xdDPH964Re3QRRwL+MRsSFnXkNVlB4JfETdvMmhby/p7Kv/oPiX/3FQXjdMPPNG5nguY2LbJT9A9kDTusaqnUwrreZu1iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781000544; c=relaxed/simple;
	bh=O7Pm5yz5GR0+ShtQ4miG9oJNoqIPytLqBOXXFoAtxJE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pE//7LG/2rJNH3Z8/VF8AoPGHq4E15zJViKZ2mH7V8iIpzS/6AYZ0XUlvkg2TZf5ztyMQSMEAGPhVYkOzVXQ8QANDiphJ1xBPVvr5G4sH0ZhS9ZKF7b1hh3+46UfxeeHfD3bMv+JcZ7MEX00FeFFx/E5mN2g7YwbYdIjT3hqw8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Az403fi5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26AB81F00898;
	Tue,  9 Jun 2026 10:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781000543;
	bh=8Ee7gx/nibO5hvtwKhauh/x+qEQvvJ1tyQsaoSM3wdM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Az403fi5o8MxyKhEk2M0hcPgBE/OiMxcsKu3rcW4p6ldRTFlmMHpR005a/VRsL2x1
	 XMzJjZj5iY2S+9F0mN40JEpEoxS10xUsBiUVEK8qsehnghJsECEMFLdGDqbCQic+5+
	 zHHPRjOZKi+o2ymZ8Nfqus+PMoeh5wjkdhsJX1qVURkAHABYsv3wDqL8lI0BNf5WiF
	 qfPgtoQIMFRTNsh/qd8OBD2Ip1yzgFxaOCvYBC/JxaU6r8Ws+zCegBDolHX1tMYtXb
	 OYx25WqObruqartXxtGzpW7NVzATw5nzIDXp9/+ku4zCQUoJ7q9gYSWXoE+6X43iKZ
	 utEdm+MBqWlHA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: rng: starfive,jh7110-trng: add
 jhb100, drop jh8100
Reply-To: sashiko-reviews@lists.linux.dev
To: lianfeng.ouyang <lianfeng.ouyang@starfivetech.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260609095726.160559-2-lianfeng.ouyang@starfivetech.com>
References: <20260609095726.160559-2-lianfeng.ouyang@starfivetech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 10:22:22 +0000
Message-Id: <20260609102223.26AB81F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308926-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:lianfeng.ouyang@starfivetech.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[starfivetech.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 284D965EF15

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Removal of 'starfive,jh8100-trng' compatible string breaks devic=
e tree ABI.
--

commit 55269300e907ca4d974f2fe40b38e11260ec7ecb
Author: Lianfeng Ouyang <lianfeng.ouyang@starfivetech.com>

dt-bindings: rng: starfive,jh7110-trng: add jhb100, drop jh8100

This commit updates the StarFive TRNG device tree bindings to reflect
current SoC support. It adds the starfive,jhb100-trng compatible string
and drops the obsolete starfive,jh8100-trng compatible string.

> diff --git a/Documentation/devicetree/bindings/rng/starfive,jh7110-trng.y=
aml b/Documentation/devicetree/bindings/rng/starfive,jh7110-trng.yaml
> index 4639247e9e510..d21769b7d54e6 100644
> --- a/Documentation/devicetree/bindings/rng/starfive,jh7110-trng.yaml
> +++ b/Documentation/devicetree/bindings/rng/starfive,jh7110-trng.yaml
[ ... ]
>  properties:
>    compatible:
> -    oneOf:
> -      - items:
> -          - const: starfive,jh8100-trng
> -          - const: starfive,jh7110-trng
> -      - const: starfive,jh7110-trng
> +    enum:
> +      - starfive,jh7110-trng
> +      - starfive,jhb100-trng

[Severity: Medium]
Does removing the starfive,jh8100-trng compatible string break device tree
ABI compatibility?

Device tree bindings are generally considered a stable ABI, so existing or
downstream device trees using this compatible string might fail schema
validation during dtbs_check.

Should this compatible string be retained and perhaps marked as deprecated
instead of being completely removed from the properties section?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609095726.1605=
59-1-lianfeng.ouyang@starfivetech.com?part=3D1


Return-Path: <devicetree+bounces-315902-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 03UaCUDmPWpj7wgAu9opvQ
	(envelope-from <devicetree+bounces-315902-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:38:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8214F6C9D57
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:38:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bFUsOUZi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315902-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315902-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8EE14300C255
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 02:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26E2B39183B;
	Fri, 26 Jun 2026 02:38:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9441391E57
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 02:38:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782441530; cv=none; b=LReYL4nlmtPQniuuFL7szOyanAeCb9rp5+2PIQZoHgWvhkuCe0OCvhRs/gJOg4yR751X/sYX6lfWCSO0W8A0eezdT+b4TFcWy9Wr9f1fZQplLXidym3cCP6AV4YrkPbWfVECalAV9xpttYNHyk2bgvKU3rvdmAm+LLDHoWthjlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782441530; c=relaxed/simple;
	bh=SiTorH+LmuWPMqPGZ5h6Y9TZDtPnJjnD4HqwX6cwe9c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Djs0DJ79BGj/bigWDoZqYzVikD3xE0KqnzZpDk0Lv0L6Xs+mRxj8gp0GNeOeB+MZF7wz3dRVxQQ0+pXeHL90iesRJS+SVPMGQu1NHjvd4fxAMg5yl/hgceKws0yMRhnClDaQCPoWsJ6gkyTEXaZKc0mR/29mNbTFX28HujZnAv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFUsOUZi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F7031F00A3A;
	Fri, 26 Jun 2026 02:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782441528;
	bh=3I0jqSkfysfh6Wt0GX18EiluopHqdgatms1GhiyR3fw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bFUsOUZiB2cHbVjoaBYzFtOcoJGY6qLT25VY9Tuw4DPPNdZyWXwv+a7VkWiCfq6Rh
	 yO94UJlxStwXcurRCuA1Nv+jOiYiPzAAPhh1ROd4NHGOobuYjH3yt07VFsptzDIBwM
	 VVb/ek+ll91VLAhfHBg8XhcpNT1FjCk1Zhx4mAMQE9bF0EMD1cVUK1Reu5h9ovgBqn
	 VmeAAhFTj993mbZcs7bRTI42oM3hTtoRosu1as2+KhYWXiYI35kELZ1Z6AVyTyi1Bg
	 8EssQ65ZSUuBH5Tx88ksYb5Mq7AiUZfmj7Br/xK6hkQhvW5wDDweoB+p0N4tnL5gFK
	 4GfB1Jy+oMvqQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 7/9] ASoC: dt-bindings: loongson,ls-audio-card: Add
 ATK-DL2K0300B compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Binbin Zhou" <zhoubinbin@loongson.cn>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <71430fcee5951fb7a7d52e2091a87707db85e06c.1782439646.git.zhoubinbin@loongson.cn>
References: <cover.1782439646.git.zhoubinbin@loongson.cn>
 <71430fcee5951fb7a7d52e2091a87707db85e06c.1782439646.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 02:38:48 +0000
Message-Id: <20260626023848.7F7031F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315902-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhoubinbin@loongson.cn,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,loongson.cn:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8214F6C9D57

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Custom GPIO properties lack a vendor prefix.
--

commit ad0ddc0bcb1797ef1e44f8d7b02415a3c55eb74b
Author: Binbin Zhou <zhoubinbin@loongson.cn>
ASoC: dt-bindings: loongson,ls-audio-card: Add ATK-DL2K0300B compatible

This commit adds a new compatible string for the ATK-DL2K0300B development=
=20
board based on Loongson-2K0300. It also introduces several new GPIO=20
properties to support hardware features like speaker enable and headphone=20
detection.

> diff --git a/Documentation/devicetree/bindings/sound/loongson,ls-audio-ca=
rd.yaml b/Documentation/devicetree/bindings/sound/loongson,ls-audio-card.ya=
ml
> --- a/Documentation/devicetree/bindings/sound/loongson,ls-audio-card.yaml
> +++ b/Documentation/devicetree/bindings/sound/loongson,ls-audio-card.yaml

[ ... ]

> @@ -47,6 +48,18 @@ properties:
>      required:
>        - sound-dai
> =20
> +  spkr-en-gpios:
> +    maxItems: 1
> +    description: The GPIO that enables the speakers
> +
> +  hp-ctl-gpios:
> +    maxItems: 1
> +    description: The GPIO that control the headphones

[Severity: Low]
This isn't a bug, but should these custom board-specific GPIO properties=20
include a vendor prefix?=20

Since they are unique and non-standard properties, using a prefix like=20
loongson,spkr-en-gpios and loongson,hp-ctl-gpios would better align with=20
device tree naming conventions.

> +
> +  hp-det-gpios:
> +    maxItems: 1
> +    description: The GPIO that detect headphones are plugged in

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1782439646.gi=
t.zhoubinbin@loongson.cn?part=3D7


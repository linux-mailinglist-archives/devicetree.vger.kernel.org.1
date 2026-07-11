Return-Path: <devicetree+bounces-324795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C3eWCHI/UmqUNgMAu9opvQ
	(envelope-from <devicetree+bounces-324795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 15:04:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6F47419D5
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 15:04:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PUOIO95L;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324795-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324795-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED568301DE32
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 13:04:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A72CF3BFAFA;
	Sat, 11 Jul 2026 13:04:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DBA0392822
	for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 13:04:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783775062; cv=none; b=pzt0aoKFHzP5baazsLF7+5aNYLR28ooEnIalr9hcrRc4qUxwWc1vugBim99PXhj3ZZ2Wa+UzFRpE4D3vgx9TQ3tnjhG5H9Kove3i2AVfC/uxA4KgJGxhNdxi8N388efwT2wFnxnAWTszqPE8MXXYxgdjc7vsqZtwZKVfPmZLW1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783775062; c=relaxed/simple;
	bh=QQjDjTbCc0K4A+Lk0eDIlvmmopuO74N/UE+YNJxqAoU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pyEtb0YXAt9H1yyV4E5ab/z69bIHoc8kxLonsX5TiKu3v3p4fwLm4gTJ8zDd8SQ3AtfADWEbqOEbYtHZSdRjt7Ye9HdxTThqxkqz5RiGiL5MPm3Ku2f1B+KPrKNKJ1PWu+hJveLHJ94A9G5pRu3mETbIlIRWPIwd14Kn7Apg0RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUOIO95L; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA1181F000E9;
	Sat, 11 Jul 2026 13:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783775061;
	bh=bbwxLoSMt88Cv+2wNSR6IPB/E/MFrR3uQFsluF6qD3w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PUOIO95LkpWELLiU1Sf7H66UZZkM8bk3b/DIg46sMPLh2fYiT0igEso6KrG5oSjY1
	 SN4D82unHkepNVvT8O73/H/pTu6tSXurzbsQcQTdQTts+MNs4exSGTjTZ+UZiGgwqC
	 2yhunta++Rp6gJ5J7C2LUZD75OmikcRzWiIaOLP/R9lmg20zkYlsa5fEsmZGxtBN+8
	 OR2zaMQUAKz1s0ouOiWx6vh53oobakBBoZzhyMnDrp64yqE9k4o/B3/b5eG53TEtos
	 g3RUSghdfQTkw4osZKI/TCzaL81d0Ym/vTnU2mTS2kfaQm+GWlnLS2R367+iuKDRGF
	 HAsP9h/Kfk79Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/3] ASoC: dt-bindings: qcom,q6apm-lpass-dais:
 Document DAI subnode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mohammad Rafi Shaik" <mohammad.rafi.shaik@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260711125740.3083236-2-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20260711125740.3083236-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20260711125740.3083236-2-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Jul 2026 13:04:19 +0000
Message-Id: <20260711130420.DA1181F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324795-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mohammad.rafi.shaik@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A6F47419D5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `clock-names` property uses `items: enum:` which allows cloc=
k names to be specified in any order, contradicting the strict positional o=
rder defined in `clocks`.
--

--- Patch [1]: [PATCH v4 1/3] ASoC: dt-bindings: qcom,q6apm-lpass-dais: Doc=
ument DAI subnode ---
commit 5857843314d0fcf7b05399d163d3519472469928
Author: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>

ASoC: dt-bindings: qcom,q6apm-lpass-dais: Document DAI subnode

This commit extends the qcom,q6apm-lpass-dais binding to describe DAI child
nodes by adding #address-cells, #size-cells, and a dai@<id> pattern. It also
documents per-DAI properties such as interface IDs and associated clocks.

> diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dai=
s.yaml b/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
> index 2fb95544db8b5..f3a8b12d7fc80 100644
> --- a/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
[ ... ]
> @@ -21,6 +21,49 @@ properties:
[ ... ]
> +      clocks:
> +        minItems: 1
> +        items:
> +          - description: MI2S master clock
> +          - description: MI2S bit clock
> +          - description: MI2S external bit clock
> +
> +      clock-names:
> +        minItems: 1
> +        maxItems: 3
> +        items:
> +          enum:
> +            - mclk
> +            - bclk
> +            - eclk

[Severity: Medium]
Does this enum allow clock names to be specified in any order or duplicated?

Because the clocks property defines a strict positional order (master clock,
bit clock, external bit clock), using an enum for clock-names might allow
device trees to provide out-of-order or duplicate names (like "bclk", "mclk=
")
and still pass schema validation.

Should this instead use a strict list of const items matching the sequence =
in
the clocks property to enforce the exact mapping?
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260711125740.3083=
236-1-mohammad.rafi.shaik@oss.qualcomm.com?part=3D1


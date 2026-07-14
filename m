Return-Path: <devicetree+bounces-326209-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0H6TL0stVmou0wAAu9opvQ
	(envelope-from <devicetree+bounces-326209-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:36:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25ED47549E0
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:36:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=j4iOAThl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326209-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326209-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9B61F311C876
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D45B6448D02;
	Tue, 14 Jul 2026 12:30:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD09B445AF1
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 12:29:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784032201; cv=none; b=LSF9Z4DM71Vt8oFpiN33JH0ijthImL9nK/hpITjWxxG7fpL++CPgCOqzS3TTWzt4atGGZ4JoW0W+u0nfRaq/PXAJGdHvXE24kXeoyJHtISmxBiCKtNXZ6VDswbVGmEkPn2yMRFrUpJkplO0CxJ0g8p3N3bdYFFCxHDBkiQ+w3fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784032201; c=relaxed/simple;
	bh=L4LJDb+8o5k2Z8rhyqIA4PCMjAUgV1A0DUnaDJTUELc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EjKofeVlRVoDgUDGDegTjZyqRkTB/T+60s6QhMUJ7F5tU9EhpQnUiE9gk9qhjhs+WKu4XyMGkIL7a6oNz/ak71pFQa7iZjaAXvEJUHW5iZhE6ttB3NygqqBHBFUJqcephWIH/txsbfWe4/O/5LbkaO6hiYb7XKHzGs55Rq5U8AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4iOAThl; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6CED1F000E9;
	Tue, 14 Jul 2026 12:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784032199;
	bh=t9qzOa3RTf3LtN1cOfPQaHV4TI2P4BIODGyCYqU2BPw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=j4iOAThlHnsNImMXPzqPiJ7GVADqpSRLSj1U9P6l8kDm6wXsfUTxMhnDEbgfzcIHr
	 2G7aqzSrP1j3JOWfxnYM/3D6mmaL/9ukmRHW08Zv/wYhbOTcH4BhP7H9IdCNjAqn7s
	 1RTb+lFsuw2T+W3RaOu9dDGFHJS5yWNcVDszQEAeCBpQkcp9a4izm7ODS8aQvC0aKt
	 M5hlEahSxHe92103O5T5RU93c06LL2M3rYxmwtBbzt1v92xDzM5gumB9FNR54LQFmM
	 QLs4suXOjyhD96WXEOwj2nf7JIiO0lHcKwwWr4auh0DoTllfG3+DXKlJAY34UR+gUU
	 WcFP/OFBjqtPw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: remoteproc: qcom,milos-pas: Add Eliza
 CDSP compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Abel Vesa" <abel.vesa@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714-remoteproc-eliza-cdsp-v1-1-32eb7a1f2c59@oss.qualcomm.com>
References: <20260714-remoteproc-eliza-cdsp-v1-0-32eb7a1f2c59@oss.qualcomm.com>
 <20260714-remoteproc-eliza-cdsp-v1-1-32eb7a1f2c59@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 12:29:57 +0000
Message-Id: <20260714122958.D6CED1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326209-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:abel.vesa@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 25ED47549E0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Legacy compatible strings silently allow 3 `memory-region` items=
 because they lack an explicit `maxItems: 2` constraint.
--

--- Patch [1]: [PATCH 1/2] dt-bindings: remoteproc: qcom,milos-pas: Add Eli=
za CDSP compatible ---
commit 035d1273c9ae4354ae4a87c41fd4d9ad57c5bddc
Author: Abel Vesa <abel.vesa@oss.qualcomm.com>

dt-bindings: remoteproc: qcom,milos-pas: Add Eliza CDSP compatible

This commit documents the compatible string for the CDSP Peripheral
Authentication Service on the Eliza SoC. It reworks the schema to accommoda=
te
a third memory region (DSM) and the NSP power domain.

> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,milos-pas.=
yaml b/Documentation/devicetree/bindings/remoteproc/qcom,milos-pas.yaml
> index 99d7337e58ec5..3ee7be3304c6f 100644
> --- a/Documentation/devicetree/bindings/remoteproc/qcom,milos-pas.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,milos-pas.yaml

[ ... ]

> @@ -97,7 +99,26 @@ allOf:
>            minItems: 2
>          firmware-name:
>            minItems: 2
> -    else:
> +

[Severity: Medium]
Since adding the third item to the memory-region properties implicitly
raises the maximum limit to 3 globally, should maxItems: 2 be explicitly
specified here for qcom,eliza-adsp-pas and the other legacy devices?

Without an explicit constraint, won't dt_binding_check silently allow
misconfigured device trees for these older devices to incorrectly specify
3 memory regions?

> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - qcom,eliza-cdsp-pas

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-remoteproc=
-eliza-cdsp-v1-0-32eb7a1f2c59@oss.qualcomm.com?part=3D1


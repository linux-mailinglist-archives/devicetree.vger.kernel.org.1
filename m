Return-Path: <devicetree+bounces-314373-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dWQ9DXwNOWoemAcAu9opvQ
	(envelope-from <devicetree+bounces-314373-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 12:25:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6810D6AEABA
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 12:24:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=d0P3xeOV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314373-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314373-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A3173054C24
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F4703A5E70;
	Mon, 22 Jun 2026 10:20:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD673A544D
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 10:19:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782123601; cv=none; b=n2+o7bpX7/Kb6qY+8Mh44kpMkQUH16Tj4lv4mifaS9No1TbqtJ36PoSmBWfo2s6ACIZBjQ9nqAs8Z9Yfc4ef2q9EAN0mxuh6M7uAnjBFe7J7Wg55Bt9R1ImOpeRPI2OvR3GuHub1eCzD2pdFNfnag5H+TCeRNwNYeTqrUtwrpZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782123601; c=relaxed/simple;
	bh=cGuoPEgPmIGyT46+4a9UY5nxCwKHlQIJAS86/TXOmk8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Yadmapree2xtOTQMLLPYJpWSn1BacGPE/Kq1nIZ5TJg7DbydQ8fvwPOVl41okwm6viccCf9K7nyr1LvVX29fDww8TZq7NS+OuZfu4Mz/mAG3j3wy4aF2GfbT3oOQML/+5LmR68xJzWdguEbzm5SJ0CW7/JhYHaKeqF7xzVxqpYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0P3xeOV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37DB41F00A3D;
	Mon, 22 Jun 2026 10:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782123599;
	bh=uB+8/xYtKs/zpkIS0ggeBKEZwfZ03BQcDIPMLSVgWLI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=d0P3xeOVRrLhAms83k3Yr+cnZZk7fbdt/9E1yzW3v4RNTYnDjGbC3AkOv/ojKKR3I
	 G6xFhX+4BD5vdXJJUqK/oEzv7coDHGfo7/1WKkCYsCjLTobpIKZckWPQI5eCjAlEg9
	 zeFxuzKQtT2oNXCx1YUBRX6FicFPInSSTv7xyG+lNY5G8swQxuu/kVEoYQvwISNEJN
	 cQEf11YWKEIhnhD+fWFkx5wFQdGg6sG6Nm7AI5krAweLbIb16Z3z4EJ5g0mJJMkl1W
	 wMgP8rKu1+OPe14h1M8Oci3cU14qb3WTRoCe8tFG+fInGw+HLVizCTsiHF5LbOpzVw
	 FkdYObqda67Kw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: Drop incorrect usage of double '::'
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260622101606.485961-4-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260622101606.485961-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260622101606.485961-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 10:19:58 +0000
Message-Id: <20260622101959.37DB41F00A3D@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314373-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:neil.armstrong@linaro.org,m:vkoul@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:olteanv@gmail.com,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,lists.freedesktop.org,lists.infradead.org,gmail.com,vger.kernel.org,sang-engineering.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,yaml.org:url,smtp.kernel.org:mid,qualcomm.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6810D6AEABA

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Unintended replacement of BNF notation `::=3D` with `:=3D`.
--

commit a9fdd0b065eb5b6394a9c33ffba0fd5194e80115
Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

dt-bindings: Drop incorrect usage of double '::'

This commit cleans up device tree binding schemas by removing the redundant
double colons at the end of descriptions inside YAML literal style blocks.

Link: https://yaml.org/spec/1.2.2/#literal-style [1]

> diff --git a/Documentation/devicetree/bindings/mux/mux-consumer.yaml b/Do=
cumentation/devicetree/bindings/mux/mux-consumer.yaml
> index 9e2d78a78e409..769243a2bf046 100644
> --- a/Documentation/devicetree/bindings/mux/mux-consumer.yaml
> +++ b/Documentation/devicetree/bindings/mux/mux-consumer.yaml
> @@ -13,8 +13,8 @@ description: |
>    Mux controller consumers should specify a list of mux controllers that=
 they
>    want to use with a property containing a 'mux-ctrl-list':
> =20
> -    mux-ctrl-list ::=3D <single-mux-ctrl> [mux-ctrl-list]
> -    single-mux-ctrl ::=3D <mux-ctrl-phandle> [mux-ctrl-specifier]
> +    mux-ctrl-list :=3D <single-mux-ctrl> [mux-ctrl-list]
> +    single-mux-ctrl :=3D <mux-ctrl-phandle> [mux-ctrl-specifier]

[Severity: Low]
Does this unintentionally change the standard Backus-Naur Form (BNF) ::=3D
operator to :=3D? It looks like a global search-and-replace for :: might
have accidentally caught these BNF production rules.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622101606.4859=
61-3-krzysztof.kozlowski@oss.qualcomm.com?part=3D2


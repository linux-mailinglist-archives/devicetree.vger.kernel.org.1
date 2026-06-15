Return-Path: <devicetree+bounces-312126-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1NVsMekyMGotPwUAu9opvQ
	(envelope-from <devicetree+bounces-312126-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 19:14:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F38F688BDC
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 19:14:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jXBCWTMO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312126-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312126-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FB6D30B76C5
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02781413220;
	Mon, 15 Jun 2026 17:03:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FEE40BCB4
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 17:03:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781543022; cv=none; b=qDjzEmTsXxCsFwRovPvKm6WZSfoJ4f5a5N779zWSkCMYOCg7fPltXLO2X2zp6Ot3YwLvyK93n+UY8p+FhpKvToNyJqpWX60gF0mT1tPPkeTLS9vdHTJS1pGwdvaY43VcKI4kxJ46V05pu1f10VC6WYYticSSCovkSxUzhFyKfbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781543022; c=relaxed/simple;
	bh=LRrxQ3jyskwe6wyuNbh7qsTS+wJSNMit9t+AcxXo0Kc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hvdQWFJzXLM1lD9jLOnispQbjIvqr8nBFDUd16mWXbzBKEojulfTETATlmHpFwG+Vw8MHkoUTWZQJC8p2JA8x8o36T96q00Zr/GmljkRne0oGf0clJMdJbXM3pLoTqc3BlVU86kk2CWxYLcL64d6PXNNelKmUiAPpttejzhCY94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXBCWTMO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39C7B1F000E9;
	Mon, 15 Jun 2026 17:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781543021;
	bh=ZxPaPunlc0F8dGJ/Fo3QQ7+C5pwYdodLRWLXSkI7CXU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jXBCWTMOnQh/1LZ0A+Ezs6pybCZmLUEe8g3SAamWkubZx0L64voied8FGnnOEO1PX
	 mlXayfXIf+05S11I30wmb76kgz6GfO+Ehjage2axXWrqFX5jIO4NYs4QyCyr9cGzBv
	 cAqXxCXBvKWuagKW11xgLj01WxsmYCwkaLQDemL+xP/0QAwgU8wtpKR1oY1rPq5SXL
	 S3tFLiW497u87a8xZMxpQ5o28skB8WmKbVtxjD2RUOhf4VNkUyxY46kqvU8B4LZrhS
	 /chdLj60txFH2UQQD8+ZQ/Zp6yZx/hMj/GwxDj7NPNowsy3JsNZxCgSvhjSN/TTJjg
	 ocr1X6PjmX36Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/6] dt-bindings: clock: qcom: sm8550-gcc: Add
 missing power-domains property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Neil Armstrong" <neil.armstrong@linaro.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260615-topic-sm8x50-tie-gcc-to-cx-v2-2-6b5752dd4747@linaro.org>
References: <20260615-topic-sm8x50-tie-gcc-to-cx-v2-2-6b5752dd4747@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 17:03:40 +0000
Message-Id: <20260615170341.39C7B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312126-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,linaro.org:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2F38F688BDC

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The devicetree binding example fails to compile because it uses the=
 macro `RPMHPD_CX` without including its defining header.
--

commit 8ab50c22b4edbee1a4ec4ab581c1e5e14181a614
Author: Neil Armstrong <neil.armstrong@linaro.org>

dt-bindings: clock: qcom: sm8550-gcc: Add missing power-domains property

This commit adds the missing power-domains property to the SM8550 GCC clocks
binding so that GCC votes on provided GDSCs can be propagated to the CX dom=
ain.

> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-gcc.yaml=
 b/Documentation/devicetree/bindings/clock/qcom,sm8550-gcc.yaml
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8550-gcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-gcc.yaml
[ ... ]
> @@ -55,6 +60,7 @@ examples:
>                 <&ufs_mem_phy 1>,
>                 <&ufs_mem_phy 2>,
>                 <&usb_1_qmpphy>;
> +      power-domains =3D <&rpmhpd RPMHPD_CX>;

[Severity: Low]
Does this example fail dt_binding_check because the RPMHPD_CX macro is used
without including <dt-bindings/power/qcom,rpmhpd.h>?

Without the header inclusion, the C preprocessor will not expand the macro,
which usually results in dtc throwing a syntax error when parsing the raw
string during schema validation.

>        #clock-cells =3D <1>;
>        #reset-cells =3D <1>;
>        #power-domain-cells =3D <1>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615-topic-sm8x=
50-tie-gcc-to-cx-v2-0-6b5752dd4747@linaro.org?part=3D2


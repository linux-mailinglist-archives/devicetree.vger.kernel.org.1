Return-Path: <devicetree+bounces-270329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FOgFu6NpmnxRAAAu9opvQ
	(envelope-from <devicetree+bounces-270329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:29:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E531EA2DC
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:29:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5EE093010B73
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 07:29:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09882383C71;
	Tue,  3 Mar 2026 07:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GR+pv/CH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBEC437419A
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 07:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772522988; cv=none; b=JHVQB13URoZFyKJp2YA9phqqCSvAoNlB1UF4Y4bklHkGREDLWKEZDW8Ob7wORVuFean00XgEOqM4huXhvUCV4xKCeF21UIrSlF5F9bAFMZoAalvJgcc9e439tVFIgo+7kjC5QfMl8yw8aPU9n11cQpDzfFaE1dWXPsLqZ1TO0xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772522988; c=relaxed/simple;
	bh=4lz9jAz1mUMdwvzLCEynZVInvtB2J4gd32k/guztaU4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Jnvx1inCljRtzRuZ5cEo0Kj+UIGGZt1CqYREcwGNS9asGDbFma2HKb37r6bmiAQmFdxASEA+qvkuq4iBopf6w23GX5iGj3i6ou8VaZl3F4MMbVZhKIH52HaJCpJ/uqlm9xjkzBiSLL+jombTbrJFw4g8H3l3SFIvctq3faxwFLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GR+pv/CH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 485E4C2BC87;
	Tue,  3 Mar 2026 07:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772522988;
	bh=4lz9jAz1mUMdwvzLCEynZVInvtB2J4gd32k/guztaU4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=GR+pv/CHaFTUH0JO+oc9A4hKb5IfKoFV9qbS+oWjkfsv7fg9eqasjcoGhcOocOPEl
	 KuycUBQu/vb878MsWd8aoycLtofYrGCd+iMj9jS8N07mkH+eskyw1v3XriApvXRAVP
	 7YyJ0Ogh+EWhN4WcGH+40C3FUmoWoAinUJDXgf1wziw09DnX5xUsSesOcZs/jmlGmB
	 QXiz4pdY9lPvk8oDrI9eXre0+WokjuZqHnkOzW8E1sqyNivFZhqAZY8yIcf2G/RHdn
	 kqbUHfNcAF4U2GmBVeUvkwo/9PAs8etznxuiuQ+Zdmlv4brl/jG0FdU5qE51YV31cj
	 GbdO1K95665hQ==
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 03 Mar 2026 08:29:36 +0100
Subject: [PATCH v2 4/8] dt-bindings: vendor-prefixes: Add Verbatim
 Corporation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-gemini-dts-fixes-v2-4-5b92ced841ce@kernel.org>
References: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
In-Reply-To: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: F2E531EA2DC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270329-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,wikipedia.org:url,qualcomm.com:email]
X-Rspamd-Action: no action

Verbatim Corporation has manufactured a few electronics items
over the years.

Link: https://en.wikipedia.org/wiki/Verbatim_(company)
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Linus Walleij <linusw@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..46ec1d935a93 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1761,6 +1761,8 @@ patternProperties:
     description: Variscite Ltd.
   "^vdl,.*":
     description: Van der Laan b.v.
+  "^verbatim,.*":
+    description: Verbatim Corporation
   "^vertexcom,.*":
     description: Vertexcom Technologies, Inc.
   "^via,.*":

-- 
2.53.0



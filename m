Return-Path: <devicetree+bounces-257663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHIoOYgXcGkEVwAAu9opvQ
	(envelope-from <devicetree+bounces-257663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 01:02:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1604E3EF
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 01:02:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DF2A19AF691
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:43:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26BE641B37B;
	Tue, 20 Jan 2026 23:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="sd09dGBq"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com [95.215.58.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578F441C303
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768952574; cv=none; b=bEBNv3YKdUnAoGzVCBNN/5AEfWCCG0JZuAC7REqbxJL2tzVnyLFjGCAO0GOLl3B06Sb15v1UUaPsOzvdVZ1xtw6ql+48E2U8rNZxhuSx66PGfcKL6SV0wU0YwcXipXtbSrZQSNN9hF7UKEAJe9DkAB8dleYxMHHyOs5E0fGs7c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768952574; c=relaxed/simple;
	bh=cuzQ/VJ11x9mx+dZr8E0wYk9mtz2jv1x6nXlTxRohbM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FeXgwd7+TQliIB+XqDygimmpzCh/Jdndmbk3Vx6rbcgXgbNtFykawmyZWOuD0/oTo+wG1BQKNITVAamg1SOgXS8akAHZ+mD7SYpqZQktVAdTE3Yq22EbqvPcfrXREc3c4imPa53ObjmfNZjMG3YnNfzTO+b4oa46+A1/5vJFh1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=sd09dGBq; arc=none smtp.client-ip=95.215.58.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1768952570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4m3R3R1tQvj38BC18do3It7eWweMrzyOaw1P/rQkxo0=;
	b=sd09dGBqcg7xd0i6Ou0qNMyUZFs5epo3kcVYsM4RIioUcA2/AU/m/Ae03w3jsUfAmLQFbb
	oG2jopDfZhy/bXFO9mcXqerZg/3pt+YK3za0ncLpBB6SSW3YM1GkUjGFf605zoQdXpqvOf
	qf/OZkeda23MkUyQvY7u26jKP5PZn6M2bp8Nd1dIwlIPQ3JBUHsboLFyjK6PgafqVNYiZC
	iw0O8hIUK5bVVvTatFIrMG55S2OWutQdiMDvR0naEjjWHKMJBvAvy7bzJ9W5iJVKBnPOQS
	iX9/N70BlAB0lFeOb2yxjeGrDJD92RXKwy8Yssf59LAcz9ahFwo4u2OXcwWxgg==
From: Val Packett <val@packett.cool>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Val Packett <val@packett.cool>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/7] dt-bindings: vendor-prefixes: Add ECS (Elitegroup Computer Systems)
Date: Tue, 20 Jan 2026 20:30:05 -0300
Message-ID: <20260120234029.419825-3-val@packett.cool>
In-Reply-To: <20260120234029.419825-2-val@packett.cool>
References: <20260120234029.419825-2-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[packett.cool:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[packett.cool,quarantine];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257663-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[packett.cool:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[val@packett.cool,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,packett.cool:dkim,packett.cool:mid,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 6F1604E3EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ECS is a Taiwanese manufacturer of mainboards and mini-PCs.

Signed-off-by: Val Packett <val@packett.cool>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index eee160de6dc5..63730f75a578 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -469,6 +469,8 @@ patternProperties:
     description: Eckelmann AG
   "^econet,.*":
     description: EcoNet (HK) Limited
+  "^ecs,.*":
+    description: Elitegroup Computer Systems Co., Ltd.
   "^edgeble,.*":
     description: Edgeble AI Technologies Pvt. Ltd.
   "^edimax,.*":
-- 
2.51.2



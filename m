Return-Path: <devicetree+bounces-265974-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AkYIG3oSlGlB/wEAu9opvQ
	(envelope-from <devicetree+bounces-265974-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:02:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0709C14918C
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:02:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2AD783008C34
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3621C29BDB4;
	Tue, 17 Feb 2026 07:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="Bkls8GvO"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com [95.215.58.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E2C27B50F
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771311736; cv=none; b=BwoxkdqTARt6+UbvxalBiDGgQu+58FNj5Vc1Niv+vj6uTauhoF49lprBuZasJkoVgZeO7m76zAoT/H6iWe5sSlr9k50cwjQUGXtQmlx66YwOWORSvpbxGx3bLNmEIsOkM1P7XFzwzu5gzsTJA0xOyoWqOs9dlSl7Tya1dZrvccg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771311736; c=relaxed/simple;
	bh=xERRjN4CaWjCqydJf2I9zpsZdided5B48f9+OvM3XY0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sDtzqcnpyo60/9v7i089tbnICFRAivynWBbGtSD0nfZ9iKF2wXD41cHFin+EMcHH91H6KZDKEeQNBQlYEgmwsow2iY/j1xFMlPFlimkysaiFHN8Uflw80q9vBAL+FTfycKr4q2TxkHVrZi7S5ZcNTz0z306ks7/Ff9I5GX+KUY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=Bkls8GvO; arc=none smtp.client-ip=95.215.58.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1771311732;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nz+v6k1MMJh7TTRZHrET7LiKV1Oz+A66VZ9xkY/CTCg=;
	b=Bkls8GvO1a2CqbEYmMAhN05WZvdPO/XecHv6giG+yz+RgzNsmV9esbg6SGe0yXVtJU9xoJ
	7/mkMLWjXFCs+4GUHCD6TfCkkcowJFcXj/yHbBVHti187XBq6wMsNjdpW++lI09aBmo+3x
	anTz7c3cXe9PZO2ojepqMmvM633d9X9rteOkfaCHsoJszz28dgyBr9HSPoA6S4DZ4orcnr
	VqgVACC1Gz4Vxt9m8gvZ1HSN/5tl1bSYdWhTEsEEHjNt47g7xcSyFcfoL2jW5KqwmpX2xL
	D8MrF9y8p8mLU2OQCZ+9yj5HdJ8KqTUOgJC4QmrKbHGjCbaI4kI9hlYj1ie6vw==
From: Val Packett <val@packett.cool>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	linux-kernel@vger.kernel.org,
	Val Packett <val@packett.cool>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: vendor-prefixes: Add Holitech
Date: Tue, 17 Feb 2026 04:00:09 -0300
Message-ID: <20260217070121.190108-2-val@packett.cool>
In-Reply-To: <20260217070121.190108-1-val@packett.cool>
References: <20260217070121.190108-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[packett.cool,quarantine];
	R_DKIM_ALLOW(-0.20)[packett.cool:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265974-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[val@packett.cool,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[packett.cool:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:mid,packett.cool:dkim,packett.cool:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0709C14918C
X-Rspamd-Action: no action

Jiangxi Holitech Technology Co., Ltd. is a manufacturer of display panels.

Signed-off-by: Val Packett <val@packett.cool>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 46d0287b2cd6..646e18985a9d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -711,6 +711,8 @@ patternProperties:
     description: Hitex Development Tools
   "^hitron,.*":
     description: HiTRON Electronics Corporation
+  "^holitech,.*":
+    description: Jiangxi Holitech Technology Co., Ltd.
   "^holt,.*":
     description: Holt Integrated Circuits, Inc.
   "^holtek,.*":
-- 
2.52.0



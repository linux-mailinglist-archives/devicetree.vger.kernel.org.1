Return-Path: <devicetree+bounces-274859-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNhXF1B6s2kZXAAAu9opvQ
	(envelope-from <devicetree+bounces-274859-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:45:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CF23227CE14
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:45:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D4743307B659
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:45:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E477A34B19F;
	Fri, 13 Mar 2026 02:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RtAGQzJs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C04134A786
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773369912; cv=none; b=TaNS3fEaj+Is2dT9VBjLRzYyquZ9qSPM+jQRMngZh9PsXzjDqqaDTS156aeJDodp4zEc2x5lmVg4YD/nmbWnfvWq3DDWyPVrVCh5eCSBNjLEu5LDTfPAEHhSlbuFPJWm4AwC33WiiVw4H6OSRdAYbTBI6WSZcZE3lbK7fabPiEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773369912; c=relaxed/simple;
	bh=Qia4P8XikyL8RJUTzrDP4dNVVIuHeWceEw6Ij48mluM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RIWcsIOQwSa780ZFf6No+zZYQLYz7oLjnNVgh1gWq+KzQWca8hHUKmeIV4O9lefHBd3MN5g+gSRVuvvpXMzL0j/TIVT1Vh2uo2RSmfK6a3DJDMKTARH6cxGRZvRbxaN2ipDBbP5hrATDv+B5xpTdO09Y8IXmpdv8PKlBmrVb1jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RtAGQzJs; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2bdd40d3c61so1592059eec.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773369910; x=1773974710; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SFzriUvxyUouUh/14v5VpqktDu3zVKkfn5cbsv15Ta0=;
        b=RtAGQzJs9ZuQjFo/BSqavTWUgRHa/2pUPsV8x8wBiMYwGGqCWF/Jin2HTw61Cmyfvo
         +38jWqUFoMy1skOMX6aJddI2LZp2ndcI9Q+to1gAQ8cT7JjSyKoQ9rAor3dX0qtD5e0v
         8fehSv7Qg/IP3ovSxEh9ONoBttZsRlHf6fVBveCasrVXkaOKFNAK3cEnxJUtQZ7w9SAt
         pzIJb1iprLZUIRj96PQ2oFPZjMgTM7rIX8kOD64bD1THHRUvMpnZ6RI5PYKc8j5Af1X9
         KBz/vvlJGYTrFoZDiGfosqJUw4tJ/Y7IKAna0HlcGzDi33KL3cOAgEC1mM/1t9lvt7nh
         t/uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773369910; x=1773974710;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SFzriUvxyUouUh/14v5VpqktDu3zVKkfn5cbsv15Ta0=;
        b=Q01NYh7SN76UX/cLJ6tv9cLXVgms5v/pQlwEQc5YvoinTfhznOM59TRL14APnQ3ziT
         00Tpq/AG1D8IAzbq7+GV58gDJUdnjUbHecxs6DIZqTIQI39FJ89woUXPnGlYLJfRXQTm
         Xr4730d2XNC2AX/CuO2a83XHZd4wzPkkJmjlSvV+JWVXx560ddawMJE9jFIf5SBj55Lp
         D5s4Luwdt1eChv40DLbElhQR28HV1qD9TyNN1BJWZ83M+nGK4wmnZpB2l2VWl7h1V4ur
         EzmgKvOS2UfPhHcNSZmhnUAcqC6SoPw/ZfA7CfHqIwitmMIKN8OfuCTNCLGuizPg/uMy
         tpzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaW6zx0x7IRYriq34RHc/sBAXJFlv63AIHNHbSAJhnOhV/nIKxaiqshUeYS7aSg9jWnjw/BpR76aaX@vger.kernel.org
X-Gm-Message-State: AOJu0YzAowrWVJC2gapxM30Z9uVA5mFoKHlukXS23ok1vtyMhlEooAbE
	G3RxkDc4yL8xvQI5MmTLCXtU0gHSvquoTWx9wlScflF0ZtCq2owyzKUv
X-Gm-Gg: ATEYQzxDcrp0k0q9giyfayY/Ys0Ts7wCyJhLuwsALdbQXwENP7n3kvfDdOdnN/UlGx2
	T7QoEXAot9vde9E0gHEOoTxYPFTEcSpkutDBTqM/Hks8LkP9CWDrSqDGvH2Rx6Vemsy9pFvGJUZ
	0VoQ8x3dqYNClyaOcuekhUEAoa/CQX2VFRZAWyvk4WhnVmMRwl7Io4FFqFlG9XiQYQiQ7Orzfhb
	M5VUWagiKP9uA0i3/qy0X1vE3MchAvXJ+VF1ECLnjgu5M2yISqp1ZwWJ/u3p5KrK1xx8FmVLq5q
	ORP4Gj+0AzpSfsxtuSKvtiWPGaoiLUeEF6XeoHUouQqJ9YMP3bjD2x/EpLe78fbc2sewv17RVse
	mNl3iCeUyIDIh736JNEo+g4in1waWDo4dkCZhd49jpzftBSvEXup+rXkMIG/EU2Xca/rs8oApXm
	UaVL5bpvrI9dxCRORJQRw963SAZX0u3jjF+4T0sNUv/i4rOeCcO0Hh4LSiBjONrIiTCKrY
X-Received: by 2002:a05:7300:7c15:b0:2be:85d4:4a2a with SMTP id 5a478bee46e88-2bea5398545mr806874eec.1.1773369910271;
        Thu, 12 Mar 2026 19:45:10 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:62cd:a5bc:7e0f:18c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab526db0sm947919eec.20.2026.03.12.19.45.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 19:45:09 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 3/4] dt-bindings: arm: rockchip: Add Omega4 Evaluation board
Date: Thu, 12 Mar 2026 23:44:50 -0300
Message-ID: <20260313024452.625064-3-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260313024452.625064-1-festevam@gmail.com>
References: <20260313024452.625064-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274859-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CF23227CE14
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Fabio Estevam <festevam@nabladev.com>

Onion Omega4 board is a board based on the RV1103B SoC.

Document its compatible.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v5:
- Only collected Conor's Acked-by tag.

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 91a387621bcb..1e5be6c809fb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -808,6 +808,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Onion Omega4 Evaluation board
+        items:
+          - const: onion,omega4-evb
+          - const: onion,omega4
+          - const: rockchip,rv1103b
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.43.0



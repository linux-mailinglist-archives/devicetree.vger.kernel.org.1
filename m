Return-Path: <devicetree+bounces-288056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PSZFEHd4WmtzAAAu9opvQ
	(envelope-from <devicetree+bounces-288056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 09:12:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 12933417C00
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 09:11:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 879B8302865D
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 07:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE18A33F8DA;
	Fri, 17 Apr 2026 07:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="espvJQ4K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C62332EA2
	for <devicetree@vger.kernel.org>; Fri, 17 Apr 2026 07:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776409898; cv=none; b=iecasDkE5QklxbofXsK23XAVRQ6FPbS5IO7xkvOvq7BliiOArCRcYhCpoCazMjFe60lKvsV9wPNmsl6S4nZ+m5Pe6IcXYFJHg80lHSMp+gFbZAxMukVByDkIuLKP7mOMcpsTKne3nPkFP4mM22lKL2x8qYMYqJzufwGCDy219Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776409898; c=relaxed/simple;
	bh=gqngTd4MHiV3D5QcORWGXlDKp1XsVNvEDILzzthOEwY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hbpKB7dMA/qfUBp/U4MGkEAQgdlx1j8l5wzm/OWLFAhdjD/oOtljgHF7wTUBVzENK1/jMdRL1ToCrsHrjzOB2aydtndsvRnzQoFDXeiHWzOMY2pg0T1Ni/AVsAhfEA7nbBDUijQjgw4YtUEMLjW6lMdQHSyPQ2xDLfC33bjwi9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=espvJQ4K; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-38df1889fb9so3452271fa.1
        for <devicetree@vger.kernel.org>; Fri, 17 Apr 2026 00:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776409895; x=1777014695; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UojtAg/yVrt1TCj/dA87iY3tTJuq7q4q7W75tUN9wMM=;
        b=espvJQ4Kr93ZaOeYve87ZnHLkMpny3NDSKe3/XpPswLdx2sjrB0KfQA617qUf+gpdG
         M/bifbRRv9vM6UdSWCbz2xiA1GA78SHrOULXJNnCodBnzbA7FyqrjT22jaEoXUBPAmsl
         2Jvto/3eIK8jQPXrEIEuyjS50jWU9U73gnDm0J1nQBapfgZCf6u3LUeUPRw1irqSgLkL
         3kBhg9Ss0PkR4nSUJBEIqVEuA/VuitJBCjZLsHh/Ez/QReKyDc83MVtWnFuKNMwQkfNG
         CQ04PIx5LRTOaQvrAwF12Srx5R0MkbBfUT2f8eujKoVJ6DfC9hZGvfrvh64ZP8iG5Q06
         X42g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776409895; x=1777014695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UojtAg/yVrt1TCj/dA87iY3tTJuq7q4q7W75tUN9wMM=;
        b=qwvw2An/puh9gMir60q3Y05OudS6p1GHb93YY3blV+pffh72kAnBW3avt3sphz40c1
         YD6n8Q/sShXkSPWWTlIsbN70tcKiPMkIB+E7WRrBaSbQJgR6qKOpRZasKSkyEXtZSicx
         hkdzx51knFNEDMc30KvmQS9aZKXElc2yPtI5n7jbJHEyTcKA40saVHFp/4Wr0GAf7IrO
         LRZuNoiP9h9tJMHq1uZD37m/nCjkZwt+BWD6tvtw1GRBltDvjCoIqE7NSBb8K6mrbO68
         PadeocmJdUF/GMDfD+8IgyGgDNJwby3vO8zL9zwsnWR3o2HXYngDXFsndfkqiic0vFiS
         7bNA==
X-Forwarded-Encrypted: i=1; AFNElJ+mfjXnSIfltTeOgGOeQr1Lndhf6hG1FUxw38lCZU8ruUL61vR6jxyX8/7Ju5ugF9s28eCD9+E9XK4e@vger.kernel.org
X-Gm-Message-State: AOJu0YwlMENwBG1MXPiiVgbAMleR63ZumbAjNxz08kL9NFYRUzZcKX/K
	XhZu/52wrcAb0UR+PPRIg7FB/snMpcmkNvuwXYqQ5rR7O6Q+ZFltMSVQ
X-Gm-Gg: AeBDievXiqoGYJVQ+NLZ5StWE0p/+X2mMih0KwWxH5dvutd2wCq+EGyhCis8ID2FYST
	utebVpTmI0q8OZf4/mr3ag87bQ0piuzQTuhUZ2Q78tAfiV/vpd/7/R4tPNCFOg+Gy7018I1cLje
	Z/nygzF+KNDYI7X0LYn+nyoUzVyEAHc6a8Tnz8YVWqeT7i40bzSttNRyu7EPPj4vtomIZ72kUk+
	eafPB9gyfkjLIHRSp2+CIG+8TkZxRQnbP2TeZUpBXcooHZL1VjYtaXEoLNIbtdizTrj1z/C+Ybo
	jXQT36Ugb9BV0Pt7rXMDKZPU7B3Vg9Hi8+K/gDJH8RFXBMgKmP8S+esV8O/VZAzj6pJ1wRrx1jw
	uyFLmGUrgPjxtS/fDsBEj5y6p6xW25QKRtaIw3LjvSCmpfeL2J96FCLdgOF2VMhZt3d4TD6EvuT
	oTx1uNbLUh+NnzuH9ZjOJy1bs=
X-Received: by 2002:a05:6512:3196:b0:5a4:56:aa88 with SMTP id 2adb3069b0e04-5a4172e7bd3mr495747e87.27.1776409895107;
        Fri, 17 Apr 2026 00:11:35 -0700 (PDT)
Received: from xeon ([188.163.112.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a4185bc240sm162772e87.23.2026.04.17.00.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2026 00:11:34 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	David Lechner <dlechner@baylibre.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v4 4/6] dt-bindings: mfd: motorola-cpcap: document Mapphone and Mot CPCAP
Date: Fri, 17 Apr 2026 10:11:04 +0300
Message-ID: <20260417071106.21984-5-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260417071106.21984-1-clamor95@gmail.com>
References: <20260417071106.21984-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-288056-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,baylibre.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.985];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 12933417C00
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add compatibles for Mapphone and Mot CPCAP subdevice compositions. Both
variations cannot use st,6556002 fallback since they may be based on
different controllers.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/mfd/motorola,cpcap.yaml       | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml b/Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml
index eea5b2efa80c..487e5456864b 100644
--- a/Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml
+++ b/Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml
@@ -14,9 +14,14 @@ allOf:
 
 properties:
   compatible:
-    items:
-      - const: motorola,cpcap
-      - const: st,6556002
+    oneOf:
+      - enum:
+          - motorola,mapphone-cpcap
+          - motorola,mot-cpcap
+
+      - items:
+          - const: motorola,cpcap
+          - const: st,6556002
 
   reg:
     maxItems: 1
-- 
2.51.0



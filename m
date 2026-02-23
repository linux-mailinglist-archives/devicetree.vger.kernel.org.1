Return-Path: <devicetree+bounces-267252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKQAIID2m2lI+QMAu9opvQ
	(envelope-from <devicetree+bounces-267252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:41:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B149B1723DC
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:41:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 14873301E733
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E68934CFAC;
	Mon, 23 Feb 2026 06:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UW72BrgC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com [209.85.167.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838EE34B682
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771828760; cv=none; b=ce8dmeO83uE66YYuvClIcXgRetRxklxFdxJr4IepMmwS787mwaalbYEaeKXxuLbbARzf2JKnSoUbhcMJDG/y7Se7gYq3OMU8LNcpuYIvVnQWUjbehbBORiNQ6rHeoR1kc0NE1Sdtk4E1drxj3Pygk6uVz67mYaP5QWh2uBVwPfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771828760; c=relaxed/simple;
	bh=qn/yoppFnHPkm/7wMIi4OZx3NpWnZmmaThF93Fmizvg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LZtIlJRwx0+UceJ4/MOGAGsg85Jy0xRKLICCTfNDwUsF+tGlBinJB9Y8fU8k+aL45jVYzaNYaHkq0t+8WDkcsgCsyz4hYoU6flU0OGVRGKACEGCA/DW9VXkPTMtpkjVE0W1yPuPhY9ySogvF/4oUDB30B3/hAdW5N8oTws/yYpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UW72BrgC; arc=none smtp.client-ip=209.85.167.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f68.google.com with SMTP id 2adb3069b0e04-59e5aa4ca41so3774834e87.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771828757; x=1772433557; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eFYrOujfibvGrP3Q7JjlnOcmVI0rxGplc79nBkkyDuI=;
        b=UW72BrgCnJ12CdbRMvS/xHDXKYZHBOI++zoxD7FmupgbYT74oQJSiIHkf8nHJjBO5U
         sfLTNNuoo7bVKYSHQiMDHeet2kcpmjjtkxQuhrs0kmHHxq42H0tppESlzo2NnQbd7ze6
         Wx4hOobeaAeHqWc/qVhIMFyM3928xiyAakcXGb8HjHMp3NiQ5Ijmt4BDOS+B3pktfq1b
         WEJM+v0CkvRghPFp5yOD9qlx8DfjD8T/+lUWQvVkuOfl1BFb114zHaTdlnGBd8jJSZYQ
         jlFzZ0jMkdHMW0Kb3gifNQB3Gl0alTI0ZvRfyhZhhAJ89Q6qDGUONLcldyQhnqlpCQ8c
         PoUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771828757; x=1772433557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eFYrOujfibvGrP3Q7JjlnOcmVI0rxGplc79nBkkyDuI=;
        b=xACU6X2eR05oYOFOHfWcHXdJqEzyYwu3ev2QGmBAQL9sfs9ad2aNBvr7w2kG4ghGgN
         etmEqoue6qTkWIdhqVCO3TO0ePfSIR2RtpUnOKB55BDGr67GR/YGwIDr1a59ZXcGc3GS
         PbAFh5bvK3OFvSBOQnhhDlPNedPAMaYQkRURgFQgaJ6yJmsg/4SwSKf2ieFXaRA0RBQC
         WxJzMX9HC7EKGbcSj3q+Fq1zBkvJU8q2/2Cgr1zgbOZlriVubranj8xGd3aEO4DR/x7c
         3S1Hpu0OQSBXCKH6c+HV4xL1DZzL4oagKEE6p9ACP5k3FGD8vn1PWpcgMw0vOR7aoRSS
         sRMw==
X-Forwarded-Encrypted: i=1; AJvYcCUt048RKfBNMu4DJVL4qUDKmAL8ikOhzsIJLT3CwRbujWSqapdbYEojfT75yRnZ+kzFohM2xewJkUUf@vger.kernel.org
X-Gm-Message-State: AOJu0YxmmjevGfDTVeAi8oE55+vicdqx1hB957yvF0nBsl6reFkpZ8D/
	mqPpT8j/p1vXvTPRVv+CaN6gYy3bk/Yjiz4PGXpi7vgm81y6H9Xph1mk
X-Gm-Gg: AZuq6aL9s4C9itr+eDIsLrYWsUWp41/N+aFu+uwO0XfGbersmToycXno8PgiGxYRjml
	BrSmd2wLyzAn4Pczk0O/T3rXj1+vxfCQwAMZA1FiwCzj0RCBSDhUAr2d/J7fVdxUEkO9gogE7rq
	9yJaeSOnvaEF6rRMNs6FVizmp5A05gz/22DCFl2LVlKni0wrQuZbMcjL7kaGXmUFx9FWniCJT1A
	lzLGnKEeTGri6gRtkUEsK3glGqgnnFPcgEoAv8NB0jUVBKzsph9RJC8tvakorYEI5h9ajvdLX0x
	RSy9SloHlySASS33ZlWUFDf9Ax65P57MlGPouCokWBGW1gOGtHtcF5sFQErigzzMRFh1z2gQDLN
	7IL+mwCneKxgnD1Pbcrze1+/tlWug8XGuw1hJrymxoyZTzOIxV9LNLrYkvrhg+wo5RrTxukJokX
	kdx9q3iKx3XsdWG2qG5Gs2b5o=
X-Received: by 2002:ac2:4e12:0:b0:59e:39af:a710 with SMTP id 2adb3069b0e04-5a0ed99e11emr2406522e87.34.1771828756677;
        Sun, 22 Feb 2026 22:39:16 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb13abbsm1369626e87.23.2026.02.22.22.39.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:39:16 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	David Lechner <dlechner@baylibre.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v3 7/9] dt-bindings: mfd: motorola-cpcap: document Mapphone and Mot CPCAP
Date: Mon, 23 Feb 2026 08:38:56 +0200
Message-ID: <20260223063858.12208-8-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260223063858.12208-1-clamor95@gmail.com>
References: <20260223063858.12208-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267252-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,baylibre.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B149B1723DC
X-Rspamd-Action: no action

Add compatibles for Mapphone and Mot CPCAP subdevice compositions. Both
variations cannot use st,6556002 fallback since they may be based on
different controllers.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
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



Return-Path: <devicetree+bounces-317822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7a8INhrFQ2o7hQoAu9opvQ
	(envelope-from <devicetree+bounces-317822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:31:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B956E4DFB
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:31:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Fxqnh+D7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317822-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-317822-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9FB4E3036BBF
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 389EC33263A;
	Tue, 30 Jun 2026 13:30:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8FD4325483
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 13:30:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782826224; cv=none; b=MlINEiCCNV72KVqO95XSY8sCY7e26UfB6G+5+PC7XxrnGyTgF82GMozFMRmwUKtsmkcnhosNLwcMxMwufmK4F/LoFJX2gGDUIw9YSnpGAUcOA78z+ENSaYx5StJd9g70pLEZYTmc9wUzQe2Csl+HoxlGWqs4/9dQ8Bu/YyESPoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782826224; c=relaxed/simple;
	bh=laEbLt5uZW2gyt3+YNSeRGDWszsz6z2Ki2lVxOx69MQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bpl44bkLL7dMo5hcuo1xwM9Z4NKN55ra3QaiF8Uly8Ne3mKa5uQcwCy30yNnWtPvyWB9A+X0nVhjgfO6QSsRAsJDw9VVNMx0wnk1gCs6XVymXEZcYqx7K8bka78Pi7VP6cR/moNi+MkRp+xHVNyJFRc9zYqFfoVnn/xGlhoTsus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fxqnh+D7; arc=none smtp.client-ip=209.85.219.49
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-8f18d92172aso16008176d6.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 06:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782826222; x=1783431022; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aByZm7jR+8Ms3DdCpAHOVCxrhdh4rHnZilW7Sr7olMA=;
        b=Fxqnh+D70XlsBp/izUkMFqyRDzDfuR7I8spwTjkBX/etm2C1YqIzuRwD9yadlSQGv5
         6J9jBzKa5/7nZnfW+IZnWrp/eM/jApgNPjeW569w4VTMI8XKEEdMqXXH+21sakHSMlpN
         j053mHBPL2KwMvHF7vWEqveymJvTn/HAKs6/SeXQObrz1BC2eQYb/OjQanYRFYnyzD3L
         6Z7aD4J/LlDXIrQkUPTJSkYV+l9a3FDnXT/UP6iYYMkvfvmuAxfjpBoZw3PmBri2jWoO
         0IY1av13nDaPnw6L7jqAyv38sVcee/lRBzAZ+3NbdW8x52wrukcnYSER9I2t59pdMBcI
         GAWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782826222; x=1783431022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=aByZm7jR+8Ms3DdCpAHOVCxrhdh4rHnZilW7Sr7olMA=;
        b=U7GYTBlccd0BuzdeWBAcdA0zfen9bIMo62GOuwi5Y/MejE2Q9Jdmi3KLEQAF69vpj0
         oARV4pQ1ZsDc9VGlciUgKI8qbxx9dndHRbx0JkGOg3BOXXgUMI+NwXYoUVB0RzNZ7SvH
         8FAsU2Unm0o84eLOovDKLD9J2qT4HLv2OnJ+du9Xh4yYLS0hEOEvO96NzW8QS4sCxCRF
         DyDxRPJ37r3hQej19aoDH5wkdjD6m08Nm0Ndsz7IiOeF4ddLr77D9KgKn7aqbe+vOHkq
         MmrA6GHmrlL02PnIXQT1AsVyKN/+rlDNjJwalbL/bN1WYZYwUosKAdQSVDB90EhZBWcx
         UEWg==
X-Forwarded-Encrypted: i=1; AHgh+RqCOboYgpqZJu2fez44GJEI8RYU5dlXAPHTo1yrreDMCFzSSEqtq8ZNr175BSeHupTovljBi13CTr1r@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0oRqO6bWp5HTuLO70ofSRdpczXdatE0QPtlnay3Y1TbKj3r49
	SssxMg3EauUzuhEHtk5VcB/NnPjoPiD4Gdx69si8fQC8rAog6Fi0vL5c
X-Gm-Gg: AfdE7cnjeuJ00VFwAXTBTt2fg7a1nCCU6wbADBEZros0ZKl1WY/ZFrFrF/vxhf2FJf0
	ggFr2Dp20G5+/ktF7xeQ16q44mEaCHzfYw+Yykq+ftaJESDNE225/yBa3M1UuSCy3oQallH23K7
	/9sJzF8quLryTsQ2UozihHJl3SkqTuIo2mHFcxzO8R0JF+WK290fI4Ty3IrNDmDzdmexcNjcgPl
	NY3D0lSOvU0ySpkEnyk5n8lf8W62EKEhmJ49hCCZFOM2ASf/jLDmWrkjji8cma+cf4K4THgjm1/
	kTT5nhrU+UUbAqlk1OakT4QnUX+1rBuBtPucvS7gEDAgF5OFTCvi8brqnIgZtczhyJuhS2Tfj6d
	edI841odjAv89AN4DiGsXI/rMJC0+nJauVC9Nd7gKAeHj2mf8jPeJUFDiq7UHuJ8XWmsBRYZ9Fm
	tI+l1ff7FVOcKwOKchHG94p2w3BoKWUMFKxBZuPkJyjLMKmA==
X-Received: by 2002:a05:6214:12cd:b0:8f0:b75:c4ae with SMTP id 6a1803df08f44-8f1b8e6ad8cmr36969156d6.9.1782826218110;
        Tue, 30 Jun 2026 06:30:18 -0700 (PDT)
Received: from dev.lan (c-75-67-38-46.hsd1.ma.comcast.net. [75.67.38.46])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-8f1a7b26b2csm23003536d6.45.2026.06.30.06.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 06:30:17 -0700 (PDT)
From: Andrew LaMarche <andrewjlamarche@gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>,
	Jeff Johnson <jjohnson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-wireless@vger.kernel.org,
	devicetree@vger.kernel.org,
	ath12k@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Andrew LaMarche <andrewjlamarche@gmail.com>,
	Ernest Van Hoecke <ernestvanhoecke@gmail.com>
Subject: [PATCH v2 2/2] dt-bindings: wireless: ath12k: drop qcom,ath12k-calibration-variant
Date: Tue, 30 Jun 2026 13:30:01 +0000
Message-ID: <20260630133001.1426824-2-andrewjlamarche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260630133001.1426824-1-andrewjlamarche@gmail.com>
References: <20260630133001.1426824-1-andrewjlamarche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317822-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:johannes@sipsolutions.net,m:jjohnson@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-wireless@vger.kernel.org,m:devicetree@vger.kernel.org,m:ath12k@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:andrewjlamarche@gmail.com,m:ernestvanhoecke@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andrewjlamarche@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrewjlamarche@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 54B956E4DFB

The ath12k-wsi binding documentation describes using the
generation-specific qcom,ath12k-calibration-variant binding as well as
the generation-agnostic qcom,calibration-variant binding to load
board-specific calibration data from the device tree. However, the
driver never implemented either of these.

Given that no devices currently supported use
qcom,ath12k-calibration-variant and the previous patch implements
qcom,calibration-variant, drop the generation-specific version from the
binding to prevent future confusion.

Signed-off-by: Andrew LaMarche <andrewjlamarche@gmail.com>
---
 .../devicetree/bindings/net/wireless/qcom,ath12k-wsi.yaml  | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-wsi.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-wsi.yaml
index 589960144fe1..fa64c8aa56f5 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-wsi.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-wsi.yaml
@@ -58,13 +58,6 @@ properties:
       String to uniquely identify variant of the calibration data for designs
       with colliding bus and device ids
 
-  qcom,ath12k-calibration-variant:
-    $ref: /schemas/types.yaml#/definitions/string
-    deprecated: true
-    description:
-      String to uniquely identify variant of the calibration data for designs
-      with colliding bus and device ids
-
   qcom,wsi-controller:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
-- 
2.43.0



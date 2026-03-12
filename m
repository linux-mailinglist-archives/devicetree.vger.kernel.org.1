Return-Path: <devicetree+bounces-274684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCDrCDThsmmXQgAAu9opvQ
	(envelope-from <devicetree+bounces-274684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:52:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A599274EB1
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:52:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 40CF5300699D
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A03EA35A3BA;
	Thu, 12 Mar 2026 15:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NsAvk5iW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4965B373BF3
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330615; cv=none; b=XKIJM+qu3peje+2dC0R/cgOAXc4jOYib3Olqb1f4dxVFkPJtqIjHQtQ4ckcjuRvYu3gbtpXAG1ppSPbKDvKlHmX4SqvCgBz9SXSyduce7l77W10VkRHixMNf9YSq/p8xGa+fGaqU6WKWl48kQxnPNnyrTU9XX2CdeMsUhnEDgY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330615; c=relaxed/simple;
	bh=QkpJrK0sLsXaJAz/NDwURnTrDOk9cIBtUwllgV38WoA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tbjaRJ5IfW4dt5c3kDnH94FRpEv0MoLU8PS7aBXdNbEpEZBgP/glfQx7vjh6BeVasV8c7zBGf5lKxwwEpwJYGNL1G//ARkfNqph1gS6PtWn0N+n+xkdqwe2ZF9I+mccG5IYOw4j5uXkIBKNqG15e7Ebn51WbckUIpBYrGfm7axk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NsAvk5iW; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4852a8482fcso9213245e9.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773330609; x=1773935409; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Der2AmEZNJ0NJcW9rSc7hfAjH+ZP+A00AJ4yvvTSgOc=;
        b=NsAvk5iWt42andF0Kb5OHlOY2cADzb45T/7cmAyEgZ4JOCazcshFZjHOg9+lnVSRfD
         M4CDM/rzmlYJlB+BhZpw/w7SSIsfHziH3mdH6zrzJdoHbKdtBt2WjPZGqyZFUop5jvyT
         P/QGgixeOzVaxSvuTN5RYTgeiND4Y/ODhWm5vsvvMkFP5Es2zdnhEu5WmoAnX+XrqV+X
         wFojNnNnciqr+F0ycBZ3FlCmn4pNKH97AM+RVf41WvXOaSQvOOrrNERGW3kH+ZGDoqRq
         VDZpUIbB3+XD4a+NakSyVidpQC3hbaEFEGlOyDTCsVq9opN/eLppo9uNAyzz22joeuUd
         hjZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773330609; x=1773935409;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Der2AmEZNJ0NJcW9rSc7hfAjH+ZP+A00AJ4yvvTSgOc=;
        b=o9QJTmZiJvSXm1jougRvqYXQ/UgofQG0FdZ8BO41wwvB79iPGr5XEb0pT0qAUom7V1
         PIrGce09C7kNubzovfH9lNspQpUgCR7FzsfsciPOpsMHa6ghDvy1wGI0oOsRwZabBPLd
         8em8MWot3G3IfOz0BfpdbeN4znmu0M+gsq/Z2PZl15phirZ4PQMqQNPyu5cyVuIYnHE4
         U5Y5nQAWppaBCZJ3aP0EYGFgc31Iqr9Eu2a84d38rBsUdADaUEuB6X3gsxlxDxAdFLkO
         QVpjpqjGz32ASlqTR1UDFWf9YMnI7fBBuccqC1yag6QSdmoVS68rYfAKoddYj5rXIa+Z
         h3Yg==
X-Forwarded-Encrypted: i=1; AJvYcCVQhmNgQyzaaDxMG7wVV2edUeCb42+o7qDMo+7tiQx7zlXMzB5Iptc1hMTdqcJLkmX1FGYpqjB8Y6I6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7VypNuwfKGxNXxxAHF/5cum3nrjAZj2YKD0B1OuxuVMLol3//
	wp6XrxdnINQWbVZ+0fSx5Op3QhyOt1ob+3E4QP746PbrymMW2N37HNbttlb4LPGyVsA=
X-Gm-Gg: ATEYQzyowPBiqceg+q9ZlZcctLuC2q0axOCn6xO1z59BXacjiR6a2bUy+4nTmq+mRsN
	7/CuYN0jhjAdaHpxZK5Usc9iBMUYypylh0QOGKLl5e4UvD9fXrHSDD8+4BvIvHXLWThkptSSoqR
	Mya3HSAn5MLUB0tsV45J6tkKbZsvTyXBTyWUTLtgpZSUAs5CmRXSz9Lvd95DU9Yaf0+swT7loL/
	qe3+dOAbMvK/sQoeMUQj09rNz8JaUBTDERybRLstEw6iysQXRgDO7JudSPkoXla8QJF50hsCoRq
	9BNuxb4/lquXm+qSSBZg75XZAqdc6CONPgEzBYV50hTFHsD1HKqMKFHknKciXq+kPZT9m8mEzha
	/J5wdX5HqAAkYISvfBsEggOOWctWTAK6+jbJgmQENby4BF2fJg06pZG+N8XKuBmM9fFp/PmEKcx
	EULHu7r+kzZtFnLTzhBgkY
X-Received: by 2002:a05:600c:1554:b0:483:6d4a:7e6d with SMTP id 5b1f17b1804b1-4854b12ce27mr109865955e9.30.1773330609205;
        Thu, 12 Mar 2026 08:50:09 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19acbbsm9721577f8f.2.2026.03.12.08.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:50:08 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Thu, 12 Mar 2026 16:48:56 +0100
Subject: [PATCH v2 2/8] dt-bindings: remoteproc: k3-r5f: Add
 memory-region-names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-topic-am62a-ioddr-dt-v6-19-v2-2-37cb7ceec658@baylibre.com>
References: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com>
In-Reply-To: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Suman Anna <s-anna@ti.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2032; i=msp@baylibre.com;
 h=from:subject:message-id; bh=QkpJrK0sLsXaJAz/NDwURnTrDOk9cIBtUwllgV38WoA=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxNDyoyI9Mi9yr+MDBUsgl6cdb0Q63PjGuG4luMhJcdd
 TrZdf9mRykLgxgXg6yYIktnYmjaf/mdx5IXLdsMM4eVCWQIAxenAEyEOZuRoePCtxtuKdIVr+eI
 unJkSYloykzkkliZ89m0IVZLxO+HIsM/+3+l01ILbRfe9VkdsnK6Ux9/bfTKoqns4oIqy93K/9x
 lBgA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274684-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,baylibre.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 2A599274EB1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add names to the memory-region-names for easier identification of memory
regions.

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 .../bindings/remoteproc/ti,k3-r5f-rproc.yaml          | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
index 15e0286e4926865d88b693998e5aa64543ae125d..3f2425e0880f9a516ac10700a218ed035ff07d5a 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
@@ -175,6 +175,24 @@ patternProperties:
               - description: LPM FS context data and reserved sections
               - description: DM RM/PM trace and firmware code/data
 
+      memory-region-names:
+        description: |
+          Names for the memory regions specified in the memory-region property.
+          The names must correspond with the entries in memory-region.
+        oneOf:
+          - description: Basic layout
+            items:
+              - const: dma
+              - const: firmware
+          - description: Detailed layout
+            items:
+              - const: dma
+              - const: ipc
+              - const: lpm-stub
+              - const: lpm-metadata
+              - const: lpm-context
+              - const: dm-firmware
+
 # Optional properties:
 # --------------------
 # The following properties are optional properties for each of the R5F cores:
@@ -330,6 +348,7 @@ examples:
                         mboxes = <&mailbox0 &mbox_mcu_r5fss0_core0>;
                         memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
                                         <&mcu_r5fss0_core0_memory_region>;
+                        memory-region-names = "dma", "firmware";
                         sram = <&mcu_r5fss0_core0_sram>;
                     };
 

-- 
2.53.0



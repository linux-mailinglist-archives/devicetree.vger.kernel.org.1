Return-Path: <devicetree+bounces-277327-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JsoKEfCumkGbgIAu9opvQ
	(envelope-from <devicetree+bounces-277327-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:18:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E362BE0AA
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:18:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 497123029A72
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:16:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDA663D6CAA;
	Wed, 18 Mar 2026 15:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RCyXfKdz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF542367D9
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773846861; cv=none; b=HpiU0duQ/7fJGj91Fgy/RcOXWbROsZtgQCC8ePJfqY8OlWKwRA7xtw8qgHazFidEhpqEvNkKcnI2dz7ECDW7UW25E24kjywdBtd/k3Jal3efSh5fk2mAyrMZeSbTQlbokDmNru3dnJV29Jl4fbolE6wFwlFticB9rfIk3Tq0J8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773846861; c=relaxed/simple;
	bh=lmYPucQZDJWxhd4ULKfj2Y/9tl9apl6fEaECLmkHdew=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W6cI4wvnSLO62utA9m6BxpLqVdG+W4Aw/LzJzpOlPYsNqlddLNy5LA0uKJYWZA7ThRcVAoM9OQpvGdkoRhnFqS3fRgASNnluDa4uHRUaqlanpZ7TIsLAbwArJ2knXiM1paZk4crbgDnIgRKuI+kFYZD5KyzbfYPAR3LwTlb9l6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RCyXfKdz; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48541edecf9so76161255e9.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773846855; x=1774451655; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0ImC7JYktkxok0GopAWiBnlLjndy630gvC7bm52DQqA=;
        b=RCyXfKdzlUpOzi8YPODlDrQqaKwKiAeYKjR3bWm6pxzKf25Mx0Cm4Qjfb7pGmvCBcl
         xp+XL90CwQeX+YTjOgUVeBYTnhZnkXhkM6b1LfhFbeB9N6LwT8HTiFwjQixwCFkKVWAL
         2vyE39reVkl6qNUychxOK+Pki3vIeK+tsJEHJTkWQTANiaUTdROXhRylXCcZnTMzuLcJ
         ZUPB8EBqyT4u+bvHmNoguNR3Jai/2XbgG2UjQZg5t8wWpKfNG37VHt4jCb0fEKD8Hh74
         RhaurwP2AGMjr/lOjAmKtvP3hAR+0u69MOLWfvdRxgWNLg4F9Cpes5sG7XCczE/VGVic
         rVqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773846855; x=1774451655;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0ImC7JYktkxok0GopAWiBnlLjndy630gvC7bm52DQqA=;
        b=ivjnp3dEzY15I/Q1W5/Z6lpzPFXbEvJZx7HC8bxE4/SSi2MFg+ZccwfAlsUZjhT1Sr
         WNoiEf4nvWZNt9dGCx+E5iHnD6RAn9PpCshkO1bVCo+1Ffj/Lurvx3NO0aDBURlywnYR
         4TeQsuWmv9UifzK9MjgdSyI5DUXZb/fREGV7Dd5ZyxGBURN5fMuu/Vkct2S76UPrUlwp
         rgN2A1qSfJ9t4rPFum5MqKmE3KG+pTQxOxr0CPZzsjx9I8R1kUFk7o7csvV0gguBflt6
         5WPh8Gbxnj2VWD5GiPLW9aS7dLPhA5M5zg4Y3DzoFpGurt5K0fTDavvzrqsclsiu6Fxi
         zxiA==
X-Forwarded-Encrypted: i=1; AJvYcCUIaOHWP/EI1yKWRShhVNcRy0izkzaE+bX9MLFcBcyqBuBHQJT4PpsTnxkooRrfY3NPEwiy0wD+fyDY@vger.kernel.org
X-Gm-Message-State: AOJu0YyEJRfhcj0E1sKF0XFrZ9jRQGv195PpnhtWYHQNE+IQ204jAAz3
	4RCoGTmC7aGl6aGhsRd63DhZ8IqtOXKmd7cRv5T0XiGXioXqXRpKw/qimdgFhql/TDc=
X-Gm-Gg: ATEYQzykvQAyP3TQaXd59edqdxOvPnsvet4tS8NgEya0gnjTWACZOLYyK3R5bMtpHRK
	ePrAqDCek8QgbMDMTd6m70U7LJA7i8PwbsItbe36AUre25odcRT0vd6hBtBLivjAOkeoBvaRLJs
	Zr3o5wpLbi2+DOlgPO3K1pXGhL3z1aSs6q2BMvIhMSlUv/NmQzCFfayzSvfcxpRzPoYSzepurx9
	r7DAonw2udjQZPDNWwvkQrhdyEtutRuIhjtQKyQwdCAXYjjEjY0d7KlOR0Rw+3RC0aaGqlTvPME
	Pq5KVms5izgy5/MOIa/dTp26YYtztz/LpQ3QGQUREl43h3NHH4maVyGSbF593Z+cHrbq//bK53W
	TBT+2v2c0It+0TeEusLWvIbW5h0sUQnyiPWMfkCShzQpyi+uaXEPqa+8SSTsF/L2RmOH9+pc7tp
	3l4EIQiY44Q0/jUgGlAvdH
X-Received: by 2002:a05:600c:4ed4:b0:485:3c2d:d02b with SMTP id 5b1f17b1804b1-486f4444050mr65455555e9.22.1773846854673;
        Wed, 18 Mar 2026 08:14:14 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4ba760esm20352005e9.24.2026.03.18.08.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:14:14 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Wed, 18 Mar 2026 16:13:07 +0100
Subject: [PATCH v3 1/7] dt-bindings: remoteproc: k3-r5f: Split up memory
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-topic-am62a-ioddr-dt-v6-19-v3-1-c41473cb23c3@baylibre.com>
References: <20260318-topic-am62a-ioddr-dt-v6-19-v3-0-c41473cb23c3@baylibre.com>
In-Reply-To: <20260318-topic-am62a-ioddr-dt-v6-19-v3-0-c41473cb23c3@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2817; i=msp@baylibre.com;
 h=from:subject:message-id; bh=lmYPucQZDJWxhd4ULKfj2Y/9tl9apl6fEaECLmkHdew=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxdBwUNnHfFW5ryz8nee5vlorcu+/MYWZ3wJTs+bb4ge
 vCW2wH/jlIWBjEuBlkxRZbOxNC0//I7jyUvWrYZZg4rE8gQBi5OAZiISQ3DP70akWNfjFSfG503
 qEt9X9gpYfWIwyFUTa6hlj1PY9c3aYa/AhNO8xVK5F6q4FlmtNds3YL0olg/ubsb5zksyC5QMfF
 jBQA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277327-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,baylibre.com:email,baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 07E362BE0AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Split up the region reserved for the firmware image in more specific
sections to expose the full fixed layout. Especially the LPM metadata
section is important for bootloaders as it contains information about
how to exit IO+DDR. This is read by the bootloader but is written by the
firmware.

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 .../bindings/remoteproc/ti,k3-r5f-rproc.yaml       | 29 ++++++++++++++--------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
index a927551356e69d3961b3c5c6b72d027fabe83d3c..15e0286e4926865d88b693998e5aa64543ae125d 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
@@ -154,17 +154,26 @@ patternProperties:
       memory-region:
         description: |
           phandle to the reserved memory nodes to be associated with the
-          remoteproc device. There should be at least two reserved memory nodes
-          defined. The reserved memory nodes should be carveout nodes, and
-          should be defined with a "no-map" property as per the bindings in
+          remoteproc device. There should be two reserved memory nodes defined
+          for the basic layout or 6 partitions for a detailed layout. The
+          reserved memory nodes should be carveout nodes, and should be defined
+          with a "no-map" property as per the bindings in
           Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
-        minItems: 2
-        maxItems: 8
-        items:
-          - description: region used for dynamic DMA allocations like vrings and
-                         vring buffers
-          - description: region reserved for firmware image sections
-        additionalItems: true
+        oneOf:
+          - description: Basic layout
+            items:
+              - description: region used for dynamic DMA allocations like vrings and
+                             vring buffers
+              - description: region reserved for firmware image sections
+          - description: Detailed layout
+            items:
+              - description: region used for dynamic DMA allocations like vrings and
+                             vring buffers
+              - description: region reserved for IPC resources
+              - description: LPM FS stub binary
+              - description: LPM metadata
+              - description: LPM FS context data and reserved sections
+              - description: DM RM/PM trace and firmware code/data
 
 # Optional properties:
 # --------------------

-- 
2.53.0



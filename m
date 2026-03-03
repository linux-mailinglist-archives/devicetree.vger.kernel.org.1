Return-Path: <devicetree+bounces-270583-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKfWB0H8pmnYbwAAu9opvQ
	(envelope-from <devicetree+bounces-270583-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:20:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3511F26CB
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:20:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3DBA3173642
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69748481AAB;
	Tue,  3 Mar 2026 15:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1jFSLUl7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EEC35F608
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772550836; cv=none; b=o3M050tVIOdC0Q2blmfzjXw1ZcLZuqxXLvn89H6NBuVheGSauwsToeNPaKPrX+G/Mg53xqyNo2+fxdxowPFKVr6O2RawCZhrPdf5oSNoLC5kxD1+KF3kHJDQAp0PTwPBq0oyp7K0pJ/PcGYXwNgM1/vglYaHS7Dd11UqH5u9V9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772550836; c=relaxed/simple;
	bh=7poRYmK/5KpoW8OLZDL7FezdSS67YOKkI1mZwzix0Ro=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cI/U3v9ZDbiBKFtRzFGXDX23wPdVPdsfMnZ+hNKCG/+U82/QfKAlwkoKolwR1+r1TGMr7+B2lbFzvU7+8yLHOaIOI0cH2Fxyl4mtqPI9lcGo0VmY9bIJCKxap7zCN5n/k6S3uGwLOJZvDW/eCTfatGsmbSJcmW7rCGkyx02Nmu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1jFSLUl7; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-439aa2f8ebaso1905538f8f.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772550833; x=1773155633; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y94JqxBgzgD92hSkgY727rzOxGmI4MJQz+PRihecbas=;
        b=1jFSLUl7skLijTkeqR+OG/Zphm0kp9hMTqoU7Rbnhxf0DpXmJacyyllmZd4x9Ghwoy
         mjPmkFmQUUn1m9ZQaCuAqadBASrwmuWjwBVruWsDgbSd27zGLTDc72DiJsiN6JdLeOy7
         5kRpKnWESNuNavCPKrD3c6uJ95r+qE3pn9gGsHNNFH5zBdXuiAa9EodL3ebPwA9l4PYF
         3l39JEbQXcq32sxvA5r26L1Dcr2cwugle3BGxW7dRhzltDDylNE4DXDIlcWDbUvwL/WS
         vjhYhNxYuaYWe5MP5HDnmab8PkiP8UhQkoNvZHJIeDofazcrpIfbistFcU6NxXk3/gyZ
         w8Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772550833; x=1773155633;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y94JqxBgzgD92hSkgY727rzOxGmI4MJQz+PRihecbas=;
        b=guZN11eied7p+w093O7hT2IB2Fz9xWjm0St/UHS/c5pysogm4MZHrk/jZUIKi+1Tbc
         dGm+wI7EyfRXj7kpMh3R2u3kL/8dK/ZafITtTThg4PKu5iEWb9PCGMvMK22kLLXtH6wq
         M4w1tjtMg3zgt2Nuudiy4xRJOk380tNaU9PCGsnihcjNVl8zOrraq1wttcwrkyQUzvC3
         gUKdCSuJZHlvvMhMugyz91fNG9H9ZYbRAZcoQu1dP1dpjgVPOhtUMfmJjwrfgq7+YKaT
         dLvfNpjj5Jggly77ljYnbElKiDeZmiR7Gc66N0ClSoKtBE8cPTZ77ESLQG9jbdHn+Gbz
         eclg==
X-Forwarded-Encrypted: i=1; AJvYcCXlh0ryzgpfK6wWoDCASVrXyqIlFCigOlhJncz2X1PCci+xkboEOGI02f8DKRavDGwUDayiJeOLfRMa@vger.kernel.org
X-Gm-Message-State: AOJu0YxHQ9RL3gheDV1O9rcmR5k5PpQTHTpHeGMXfw2tcuZG/I1QZLZ1
	ks/9i2vWzFir9FAZosJ+DlMuBqxgMDK5eKYtmkj4cUMwUf5t4E9nCa/axms+o1GHpKw=
X-Gm-Gg: ATEYQzwE5rSqiMycn/f6GHcW7hh8eBNc1bXF2JtnlgoN3+EAW1leCPMw/jmd+MuPB9I
	yiDTO4KsminYaOcNODrbFuC2kmyasK3z19r6z2hFSS/FUfgjnH4cgjtJzR2Q+PZgOcZvfdZRu6a
	cSOfNzvQNPY7uocsm3mVt5pvfkX0hKZlH2iQCdbX5XctieKQxYvyhS9J9Ua+mMau96OSpy81+RF
	bnUMFBheXvPJZ0pn9wX5gf8YHRonuVr9YBh07O+GE4dgcCz1ndwyXqohn7CGa1WR44+D9Bs+u7E
	EnpPGuDXMGBeG1yI+lM86BC0qoqNIA4FPt1OURdjZMlVfewtaJX/dzkpZ7FP7vOol8w+/sdnM8U
	IZ7bidyTyhZ9luF2qc5fcSIoZSZeW/0Uq09/XhocqDu9ETDMudx8BzX3tpFDta048IMf2OKNLiy
	i8238izmPq+gXM867lXFhbvCIVtPiNwBU=
X-Received: by 2002:adf:ee4c:0:b0:439:bfaa:ed99 with SMTP id ffacd0b85a97d-439bfaaf0abmr5088126f8f.44.1772550833464;
        Tue, 03 Mar 2026 07:13:53 -0800 (PST)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439c1fc577bsm4297212f8f.19.2026.03.03.07.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 07:13:52 -0800 (PST)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Tue, 03 Mar 2026 16:13:00 +0100
Subject: [PATCH 2/6] dt-bindings: remoteproc: k3-r5f: Add
 memory-region-names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-topic-am62a-ioddr-dt-v6-19-v1-2-12fe72bb40d2@baylibre.com>
References: <20260303-topic-am62a-ioddr-dt-v6-19-v1-0-12fe72bb40d2@baylibre.com>
In-Reply-To: <20260303-topic-am62a-ioddr-dt-v6-19-v1-0-12fe72bb40d2@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1598; i=msp@baylibre.com;
 h=from:subject:message-id; bh=7poRYmK/5KpoW8OLZDL7FezdSS67YOKkI1mZwzix0Ro=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxlv6ac/3u07l/DfFMVi+86QkvOP+i6+7x0XeeBWoH9t
 ooTfSbVd5SyMIhxMciKKbJ0Joam/ZffeSx50bLNMHNYmUCGMHBxCsBEHJ8w/OHvN4r62LdjRqb0
 ocTt/9dMbYhRkPogG1MYb/T84LuertkM/z01m2Oc84OtLuxRXCK7wO6WTMzZ/21+rnUuxz5+ZTw
 iywgA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Rspamd-Queue-Id: AA3511F26CB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270583-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,baylibre.com:email]
X-Rspamd-Action: no action

Add names to the memory-region-names for easier idenfitication of memory
regions.

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 .../bindings/remoteproc/ti,k3-r5f-rproc.yaml          | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
index 6aadc61e20f9f4c27f5b9c87ab2025a02776c5de..76ef23afe8c9f7f155dfec7fcabc7c60b8b286c6 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
@@ -182,6 +182,25 @@ patternProperties:
           - description: DM RM/PM trace and firmware code/data
         additionalItems: true
 
+      memory-region-names:
+        description: |
+          Optional names for the memory regions specified in the memory-region
+          property.
+        oneOf:
+          - description: Basic configuration with DMA and firmware regions
+            items:
+              - const: dma
+              - const: firmware
+
+          - description: Extended LPM configuration with split memory regions
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

-- 
2.51.0



Return-Path: <devicetree+bounces-263793-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCo4E4JXiWlQ7AQAu9opvQ
	(envelope-from <devicetree+bounces-263793-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:41:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A484710B6E5
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:41:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 421E230048FC
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 03:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A54462C08C8;
	Mon,  9 Feb 2026 03:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AcjeOIit"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f50.google.com (mail-dl1-f50.google.com [74.125.82.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD801F0E25
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 03:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770608417; cv=none; b=OlKpGUQY0vNj/riyUWjHMzpQKSaF2H1tbfHgD0m0dTLOtRfbnZYMUFKC5lpZVBcK0ItwNtU6r3TaC+ieet+SECnAJjVxFuMwL0BDvpDn2iik9FDDkq1sTFfjjTVZMcI56XdecTia/p0ctKy3uEiRMMu4Q0RFh+QQ/IukfX6EEyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770608417; c=relaxed/simple;
	bh=lTyWo1eRqW5DX8yvyPANL+LdjOU0rOclI0glDjp/zjY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JI/TVpnkSZjMVIl2iwWze6sYXwhcy3BexzLjgM8YLWCnaYFSQnPSFpIxcIwy44rOW6DqPbOsx6tAZh8O9rKnt23aiyvYPCr9iAvG3Kaso0OUT2yK2NPTI2oVkydjx4wF8iFRd+mWO50w3G0c/uaxVUFra+qPY48uXulT9MxDfFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AcjeOIit; arc=none smtp.client-ip=74.125.82.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f50.google.com with SMTP id a92af1059eb24-1233be8d537so110139c88.2
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 19:40:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770608417; x=1771213217; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q7q7E97msZ/8P2TSodtOWgOAxfPDU8GUA1EnXOIGpS0=;
        b=AcjeOIitcgH4PTipgb36UlpWjPr3pfFP435xd67nQnD6fnGOHYaUuehbjAS8SBmfJ3
         WBli1qqapoExjSDKRP3UmfbL3qONON96HviGg9I/RoQ2oln0gwHkkp/yC2V2WI8eq+Zd
         7asZGWyPz5ncY6kzbXAJ0FnLbJhUvh5D6jPBBITEqY6STbnOG4uqDIkFy35orOjRPN/C
         9X2BOLSJ+5SvWkh60uTS9Qy1ZNXfXu3AM1NGiXq2E/ArDztCAeZd4tvs4PxIxUo57Mc8
         H8QuAeJ63bLeDHmh0qi7haH6T7NhsSnoyNwzct5lgfkvvF+2u6U43minvfxNXIW+7WB4
         iNgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770608417; x=1771213217;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q7q7E97msZ/8P2TSodtOWgOAxfPDU8GUA1EnXOIGpS0=;
        b=PUccBF7b+dM62se+v/TE31oIy/NUbqsPNF0y8t86IVHrU9SA1JgkFpyXI03138RY5D
         K3XLO70yM+6DAaebNYY6vv4H1v2hCfUI9N2I8hFV2pBNKIPCe7UNBOajU9RBW1Bt9I4o
         uDhx3/1C/jzLP9Kdd9ao2hJUQwoV8gFB+tNbMw3RNGob8U3x5s0aziwidkHxTimD8CLA
         5kLgI32WSaIimLxlisOSLZTXIk6lHd1OLkNPhlsiJqfjHm9GpclVvXzD701CUYZ9K6JO
         OINDIVQbOfob7Xrs3XdXyUqZeGqheQQH0H+I8lucGD42lyLZ1Vb2uR5BYnpE8lVJN8bB
         HDUA==
X-Forwarded-Encrypted: i=1; AJvYcCX+rnwvSJimYcs+BSAbvKxnodxGAZc+Nie0EdziPHsRFgZgZ4KCLfSINs3DjhJ8ZMcsKbSbJLZSxxMt@vger.kernel.org
X-Gm-Message-State: AOJu0YxiM1E4jWOGuHKXDpTaZAEkMna9pn+/K6iDie7X9FsBcfOauvuq
	YCL180hQKyMjYHT9SuXc08/pfW6nIf2k+kWhVxprp+HRLWpBIm184jBq
X-Gm-Gg: AZuq6aKy35e6J+/Ki2V8wBx03l7/fGfR1FXkcK7q1qqKKQdn+13O+PbBkmrf739mHj6
	fXWZ6jZBwCP1MWWKGJI1OWdnrA78ghIBEfVugoXG+Z12A3socjMl0Hm5gaXCXsWr4omLdnIpLiR
	lphRtZtdlgJWrOKV5W2OPkxFAO99/TvNi7AoPQJ9lJ7Uh9ql/6tk5Y15rEKPUOmc+hnhiqX6W1C
	0gHUz9G2w1LZTNOvRawrdSG7c4GAqjWcxkclXsZO2lru8H3TAM3olfHX7ilrej9PQW6cZveMUv7
	hotnkdc71eja1QLwogQRQaLLrKK2yh8y4SGUtDIGHrsBGCSSGp7nctA8VzxOdyDpKdEWKbf5Mf2
	dtIIaOX9WRBrLlCC1gCXQ2ZZgbOqVZI4guenP2jbdZ6O/bNxf1j0UwnYQxRdhcyLBO6Sn7Alvn/
	2C+MC1PafW7Dc=
X-Received: by 2002:a05:693c:37c7:b0:2b7:3678:2d1a with SMTP id 5a478bee46e88-2b8565160dcmr2739568eec.6.1770608416595;
        Sun, 08 Feb 2026 19:40:16 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855af5ca2sm7682073eec.8.2026.02.08.19.40.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 19:40:16 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Mon, 09 Feb 2026 11:37:05 +0800
Subject: [PATCH 4/5] dt-bindings: iio: proximity: hx9023s: support
 firmware-name property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-upstream-20260219-v1-4-2b4d74e309d1@gmail.com>
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
In-Reply-To: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yasin Lee <yasin.lee.x@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1109; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=lTyWo1eRqW5DX8yvyPANL+LdjOU0rOclI0glDjp/zjY=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJmdYT83dhi0L6wvDXt1ef2nXU4L13tc0D/84NH54J7DB
 9War5j6dpSyMAhyMMiKKbKcef2GNV/14Z7g364ZMHNYmUCGMHBxCsBEnLMZGY65WFbFXOsWKJic
 8cJN4hHv45tWj/rWnbohrfGJrfPY3I8M/6zluT5WbLlV/ZTf6qYGz+HrAW7LeA6fOsV9+TWHSM/
 r7SEA
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263793-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A484710B6E5
X-Rspamd-Action: no action

Allow specifying the firmware file name via device tree.

Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
 Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml b/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
index 64ce8bc8bd36..7e516fc011c6 100644
--- a/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
@@ -28,6 +28,12 @@ properties:
 
   vdd-supply: true
 
+  firmware-name:
+    description:
+      Name of the firmware file to be requested by the driver using
+      the firmware loader interface.
+    maxItems: 1
+
   "#address-cells":
     const: 1
 
@@ -65,6 +71,7 @@ examples:
         interrupt-parent = <&pio>;
         interrupts = <16 IRQ_TYPE_EDGE_FALLING>;
         vdd-supply = <&pp1800_prox>;
+        firmware-name = "hx9023s.bin";
 
         #address-cells = <1>;
         #size-cells = <0>;

-- 
2.43.0



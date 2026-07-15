Return-Path: <devicetree+bounces-326770-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0VOXAmxMV2pZIwEAu9opvQ
	(envelope-from <devicetree+bounces-326770-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:01:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AD675C276
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:01:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b="Ixva/yuz";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326770-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326770-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=chromium.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B1095311DA8E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22D113E44E4;
	Wed, 15 Jul 2026 08:55:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195683E171B
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 08:55:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784105715; cv=none; b=RRMADzyU5NHMG3t+4DxHc2nQDCqKVl2yLj2PUSVEM1f4+buwwqykUi5Oi3bykdgoFzc5cDhdHXCsI1fIjmAUkxaQhTURDHUBxbIxZCQPFjmNYtUWQnA4flDx5UALOViZGP6xcLE8VTpZFniIP0RrTOuI/YvNO58NqplLw3iLnas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784105715; c=relaxed/simple;
	bh=lenyNo7yJLPeybyXOoMP7XgBlraWqZU0r6gw2MR7+1c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=axRPoxuRJCIpIe6+cHBCFXg38gzon+kK+yVR8r/kJfOe3235DjoxYKojxpA/5RH4++RbryLlkRB5l04AIGKinNRMTKp62t1WP0nI9Rar/Ctxr4rnXSdeZ+2BAfxn9YnPw8zN4B9ep6qHbkwUmq8Ww7y5yUjJLnPk06ZV8PIdy6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ixva/yuz; arc=none smtp.client-ip=209.85.210.174
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-848479c9bd5so1501312b3a.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 01:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784105710; x=1784710510; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pRAxPjZgDa6ntXP4Zl1WhffxSqufwl7Pl3uMzQrQ3GY=;
        b=Ixva/yuz5D8tKB4fohb6jSQatDmVli4ujpK/mqdAvHBKPKha/QuP7t2Ivn0Wv3lDqt
         1wWxnoZDTc+IcD0OucWOXv8l3eeB9EuUh/okhTMAhiPp2FOkgnm1tZ8T7MoDfq2o0p5k
         HZ/ipY7/MwQBwkMDoPjcitYhDKLK3i3z9YzTs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784105710; x=1784710510;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=pRAxPjZgDa6ntXP4Zl1WhffxSqufwl7Pl3uMzQrQ3GY=;
        b=Cugmm6jgJjKBH8sulROXCRl2o70UYAsbwf5aFqiJQlSh43exWYcIvg9SmSD5dkFge6
         lYeHaJkarJ/QOjG0iLt5pey2bxhOeDklXVDEmCOCefOlikvMymAUixI+CtPdbzP/Dh59
         /wjDMAdKmbvuUWTRmlqBLVS/KMTq7lx3/mvwqgvF+996Qo+m4yARcyhZFyNeFHtiadyQ
         ixSmDfVrqmHLN9WiegQ9HTx6xSw3cB0eqknCpb79mCZ4v2l8Vyoej6YlUz9ZBH9I1AcK
         BLIiLNY/SGmNOW5EJfLpUh2v0q1NwBr7OcfrkDwwiCJdaSy/8oGzyaji6wAzdjJ13vCs
         gSvg==
X-Forwarded-Encrypted: i=1; AHgh+Ro1iy+1BFuZVPU9reRtOd3R6Jv6ow78lwG9mSwGei+7pKOl4QYUqrTpFlACwkHp7FMsydGxmSuLzLnM@vger.kernel.org
X-Gm-Message-State: AOJu0YwUgcuIZdotREb0HU7K0NddL0U1kP2W1myyqnXLzIIna8KMPMuw
	iScwBopoxgxaKVClEcg49+K7yF1JKhiXyx7+YZuHjxTYBuPaTMzbEDy75R7/34uQKw==
X-Gm-Gg: AfdE7ckOW4Nl/W21V3aYH3v7UUfT59HEt5DGDtATxQ8k76cPUAJ00Bqyu279R5q6kED
	ZQnuLlIe2dZdiLcrsgdCFxv3eFfyQO1t0hvuDjbdlY6IGhiaCxfEWdopu0vShApYQP9l0ZXfHGD
	Z28CUmjR8tFHYwp+HU0wzJXsBDeiBlMpJRWrboU6o2Z8HACtWR4h2dgX/NE3OoYA4gVrMzNPhAu
	QssHjzK+x/xZ3uWS3YUnuB0Sra5mPhq/6cQ/ooFNfoLUq/gkJFsupRVjdey4a6iWBHvWDQwrAVN
	aLDGkrDYoQUuTgs7o06zXUwWg+72fHfgvb0sV5qqJgZOhra05eLMsSOJWc/MVmRfrfKyx4i1HqH
	8POFL05Jw6v/fEvahs1nURJNsQrhK6KULSAk7jfVuFvravIYilLPYGmBDjjwFS48SDw/KJV0bY9
	JD4tadgL+zvV0qbzob4mLpRUMITixbDEgNPmUTCKlx4aEfhE98hK2bjOIPjPw2f33A5Txbxg==
X-Received: by 2002:a05:6a00:1d90:b0:845:e9e8:6458 with SMTP id d2e1a72fcca58-84889703f26mr14531622b3a.20.1784105710178;
        Wed, 15 Jul 2026 01:55:10 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:47d7:4aa5:a6f8:2279])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84a4f819117sm2757491b3a.59.2026.07.15.01.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 01:55:09 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Bartosz Golaszewski <brgl@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Wei Deng <wei.deng@oss.qualcomm.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-acpi@vger.kernel.org,
	driver-core@lists.linux.dev,
	linux-pm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH v5 11/16] dt-bindings: usb: mediatek,mtk-xhci: Switch to ports for USB connections
Date: Wed, 15 Jul 2026 16:53:41 +0800
Message-ID: <20260715085348.3457359-12-wenst@chromium.org>
X-Mailer: git-send-email 2.55.0.141.g00534a21ce-goog
In-Reply-To: <20260715085348.3457359-1-wenst@chromium.org>
References: <20260715085348.3457359-1-wenst@chromium.org>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-326770-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_TO(0.00)[kernel.org,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:wei.deng@oss.qualcomm.com,m:wenst@chromium.org,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:krzysztof.kozlowski@oss.qualcomm.com,m:bartosz.golaszewski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	RSPAMD_EMAILBL_FAIL(0.00)[krzysztof.kozlowski.oss.qualcomm.com:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,chromium.org:from_mime,chromium.org:mid,chromium.org:email,chromium.org:dkim,vger.kernel.org:from_smtp,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B9AD675C276

This reverts commit 454a1e3cd36c113341d7b71e8e691c6e47ab4a8a.

MediaTek's XHCI implementation supports both USB 2.0 High Speed (HS)
and USB 3.x Super Speed (SS). The block can also be synthesized with
either HS-only capability or HS+SS capability. The SSUSB controller
handles the device or gadget mode. Saying that SSUSB handles the HS
portion is wrong.

For example, on the MT8195, the first two instances support both HS and
SS, while the latter two instances support only HS.

Switch to a "ports" sub-node for describing USB connections. Port 1 is
Super Speed if the controller is SS-capable, otherwise it is High Speed.
Port 2 is High Speed if SS-capable. This port mapping scheme directly
matches what the hardware returns in its capability registers.

Fixes: 454a1e3cd36c ("dt-bindings: usb: mediatek,mtk-xhci: Add port for SuperSpeed EP")
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- Squashed DT binding revert and addition together
- Dropped reviewed-by from Bartosz
---
 .../bindings/usb/mediatek,mtk-xhci.yaml         | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
index 231e6f35a986..d6c75bd20b78 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
@@ -107,10 +107,6 @@ properties:
       - description: USB3/SS(P) PHY
       - description: USB2/HS PHY
 
-  port:
-    $ref: /schemas/graph.yaml#/properties/port
-    description: Super Speed (SS) Output endpoint to a Type-C connector
-
   vusb33-supply:
     description: Regulator of USB AVDD3.3v
 
@@ -188,6 +184,19 @@ properties:
   "#size-cells":
     const: 0
 
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Super Speed (SS) data bus if SS-capable;
+          otherwise High Speed (HS) data bus.
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: High Speed (HS) data bus if controller is SS-capable.
+
 patternProperties:
   "@[0-9a-f]{1}$":
     type: object
-- 
2.55.0.795.g602f6c329a-goog



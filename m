Return-Path: <devicetree+bounces-275222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIKHFKAMtGlvfwAAu9opvQ
	(envelope-from <devicetree+bounces-275222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:09:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F90283778
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:09:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 08C8430856D2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEF7A381AE8;
	Fri, 13 Mar 2026 13:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SKoMqUnW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D307430DEDD
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773407330; cv=none; b=HzsVUd0Mzx+tEisYrYfCPVgftQD53H9496CybWpbiM58KXyYEp7bof4AFVHd1YU0H2B+IgW/kXMJ7xiLj5fF/hPgVd4t5mNBaDlu+10gJ56s7ZUqSei+1Kh63Cee9YlXxN8HDg0+B0OR8VXYDUy4mFggSp34wPTgHL+090sFhSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773407330; c=relaxed/simple;
	bh=t0JT+Wf1dWWLkJLV8Xaeolu3vO+8mn1BpGIdh7UaiOw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ui1oMKmFkXRD9BDRSkKW0LPUB2VBDQDQ0Xw1TKhN0bvnXLaXHXGI1lyChTXK+6SZU+zhyb2NNEMggQWSrVO3seodNJoSPDPlABS6HgmdIX9ESptPyScEZd4mg82t42ADvzvPkJw4GX52jgr8x6A4MwLK61GIM3PyFsdOUmUWOdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SKoMqUnW; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2b4520f6b32so3269692eec.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773407328; x=1774012128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qsmU3+KHC+79pXEFoWAli1oSj80e3a/HpsprpoFgQoM=;
        b=SKoMqUnWUHCdPzzdumWcXcQCM4ZBW7/+wlBSYbUoJSEIdpb+VdVcRHKgbYqmKsIIxZ
         fmMF9lEWVpi+vEgu5bm3C66t/S3Al1nqlS7F3IRM6TF5METqI//ORsj9A44GURglVrNb
         kv7jiFGeKoGgravQhvGTqaZCpzlcmDR6NRxtegHzMCceKvt6YUaj0/tOLhIyGA8TOp4S
         rLpuehAO3xH+8YFpY1U9lIMlgzyc9i2liSkopSpxfdnJIwsB2TZgIYgRWFRWB6glVCBN
         E7iIxkO9rGkDVjlyxXmEizi8JoWxNTy/3ib34kMCImlnShcTcOaJHBbIc8MvmLFbFqBC
         bDLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773407328; x=1774012128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qsmU3+KHC+79pXEFoWAli1oSj80e3a/HpsprpoFgQoM=;
        b=k0PlumSTd4nGY0f2skX/JdfBszwoLdj4d2zZVStvrR825LfdqNFF+dvrWlS47MbIoB
         90Pxrh3/3UsL6Wj0k521ceziT9O6WocU67bGTqF8OGFLgzu7TFyhp+SErxQO5sO7Dx5Y
         c6d3eyFTJ8QIR8/o34I8ZBFho1cv6IQZVhkdiu/d26vemtvHQA6MZJZMGEkhc8jmJCz6
         pbh7Bzv0zVqbJX9i+lq/eDLCn6UAvlbfgb3RpY2Q/DH+K1cjkwbIbMCBrGlw1OM27xAt
         PcTlku/dzNnCLiVLLyVdzaLcFw4Sn8tZi0Y+nqVwHhOeE2wM/GGJM6x5z1bw1bEq+Tpe
         /U1g==
X-Forwarded-Encrypted: i=1; AJvYcCW8LK6tIOnBnvFwHdQ6c7f5WSf8qpMGoQUpgFCUU5wWy1SJuxYGi12qWIygkvQpt6pbPxPFI+Tucew4@vger.kernel.org
X-Gm-Message-State: AOJu0YwaAP1+oSIgVTmEAbFJm1biSuucNRxsTlfo20qss5EUWPB7giOI
	vFKBvOapfYD4vTJofjWuQs7H6WLJxcK/M7oTCGW3ChTz+ZKpkQuT/XV4
X-Gm-Gg: ATEYQzw7abqzMRSijtNGPQX70JkRURRs+hT+yuuUrXux+wyPxOOiQGEF3QU5g8lWDg4
	pQk9nM6RaVX1nOuMTgr2+yose6l9J+MJlURekkL32hSVMaVYP5rxvYcH9VNn7rJeQreXIDkqGWb
	YqYFeGGfTpg/ZZ9yl7BCdhelRnh3U1I0Hi8gUJSE+GD96mse5c9jZKRiYe0REMEWiXhxEIqONAC
	fCB7DcyLpt7KpS73YyKeAbbveVwcVMix8zX2AiepT508wkoZORXkYb43KjW0yoK84ylyCdllfPJ
	t/jebOZRJBtaXcEbS44bCUR0oro+0TJlcp9d69er/1SsUv+Do4R35U5/nDJHOYGI0eM25vb3F5L
	DMIHWs6bVg7l7ZGBJmb0iQA0u8KnWMVZvpQo53OKWPnvaDlnh2i9hehO1yKI2DxF5oeA/ulMmv+
	fUy08/OJvXp267qGN0l8sUdBNunB9jQhOJDVcb0XvgUsCw1Udmgj+15R8ytqYtcA7FFQ==
X-Received: by 2002:a05:7300:6d23:b0:2be:19e:3064 with SMTP id 5a478bee46e88-2bea547d159mr1501145eec.11.1773407327739;
        Fri, 13 Mar 2026 06:08:47 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:b6b5:4:db6e:9a2c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab5706bdsm2831454eec.28.2026.03.13.06.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:08:47 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: ulf.hansson@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	shawn.lin@rock-chips.com,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH] dt-bindings: mmc: rockchip-dw-mshc: Fix the RV1103B compatible
Date: Fri, 13 Mar 2026 10:08:35 -0300
Message-ID: <20260313130835.708066-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275222-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 08F90283778
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Fabio Estevam <festevam@nabladev.com>

RV1103B uses the same DesignWare MSHC controller IP version as RK3576.

They have no "ciu-drive" nor "ciu-sample" clocks and use the phase
tuning inside the controller.

Fix it accordingly.

Fixes: 517b1e3c9455 ("dt-bindings: mmc: rockchip-dw-mshc: Add RV1103B compatible")
Suggested-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index a75209bd2710..4965bb518c54 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -43,11 +43,14 @@ properties:
               - rockchip,rk3562-dw-mshc
               - rockchip,rk3568-dw-mshc
               - rockchip,rk3588-dw-mshc
-              - rockchip,rv1103b-dw-mshc
               - rockchip,rv1108-dw-mshc
               - rockchip,rv1126-dw-mshc
           - const: rockchip,rk3288-dw-mshc
       # for Rockchip RK3576 with phase tuning inside the controller
+      - items:
+          - enum:
+              - rockchip,rv1103b-dw-mshc
+          - const: rockchip,rk3576-dw-mshc
       - const: rockchip,rk3576-dw-mshc
 
   reg:
-- 
2.43.0



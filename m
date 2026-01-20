Return-Path: <devicetree+bounces-257395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INFQMbt6cGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:05:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5E65292F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:05:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BA9B062D943
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DACB842DFE7;
	Tue, 20 Jan 2026 12:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iwpd6/bl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D03421890
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768913453; cv=none; b=NAX0JRENcjHIUoQB1De7DPk0fAyBbJev8o2/aF3NXaFubmPR+3y6ydD/JXbG8hvS4CEZUgshYRFxgjtPCDk/7n9kWSre2cInbrrx8rOISA3ZaLJQSiCDO80gCllcptBYehdI9tFe1TUgekbBG+kZ+SCgav1+7lyK8uV6hgqq6NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768913453; c=relaxed/simple;
	bh=jIBkxlJHIcCc3JY8HlzcY+4/Sq1XPQvovm3vReAxEQI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gk6U8T3Y28ACBNwRUDntxPucUO4NhS980UeEY9E92g/Gy1WVY0r1jO6zE0irQFNd7JV1PUiHPm515y/FaaKB+iIoTPB9qC/HLK9laKQJOBmX2slikTx2wjGO4/ShpKb5rCjJ5Y4fwjVzbplZx9XxylfwYnneMK5ZMl/B399gGhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iwpd6/bl; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a07fac8aa1so39988095ad.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768913451; x=1769518251; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QnR4PJhsaUjZWZn+C6vALPZ6Lj3dxWE4L9BjOpkr0AY=;
        b=iwpd6/bl8uw0/LmLRlTE4DpbocYpdYAtij2ti6OibJmaoLOl1ul3O3A+4/ygEvVJBp
         U96MCfXYoPXqzglepNXfHmpsy/Ug8SuUWfY24Sqdg0m4yadYbGddQlccCuv6ceWM65vw
         zmAGQv2SJYcTfy2HIl4h02FgQbOtQscze8NTVyQsxyEF83LifoLDB7uP7FDAcL5+M73R
         90M1mu0d+nbzJw5XQApC6/XBIlIu+mAaXFhx2I1uav1CxeIK70K6j6DX2asQbzgUnmOy
         yYd/JNcAoNqV+o5GeXsqs6aKiOCws8oszEDugPi5jeUd/I+0qF65V6s0dxjD+0ACKemk
         wRaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768913451; x=1769518251;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QnR4PJhsaUjZWZn+C6vALPZ6Lj3dxWE4L9BjOpkr0AY=;
        b=A/WQ4URIaolcz6OcfP1bdGbQN84pGboCQp8A9gyNYrIZrDCpGqJgUlbjTHTwFK7rQR
         +DYcuslFe6FZKHb9W5MLzFqpZy0qYyoJVzx87s5DQhiw6jtJn/E15A33EOhq3Q0KV8BJ
         fe8C91zZ5p+IsX6DSpJrCiHibVHXTaK93PW47s8DISp/7+CF7oyaHlYsf/8ZwSCLMuGT
         wZJ1WpOwdyw7NT+YCB5EVA97WepMebswxZj/hxbByzyIewznMJUe2m3ChG6Em0zd51e9
         xxpMQKAUTXLUyby9vL/j+0pxILAvdAK5qpsJpx58AvreZmixpXvwfc1dokSpjZCmpNQ6
         dEBw==
X-Forwarded-Encrypted: i=1; AJvYcCV6pR73vPw1kZRAxm2JQ4ozgHgkBFnUn37+28dsPfupH3KOLaRvILjKDYChPe3EUBOVdRD7CcuclGPr@vger.kernel.org
X-Gm-Message-State: AOJu0Yxxh3qmKlZT8sbXorXkMgNBOHVj/E6giXBbFsQhu68kCBCyLemT
	Bulr+XFZ2me+vDbzCXb7etTuciInvgDUPbaXXciEs3TPhwWq93pANvgj
X-Gm-Gg: AZuq6aJkpIgrRAUIXE2925mGxTqXHS3zpHOC6dDiZH9wrYnjI4xI0vs6CWmWx1vsTOR
	3/melB3r3uhDa+Tel5IRl253v/gfSjUDFWE6JozyVFFtBmuFjOTKwsr16AsWqZRfcWmYll/4gnn
	pyZw3t5iI0Lax/0C1h+Ja8eeLP1jK++3P0Jm1guLLADGokXiTzkRiNCUspuo8fpkQdIX74WByZ3
	ubmKwUFR3lEaWG1O9vfFX2OHx7/I5TUlk+dT0CXKu0NFFtViPEcH9NHT0KEpvNWTANkh7MFud2A
	6OjXuw8nStfzptZ9ITYIrKPIT+tgUNvpWcOXepMjp1Y/lbbvK7qUZF7ZZ6jXx33QHKR/KRShyXv
	6leLliYrM3j6WXM4VufMhfKPjEdcAsPTfQQWxBpdPExuaJauN/Vh34IXgsTHAdnh3IgbSxsj9HB
	rPounixJjZYIHYYO7oRAHZKUZHbor+2QiiL3OJ
X-Received: by 2002:a17:902:e842:b0:2a0:ccef:a5d3 with SMTP id d9443c01a7336-2a768b7a68amr16787195ad.3.1768913450709;
        Tue, 20 Jan 2026 04:50:50 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7193dd582sm124973815ad.52.2026.01.20.04.50.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 04:50:50 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: lee@kernel.org,
	danielt@kernel.org,
	jingoohan1@gmail.com
Cc: deller@gmx.de,
	pavel@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: backlight: gpio-backlight: allow multiple GPIOs
Date: Tue, 20 Jan 2026 18:20:35 +0530
Message-Id: <20260120125036.2203995-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260120125036.2203995-1-tessolveupstream@gmail.com>
References: <20260120125036.2203995-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-257395-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmx.de,kernel.org,lists.freedesktop.org,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PRECEDENCE_BULK(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 7F5E65292F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Update the gpio-backlight binding to support configurations that require
more than one GPIO for enabling/disabling the backlight.

Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 .../leds/backlight/gpio-backlight.yaml        | 24 +++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
index 584030b6b0b9..4e4a856cbcd7 100644
--- a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
+++ b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
@@ -16,8 +16,18 @@ properties:
     const: gpio-backlight
 
   gpios:
-    description: The gpio that is used for enabling/disabling the backlight.
-    maxItems: 1
+    description: |
+      The gpio that is used for enabling/disabling the backlight.
+      Multiple GPIOs can be specified for panels that require several
+      enable signals. All GPIOs are controlled together.
+    type: array
+    minItems: 1
+    items:
+      type: array
+      minItems: 3
+      maxItems: 3
+      items:
+        type: integer
 
   default-on:
     description: enable the backlight at boot.
@@ -38,4 +48,14 @@ examples:
         default-on;
     };
 
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    backlight {
+      compatible = "gpio-backlight";
+      gpios = <&gpio3 4 GPIO_ACTIVE_HIGH>,
+              <&gpio3 5 GPIO_ACTIVE_HIGH>,
+              <&gpio3 6 GPIO_ACTIVE_HIGH>;
+      default-on;
+    };
+
 ...
-- 
2.34.1



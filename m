Return-Path: <devicetree+bounces-94697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 053BF9564EE
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 09:48:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A37B11F24B04
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 07:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14CD2158DDD;
	Mon, 19 Aug 2024 07:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="1a2+qy7b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2643614B959
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 07:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724053691; cv=none; b=HkxscaPjAokCd3SV/hQDSnHs4p72iLR3LtGteSicMlT6DYV0hXy1xSRAZWaJ4BRwKDqwcHngz9Q+h0CoxZ1ngoNt9un+7oWm9XP+F1l9vU0l/aEgPAphRvzCs7EEHcxercz4ewK2q/LLtdvc5C4p3Z8YXML6YbAPs9AsyN4ek90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724053691; c=relaxed/simple;
	bh=qROjoIoMrt4R1WOlmAxW0yXUSxg6KqlCiq2LI02w0ik=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=quLdmevfx4X3oE/HJyhCi1XHylG3miBdPPW6AWoRYRPCklM0kCtq9/jT3LuoNgpUKtzMsEyvAThvWKwJwDBpIyAP5wr2R1Svni0blqgvJbSrW/UG5judSy3sSp9Ees42LoZL9aH/O8g8APYXk6xmN8uMhXeQ0DlnpDyL2Iv5mjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=1a2+qy7b; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-428243f928cso31766085e9.3
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 00:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1724053686; x=1724658486; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6HWnOPtVtuFtQfkeUhsNP4qLdCJ3F+/lPmb7Sa/yyx8=;
        b=1a2+qy7b94VW7gG1ggGdOyohvLzUp/tXL7VU7xQAy7iMRKyG4FNI0v8p1erY0zsmEy
         BhNnJxoCrl9jqDrp1zPo2kM7L0yw8kxhXXtcLOWqcc5n9adNOXUWk5zx//DablFU1WAn
         JtqCceIWjjzgGmt818Ye/xzaZjXxLuwbAVPvQelrPtCZTIu3igCUseWVoX3FzvispNCx
         gPNY/OlJvzza4tB57Vy1ltGLevec7lVurExjp2R0meuMzcWKPD/oCxp9jLaX1qSGRHyv
         I28/+uwIYbdULcQH19XT5uLDibC4N18jQaIhqSygGn2jv0h3zjXHMf4rbNS04tHsvn+P
         Uq8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724053686; x=1724658486;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6HWnOPtVtuFtQfkeUhsNP4qLdCJ3F+/lPmb7Sa/yyx8=;
        b=qeGEMfi/DkXgTdAxzYX9fs85bUcJVHZb3IBvDgAKQW+Uas+FIqK4ALys4Tec4Fhgz8
         E80WAx7iWIrF4I7W+KCy6k2gz5RXd4y+fSIvANXpGs+2N55kanvZm0eDrB21kIxPkmvg
         xSfHWcbaZGQM/1VUIQjCcf0amfURPyvGE3nyaQLBS6VvT0lV4Q+9LsW9THSw0pq6AB3E
         f6heK2tTZtRsFRpmATSKhzelCrLleiHbYcYffO//xHdan6+WLfkd8pW+dX/dIU0a3fsD
         jpguPwW8lI/joiByLwW7mtDMqHxopJU2JOB/TrSCiE5o6jegzQfIbLE7B34LAf+WEW0h
         SlJg==
X-Forwarded-Encrypted: i=1; AJvYcCVUdL+EomU5W1YkCZwuE8QHuRvmZVxFqvFcCyitr0uaSAGHHTQM9DYAAPxFjYbr8KUK497ss13XiEFRtO/wdOYDzFFdnk9GxXU4WA==
X-Gm-Message-State: AOJu0YxJYom6mV7CY5hreujQe8+Za0cV1nddYABif3JcgBUjwV6yEIAH
	XZ/QxSZaiU/RiCxX7P8OpzlGz7S/IseG5kaCOvZPPIsQ5y5MjNWUWl7Oy9aOfcE=
X-Google-Smtp-Source: AGHT+IF5+NmG/osEaez8cWnAT2V4UFMonJgBv34yRRnSlNXOvRHs+XPDKZYPhylL9pZOmbRdHsC0Qg==
X-Received: by 2002:a05:600c:4e8c:b0:428:31c:5a52 with SMTP id 5b1f17b1804b1-429ed7cc764mr88524045e9.29.1724053685880;
        Mon, 19 Aug 2024 00:48:05 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:7b55:8f70:3ecb:b4ac])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ed650e21sm98881025e9.20.2024.08.19.00.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 00:48:05 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-bluetooth@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2] dt-bindings: bluetooth: bring the HW description closer to reality for wcn6855
Date: Mon, 19 Aug 2024 09:48:01 +0200
Message-ID: <20240819074802.7385-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Describe the inputs from the PMU that the Bluetooth module on wcn6855
consumes and drop the ones from the host. This breaks the current
contract but the only two users of wcn6855 upstream - sc8280xp based
boards - will be updated in DTS patches sent separately while the
hci_qca driver will remain backwards compatible with older DT sources.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
v1 -> v2:
- extend the commit message
- pick up Rob's Ack

 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml     | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 68c5ed111417..64a5c5004862 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -172,14 +172,14 @@ allOf:
               - qcom,wcn6855-bt
     then:
       required:
-        - enable-gpios
-        - swctrl-gpios
-        - vddio-supply
-        - vddbtcxmx-supply
         - vddrfacmn-supply
+        - vddaon-supply
+        - vddwlcx-supply
+        - vddwlmx-supply
+        - vddbtcmx-supply
         - vddrfa0p8-supply
         - vddrfa1p2-supply
-        - vddrfa1p7-supply
+        - vddrfa1p8-supply
   - if:
       properties:
         compatible:
-- 
2.43.0



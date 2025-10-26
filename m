Return-Path: <devicetree+bounces-231098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 247C5C0A5EE
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 11:16:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC6F318A1197
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 10:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EA3418EB0;
	Sun, 26 Oct 2025 10:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dxYPWv0/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F1F28E9
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 10:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761473781; cv=none; b=sdYUI6blIkUe6PGnvgykgAlJ94h7cB5JQb5xv3uHL6yOew2wquUfeW6H39sIStV2gduoKT1GmRLqVDkWmd+rSv8caO20Y73VODlkIYSzv6hpjY1YO9UQOEkHCHWZS6fqzLVSUnXYRyqVJUloJaAQH0BBhJD2YZ1TL8H00+I4lLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761473781; c=relaxed/simple;
	bh=4tuMvirqozF1BZtSSvcWbX/RxDhVVXyNJnnSGiyPbpE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ek0EYz5jkOSIp1dKTn2e3JlgIjmC3xOmW3YOTa3XICcad192w3MfaW8tCvNhyJcQFFLGPglxNmN2sq5SEUCP0bBRaMh2CC4qhWLN/7t9QjqUGqLWGYYxn0KfHXk9/v/sohhA5DjcaeUBEoTcaVFOFeXLLQMWveE6zv0tRz02YOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dxYPWv0/; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42844985499so456250f8f.2
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 03:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761473778; x=1762078578; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Fa1MhKqzuPVYS2M1bInqrAbv70jc0zu2caVbAoAzEXU=;
        b=dxYPWv0/h6/N7AQzFL1Csy6BiE3m3R1oU5ZtfQa07iM/3SZjZVxyTcnseDjVPqSvO/
         MdL9QvLH0XObCJXsiUN+4zBRdVEWLc24WbbQJKWK92kwl4hTyTWU3AdyJ25EI27ZBQw9
         O6YI1ZSzVca/08syVX107PsX0CcHPSks2drP4xefrMt6WBk/FaVbpH0xXlsiqQ8yXxbZ
         L5mdXU0q/hpFJjeLfhjCFQ0dS4SaIcBkxsTUYG3pYVwZbi8PIGPQWn7oDCL16xgl5fm1
         f9n/KqzWqmlHVREf+79VbGZWUt5qjj6AVBP+FiRS8bGMXh6YSawRM2dVhqAVecMHZ+HZ
         oA+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761473778; x=1762078578;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fa1MhKqzuPVYS2M1bInqrAbv70jc0zu2caVbAoAzEXU=;
        b=NxlJVFFcGBH/tZyny0JYrNMGCxLUHPOrl6xDEgHfq/vhAeXvtDbqCNldO0YY7Eihu1
         X0pzCB6LTjoBMfrBP/F+16n72K6SKVae/CljJ0r+GjaEWnYthX/zJZkHs+48kTbyiX9g
         1g4Nez666EB+OF51mBN6xnD++eD6eVNTH6Q9k75aBXMMruK9IsDK7fsupJuVV/6sVpFA
         DTdWH9GgeNs+Mco6/Zp0B+L9rPr05ZFzkwVsiutwqusRhKauXQIBQdOFRnnhKaGJt1xa
         CGUzF1dXto+CtXlV2sjTAk6d0vMqnYn7Fw7vpOpBH4SWydLv5SMQnr0q6WQys7kbcsvf
         KMqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIFfIoa7UIWBgEOf/7U0mew/Bp2nS9Q40/wxLBi/0X/Toys/qq6eSd83vf9e8amZqbjIZX3HQCHctD@vger.kernel.org
X-Gm-Message-State: AOJu0YyJr7qAongGXLUm5yFvPjXI9mlN9vu5nm55ScEsEtfuuQKYy26o
	5VQq7DHhv2CA9ec1Z3dg33KMZ7VsbLyjTtIpy5u+fAg7V7BPv3ZtwHQwML0tE49OUjw=
X-Gm-Gg: ASbGncsLlzXoO9W9wekJsbuIdE5NOFbr7oGKYrlsZuRMxGPc7ABr0TbCf1dvmmcVtxV
	Vt/bkF4b0byX53JWlgHbXLCxypTx0WC5sclf0MZu596skYsudXCcwTJ8xL2r9ABuuW40x8/qsMi
	pyolgGQM1uQvCvBkFrSLYBjA4pih6gLlOn8vFb6SialMcGIUmdF6TVO753bY3m7rVBdinQijDxk
	idsMgvTmfwOeghtNxj9/Co8LbS51/0cFeYYDbl5DWPD+1C4NJ0Sn+qFmoyyNfA3n0YKJZE7OoZh
	lBx8V4N8Q4NwJR1yVVcGH3LlekHoS5aDLvdHmfVeg8d58bwXCrmzBQIT2Oy9rbSmZH51Sxev4Ge
	lyRwIGjWy2//B5zSYwiczAab197d7kKpjCfVjJlGGIxEmPbacLqgU7QY/gFt7wTAN9GJG/OBp4t
	u4Oo0hpxPMGZs=
X-Google-Smtp-Source: AGHT+IEi5uzHrsnrvxV6x6FdgS/nZMzufp+jHg+YI+JOzAvJ350q2EDyHwRDOj5mFEkpTFwuZkWAKA==
X-Received: by 2002:a05:6000:2408:b0:426:c349:eb1d with SMTP id ffacd0b85a97d-4284e4fa3c5mr7192681f8f.0.1761473777719;
        Sun, 26 Oct 2025 03:16:17 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df62dsm8423876f8f.45.2025.10.26.03.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 03:16:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Lars Povlsen <lars.povlsen@microchip.com>,
	Robert Marko <robert.marko@sartura.hr>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH net] dt-bindings: net: sparx5: Narrow properly LAN969x register space windows
Date: Sun, 26 Oct 2025 11:16:15 +0100
Message-ID: <20251026101614.20271-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit 267bca002c50 ("dt-bindings: net: sparx5: correct LAN969x register
space windows") said that LAN969x has exactly two address spaces ("ref"
property) but implemented it as 2 or more.  Narrow the constraint to
properly express that only two items are allowed, which also matches
Linux driver.

Fixes: 267bca002c50 ("dt-bindings: net: sparx5: correct LAN969x register space windows")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

No in-kernel DTS using it.
---
 .../devicetree/bindings/net/microchip,sparx5-switch.yaml      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml b/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
index 5caa3779660d..5491d0775ede 100644
--- a/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
+++ b/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
@@ -180,9 +180,9 @@ allOf:
     then:
       properties:
         reg:
-          minItems: 2
+          maxItems: 2
         reg-names:
-          minItems: 2
+          maxItems: 2
     else:
       properties:
         reg:
-- 
2.48.1



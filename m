Return-Path: <devicetree+bounces-94409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 806509556DF
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 11:46:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB42C1C210A7
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 09:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 072F8149DE4;
	Sat, 17 Aug 2024 09:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rsI63r6i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47281F507
	for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 09:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723887974; cv=none; b=SiGlKicy0R6C1YsqAQ0AfDR7Aj4kLvN+wKFqBfSdWuysHouSdsJ4KBA4NZfV6yjFY+fMGhTGsOJiJERDEGHY+TBJqQQfYHXO94xJYsrSYdAc8BLBQf6e3UkpqXOvu5op0naWo6/pQUz+mV39YlW+V/ZaFlZZfqGp7+Lgr0RYUc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723887974; c=relaxed/simple;
	bh=pRB6jjAwbq5n3iepo1Uhq/05UYrGiUHreEyKsYxNTp8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Sh8HwgD/IKsDvVFm2aBxxUGD7hIOYh/MQpHOhiBYpBBhYo8kCJWLcJFkRFwY/MhVLhdlR4rWLhBZaBktL78SyxlgempLPVJbcAHrzDRr2z6XSHKCZ62suLnG7BiU/hQCc+Mj3PitFVhosR5D8lU1ruHMS1H8v7uhE0nqqPymrB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rsI63r6i; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-37193ef72a4so938133f8f.1
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 02:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723887970; x=1724492770; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8zVDbexPoYK9/xw9F/1lJ7dYaXx4jW1aArgheQ/v7dU=;
        b=rsI63r6ibiosZNGU/I8kIcBh/zEZ21PNwGo3pKUcgsOGZ88EcFAdfc0qxHmanf4qcH
         jQYDaif0tkFZ6YCyodUG86CsE/afSzzuSYfbc45jHc8m+apqfJ0TdczCoGPvptbx7xV0
         dYGbrNTuoS+gXJY80RNNullY0WxGkipIqOATKwrG/4EPN/1cswjip6k6L79OCBZ/GBq9
         fiSJ/HtannoR/Vv6whjL7sW5ymyOObB/uRakIrQTj6XfrKl6MeGX/jQ9DpVKTKDaL9PV
         UT7y5UZAdKOsrXKG87uxeZgrzVGMnnj5AQWNj6tNwBJ2PAHdamJP18jEiP+sC2xjt2Ks
         B/ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723887970; x=1724492770;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8zVDbexPoYK9/xw9F/1lJ7dYaXx4jW1aArgheQ/v7dU=;
        b=Lf+3IjIRF91Y46zykncWrEJH0/ZtbOoQn/nO7yTnht16mUopDifVTq6KvkCvi4KH5p
         w4C3AZ09JVFmE/cn2yBqWTGxmA4jLgYcqziFAXWgKaqYf8/cravYTnWYntsZMDy+QFp/
         zl87Jwz0ouWH4pVbgAbOGzaQJUr4HHutmNX2nKxaUZ4HPeOGw6/zaaK2hxX/xPrcIsA3
         e6bEESrV61TbTzV6i1dy1xu3jnkny1Qw4H50RWDnwrdO4CYdcX3CZZyjt14P1Ny6y2PU
         LhEVBQLPnf7Vu7Nad0qur5oHA/iyAc38O13IOkptvAPNFc2GMuBTeTeS4ySi7hfl45xv
         WzdA==
X-Forwarded-Encrypted: i=1; AJvYcCVpjRKP+GLbY+M1gzEuqzhdYQwu7200rAHBIiCxXeNcKOhtl5jsq5megKiQd5FRIu78ZYTQmwSIiOiVfMvoHgmoeXC6D1B0OEFQXQ==
X-Gm-Message-State: AOJu0YwasQ5ThEzIRYXbgY3H7I9zBnZuiZRl/Su9iqllLTtMNJDymj8E
	zPk5uGa1H1ny2lO0DG7V7xk6o95hCMQh63jbyoEIo9EQOaqsVN0/6lqVwKkP13o=
X-Google-Smtp-Source: AGHT+IHSZBCNPge3RyrSlkoKALJwN1ic4HFYxJS+brE6Zk7NO3r6FTp8PvLIn6jN3bvzXNHpgupzRg==
X-Received: by 2002:a5d:5102:0:b0:371:7cd1:86ef with SMTP id ffacd0b85a97d-3719464182dmr3810954f8f.22.1723887970354;
        Sat, 17 Aug 2024 02:46:10 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded2931asm97641815e9.17.2024.08.17.02.46.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2024 02:46:09 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Taniya Das <quic_tdas@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: clock: qcom,sc7280-lpasscorecc: add top-level constraints
Date: Sat, 17 Aug 2024 11:46:05 +0200
Message-ID: <20240817094605.27185-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240817094605.27185-1-krzysztof.kozlowski@linaro.org>
References: <20240817094605.27185-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for reg, clocks and clock-names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Taniya Das <quic_tdas@quicinc.com>
---
 .../bindings/clock/qcom,sc7280-lpasscorecc.yaml      | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml
index 5e6737c39897..488d63959424 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml
@@ -25,11 +25,17 @@ properties:
       - qcom,sc7280-lpasscorecc
       - qcom,sc7280-lpasshm
 
-  reg: true
+  reg:
+    minItems: 1
+    maxItems: 2
 
-  clocks: true
+  clocks:
+    minItems: 1
+    maxItems: 3
 
-  clock-names: true
+  clock-names:
+    minItems: 1
+    maxItems: 3
 
   '#clock-cells':
     const: 1
-- 
2.43.0



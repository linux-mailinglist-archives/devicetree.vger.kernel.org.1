Return-Path: <devicetree+bounces-231438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 266D7C0D272
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:31:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95B831887A89
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CF452F3C23;
	Mon, 27 Oct 2025 11:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aSg3R5sA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5152B4438B
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761564692; cv=none; b=MLbmbIgRcJ/X6kT5qbcIzw2c3FBTFLZmaMvvq9PUz+d5q6T+OeE/HYUxm1sGqcHWyT0UJWiaSoU9GkMoGlV7GwTo8rDUHbRgqMzaGHBn9VFfScap9Dl1aE6Nshx5uymFDgszu4qH1GlgZAoI/lFEIxi1oKe0AhIRfeuDJX5dqdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761564692; c=relaxed/simple;
	bh=LHPhOV0gpy6e0X3PqYPMlaEtQLXlGi+UHQ9Bc94bXXI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JvENRX3Oc8ZABM3JSh0NCxVytfNrG7oP9qzLEI3RuuaZKsRzkGvBJiXgH038yila8rVtTUbx6QMgWoeq1f5LgdR91IyIF/9M6kfSwVp6ahHUXYIQDXlD4qY5MTjoX8Tno8x9F3/vX2m7bs6sDWJ0+Q9UM0S68qa1msKvYGnUJB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aSg3R5sA; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3f4319b8c03so625537f8f.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 04:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761564689; x=1762169489; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gkdBVE0BY9SVhHYsmymJ7t9CcB8wdxkdpKo/Zx6qBfk=;
        b=aSg3R5sAo6Gr7VQQbGOTTJz6FAZIhiQ9prZGGoeuV9ELd4fuJqDKSzuH3Mq741Ta53
         1N/L74M+W2UGdZiTyt7DQv4pf80BeVWnKNZGnIVxRzkykpIFamY4ntE/8usF5OP9+zit
         zTPndRNME7lhUYkbZ5e8c+WCnVJB4AAAaFXu2GdeqZCztn6wlf+I7pectQ8/rmL1y3W/
         8NxdEoRBYirL0/Su5MwX5hhHqK8QcFRrrQGupK2vYfaMLab+Fn9R30Q8layQrXL31mZ8
         AxP95kZ0xDraV4AjITG8Z9mul57OwtiBKIqS7gKpknF8FIKxlucYFVcGYf/vRScjPGlP
         zDsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761564689; x=1762169489;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gkdBVE0BY9SVhHYsmymJ7t9CcB8wdxkdpKo/Zx6qBfk=;
        b=hxohMewCDI1KjAOgXUvIuGMLV5/y4i0AfiLUvMz84kA9X4q5XZq6cYy7DmRJTPlgTD
         ujm9JGKUX9dSr5p7UG5htcNZt8xs4opAnd+bQrGbirvEulj20GVc0vTiD46fhG7KJKQL
         5aydsxYXoTfY3MgZjROP/pFEMQJhdRsswbVU4zHU19h5BzlyNx2RI5nud4J+kw9/5mzc
         jmozYAO34IR+ko2RR2+GHakOBSxC6f9MngNgFjxjeivFQgtxiw3qC5oy8SKcTqCLpFaK
         bPhq3dOWyY+ENHmdF3BoxjqwEGWSfZlRUO+GTN4tV6sEAzXjuuKCWqltZoEGJblzOphQ
         9PNA==
X-Forwarded-Encrypted: i=1; AJvYcCXJ5RiaX3l42CZrOffrL2Mjutcnc9ugh2XoF5r+o126Q19kRvD9kQcFv3b2vbaO8U0PHBpCETv7ObXU@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9UB8SRDps8pNJUJV1XqQxTLWmNYa67ltXF1IkTufYYMjjXgOs
	Rpwk1EDaLZxOFsEPMfN1+xL1CFsQDD3zTlg6KHJuWjlHeo55zgdcwQIk/vZIuHKASvY=
X-Gm-Gg: ASbGncv1Mu8F4sQa6t8n+827PWT6ns2mxGyZ6iZupLHd+KdoUOLD4X4mnrazV5eHbta
	KcvJUJgQ1keRuAHMHTLTnZ57NtN6lQk7nGQWsBwDfGG+rcBNQK0ScavIXn7tSNGVuiSAHgJcTwV
	Z4RD9Y+EshCxWJQ2RosnAij+m3mmnK4ER88sVVT79/1MeDhN3th+GQkHvXPZiO9fLDpMMD6wjab
	oXZRdYCoiDF0LQHMsINJpyESrwZQc61KCbppuUVffjPb8HCGy2+0We7yLS7GhvPdY1deQ4tgPEb
	tOZMQmYjURMBOksMPNkaVsppLnXoqC4OU/5TONyB5Af+dX1v9YLhZAClGcxgLmClCGwsgnsZ4QD
	8Ea4I98j4YG1Ffxc3sLpzDzGDyzKN/C3JTv+WAFUVH60HSCBazbST5EzlMTj+uIeTQrJZ1ggHg0
	6Q/TJawPL1cScaZrUXltEKTQ==
X-Google-Smtp-Source: AGHT+IGz6GD3y6+cDG8Os4GrrgdKI9eH0xfE/xqR67GYStPwZccvbqYVtGigldNSOQfDk9DvMczWPg==
X-Received: by 2002:a5d:55d1:0:b0:426:fff3:5d0c with SMTP id ffacd0b85a97d-4284e531afamr8104494f8f.1.1761564688605;
        Mon, 27 Oct 2025 04:31:28 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952e3201sm13885403f8f.47.2025.10.27.04.31.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 04:31:28 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: ufs: qcom: Drop redundant "reg" constraints
Date: Mon, 27 Oct 2025 12:31:08 +0100
Message-ID: <20251027113107.75835-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "reg" in top-level has maxItems:2, thus repeating this in "if:then:"
blocks is redundant.  Similarly number of items cannot be less than 1.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 1dd41f6d5258..516bb61a4624 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -88,7 +88,6 @@ allOf:
             - const: ice_core_clk
         reg:
           minItems: 2
-          maxItems: 2
         reg-names:
           minItems: 2
       required:
@@ -117,7 +116,6 @@ allOf:
             - const: tx_lane0_sync_clk
             - const: rx_lane0_sync_clk
         reg:
-          minItems: 1
           maxItems: 1
         reg-names:
           maxItems: 1
@@ -147,7 +145,6 @@ allOf:
             - const: ice_core_clk
         reg:
           minItems: 2
-          maxItems: 2
         reg-names:
           minItems: 2
       required:
-- 
2.48.1



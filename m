Return-Path: <devicetree+bounces-40651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7DC8511CC
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 12:07:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 533AA1F2605F
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 11:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 384D220DCF;
	Mon, 12 Feb 2024 11:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VbfhFC6D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6839839ACB
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 11:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707736030; cv=none; b=OMHR+Y4/wHpzwtL/uyP0lu5GYW3rd8cwimXN6wd7Pi5AeQk0aRUmSPEsLOJtPbjKUpFcvE1oPkF2VjXZFhBh94ABH7LAVD/tCXO/98MDt2VYQy7eYfiF/zJMIIUnwtycx5s1dCn+3RkCmbX3KGxz+7WxkTc+IheZFfZDUzHvFBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707736030; c=relaxed/simple;
	bh=DY8o/VQXRUa5QoIDTX00ECuxzx1WqON+8o6HzkJeLU8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=G8HvFpF2ZSh6G7cbCMqXth1dmm0Wu2UMG68seKHjJQQJQ9e1XPQmwipnlh9LP+ImyL2CnWkn/RAODMakC6/ey7wXrlUG7sPB11btr98r3ZdhoeC1ik/2mSaIen2IC4juJJ/p1dnYy3Gaq+/kE6aXdILsT0kFtVjhLcz/w5EjGkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VbfhFC6D; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5116b540163so4267728e87.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 03:07:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707736025; x=1708340825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1+V+DtL3M3Rj9vRnNZ3NZn5Sw4Np7ene/6WMj7oNvNE=;
        b=VbfhFC6DDj+x2O+/5jfNDWSFoDfEgJVcTbo/25FDTksBJlH8zJVnz/YvBatdNVyxBZ
         F1cz1K+nXnB8x4hOrCqdVS/y1H5aL70PEIl093w6xSYXb8WPjWsbFklHBE01AZx+Yg2E
         hMvFMwhf2tSKg9YL1GNyF4J3Vb0viaczbZLIlyDyJ2ZtFSTp+d38Gxi9OZ9Ulank7n+m
         CUkom+5BGbaji6KixfBadIt/uhwYejAs5ZXbAJwEL0Omj0s8H/ToBQUEj1bV+qeRYqKd
         NHW5QR8tEOEOZw0YgZ38Xkf/UMz7fVze9VzTxrOoAvAv2ALSV0/a4CzdHMIFrIjYwdhp
         096g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707736025; x=1708340825;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1+V+DtL3M3Rj9vRnNZ3NZn5Sw4Np7ene/6WMj7oNvNE=;
        b=OJBMzDHTgeqJxTuRmfrblXsHRMvgCN7UkVZ+UfasRrLks7tXOujBOfAx8fXY7k1GfS
         FJr90PP1xm8iTuFSNzbVBdBdMlNXxhBhtkKOI/+O1Ub0QkmoRA5MNFDJtzC6QYYHwftL
         HnqGJPFnRghXKfv/Yi9jx6vcbIZNfDCUjwFv5Eoy10lpOUYtd4h8TWKz2Dj3AhTLIWDT
         D93ruz/NHe+aqxCuddwT0GCV9SerjgaoGkqS3oPebp/Vc8wp/pdfT12w3rtTJ9ls/gR2
         IQZr2DFq02hELXeSfT6xKizV5sTZC+4kr2xGGvcbBqE7hWGFAJZxVr/au38bam/T9w7d
         9uHQ==
X-Gm-Message-State: AOJu0YxDUaqEwQ7BImBA/38s3MBWc8JbxEatgR67gYcnSVqN2NYwPW4Z
	w6jYnKR2Z71qy4ryvyUCr3GcU9gd0JKDCQF5GEbmnVKMKvQgHSfWXzBI7cLBdAg=
X-Google-Smtp-Source: AGHT+IEnEDr5gsCbLJgFDMFEY5M22eDodlKJiLGCqkGUnM0t1LCQruxYy9V51zcei2bYBNfvPp8wFQ==
X-Received: by 2002:a05:6512:54c:b0:511:fb6:b1a0 with SMTP id h12-20020a056512054c00b005110fb6b1a0mr3959494lfl.52.1707736025497;
        Mon, 12 Feb 2024 03:07:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXaBfnzmJBmbV9qNbkHkX1vXjbHEfJwRuyb/GnkZgxZZXFYaUdh5X6HksxuofKt49BdfajkqO67fTexlfe0VR3tZHxs8C4t/qBul62EC1cqyH5rd/C1r2QEZYEjPEsDj7n3UBhZFEbzAPJg147HXH6caCT5WeQrCzG0BxHk/iYTZMCFzxNu8eeSuzT0DUgBxzYHqe3SKsMCN5qowEEdCwEPiIy3huL+dB61OQjlwlXEuMiltxaWi5XnzE2bUFD3/qRgFZZGxppIMdjRS3mow3rmljzLjw48WfgOCavtc9JMy/dgYp1xVZoxVK3ggMVuVqShfzbDwiLv
Received: from krzk-bin.. ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id v1-20020a05600c214100b00410395dc7d1sm8256067wml.7.2024.02.12.03.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 03:07:05 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Amol Maheshwari <amahesh@qti.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] misc: qcom,fastrpc: Compute callbacks can be DMA coherent
Date: Mon, 12 Feb 2024 12:06:36 +0100
Message-Id: <20240212110636.57945-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Apparently on Qualcomm SM8550 and SM8650 the FastRPC compute callbacks
are DMA coherent:

  sm8650-qrd.dtb: fastrpc: compute-cb@2: 'dma-coherent' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
index 2dc3e245fa5d..c27a8f33d8d7 100644
--- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
+++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
@@ -77,6 +77,8 @@ patternProperties:
       reg:
         maxItems: 1
 
+      dma-coherent: true
+
       iommus:
         minItems: 1
         maxItems: 3
-- 
2.34.1



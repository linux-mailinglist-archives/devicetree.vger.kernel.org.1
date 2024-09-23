Return-Path: <devicetree+bounces-104444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BD097E697
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 09:29:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5068028187D
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 07:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2852449649;
	Mon, 23 Sep 2024 07:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JqgQID5n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92387219FF
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 07:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727076545; cv=none; b=hJwv6uRKP+YSq/Ah97mhNW3hRyg9fqhn27fc45ftrYTBRsBCr5KOIIyfJM56VjIL6KjUtnKaqB3xjrxowtU3mwebTr19vjU8Heukr/wpu4KaTdZeIMNuCcYlzKpEICrhGTW/h1NeUbDKmFd/dRF20zcHRfJCRlO62iVGMep/K9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727076545; c=relaxed/simple;
	bh=6gogXktloc+A7c0Gk43BjST4g0xqpDAnzPJP5DTwyPM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eQvwUDUs9VMf8UCooyiqJTEXYcRgQM5QORca3+ZZY5IB10jeUzGfFc/CpXs5by9BqlT0R+Nr7kFJB8Vy1/I5fgFpnuvZ42mtD/JzBq8y1vmxCbSbDyz1LSRhPXpaytf1Hsn/kxQdaXyq/CfsNaa+Wmni/PKS/jACmsVB1JfENqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JqgQID5n; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6c362879f70so5287776d6.1
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 00:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727076542; x=1727681342; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SGac5qdU+wbl4yrBThl8jiZiUBigbuo0tAnkaC1iFVk=;
        b=JqgQID5nl7dsIqd8uI6zgiuJEw4nkZl825FWwzYpxB6gZfIEyUJb4LJL3nHNhVcEDt
         R3hD4jV1Ca7cWwUBtvBPs5vsco28OpbisVoC58ZRCA6J7pPB52BOE1EGvGdCiIeIY3s/
         0tGRoBuKBnveqvshZNJtr16Xx4gbW9u8+0AiIp1TnlhfJNxceNdx2QXndmsqAmFN6iZy
         xUkEqSAlbrOwfRj8BGTh0gZ8ep0+7M2ML5du7TpYH/TWUuqI+r6cWO7uKaNPwUV/3cLU
         fYkX7iWrfQDBPJAZ4BXjD1nbfYhXoVWh/pMJ+e9mIeiUQEL1S5Qx1xFMdb7DqkH2R98r
         4rhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727076542; x=1727681342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SGac5qdU+wbl4yrBThl8jiZiUBigbuo0tAnkaC1iFVk=;
        b=mCwmr4RdS1LasT4iPTGd+Uwd06IxxaUx4cjT6r5g9ZFKzUwLYNpHwiyKCpfSIe+as4
         6opopbC+v0EqaDprLq2Jl/jOz9S9OeRFHRwyKLhZrXqH4WR7Tq8E1HYYs6u2Sbn5DZWq
         R7lzPpVt7Fy4D4bPG4WxNXmcEbR+K3sIx7ZagEHy06BQ8NXllIN1FXZPlJDg+yb4o106
         788yPJ4K0LFwQaoPfKCqqXqUVSTiz8qKfTj52+V0AtkJTsUFTC2DrwC3g/fcg4T+R1b6
         cAkndf9PX6twzNq1/4YIweoIB2Sfmqkr/vMO2TAt9CVPkdB3QW/Hr/vMwGOEBTcwXwP9
         lVig==
X-Forwarded-Encrypted: i=1; AJvYcCV69IrKncslE9FBBPfaTdWsWlTePE+rkYqe+2XvkyNXp2dNWR5c3pvVcXqvLe6pqZ5j+BO3gNL+B17D@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9W3ruRZIrzs9t5goyNurXuhSGiYSWt1bs6nokU200Wtxdut0x
	R86FOxNMrxudhzoTSpjHByElIRuZNLbyZyKdAtCNsHtjCjPFFFW6+CruubY4rDM=
X-Google-Smtp-Source: AGHT+IGxqOQ6UYTw2+U+aFUi5a+DJwWT8IyjurC8lVj6OIrfNXo38/uYpZyuaCmzglRYc3OFNXYzBw==
X-Received: by 2002:a05:620a:4721:b0:7a9:a632:fc85 with SMTP id af79cd13be357-7acb822568amr799308685a.13.1727076542345;
        Mon, 23 Sep 2024 00:29:02 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7acb08c182dsm452872285a.75.2024.09.23.00.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 00:29:01 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 4/6] arm64: dts: qcom: sc8280xp: Fix interrupt type of camss interrupts
Date: Mon, 23 Sep 2024 10:28:25 +0300
Message-ID: <20240923072827.3772504-5-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
References: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The expected type of all CAMSS interrupts is edge rising, fix it in
the CAMSS device tree node for sc8280xp platform.

Fixes: 5994dd60753e ("arm64: dts: qcom: sc8280xp: camss: Add CAMSS block definition")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Tested-by: Johan Hovold <johan+linaro@kernel.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 40 +++++++++++++-------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 80a57aa22839..aa2678eb3bcd 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -3882,26 +3882,26 @@ camss: camss@ac5a000 {
 				    "vfe3",
 				    "csid3";
 
-			interrupts = <GIC_SPI 359 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 640 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 758 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 759 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 760 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 761 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 762 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 764 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 360 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 640 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 641 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 758 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 759 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 760 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 761 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 762 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 764 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "csid1_lite",
 					  "vfe_lite1",
 					  "csiphy3",
-- 
2.45.2



Return-Path: <devicetree+bounces-104445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A859B97E69D
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 09:29:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6479D28180E
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 07:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 421CE78C76;
	Mon, 23 Sep 2024 07:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i5SUXaKE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD861D52B
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 07:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727076550; cv=none; b=WL9Ec2Cc0S5lUe+vq/SCtjLgF+ToougEc2p6szPZ2RukePTJX42XmWgaR1h8uUn7w7RpOXA/TEFpOxFf8t7+v4gDIVFCeEmMu143qZK0IDTGamUx1beWmlucwVE6MBL6FlTi2UPkVr+eZsh+InU0lY8K7MTMrS+vwhlqqNlz9js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727076550; c=relaxed/simple;
	bh=7pQSa4b4GlzE5eupsdIVj8T4K0JRPjHOsUfy9A5rcbc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=md71TD3YGSGmwcetlI1TthN2BsuJsRGsC6edpW5iFyEHTfHILmmNlOjuddaOH1PkcFP09DdKKM0SFiYUixVOEHq6SLJsM8K68pjXwYIqBBtsJDVHrQFGFVSFwDrSicEwvauc3TEvkO3z1lzkD0VQHJ3E98tyIHcUBOskT3EM8aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i5SUXaKE; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7a9b30aed08so62514085a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 00:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727076547; x=1727681347; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4RL+PGx3dSjKZk/vbyi+GiTq1Mgd2XuhjvH7cuwoY2Y=;
        b=i5SUXaKE7ahAJpbz3okTiKUeJnhxcGZvdf+OBrftup38bdybZ8VaIN6xQz1f57SgnC
         kr82aCkJPuFo9C+vGTchbjGf+KMzAZqvhRipe/gc0TZCxaW44plY8762y+G2SzCzuxFY
         /dslwgv2fOzZhyoztXq0+bhKHasNZ65P+VDp0RPWbm0GJjUUhnOhCGFjNkmbp948L/xc
         90QcR3Eq6A6tLXE7BvjrurAc90SbRb/nEZYiKYnL7c/Z0O6H9C14dE0xJfos4BfuFsar
         TCzazSBAFuDMaKKww8Y54nUDHJ0tArbJIcWjwiGwmKpLncR+QFMGC7E8P8yysXkpe2fb
         gQEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727076547; x=1727681347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4RL+PGx3dSjKZk/vbyi+GiTq1Mgd2XuhjvH7cuwoY2Y=;
        b=D3Oi0CJ8CzBJ33AZuPy0cHAIctiEvvyNTVpuFaKITRoQMcE4/vlbCyfl5LiDcz777H
         DJ/USBtLx76dtOpsBDm/pEqUN72APre3Tjo4qBPuQ1vBhJkvRVJiEjJFM0ae+mz8NuMG
         HB17TmdEnVDL1GF1u7Lh5ev147vjoVclbE7zwUY5R9SNLHmB143DYBZAYnoBlmcf4M/K
         PIwp4LlkDLmCUJK4bVyFnUtYFiSSvjcKZpj9ijR8vs+HK3Drd/ZOery2CId33zGXcFeL
         p7eeaoy6DFc3RO7IdzmJocM1uJS36eZpf/26oRF8A9jWEjERMYvS7EIeOxdaO0Y9DNJA
         A9kA==
X-Forwarded-Encrypted: i=1; AJvYcCV9JWorQw1hxxM9v3ODStWH/01ORAnk7MN8SIfuUA2/NgjLQh8BCK56Q4jep/RRyAvbPcXFWlv6gwhB@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi4tDVwPJqhn6e4YJ64dgyEgPrUjKOW2KbF/EYuQKR2SvIu6qn
	FA7Y6CKwS/eQqzq8lsIrpgfNFAoN823dpTicz6uqCWJboc5SkSQsm17HByxC9rg=
X-Google-Smtp-Source: AGHT+IFMJEJCmxtDtPL9zaXvM7NO/KZlhn5JD2Gs+0qppxE3sGEXoeTBcrfAE3685XamqMzd6fR5+g==
X-Received: by 2002:a05:620a:298b:b0:7a9:a632:df39 with SMTP id af79cd13be357-7acb81e6e54mr731150685a.11.1727076546707;
        Mon, 23 Sep 2024 00:29:06 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7acb08c182dsm452872285a.75.2024.09.23.00.29.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 00:29:06 -0700 (PDT)
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
	devicetree@vger.kernel.org
Subject: [PATCH v2 5/6] arm64: dts: qcom: sdm845: Fix interrupt types of camss interrupts
Date: Mon, 23 Sep 2024 10:28:26 +0300
Message-ID: <20240923072827.3772504-6-vladimir.zapolskiy@linaro.org>
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
the CAMSS device tree node for sdm845 platform.

Fixes: d48a6698a6b7 ("arm64: dts: qcom: sdm845: Add CAMSS ISP node")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 54077549b9da..0a0cef9dfcc4 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4326,16 +4326,16 @@ camss: camss@acb3000 {
 				"vfe1",
 				"vfe_lite";
 
-			interrupts = <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>,
-				<GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>,
-				<GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>,
-				<GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
-				<GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
-				<GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
-				<GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
-				<GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>,
-				<GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>,
-				<GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+				<GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+				<GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+				<GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+				<GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+				<GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+				<GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+				<GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+				<GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+				<GIC_SPI 469 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "csid0",
 				"csid1",
 				"csid2",
-- 
2.45.2



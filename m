Return-Path: <devicetree+bounces-125001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9949DA7EA
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:36:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E7E7B246DF
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:30:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77DF61FCD07;
	Wed, 27 Nov 2024 12:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hyqmfg6m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99871FA162
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 12:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732710609; cv=none; b=HC1jXPSanFFq8PRJVTub1uVgrFBDYNuOGyi2Wo4yV53+pJi7DSRbUIEmjbglb0ZudGXAhDrG92l2MzJ/eqvaLwY60qqfumRxD0kZOyka38agfBZIKHdcilE6EMxd+h2hZ/FjgBgVmT7vKE9em30qzUqoDpn2z7omwqqNNtbS9Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732710609; c=relaxed/simple;
	bh=1HSBdMh6wfN3s6P/Pz367KpBowZKJDapMzkV5wpGJCY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FmBgZLAnEq+ymHAdu9CL5AW0C8CypQ+VXIV8/Qr7hVoeLkYuCiaTAMonVAlSrINbML+Zwb6yeTKzN/vaJwzt7wg4i51b2m2JJqYS03RZimxIeUY4oxjXP9G+1e7vhw6v5+GW4MGLnx58xDkaFAHgRRrxiKtoi5ExQdwCgjJimSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hyqmfg6m; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53de2eaae03so489942e87.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 04:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732710606; x=1733315406; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7YHGkGvfRWiylmf26eOuJT5PWJDFkDGLf5fy8GDJu8o=;
        b=hyqmfg6mij14rNNI8OeFz0y/F3e6gUogH4XO+v2DYFA/OEUTnUIeEQkdzu1fM2yYd4
         PRhSsNBpIJiSGKR2MoIwwm4InzYnI9YiQTz8gJs4aWrkW6GlTL0iHGpH0uNjQPLb+vjy
         LCilJwSu1b7SvK+kxwW96VM7be10Id0jB4sZ2KIJ+6JjxS4W5R/rgmcrIYZG8g4zA3M6
         gSF/AahUCPZZ6SZU4NqvfZ8rUTn3XsUJcWqog6aRcfGk+GlPpqTbuyBXkPbHUZUjy/CI
         4+KE1U8OtPmZyYBZsAGScyhi4yMm1Qd3hVAvFeM90IjSanqJILfL49VwQkomjMZwjxxy
         YrwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732710606; x=1733315406;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7YHGkGvfRWiylmf26eOuJT5PWJDFkDGLf5fy8GDJu8o=;
        b=GA2qG+BZZ7ReKJCIanpyuh6prRlR99Oj2OXhnI8sWXL94gmXiC55WrTlUwJl4P7S0g
         bnJpzRCjsDQ8Y/woRMnZPtzTBQf13bDCqewxkm/S+1Hhln2kixcncybeq7MSA9MMse3a
         VxFubrJPJai+McwlM2D075EANYUbKqi3ekhHMAUF86UNTkrvOTdmwnjndDXvys7TtQ7O
         hJyQlcwjSaTxzPAya9dkIcfqdVLfdQySOv24cGuPqUf16kKcNJq94WpTS08xDhBnxkBv
         4FClFhvjyU1wKMrsfFTmqUpeivAud0/cWb/WBuUK6noT5B8dLEqHM4U6IOkCzBfeFW7d
         mvMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmCnTRNhuX1TJZJ7kivyHA+sTKVoBnJGBIAPAc5Q3m9vEVxw5wqg/meKeNy4ixI64n5t6ZtGxg5JnQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwnRZz3QeFgd+Tu41bSXZg2EIdUwxuYZnFmryusmLfwUej6Cu94
	Umo8Q1r/npJqofyeTk2c/B/G4kkg78xSV1ItKS+gW1HeIeMskpXW6x4VoFDaYI0=
X-Gm-Gg: ASbGncv5mWI19mb3EuI5uVeT3+Ml84C9oA7AVvsfiy100a2ZAxkjfzLKUxBlKV09Cea
	j1Jmm4+DYQpd6Dn14FIyr2cDHQbuHSDzUKzS4HbzokWtgk2sl9EUglZFh6IoVw5yZmgoO65RAm+
	Av/f49DlEqI/mVcosfl5ldCiyPrbsgJ49UsaRH0r4epBJ1BuLFVHKepVd+NB0TgjRIdtPDmemyQ
	AFKa7uwyPRHYb8262mO9U5dvYwQkAfzhCvASPhbJ3cqtkSbg8X/XzDPcPzn16uySV/fgbrDE6Jx
	+VA70ugJmNO4fKYr7irdrrMXqF6CsoqdMlbVsbY=
X-Google-Smtp-Source: AGHT+IE6l2CbwDIyizpqAEKumrX5YByiMnhEAc9ERpp6FYYrorQ32FMnc66slHzbN+Jy6uQeksIX6w==
X-Received: by 2002:a05:6512:3e22:b0:53d:e4d2:bb8 with SMTP id 2adb3069b0e04-53df00d945dmr287070e87.7.1732710605774;
        Wed, 27 Nov 2024 04:30:05 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24953a1sm2276621e87.228.2024.11.27.04.30.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 04:30:04 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 5/6] arm64: dts: qcom: sdm845: Fix interrupt types of camss interrupts
Date: Wed, 27 Nov 2024 14:29:49 +0200
Message-ID: <20241127122950.885982-6-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127122950.885982-1-vladimir.zapolskiy@linaro.org>
References: <20241127122950.885982-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Qualcomm IP catalog says that all CAMSS interrupts is edge rising,
fix it in the CAMSS device tree node for sdm845 SoC.

Fixes: d48a6698a6b7 ("arm64: dts: qcom: sdm845: Add CAMSS ISP node")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 1ed794638a7c..cb9fae39334c 100644
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



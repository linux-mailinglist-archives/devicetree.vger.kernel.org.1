Return-Path: <devicetree+bounces-100532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 800E896E008
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 18:42:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B304A1C23523
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 16:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D29C71A01CD;
	Thu,  5 Sep 2024 16:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YGjuP074"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05551A01B7
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 16:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725554518; cv=none; b=TjcDQv3moh/zP36ekECYGpRdpvyCVgXg8q1H5GowVCW0Vb15cx7B+9HkNC7F85jJkmBBdI6Pj3T4XOuBDB7eugzntQUeC2X/xrUAnREe/8InkAhWKyBMub9EQusSLnfuyJSq1UX1JWlQD4/gB9v86UXHxb6FxkjQIWXQsO3SY/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725554518; c=relaxed/simple;
	bh=ZcYmh+ZmZ7B7EekZigAi/a2eR9+M/ALDEEYmLd5Yqjc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ArY/nHnGxIuKFqDf5joSvEcEVntO0iLzCF/v20/09lvRIWWKykbNMojvmxX9dSjqLhg5VfppTi4iiwMkNfS4X/gYsN70pGqMWNZPui5TUFbIbGm/EyzujK+azBG0QFh5ac/htK8Hoi7ZTYASgacQgTeLwnFbxsA1VHP7Uixr80g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YGjuP074; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53654d716d1so81950e87.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 09:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725554515; x=1726159315; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fIdYAVOJ3i+EXm56FA5vjfcUUs/p7F5KZlrsJlStDy8=;
        b=YGjuP0744dLbVgebPCEAdIv9zo0dV2DY5yecnn4IWEfbvxkwcqD1VYqw4tKO/wW83R
         KSJ55JItzeDR5K3Ynngm2lq5vrUfd0YL7nk0Oq7FQrdSd+g/2fDfe/K2BVEB2TWFthGO
         D2Ef+VU7o5p0xUVexG8Du6CzfLiyJh4OJ/PCiMQqCbdqqw92gs6voxbjBYtVvpBY6kIa
         XyFuy2+lphTg4HMlMq43U21gwqlAQt9hZtN7nIBKId8KAkdCiXn9qU6ZTWIkDEnpyQxV
         zuCQH8V+zpxLxXjC+dw/nXObsqxM4XTPuBCfo00ttKcGpbBS/bWCngFuxgJwWIt/s98d
         29SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725554515; x=1726159315;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fIdYAVOJ3i+EXm56FA5vjfcUUs/p7F5KZlrsJlStDy8=;
        b=uhKjKQSAp9BcvnQRqragSmK1whZYiFaKIuRw+4+I8XC0RjJzpREmWriMKZ9GbI+AD1
         7r/g+coKTzfAdryBKB0lZMWxTcFKbXoM1Y/WhQ8mVyqBakHLOToVC1bm9X5wcik3jPud
         lWWcWAC1Zz95v1csqBYvmXPsFcCJNnR9hgW7nwevee8EAHO5K2tCXcMwFcoJJbnxQqOX
         iqF6qbA09dZkWS9mO6wE3gZ87kDviTJxF9ZKKY3wgYviaVJDYwbHlQZyeHZfYRvH1H0f
         vpREmcwM8DnObfqivCIoygGvPPiSWx12EuFDCqI1Jn5X0JDsaVpVx4BsjzBzQdyp54oW
         sZfw==
X-Forwarded-Encrypted: i=1; AJvYcCW9AKsdvKFpQOmVd0LsftYK+hVUFNjz9S62TGuH+uEy7w3fVpIr+y/Xz2bFXRpl4oe99qy0+npkvf8g@vger.kernel.org
X-Gm-Message-State: AOJu0YyET1T33/+XVhK5Qn8JAvJqlwxkVUSuoy1RfKkQf38RVn3N7QFp
	FZnFaHQE2D5AxMk6N/yMYLlUpqwcheUcpN7e6yZk04mrNvTHP1Vo3Rtx1NdDzl8=
X-Google-Smtp-Source: AGHT+IHaPYR8N0CClF1WETTLERZDKKbTkAK3oh80IpePluMQLZTeqOq10lm+mzWybT7dSsY5syjlAA==
X-Received: by 2002:a05:6512:3510:b0:536:554c:619f with SMTP id 2adb3069b0e04-536554c639emr440624e87.10.1725554514984;
        Thu, 05 Sep 2024 09:41:54 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53655182c91sm100674e87.306.2024.09.05.09.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 09:41:54 -0700 (PDT)
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
Subject: [PATCH 4/6] arm64: dts: qcom: sc8280xp: Fix interrupt type of camss interrupts
Date: Thu,  5 Sep 2024 19:41:40 +0300
Message-ID: <20240905164142.3475873-5-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240905164142.3475873-1-vladimir.zapolskiy@linaro.org>
References: <20240905164142.3475873-1-vladimir.zapolskiy@linaro.org>
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



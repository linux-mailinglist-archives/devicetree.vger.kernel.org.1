Return-Path: <devicetree+bounces-72728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB948FCAC1
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 13:44:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E93FB2366D
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 11:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 343CF190079;
	Wed,  5 Jun 2024 11:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eYV0gazN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EF41922CC
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 11:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717587817; cv=none; b=k+3fMbVEYPN8FiR0VaeBLuNUlyVD6YNxJGzbvbKiRVe5bHkiJIOeJM9LpSdDKLNaJEP1GgCLveG+ujJ8O+MDV88QWahhj2ZzClrPqGIqMIjL0HhbzKmzUx7D54M/ze5nxrWrwouwKWasm6xslbSJlyz55R01CrK3kG2G+0ygf/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717587817; c=relaxed/simple;
	bh=0GIPaRevDNRx/wPrHhuPUBfNf5OKm7cQz515RQ5q9iQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Y7pu9QUmwER4r7lq2FdeckNqiWyq0xDtgseOLQo+AbrC36TplAIQgY3UQg0ZQgfjDqdzHwuZ6HHmqhzkH/wf6LgI+WuopT5OBrruKnRcubqseySY1Rq00SbbDc+95yji/VwK9aGS4AmF1xaI0j4Qs2y+Yj0C04ekiW5zYhGYCFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eYV0gazN; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-35dc984b3d2so4962165f8f.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 04:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717587814; x=1718192614; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3j6XQTmAPHANze14GjdABlxabfBKYaZBM898HcyxrWw=;
        b=eYV0gazNfe3MrgHj3eRSkcrH5/HMFcKXRwfLvHhl4zvUJGml7iIWDPNmU0F5OMlmdi
         vElgggpgyj9GzuPniq04BUQ5F+pab+zcJizvVLHI79XR+DCtO0Puq3T6NKO+91+j9E9G
         8J8DKa34KOYFvkQszYtTOuQoBYiK6CbKXCpzS8/gH9fafgXHATI4W8T9OEDi/Mcm6LNs
         XpjKpGoL5L1A7QjiY2j4SDkS376/jfldHGRxEcYZuoPKpJ1zmb2IHXiqfmaR4PYUdY+I
         PHqd/9B7SX+zANE9zpPbgRyCXIceHrpIYTfpCMiRbvPOhcuYWlmHKgf5nWdVpRo0vXBk
         ED6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717587814; x=1718192614;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3j6XQTmAPHANze14GjdABlxabfBKYaZBM898HcyxrWw=;
        b=NFvVjru6CyiQQuq2XoOXwQpuQuYni2Vp54k3XEtE+BelFGR7RoefIN+BKzLsz7lOrh
         kXhzUzPe/yhyiVVrZmSMAVcTUQRQLBaEJBIhN1vBGABsazoHPi74mtivCsKk2oo0hqw/
         qUsgDCMaEApTYSFMQLK0P8SzkMAZjeV5aHATfyfliB6FU7Ck8fvFZ0PC7lvTLgoPSds4
         LR/UZICDhWyrM6TctAn5h9b2ok1jaWQROoNJbjCXgfHNZHL8u5eTa5/0Xf1omc0esMQj
         DCXglrsvmEhXVFoY3jN3At9LvDnjWSeLtowJMpIvpxrRVtKnLpFy+CTDrFA0Km0+GxyU
         0JAA==
X-Forwarded-Encrypted: i=1; AJvYcCWl0YTvQWei8dMYIxGkxUOFX9BgE0q0k3k6wScpAN5exiA+H7QtC0rxgzIsBBLFz3vGUSjgYzBOvESSsA0qmIwkdx+VFGX4DdE/ew==
X-Gm-Message-State: AOJu0Yz7/gfcU1jfMw6Z+CexDG6J782dz6JBuhidrIqzzprqadQw/x8v
	47KpxEfyCH91PXzhAPivJamJiJyYMWp7WaYeUJYrJ9jr6vnswhxuaWtrS2yKkFw=
X-Google-Smtp-Source: AGHT+IH865p66lw4x2LZmxMYuezJKKDWUoV3nyY8R7CoXx5Z6tfcfp/lXHlTMUzuQCTJ7LOEh+GS5Q==
X-Received: by 2002:adf:a1d5:0:b0:34c:f507:84b6 with SMTP id ffacd0b85a97d-35e8ef1b8dcmr1744590f8f.41.1717587813594;
        Wed, 05 Jun 2024 04:43:33 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35e7dea1c3esm4851633f8f.66.2024.06.05.04.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 04:43:33 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 05 Jun 2024 13:43:30 +0200
Subject: [PATCH] arm64: dts: qcom: sm8650-hdk: allow more IOMMU SID for the
 first QUP instance
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-topic-sm8650-upstream-hdk-iommu-fix-v1-1-9fd7233725fa@linaro.org>
X-B4-Tracking: v=1; b=H4sIAGFPYGYC/x2NQQqDMBAAvyJ77sIasqHtV0oPEte6lJiQVSmIf
 2/wOHOYOcCkqhg8uwOq7Gqalwb9rYM4D8tHUMfG4Mh5CsS45qIRLd0DE27F1ipDwnn8ouaUNpz
 0h+xd6B8UOHqGVipVmr4ur/d5/gFeWorgdQAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1614;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=0GIPaRevDNRx/wPrHhuPUBfNf5OKm7cQz515RQ5q9iQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmYE9kMjrsnWiE7WNIsOTxBIT23x8cQNKw63fdqRV0
 N8aPqS+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmBPZAAKCRB33NvayMhJ0U0rEA
 CIAr0gdIreDfpQx/XyHMz7lbQl8x/UanWbfUkmzalRCEaEZAlBWxi/4UOCyur2voJhc/SPMaDh4495
 nr0cZPngFtJcWIH+eTEFydDO9TU07k0FpJv80SJXPxtsevNbCQRCLFbaXHEZ3Mif+K2KxXQgWCWp1I
 OWAkX3GQmin4S//a2E47UFCAD3HKQ7ZAyoG92Lzc66WNmBj37qjY+kyqlyymSEcWKQejqc+OMrNG5t
 0D38zv/WoAtiO5kHQJQUmVa7sSBmHgS5/nHaRA51VmuDbRufaUQ4O/R5RYtX1AfX9wvpVB1GtFa7io
 19ngbVh+Ihj7ZIwUYZA1eB2HprmtxkNC9t4Elg+Cdlhr5Z8TWCgItSEmFD/omzS5y8GRoQNBIVX0R7
 eFqxRRYI6eYnASqO9hHpwRvgLFHkvI5W9IjKQdhg5g2ovTM6YEnLQumH1/4v7wgx3R/K4OVm/YwRJ5
 Z+nMnMlIGKipmAYBbImQj8qN27SIeIi3t1PNiRu3pf7JkLIEWImoXwWa3vCG/+EVgHkNbT+dla3BeL
 06bPKaf2Kw2zyyuE4u2PNImyFdb6ZDajjQ8g3P78ZJX7uXk2xamuAC3ZKRFV1tCxyONxSqSBL8dtia
 nB8StI1o1/YhLd02p2Bs2aN4LBjOOr+bxH6qw9uE9IN3yVav/8ZEoXj9z9LA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

When triggering I2S SE DMA transfers on the 6th Serial Element, we get
some timeouts and finally a fatal SMMU crash because the I2C6 lines
are shared with the secure firmware in order to handle the SMB1396
charger from the secure side.

In order to make thing work flawlessly we need to allow more SIDs
while running our SE DMA transfers, thus add the 0x3 mark to allow
the 0xa0 SID to trigger while we trigger an 0xa3 SID from Linux.

This crash doesn't happen on the QRD platform since the SE6 is
configured differently, with FIFO mode disabled, thus GPI DMA
is used and we cannot exercise SE DMA on this interface.

The crash only happens when large tranfers occurs (>32 bytes) since
the driver is designed to use the SE DMA in this case, and there's
no way to mark the SE DMA as disabled or mark the GPI DMA as
preferred since the FIFO/SE DMA will be used is FIFO is not disabled.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
index 182864a3b6bd..5887d265a077 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
@@ -991,6 +991,8 @@ &qup_i2c3_data_clk {
 };
 
 &qupv3_id_0 {
+	iommus = <&apps_smmu 0xa3 0x3>;
+
 	status = "okay";
 };
 

---
base-commit: 234cb065ad82915ff8d06ce01e01c3e640b674d2
change-id: 20240605-topic-sm8650-upstream-hdk-iommu-fix-542619065c45

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>



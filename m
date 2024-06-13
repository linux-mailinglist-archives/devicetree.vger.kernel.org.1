Return-Path: <devicetree+bounces-75589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DC44E907D09
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 21:59:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 67B02B27D06
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 19:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3593E7E57C;
	Thu, 13 Jun 2024 19:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XU5eYxZl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87303757E0
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 19:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718308788; cv=none; b=YMlt3EqCz0Upvqcf1+Lbhygy5ocQCn6KAFKE4Z4Py6/IsSLENLVdklw1jvRHJsAw1rxwq1cWYuYrKxGqhxiOj5jufAjyprrH7YcjO4OG2xLYcabqjc32UI5l5I51Dzt3RqfRRKj/Pn6/iU99rt63KzAExrYGa/NnW367yx9HCIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718308788; c=relaxed/simple;
	bh=BIBh8+F+zKpKRdeHrzXUFvOBfIf2BVM6JucX20U8neA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=B6ISlQse34hoU/1POSwysTDecae+UHI5cJ6dH6Ml0c9Esl3ZeoTsUiSXenkFRLW2+qnsprIb5DHV6PBsMD3kNTj5XosLNswCmKv6yIXjvrr+sG8yKKkHY7i4y4tc7389JOghpziu7Y+SXfhbhReEVkPvmJ+kKiqOIOAjOUmZ94E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XU5eYxZl; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a6f177b78dcso198955966b.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 12:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718308785; x=1718913585; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OrKmU6eRMRuPqBLgOvID9Wsb8PYxyp8mNSsce2VFhn8=;
        b=XU5eYxZlykZL94AOhtEXrf4aLa2tQEsAkvMS6DG8RVL8ulIaCeLj/3m3qrAXRofBje
         sRFbvr/HuhjSxUaBK8vPXIUIfpKgldPyyXuqg1uRB/N9ummJC/CmXaSiBlFbmqppWrPr
         4S6wrkIu8rJnXLCXwC+0lZb2sJPjcvH3o3dlHbQq6sf0nVtB7y1UK+hSeZkCVmVuCKV1
         3dUwCQupNXf/UsNa2/F9BSIeGC44/clANmEacrqd2r4bnuLxoDDfHEyq0LT12sOEw2N5
         fVrqVMBNrLpkSrdKpi7O4bAA8Z8hrtp7UoyF1l7F9Yg86m+FtkNf7+8sFpoC5HIZE8qj
         USBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718308785; x=1718913585;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OrKmU6eRMRuPqBLgOvID9Wsb8PYxyp8mNSsce2VFhn8=;
        b=RxeU6evFyergmNoMlLIh8sD2vmVR71rpFYmqpbaWr5zjf8kFCzPMef5dtybCqOf4aa
         xsacPO3Kof7jsdewv2t7b4ew9O4SxfqAetJhIIBV5UsChzqUtPTI2ARZ8DjLg0Cg0u3l
         whENFr2roAbOpkedNlTvihXKrj1vvR1lFIiTcpqrpKH+qV4DGOxNHArjbGEnlc6JMCym
         9Tcehc1QnubSvFd8ATYQsc1kY/3nLsmh+Gl/SzeUxKiRs7vKOmgQ0X2dnUwyWnCkY8pm
         WO3zR/vcBL2l0LBP+X6DDJv2MXp3X8fcPbmEj9y6VzDo9UjqF8f93HTXjfG1B15NWuJg
         rABQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQbuBNdDDEIulDzlmgH2LnBQ0eJXPEQCZ/OYw4EIwvc7UyvUO2B4HUIWF2tOutsHjJS+kq32ELL/L5eDY09iuT8ONBzj2jn1G+gw==
X-Gm-Message-State: AOJu0YyEtDorxYgLnEebfbW1BeAzuvJET5KjsVK/xjNiayHTfxl/3hAa
	mp7VV60wxaNlgCOsVGWx4dO6zLzo8lvWBHtT0vLQbuJoN0C+QzVk
X-Google-Smtp-Source: AGHT+IGDHbDv4ms/P9PrBJz0EAT3HdckMfVEcUXEXk7o27MmRrafM56asxH7zm3TtHDjNE3yVy061w==
X-Received: by 2002:a17:906:1c55:b0:a6f:3210:ac1d with SMTP id a640c23a62f3a-a6f60de0e05mr47496966b.63.1718308784463;
        Thu, 13 Jun 2024 12:59:44 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f9c858sm103092566b.206.2024.06.13.12.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 12:59:44 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Lala Lin <lala.lin@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] arm64: dts: mediatek: mt7988: add efuse block
Date: Thu, 13 Jun 2024 21:59:33 +0200
Message-Id: <20240613195933.31089-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240613195933.31089-1-zajec5@gmail.com>
References: <20240613195933.31089-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

MT7988 (AKA MediaTek Filogic 880) uses efuse for storing calibration
data.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/mt7988a.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7988a.dtsi b/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
index 7690a83911af..c9649b815276 100644
--- a/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
@@ -231,6 +231,13 @@ clock-controller@11f40000 {
 			#clock-cells = <1>;
 		};
 
+		efuse@11f50000 {
+			compatible = "mediatek,mt7988-efuse", "mediatek,efuse";
+			reg = <0 0x11f50000 0 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		clock-controller@15000000 {
 			compatible = "mediatek,mt7988-ethsys", "syscon";
 			reg = <0 0x15000000 0 0x1000>;
-- 
2.35.3



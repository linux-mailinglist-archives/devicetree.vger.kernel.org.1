Return-Path: <devicetree+bounces-125883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 685389DF97D
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 04:21:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B35D281A29
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 03:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0D2413D53B;
	Mon,  2 Dec 2024 03:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="n/B/c6t+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6411E2018
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 03:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733109693; cv=none; b=DwF5CXP+JdWfGXBJZ09YxJ57dtA97uQacFxMllNCTQM5VLPbaeDnvrPxqMy4jonVHlVofgghAWgDwQNR4I7VK8XfXVO6mYm9HcVz+Mj6EshcvCUGmfWwcSOJ5V6gowPZ6ThJDM39YJVeonNk87qy0U03Kjsu/rb48s18XZYFM+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733109693; c=relaxed/simple;
	bh=nVRFU5cL6FO4qL0kZPGkrp1lsJ6CHQTUlD7UDfAx1F4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=A8PbQXx4/+qATExwQeNPnwLvP+Bm90oA1/sPot1kaTg9f/jqsxBWw4Bk34QPslBCEAQV4tzvGkouSr+GwTzgGoNGNV3yU3OIYUFHEFHdbaBIX9/ZqqWKVs26xKq7lkJyVr4yAGKwNMpK32cG07q0G3Np3xpCot+3lT1epGELlAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=n/B/c6t+; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-21571559c05so616075ad.2
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 19:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1733109689; x=1733714489; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4JKkTbQH3r8XT3o9ORFi7gb1jWbj8ogQLTpCR2fybI4=;
        b=n/B/c6t+z+cK6sNDvBGOZt4XEXSebLSmg9Si2EsrQ+IaNXdLm4claytJpSFH9WHWu2
         armAh/43m3LC2PtYeKF05DPzAaY1EyrZLfOZkjoNv3/0iyYdApzq7kqx3Mbd9eDtByJC
         7uLl97+Rn9l5GeQ5+YgNlQduDVyjGHqB3662e7/kaj56suQTx3mLJENGZWVKgwz43/cn
         NnnWyvHyrI4KZichBKRfzOE/leu3tSAc2zG6NSJbrY1FYiugKXdYmYLGPqWBzp4pu9t9
         56nkGGXNLxDi5obiIfnMpN2D5Gp90hFirYfW7LUjutUGmrrIMsk1L+QQoYL/GyB3TAPN
         qmEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733109689; x=1733714489;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4JKkTbQH3r8XT3o9ORFi7gb1jWbj8ogQLTpCR2fybI4=;
        b=fR63ULX51EMC1adURL+UMXJftnYbMFqjiCeoGNUCPuSECmZfUT5c1OSysm1Rq2b7jj
         fJFT4fZBBRmxFvkbuoLA0+rS9hbSd7KYeOlQitkokoJ4tP5praqyfU+L+FKwGDthu+aO
         3D/mAqzNQqtUZiOljGT4Vr8i1tudAxUMyJ8vf7sX5khZyW8ek0lN5SqQGc1FfYeYyY3o
         wbUkWfMiXyrduhxU1ccwTZu2/ZmvkYwlwJFXAGmZc3f3SDZefm1ZGrLdaMBGqgnvprZc
         tJ6btzQFnx8S/fW1CjhD+eG+XKKJ3UuQ/7JsiH6qTInBCFjB4dctkJgJ/nUS/2/xHi3Q
         W9zA==
X-Gm-Message-State: AOJu0YyFtctP+jfyCKgJPf006E4/4jLq1rOiRPruYGTvsXxxVpR9snIv
	l6dvLMF1MFDHKWIGFyDr2CxD7IVY5ODxZmgr0qQffz8Xt1iN0gfZNEiZEn81aEM=
X-Gm-Gg: ASbGncsNQKbJfBe4qD264djFOwZw6357B6UO4MoSxobvSmMmiPWMnhoZibx9cImXsL3
	st5IhqHk7Ws+FfMeRsQDboVfNxZcJV2IPfmLn39sGrlVYwDnOZDKXHeB54Q3PrtWWVc80t5LXO9
	a3klalELJiHzyJMJv8pVzAiM84i6vxEP6B0bO9o8Hi6KU5mnRMxzTALz5A4pEcwwJXBSa6Nl3K/
	LVr6R/BT6qoRKLaDwtJwT61hBZZavbCJR+RM7SXN8gtiZP+mb2UCbvzhFm6iOUxvjI0PjdocxQd
	mzRVpATnwL/D+A==
X-Google-Smtp-Source: AGHT+IGl4AZx7btGELbwfsvBPjCZ+LL3bFrNerOHcMEQPSapSZDS2D9CkO8xmV/VxpGUqxWhl5v/xg==
X-Received: by 2002:a17:903:491:b0:215:2bfb:3cd7 with SMTP id d9443c01a7336-2152bfb42d7mr78626995ad.10.1733109689222;
        Sun, 01 Dec 2024 19:21:29 -0800 (PST)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21521986004sm66305725ad.184.2024.12.01.19.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 19:21:28 -0800 (PST)
From: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	wenst@chromium.org,
	hsinyi@chromium.org,
	sean.wang@mediatek.com,
	dianders@google.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [PATCH v4 3/4] arm64: dts: mediatek: Add exton node for DP bridge
Date: Mon,  2 Dec 2024 11:20:34 +0800
Message-Id: <20241202032035.29045-4-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20241202032035.29045-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20241202032035.29045-1-xiazhengqiao@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add exton node for DP bridge to make the display work properly.

Signed-off-by: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
---
 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
index cfcc7909dfe6..e324e3fd347e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -424,6 +424,7 @@
 		ovdd-supply = <&mt6366_vsim2_reg>;
 		pwr18-supply = <&pp1800_dpbrdg_dx>;
 		reset-gpios = <&pio 177 GPIO_ACTIVE_LOW>;
+		extcon = <&usbc_extcon>;
 
 		ports {
 			#address-cells = <1>;
@@ -1656,6 +1657,11 @@
 				try-power-role = "source";
 			};
 		};
+
+		usbc_extcon: extcon0 {
+			compatible = "google,extcon-usbc-cros-ec";
+			google,usb-port-id = <0>;
+		};
 	};
 };
 
-- 
2.17.1



Return-Path: <devicetree+bounces-111408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEEA99E9C8
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 14:27:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 957B11F21E8D
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 12:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C682E1F8F08;
	Tue, 15 Oct 2024 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="zpI6+yis"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 855DB1F12E4
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 12:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728995194; cv=none; b=Iz2sJUtTbYQpr4r4qIoCU5yvQ2KbhPO8jE01u6VRJKcnDWC4tclk5XlAIdJqD/jiIMR3+TgEKEal+4mDAlSuMHQSLpR2qhJQ3pYHWhFJ0URcvn6tUZie4eG7FzyuK6jKqcfVMPyecyCZFwFq1DwD/X5Y/pAcOrNfRp8tBr1HX+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728995194; c=relaxed/simple;
	bh=03Qb5hxKK7rAKMhBjn9jT6mqUqatJTsr8tb5L6OSVI8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=qU4I0dSZ0Gq50C8l43AEwtZ42KOLrwGhggXDXT2Jy6oFhZCMzzk5OF/WetRbL8wRZH6P5S4TNLViD55wH8PsAz3h5dRttb1MnwoWUklUXuhUq6ERiS4HSjS1Oa0N3okBDpsA1UMRbeUiC0aoL/SAxhF6sMntmc9P85unBrN1pQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=zpI6+yis; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2e2ee0a47fdso873420a91.2
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 05:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1728995191; x=1729599991; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XkkT1YK08fvvBnsXdekTj1dlk1F6WdJ88gbC//Uv2Rg=;
        b=zpI6+yisdnnNbqTSacZHVX4xHdp5axZcL55Ekc5ljyliZmwJTBP3TSnwtRZLs6ttxz
         zvrqAcUg7DKg/fQwbx5n1I1uwg4WWLJ5ygojocd2ATJ+jnSYdIluwbeddPBvQh5zhRl4
         Ij+zk4KCbbCJ4/rohVxB6qqg9Mntd1n2irfgHqtMUmVpE9QDjNtRS4gfsfGnuWDrdrRq
         fE8RSWZ1dplg9khtgUU8nib9b1liCvHMO+ep9hAXe9EdkNDasGeDEBLUdYj0C5DCATd9
         5fejKIUsfBjIJucLj4qvBL+5re7MCWMITPLVqKhfzCG0Wy5i36u9nVh6Mmwusl38BGgR
         t4uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728995191; x=1729599991;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XkkT1YK08fvvBnsXdekTj1dlk1F6WdJ88gbC//Uv2Rg=;
        b=Vy8qfuIuYyaqHPmy2HcFvvgiXS+VZqBeGaELk8QCK9n2WAIhKvvacT0RMou/sy1pa+
         AwdnhzUeieUfRiDdyfaxeChgBqvGvbQVTUC/KGkYqzS9iQoS4sfHx7XCfd5ndYfHJrK2
         FfLQ5DPix/++Jt5+JhNxaRkUPOb/PMRvaU3wGkyEPzgRnfsNsUHu0XFrZZBHM/to0FfT
         PmBMbcevcyaBtR0QSGeCKQHC4Qm9jSooyfKBZxqdgpln2s1JgJ/kRvRHDrcy3LRmnJD4
         Ios7zNsAm7B1fuS3RxAgDX6hwL19YlPFk0DQTwz12+BK1hudj9xqKoW2zAgXX9I+7h9a
         nvOw==
X-Gm-Message-State: AOJu0Yz0on+gknDFOVUC4on5RBJd9uCCJ7pPAotcEgJwdKxGEnM539wG
	WJ+ObqK6XRAdVeBW81DAkXb9H1LWQbZKKGJOzuDGAI2gAzq958ktmsAYlPnMNiZS/M1qk2/G2fi
	a
X-Google-Smtp-Source: AGHT+IFvZj2VfZqljCqw3jma49Pp6xcmlucmNJ1sekFJZrx2haRRMxJLdzbrnRlngELlYtE94RuvZw==
X-Received: by 2002:a17:90b:1056:b0:2e2:c423:8e16 with SMTP id 98e67ed59e1d1-2e2f0a2fb66mr7652523a91.1.1728995191585;
        Tue, 15 Oct 2024 05:26:31 -0700 (PDT)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e392e8cdc7sm1592844a91.10.2024.10.15.05.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 05:26:31 -0700 (PDT)
From: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	wenst@chromium.org,
	hsinyi@chromium.org,
	rafal@milecki.pl,
	macpaul.lin@mediatek.com,
	sean.wang@mediatek.com,
	Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [PATCH v1 3/3] arm64: dts: mediatek: Add exton node for DP bridge
Date: Tue, 15 Oct 2024 20:26:08 +0800
Message-Id: <20241015122608.24569-4-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20241015122608.24569-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20241015122608.24569-1-xiazhengqiao@huaqin.corp-partner.google.com>
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
index 682c6ad2574d..943837f20377 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -424,6 +424,7 @@
 		ovdd-supply = <&mt6366_vsim2_reg>;
 		pwr18-supply = <&pp1800_dpbrdg_dx>;
 		reset-gpios = <&pio 177 GPIO_ACTIVE_HIGH>;
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



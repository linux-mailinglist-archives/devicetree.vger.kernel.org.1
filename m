Return-Path: <devicetree+bounces-113481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEA19A5CFB
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 09:28:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6181D2840E2
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 07:28:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA49B1DC753;
	Mon, 21 Oct 2024 07:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="wP0KFTQn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F251D798B
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729495655; cv=none; b=flppruO/A+zcSuupy2zeU8expVz/55EuvXDBEkO4g8xNzoyMVM4MdZw1sHVKhEqKNG8Gi29mO72Zk24HCY6qqmXI8VO7hzjyXkjOu/mkOZdLDTTu75js9yUQ+DocoqcoCN9eCpIIJD1Atrro/LQUsRCH6XmEOqhuIgSrn2ygnp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729495655; c=relaxed/simple;
	bh=tG6YhzlTGIreNbErkabD4IDbbTrsSViWd67RLxSnw0Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=Ox11qnjhhQs0SJfbNqpBgKvjyB1paMqT0SKyebLJP1wV0ye7j2GQoYeHAodHg23Ne+b7OFA47bfFBt8x6CSKQRz2f8yr7OP3A1fPNnyPcXjq3VPrrpZvnb/AnXv9ygMrfQvebzX7l7toSMkcReBBigNkhjNgcAnEimFLx1o4L7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=wP0KFTQn; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-20c78a10eb3so3524325ad.0
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 00:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1729495653; x=1730100453; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iEsUo4lrwpljoR0FPBQuFvw1WkkxvZeqCHqf7QaSpZM=;
        b=wP0KFTQnwAxASehqBIxbQKFBMXmfGgsVH7/ZI3Bj0+7/Kctzx6NPCN04SLglgBABHB
         rzgr72WpkWI4qMU1iqnxKbK7wB4IQS+jdiizNjcTNifAwdIDI7vDmNwKFLxmb1VTSCM4
         LKEyG/YvmlOlAXEL2g5VitYW4/+20jDCSFj/05iIoxHcLg5bWUWLNfc2+lIHXfudrFzC
         Jp3W2R/c7lbwT5hT+5XjeeUh+/vNHGev9EMLX9piYNFdVs/TB5h7I3IFdumy63BT9O5l
         4JZCZ5CsHdEhzG92SUXn995sYPrpBu58d4mDkuPEtSv1g2fqjJ0GSUF2QSkqDPBHLFVa
         2dXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729495653; x=1730100453;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iEsUo4lrwpljoR0FPBQuFvw1WkkxvZeqCHqf7QaSpZM=;
        b=poXdcE3uQFHUEB1Ym0j+Pjkn0dwMHsL9Xl82ojfgm1gNsHGff8YVL+k0ywn/HLUoOS
         qlFujFUoJoabKuxvLHL28Ba4uJhtjRIQaEC23OB4/ZQ1HIFfrHgAl9+ygxwSSLcjQFDj
         AfuNQzecTJJZzhfdOkXwAVTUVWxQJAcOOgp6z1EXjgGfZgOUbvFL+XdxmUfV3nbIgfcq
         z8qI18Hui4dMPJI1JAKhtGznOpYnTuWk2LjWrjQ4eVUUHz6KL3OhhBMeUmWHhlEY1jEi
         y0dl3gJ64Z5yAdW9IowW77yiTocbtxmKVW//Pfhw9nJY/E7LdC6CgPnMpUnUVmG1qEC9
         pp6w==
X-Gm-Message-State: AOJu0YwPiEaojg8vqkkWBAinZqfr8IzUmQ+KF5xtdcRbO3l/nYn8qgB4
	rhglIJA3FKLLBYeKF8hlKWMkpBHkARmmSdH9Lsu3/FtuRmmBhsJf0zJjqE8gb3o=
X-Google-Smtp-Source: AGHT+IHVWdo9DzZe9CvJAnnR5Nm6etKX28vGhiPfuoocslDk2019rofbtIMsNYuZn74vbuM1Sbeinw==
X-Received: by 2002:a17:902:e807:b0:20b:a2b8:1863 with SMTP id d9443c01a7336-20e5a7a3339mr57169335ad.3.1729495652874;
        Mon, 21 Oct 2024 00:27:32 -0700 (PDT)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e7f0db2desm19749595ad.203.2024.10.21.00.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 00:27:32 -0700 (PDT)
From: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	wenst@chromium.org,
	hsinyi@chromium.org,
	sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [PATCH v3 RESEND 1/4] dt-bindings: arm: mediatek: Add MT8186 Chinchou Chromebook
Date: Mon, 21 Oct 2024 15:26:23 +0800
Message-Id: <20241021072626.15102-2-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20241021072626.15102-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20241021072626.15102-1-xiazhengqiao@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add an entry for the MT8186 based Chinchou Chromebook, also known as the
ASUS Chromebook CZ12 Flip (CZ1204F) and CZ12(CZ1204C).

Signed-off-by: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/arm/mediatek.yaml     | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..3efab59b8a73 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -239,6 +239,34 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - description: Google Chinchou (Asus Chromebook CZ1104CM2A/CZ1204CM2A)
+        items:
+          - const: google,chinchou-sku0
+          - const: google,chinchou-sku2
+          - const: google,chinchou-sku4
+          - const: google,chinchou-sku5
+          - const: google,chinchou
+          - const: mediatek,mt8186
+      - description: Google Chinchou (Asus Chromebook CZ1104FM2A/CZ1204FM2A/CZ1104CM2A/CZ1204CM2A)
+        items:
+          - const: google,chinchou-sku1
+          - const: google,chinchou-sku17
+          - const: google,chinchou-sku3
+          - const: google,chinchou-sku6
+          - const: google,chinchou-sku7
+          - const: google,chinchou-sku20
+          - const: google,chinchou-sku22
+          - const: google,chinchou-sku23
+          - const: google,chinchou
+          - const: mediatek,mt8186
+      - description: Google Chinchou360 (Asus Chromebook CZ1104FM2A/CZ1204FM2A Flip)
+        items:
+          - const: google,chinchou-sku16
+          - const: google,chinchou-sku18
+          - const: google,chinchou-sku19
+          - const: google,chinchou-sku21
+          - const: google,chinchou
+          - const: mediatek,mt8186
       - description: Google Magneton (Lenovo IdeaPad Slim 3 Chromebook (14M868))
         items:
           - const: google,steelix-sku393219
-- 
2.17.1



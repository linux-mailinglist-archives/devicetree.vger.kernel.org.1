Return-Path: <devicetree+bounces-83055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8F79270A4
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 09:31:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C738B24AA2
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 07:31:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFED8146A7C;
	Thu,  4 Jul 2024 07:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="R4r5ELeb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023D81A0714
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720078238; cv=none; b=n5OkpEh8nEfcS1rGVKfDEM7Am6AC8Agv/YYOkoOpkD/r3++jIdxbE/u1w0DYPGjC8ou2MnMvGa1gCuQ0mkdLA61Lj04N/WBmkSqB37nVfPvFgwu2t8mTwUL6iD2G1uWAGbOuBBWcY2+A0RGEvdNBOf688rtxXigIf2U9UKvOTuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720078238; c=relaxed/simple;
	bh=6+f1swP1YdwqB1i3dzZOL7IJCaejh55q6JL2/J/Ruyk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=Kku8ERi8fa0izbQJ3PbCcvJLCLcGjVoVUj0Q9ipbj867LBcYHM4iIXQvXABX9C+IF9limFDinedPuXBvWK4sjxvviTxN+EEyjquNFyoFsVIYboLrsvlFBijeDL+JRsnifRYWOu2l94rd14aaNHNGPviT5OPdkh/SZ7TFRLXf1bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=R4r5ELeb; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7021dffc628so220509a34.2
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2024 00:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1720078233; x=1720683033; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Gez+/xg5x89cHTUJX/6pSwjlIxkC+n3eo9Js8x2Grp8=;
        b=R4r5ELebfQ2FNXkLXqX2pTkqRVBPxFAmdCetSMn4nwtFT38apjLSVfe3WJglXr4rXq
         3Tv/mAZJpaUiatLRJLBCtUZOJPr3k1TAY6QU7ObOOtoZggd7EBD9DCCQKhPn03S9eU7F
         Hf+VAN7X8nqxLFZTyrOYgjheRBNASWX+lZL2BrX78/smG/JZtLvv2t7TpM51woisk5vM
         3Y+ngWqMxD6v+XfvQMrlYOBaHJC2rzkA2wfpf/Ev5dmdm84LX/I3SSJdbkEmBhzla4I/
         EwxRRESqDfxf8F8g+O9b7RuK4LcHK8QxRz2pMpFDSQdetSX4xK0Ht6qrleUDP2qNhAzb
         CO0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720078233; x=1720683033;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gez+/xg5x89cHTUJX/6pSwjlIxkC+n3eo9Js8x2Grp8=;
        b=hHOIb37RhEwowVDRyTKLHNhM9ZjB0/G5Z0SGBQkleUyQ5v5qg56dlh+m8Jo5/W3kAb
         uTXpjrQTPNT8oV23Qw19Mh79q54rXkqAo7e3ysaaCJU6+ZLPHdda7uRc4f2tshyrcH6A
         ObF5uzlV41Siyxi229eBMIOwX5H25YDfiA1Ld9590qKEJjdbKsx7alBonj1upvTs/hVM
         oEVCR9E+7XFf8OgXxx/OUai5z0K+XdijoldgqmPuqNpJCyX7G3RYGvkpmm2ai4vjuR1Y
         +lr3dw9sadnctBL0m/x++h6rrLBR8ilf8vVFxixankYYSKGyKdVNJvhWQUS+l2/4Y4Nc
         q9Vg==
X-Forwarded-Encrypted: i=1; AJvYcCUP3ZPa4IosIyvQO2mvE35IvzLPyi3PxmfZOqzwCWsYctwaWYeokDDAcqeY1rbEVeOEG3dSNEnjV/8B15nUQTF36c7XIaRU9T02CA==
X-Gm-Message-State: AOJu0YyjMMy4dnPUYRpW/bZfU6k8HKDMhN1LUrndLXc5UPM4qYoaCi/x
	zWxpchJNAVb01rUO0+gDML+JFomLouQl5dGSNhe72gVKfMkj+ODEBDouyulj7LA=
X-Google-Smtp-Source: AGHT+IE9oc9mef5bJzitlz52gI6K7JpWaoYTJglYjkfbp+OKpC6f75RXlbWHBIi2Dk2L4x950xIz1A==
X-Received: by 2002:a9d:3e02:0:b0:700:d550:5c50 with SMTP id 46e09a7af769-7034a7f79e6mr809555a34.24.1720078233014;
        Thu, 04 Jul 2024 00:30:33 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-72c6a8dbb2fsm7735699a12.31.2024.07.04.00.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jul 2024 00:30:32 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	airlied@gmail.com,
	daniel@ffwll.ch,
	mripard@kernel.org,
	dianders@google.com,
	hsinyi@google.com,
	awarnecke002@hotmail.com,
	quic_jesszhan@quicinc.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v5 4/5] dt-bindings: display: panel: Add compatible for starry-er88577
Date: Thu,  4 Jul 2024 15:29:57 +0800
Message-Id: <20240704072958.27876-5-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240704072958.27876-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240704072958.27876-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The starry-er88577 is a 10.1" WXGA TFT-LCD panel. Hence, we 
add a new compatible with panel specific config.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V5 and V4:
-  1. We are compatible with starry-er88577 panels in the boe-th101mb31ig002
-     driver, so add it to the "boe,th101mb31ig002-28a.yaml".

v4: https://lore.kernel.org/all/20240620115245.31540-2-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V4 and V3:
-  1. Move positions to keep the list sorted.

v3: https://lore.kernel.org/all/20240614145609.25432-2-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V3 and V2:
-  1. Separate the Starry bindings from kingdisplay, and add it to panel-simple-dsi.yaml

v2: https://lore.kernel.org/all/20240601084528.22502-4-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
-  1. Add compatible for Starry er88577 in Kingdisplay kd101ne3 dt-bindings.
---
 .../bindings/display/panel/boe,th101mb31ig002-28a.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,th101mb31ig002-28a.yaml b/Documentation/devicetree/bindings/display/panel/boe,th101mb31ig002-28a.yaml
index 32df26cbfeed..2f251703a121 100644
--- a/Documentation/devicetree/bindings/display/panel/boe,th101mb31ig002-28a.yaml
+++ b/Documentation/devicetree/bindings/display/panel/boe,th101mb31ig002-28a.yaml
@@ -17,6 +17,8 @@ properties:
     enum:
         # BOE TH101MB31IG002-28A 10.1" WXGA TFT LCD panel
       - boe,th101mb31ig002-28a
+        # The Starry-er88577 is a 10.1" WXGA TFT-LCD panel
+      - starry,er88577
 
   reg: true
   backlight: true
-- 
2.17.1



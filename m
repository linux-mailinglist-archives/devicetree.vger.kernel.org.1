Return-Path: <devicetree+bounces-140977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6C8A1CF83
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 02:46:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 585041887F63
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 01:46:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FFC62AD22;
	Mon, 27 Jan 2025 01:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="kSYTkyHf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4104815E8B
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 01:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737942379; cv=none; b=deXkv3vqsv9zRXKWDHBjYsRd0+iEQuKRjWkupX1/QPZuTLeUJ1gtgAHRs+4fYbch9Pq1vfJ+OGK3HSV5/MWLANh15Hh6T7+LN424BcCetV1UI4WiUf24uPIHEVPny5uvJ/l73l5mbk0oV4ej52oO4X9zUn20GcbWv9SrkOUiOOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737942379; c=relaxed/simple;
	bh=39QCV0cOaNDxRNRZMVL237Nv/lUZ8jnSXfAs5L2/H4o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kqVTgw4r+UP82DIQHvKoP9EUpPiDD6IK9xa+aBya/JKJhGkc/4P5W3r2YnGNTdeBUnzHVC/eTMraBbynk6/UTcOvF8e25TUbBLlYzS41iGG9bt04hz+cNnzl6l0/3XYap1c0hjvokCC/2z4aSnF46DUckIFOvXlYU/8pwdjbBxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=kSYTkyHf; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-21619108a6bso64285045ad.3
        for <devicetree@vger.kernel.org>; Sun, 26 Jan 2025 17:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1737942376; x=1738547176; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NA7wKBO87PvXb6QKp4pIB3Osn0PMM68GgUBC7RaoEEo=;
        b=kSYTkyHfeEPXj0mNVIeQQk8HX/ikK1MX7csTQk8hpgdw+NCDEPIMrbzr4QRte3IguU
         JvTGfTtQ7rauWKNYtKRyo0g2lXSNimlSq8mhu3u6HqAYqvDD8cv16yzQvCG2HPIhz+/v
         J0fAH+yw6jcCD9ePJBx1dPH7tyKybpVLubculKDtTgp83jk48pc2Jja2H5ddHs14gppN
         Xejco9usZswiHzWfllmCuVK0G5+lC/MUKn0elHMZo55ioRkyEndKJzfqxljuAOHjkiFA
         jrjjWPlBQgDrgMqgOPjQRtRzJCKzDV+C/qrw9kvh3qHu3leTVEB6A3nJPUW3uWGcmhIN
         ENZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737942376; x=1738547176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NA7wKBO87PvXb6QKp4pIB3Osn0PMM68GgUBC7RaoEEo=;
        b=USmA8RqE7loxcMmJgpuULPT4GoI+5cekaPzmFHTw06hu+2XOtmrzuHZDJEeKvHZNn0
         vcTjWxEbWSc+gN8JqxojhsnPRqFOk7qh6+V4K7loMjvnv6kGPTZHItJsyjyNLLHZ6K4i
         6wFIV9lTYY8YFMDjenh2Gbohbt5KmdGAqNRX0N8jObG8iHHB3/nJr3Hk4q8aCTrkfBGJ
         UZH3W0CADj7bFqAuGBrbJ28QB9Xn6AGRXID5/NoyDoHNAy8bgWFF7/DxLg5AieVz77Zj
         dmgTKbqRxGHbv13VEZkRaen26AMYa8wAIf3QCzsxN11WB/jpSYfjs0fAT3X7p69kjkRU
         lMMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwBeTwcQTK1Kg2k/l/1RFZTp7zmt7H3CvVivWHUVybqgD5ridBFG3B0OrlTRNYhUyVXAA+loKj8C3d@vger.kernel.org
X-Gm-Message-State: AOJu0YwyYUwuf3k7fCHpnxsCdRldSRgnXPUZ4SDSr8pQ536q1ux/zdqR
	9ohBrhSqZODfwnvPMIymOsKC4xZEJ4CQue6x9xf+ZxVRWtZ8GK6IiDHPyfwuiN8=
X-Gm-Gg: ASbGnctaEXi0x67WZHOI43OYkaRGaWVvIPf5IasD8XKSJImKOp2Hwa3LfZI2j/AjATz
	7k04c6K2VCfi7h0TPYkTJdxYSs7U6z1Q6zRN2K1mdtr2h9lCOb2fyH+ONyaOHgd7UwEapmvLlvR
	Mvp2XGCWOin9fvLBM8JeGHD0Taqy2t5Hg0cYQuP8x6Ah3WlPv91h8RubAklf3lLYYQl/tuXJ4xv
	bE6NGmTRvKy0AedYIz+LR+ypwGpyCF3/tqwL6JNC9t3Bemmt7xhK0M6FoNqDFPPtU7EqBICMU6m
	CxI4f7/l/R7mBSXe8LTw0HOkrZUD33VB5pPtKLMaE69dzFRTFTRj
X-Google-Smtp-Source: AGHT+IH0uZF5AODFynHTgUaUBorthCEqjrHNoE1C3l49jyAq57+dY5GGyo/NlsxeAFS2tYr1CuX9GQ==
X-Received: by 2002:a17:902:f78e:b0:20f:aee9:d8b8 with SMTP id d9443c01a7336-21c3550d748mr592180685ad.20.1737942376552;
        Sun, 26 Jan 2025 17:46:16 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21da4141f93sm51344205ad.147.2025.01.26.17.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jan 2025 17:46:16 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v1 1/2] dt-bindings: display: panel: Add compatible for CSOT PNA957QT1-1
Date: Mon, 27 Jan 2025 09:46:04 +0800
Message-Id: <20250127014605.1862287-2-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250127014605.1862287-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250127014605.1862287-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new compatible for the panel CSOT PNA957QT1-1. This panel
uses HX83102 IC, so add the compatible to the hx83102 binding files.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
index c649fb085833..d876269e1fac 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
@@ -18,6 +18,8 @@ properties:
       - enum:
           # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
           - boe,nv110wum-l60
+          # CSOT pna957qt1-1 10.95" WUXGA TFT LCD panel
+          - csot,pna957qt1-1
           # IVO t109nw41 11.0" WUXGA TFT LCD panel
           - ivo,t109nw41
           # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
-- 
2.34.1



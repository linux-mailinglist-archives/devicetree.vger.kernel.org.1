Return-Path: <devicetree+bounces-143617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17144A2A947
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 14:13:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3C3F3A82B0
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:13:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFE312309BC;
	Thu,  6 Feb 2025 13:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="m8wZWj0M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3F522F39D
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 13:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738847599; cv=none; b=bIR+PhkEVgJhRloHDX8pzcLRagW0WbeKzWuG/A0pCUFykwdMuI/tCPJABmtiXzBWQO+ybOaTW9qyJW7wY6bxF/8lvtC4rAt3VVx/uiJJoHquVld35FVnALLuisdOa9p/P57CfExnHfFPYVBD/t5FpaGe+/KKzO6wlkE7d7fhQ8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738847599; c=relaxed/simple;
	bh=jK8NJOHWZm36URhFMWSvMnun3oLcAHypEDPr90IqvEw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=M55OgaTY7GyS77LQN+RAxJzDGKGs7lDtB3igA04fvrRszYl9buWofmOnQMd6IAtDokFd5s+cEieyuSnbUNPErIP1Px1Ihq1StJfSWNvFlo8zNuclrCKFbw533ED3PpTilDKB1Ck+ao5pQQuStHoLKX9tQxtlUtizWlgBv+kXrQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=m8wZWj0M; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2f9da2a7004so1268078a91.0
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 05:13:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1738847597; x=1739452397; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KR6bvb5577L4rReraIvZgFjKc18SS0Qabaw0b2hBG1U=;
        b=m8wZWj0MGc1Yqyjad6/KObv8e3mO1FvdJ0q+xyPn2zjeMUkT9smbgvqHRVoGOpQsZ6
         a7dg8XDc20lHrNDgjst7wff2lZUzb1yzHB0BzCKYi0Z3oEIjMLydFqsAMzayOvzk6AKJ
         CzNy4sh3D2ULOQHOpJXV+nSSM1E2Pr4IaVyu1LGPDBTxrg8aG92zrkF2D/Ub4KdHLMfQ
         CeZs3am5kOdLgCl5LzRFiMq95/DCAncwSUZSJMCw7PTaltS4umsOohYQx8Z3KEhRxCt1
         uAtdCd+4jS40srxzQ6VT81T9g66Yc3wxNJiJXrzMPyLvslJbRYaSLKRRpPR/Sjg5K8b7
         HTmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738847597; x=1739452397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KR6bvb5577L4rReraIvZgFjKc18SS0Qabaw0b2hBG1U=;
        b=fa1fj7ny8oI9Ms92sZZSazVtL75MOI3igHCbUsIP2uyyNusKgUkaHM7YNJarAHlDDR
         fhWJdwHB0TtZYIY1XV2/yWOYOzZnAQKFHd9uW91pYoq8ZajRRcx8c/HTQLIk1Y5PtU1x
         KtOBN2fikqkL9/zTSH8jzf1tpCZflLkudnGT9y5wQgGZkJJDZgw84q2V+RYMac7L+Obo
         zyQCafHrE4nIEqtTpEezyMZVXaV5gi1TJW22WaNM8Bra4DWUo9f1o6+7xhOpyUvmrnvw
         QJqOXPtbypTUFGxi922ixdha81plfRq3J9FX3MwO+W39Acw8ZdRD0UR8/+gOND37Kafo
         asLg==
X-Forwarded-Encrypted: i=1; AJvYcCUXa9mAgDl+SECmU247CySb+0goKzhavv+6KIAX0Tl8EXY1kNQkB9BfFKC2nrXTHKCxuQlRzwu/kDGu@vger.kernel.org
X-Gm-Message-State: AOJu0YymhPCHkvIoIQs7W6RgPB6lbtzbNQC6himOgk9yqZ4GId9f4mUS
	8jcfzck89LvaXxYFRknVL8DrMoh7upK6JIkavhe3qcwkn8i5M36Y0GBMFMSdt28=
X-Gm-Gg: ASbGncvbK2oNFp+jNR5UNplcL/s5BFWsShhkE28zrQbVvhaNNTT8SmCzsH4jQXz08FL
	CNjR6fUm+/KfxD2VysIUQlIjE9HKxMSqQbet5xyMOuc2SjdsAdHAxYXAjOHJYhLonpbEFp/ZWW2
	ZwnSNEq8tZr/6iR5NBkfRzdwbLoUfCYSqkEXyxP/U15bwt5ZtJN0TXAi2HThE3i0w9yKVBdiA1r
	4qLhf9nqknbvr3rqqod1HwYtbPBsOr7nhnxBOZZB2iJh8+tCLaXnUZr72y7fMMbNqzbbH72BQTl
	I1ROa0yRI2Hvn7CdulT60EhG/C6vDZuT63eFTz7udIQhT7D/Lb/TQU+S/QSJtpY=
X-Google-Smtp-Source: AGHT+IEeP4W9/tywc5ydRSYsXCTBvBKkM6gGNs7RhK3amCq8atrSM8kmtYxSMdc0gY5vOMT2Nun1AA==
X-Received: by 2002:a17:90b:394e:b0:2ee:44ec:e524 with SMTP id 98e67ed59e1d1-2f9e0834a1fmr10732218a91.35.1738847596801;
        Thu, 06 Feb 2025 05:13:16 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653afc2sm12237925ad.62.2025.02.06.05.13.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 05:13:16 -0800 (PST)
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
Subject: [PATCH v2 2/3] dt-bindings: display: panel: Add compatible for CSOT PNA957QT1-1
Date: Thu,  6 Feb 2025 21:12:59 +0800
Message-Id: <20250206131300.1295111-3-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250206131300.1295111-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250206131300.1295111-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new compatible for the panel CSOT PNA957QT1-1. This panel uses
HX83102 IC, so add the compatible to the hx83102 binding files.

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



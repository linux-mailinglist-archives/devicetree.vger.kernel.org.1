Return-Path: <devicetree+bounces-49028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFDB874B30
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 10:45:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C186E1C20C01
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 09:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4F4183A12;
	Thu,  7 Mar 2024 09:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="uUanPWAE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BF563131
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 09:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709804696; cv=none; b=OA0R+38aR9x7wIxTNbHCWGZYsMWyyet6rsxrNt56RGTBAL9Z0vf1ZaDAn1hE8mSUMfB20Lx51SRgLWkTRbVxIzCDU50Cg1UDBb4B9VpKZZVLy9yfN9HjxKC6yQPXYeK6FZgJDysPoEudWX2DBwm58UMQhJjEzcKHqMupfJdtS2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709804696; c=relaxed/simple;
	bh=mlNJg7C70jArZPU5qH010Vf/ACiUSBiUEralcFgEVpA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aCjSKmPny9tbVvxoH2/tjgIYkBM6e4nwguEux45VBJH5Q+UAIgTk8w6RAJiqyHlAw9ExiRE/483VT98WedisdDIX3cGllpCuWdVmuuDGHSPkuXuRbhnr/vN77KkX59YLQDQQA0/eQUpaF4vboAP6c1Xli/SW0C9TQ3jsDLhUusQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=uUanPWAE; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-5dbd519bde6so572565a12.1
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 01:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1709804694; x=1710409494; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Oo1HUbKQuJ0voHBjj4WM/4fo0S00UmuP10DfZ9KXDLk=;
        b=uUanPWAEvyIF1jl51Hli4OFJ38QiBZDBa5E97/A/tf7otEiw7G9U0c3lJlt9IAw5FF
         xwrE183SUUs6waZN9mZ9d+p1Xlzz0sKqWKu4RCz4IHxdIe6gETTE9pjERUUKFi3L7PDI
         +New0DNirkl2jGmJaccVBIk+15o24mCtdAHiVKmnhIfTY9XALXk8YQh/8E6no5THdbBv
         5H9LoDnfVIwQ8AqCijtiMkQqBCMsOPW8P4TgkzyVQ63sRxSkeGpvg5V0LJVRqQ+EJ98j
         foFjHbZBCa7fl0XJhvrjPi2tsIzckW0/0Dn9d8vyhaLmHNtf6LvfOw6TJdGFjlydOb16
         N2uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709804694; x=1710409494;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Oo1HUbKQuJ0voHBjj4WM/4fo0S00UmuP10DfZ9KXDLk=;
        b=vqeBh5awqe6a2Bp0YRLqF8fdhhFOjxY7HaiHqmw3s17ItBLRLMEPwk+PdMUCPOPJmA
         /9H/QvGmla7+JwPttN+5cWVY8byMkKlxB9atmUQxJkKi6u9P1/y9tQiTSqdy7wQkOflD
         xe8sAO3sBC5x66bBNvSaQn2qi6vt4OPSsyBApgMyQoMf2Ids5aChGB9hNZBxh8+edNvD
         GIdgnWSF7Zp1F6VoC1n/T+1MoWXSjTZEC9kL52n/hT48hJvU+Wu2cZtd7en0HKWJtdDI
         wpmMw55IXmPwhFE5fdsve/ar7YxCTuX8eJBB7pVhRjv3nipHtt1b5xz6c5ooGA00wyaC
         JnxA==
X-Forwarded-Encrypted: i=1; AJvYcCVitOXNNPJa0sc+MSQBcs4kziVBRUicbu4Ec/xaq2Fvp1q4QIBFjHFiXJ/cWf2e0RYX39Ix6oSb+WS5uR1+99JXexfHJntjAW0tAA==
X-Gm-Message-State: AOJu0YybF+jfmk3IQedYhIKcIvuXrTsxEsqOUt4m7PsfoxK9e3SQQUoN
	SrXVwqXrtp72wiHaksF+5IPfh2rexWhi24GDTIzUfUrV8EDRDvZd+Te6zXKjZSI=
X-Google-Smtp-Source: AGHT+IEL+fybhARE+7Cp+PNzK40b0NktWZ2XX8e9+dzkx1Vftd0Ty9R044Lr8GiLB9eCUGDR+2Ikdw==
X-Received: by 2002:a05:6a20:2447:b0:1a1:7787:d489 with SMTP id t7-20020a056a20244700b001a17787d489mr301736pzc.6.1709804694271;
        Thu, 07 Mar 2024 01:44:54 -0800 (PST)
Received: from xu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id u10-20020a170902e80a00b001dcfc6c3116sm10083353plg.65.2024.03.07.01.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 01:44:53 -0800 (PST)
From: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
Subject: [PATCH] drm/panel-edp: Add several generic edp panels
Date: Thu,  7 Mar 2024 17:44:33 +0800
Message-Id: <20240307094433.3440431-1-xuxinxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the following 2 panels:
1. BOE NT116WHM-N44
2. CMN N116BCA-EA1

Signed-off-by: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-edp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index a0b6f69b916f..e21b4bb2bb3c 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
@@ -1952,6 +1952,7 @@ static const struct edp_panel_entry edp_panels[] = {
 	EDP_PANEL_ENTRY('B', 'O', 'E', 0x0b43, &delay_200_500_e200, "NV140FHM-T09"),
 	EDP_PANEL_ENTRY('B', 'O', 'E', 0x0b56, &delay_200_500_e80, "NT140FHM-N47"),
 	EDP_PANEL_ENTRY('B', 'O', 'E', 0x0c20, &delay_200_500_e80, "NT140FHM-N47"),
+	EDP_PANEL_ENTRY('B', 'O', 'E', 0x0cb6, &delay_200_500_e200, "NT116WHM-N44"),
 
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x1132, &delay_200_500_e80_d50, "N116BGE-EA2"),
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x1138, &innolux_n116bca_ea1.delay, "N116BCA-EA1-RC4"),
@@ -1963,6 +1964,7 @@ static const struct edp_panel_entry edp_panels[] = {
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x1154, &delay_200_500_e80_d50, "N116BCA-EA2"),
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x1157, &delay_200_500_e80_d50, "N116BGE-EA2"),
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x115b, &delay_200_500_e80_d50, "N116BCN-EB1"),
+	EDP_PANEL_ENTRY('C', 'M', 'N', 0x115e, &delay_200_500_e80_d50, "N116BCA-EA1"),
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x1247, &delay_200_500_e80_d50, "N120ACA-EA1"),
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x142b, &delay_200_500_e80_d50, "N140HCA-EAC"),
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x144f, &delay_200_500_e80_d50, "N140HGA-EA1"),
-- 
2.40.1



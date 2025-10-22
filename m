Return-Path: <devicetree+bounces-229831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CB5BFC795
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:23:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 871644F74FB
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E382834DB76;
	Wed, 22 Oct 2025 14:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lT3YQ9Gc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9592834D4EF
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142903; cv=none; b=cx47mT5/MVCtFqTrFup3YzuHWWd3Yv9ioW+HvS4uRxG1MPK7kgQJQ066EZPwmipdC0VrWnmsFhzGXQve238/PQaGNFm4IdZ5vMiXrpAyZ276OMnMkUjR7uZWsroSKV5zsW0thFDguaqAwJiPLruYGC39kwdQrCh1YreOFVsrN4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142903; c=relaxed/simple;
	bh=EkGBXhItwLWxgQ/aIBX1I+SuRG7//x8trI9XTwjIFpA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aHOj34PKAkA9V7SmcISrH/4lQGK2d76mbd2CiMT+hVpwN1J41CyqQdjpncivlrBsi0ZX8Bpbzh558anlZnAon+c5VWs/p7ekpnNKLuImDDl6hA5DVr/Y33CprI//3yxyRVpHPMC/ySPD+aJCmPwRNSfwXutOpe/prV5+qKstwog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lT3YQ9Gc; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-427091cd4fdso3418425f8f.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761142897; x=1761747697; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PboKxjSSvW6h8IWsKUFqt3oWZleCNVGyc+XkVJL1pxE=;
        b=lT3YQ9GcruPN+lVPATeN+AeMLQ9HuT9T3lRtwrQTTtpiAeeEyeDgV11dPEy+lRdIcs
         dB5tdNavAiXbZusN/vPISKlN5VA9I518xHEukkRh0vgyCi8IFuQXi8K+SOlMcFTjBWrh
         TuOUkuige4UxvD7CENUTFhOSd5Pdm/zkgm/PdoVZBp2m9B/6C3I/j/VaUEFuJaP00gpF
         +NN4xmNSBd/c+vnntwWQd7d5ad6s9gz48KKsI0t9b6Ij790/47VBssEdqoXIblxrG36H
         BI/+SsVzrIEsSVg8j61Aqgjd+6oXP6WLSWwW/aRZayFaQ9CTWhjXQtSaa7S5J2EXAXvd
         L7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761142897; x=1761747697;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PboKxjSSvW6h8IWsKUFqt3oWZleCNVGyc+XkVJL1pxE=;
        b=JkNVfq8a0mCm5SlQVT6oEVgXCdyziFZbkGUEFJ8YcEKZTuhaA9P4e2lSxyy0sn7EQn
         17YlCKJFu9iay1ARDygDhYxo2RIGtt7RMrF0EETJJ55EhtADpUNDse+PsnYNBljA+zKX
         BujGB/qXjaw6T9KiSnfGnc5Ir7f2bTBbeONhoU9f6xrfFLPlBEzc5sOAetHhC0xhm8OY
         +A2xUiZm6b/pSDaW0bT4bAae3aDxMTOtBvX3QfOCtsvLSfBd7UYUB6eRgns9qoxjRXXZ
         5cLgh447ihjMAbzsvUQGdr5Juym5qbbgR7myOSbn1mNYo8aMnowZ03IhroaV6uxSPfrM
         qneA==
X-Forwarded-Encrypted: i=1; AJvYcCWr8NqJqw25UWvF0OARBtnSanq7l+9gF+kjRM0fwV785qwrtQQXx5LG1SBFZuzvQtikpw6cxQaHOsrm@vger.kernel.org
X-Gm-Message-State: AOJu0YzoPXZnqnlGzkQRpxh5ymwDeVKHI34bz7PI9d1Bi2NYr6pXdPrd
	vQhRJJl2TEUlXzVjkRVqNovCnZy1B5IrhWtHkrbmCtVdkaNiU1NHGFGF
X-Gm-Gg: ASbGncsldmpKVvZNo7ZmA2DGLkmmgHA9MYVEnWwZpbKe8MSURhbqAt+2yMiMhDcZp17
	yBcg2POCR4lwO0xZ4+htyBJ096a5sz1UuZW6numxRgYOY3VxH/9WWaX7FfzTpiHpcUQBNiJBsoR
	Y7b4lPEPsSUUN3OGagTuNt0JaPovUemOlZIOkkvwM40Tnh6qJjSZb6iSDQAadlVJvo4UQhxX7Uy
	RfEPizAWV2xWQ2LWqDfpbgBY3seA+kz6jEkcYQ67yunmkBr9rpPJ39cn5xQ61xUXhKkoC8K7dKn
	TWRYMEXKeNRi7ywHTbO7Ah29STBl42J0l0D2dtmHL2qDsKnz2kL2ABfGO7Qt1Y7gRU8KxshEtLs
	jVmgS7v0Dqsde4ovgwyvTdIi380qLt+EDyZ/qOsKzc4dMD5Lr9kPbNcRGu08ukGbCDNei8vbRN1
	VHqA==
X-Google-Smtp-Source: AGHT+IEQ89eeh/r2+ipRz7waSS8oqSfLxP7wC0ZsoklWA5VZX65aruo6BpxwArM9GCWrpFvdCs8Ryw==
X-Received: by 2002:a05:6000:2308:b0:428:55c3:cea8 with SMTP id ffacd0b85a97d-42855c3d365mr1542726f8f.50.1761142897063;
        Wed, 22 Oct 2025 07:21:37 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3d4csm24803518f8f.19.2025.10.22.07.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 07:21:36 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: [PATCH v5 08/23] staging: media: tegra-video: csi: move CSI helpers to header
Date: Wed, 22 Oct 2025 17:20:36 +0300
Message-ID: <20251022142051.70400-9-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251022142051.70400-1-clamor95@gmail.com>
References: <20251022142051.70400-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move CSI helpers into the header for easier access from SoC-specific video
driver parts.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/staging/media/tegra-video/csi.c | 11 -----------
 drivers/staging/media/tegra-video/csi.h | 10 ++++++++++
 2 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/tegra-video/csi.c b/drivers/staging/media/tegra-video/csi.c
index 604185c00a1a..74c92db1032f 100644
--- a/drivers/staging/media/tegra-video/csi.c
+++ b/drivers/staging/media/tegra-video/csi.c
@@ -20,17 +20,6 @@
 
 #define MHZ			1000000
 
-static inline struct tegra_csi *
-host1x_client_to_csi(struct host1x_client *client)
-{
-	return container_of(client, struct tegra_csi, client);
-}
-
-static inline struct tegra_csi_channel *to_csi_chan(struct v4l2_subdev *subdev)
-{
-	return container_of(subdev, struct tegra_csi_channel, subdev);
-}
-
 /*
  * CSI is a separate subdevice which has 6 source pads to generate
  * test pattern. CSI subdevice pad ops are used only for TPG and
diff --git a/drivers/staging/media/tegra-video/csi.h b/drivers/staging/media/tegra-video/csi.h
index 3e6e5ee1bb1e..3ed2dbc73ce9 100644
--- a/drivers/staging/media/tegra-video/csi.h
+++ b/drivers/staging/media/tegra-video/csi.h
@@ -151,6 +151,16 @@ struct tegra_csi {
 	struct list_head csi_chans;
 };
 
+static inline struct tegra_csi *host1x_client_to_csi(struct host1x_client *client)
+{
+	return container_of(client, struct tegra_csi, client);
+}
+
+static inline struct tegra_csi_channel *to_csi_chan(struct v4l2_subdev *subdev)
+{
+	return container_of(subdev, struct tegra_csi_channel, subdev);
+}
+
 void tegra_csi_error_recover(struct v4l2_subdev *subdev);
 void tegra_csi_calc_settle_time(struct tegra_csi_channel *csi_chan,
 				u8 csi_port_num,
-- 
2.48.1



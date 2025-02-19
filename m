Return-Path: <devicetree+bounces-148284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 197FCA3B88F
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 10:25:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCDC517D75F
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 09:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8744E1DF27F;
	Wed, 19 Feb 2025 09:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hNti0nv6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958501A840D
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 09:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739956519; cv=none; b=ORdsw5Wd/i7TO4PW30nW344YM8IQuBEG2BHMmipjIuO9RrEPIzRTuXZU7vQAAQVG28u5wC3tQNN/HbK6LWapwmYMs0rDjgX65+379PDH7HMU/SGBEr/HBFdZC/dwKhFDXJ0A6dfLf3dNqQnMybTl/HKArnF1Cq390mUi03sJS/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739956519; c=relaxed/simple;
	bh=H8M+KioVJ28c5tqEeq6oBUoHWGJRZJgMO8fattyEah0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MjXlq23MhUcdEu5EtCw2T57sZdrYqu7YD2BfUiJvp5D/urUerXkeTpKUMTF19MAr/98xp4CAtwigPpVHlpy2EkBglS8kV6FVNHOt+pwe4VCaCZMW2vI8Am9DE3eupjnWfJvCzI3/QrIjui36eufqA/Q/2S+Gtb8jyKV4GxbeaNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hNti0nv6; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4399a1eada3so6655305e9.2
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 01:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739956516; x=1740561316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vKcwOmcPKfivUFGu30SDPaYB1K0Ttk6s6NwpxGL2HUg=;
        b=hNti0nv6rtc/95pjS/R/gQ1FbAyoU67Srw8Hg8bmWFqnbJbBJezbyhB+7qA2NIcT6L
         s/o4nVlLaUXU01E6AyKFha1FYvvn+sB+VYssUFhESqx08kFi9jdHI0ncbegYe9Ca1VYn
         W+xOkrIkzzmH9p7xjYeqYKpRXvOY6kv0A0oGwxbU3uTj/fO1XmZ39tYckQ0sCNsqXXQr
         iy6uWSJxeiqQO/JYDeWHiHbmkB5xtYyN8NG0Ym74EoXOp2Pp2tJyCTEls7tuvPoXRJm4
         bPDu+pEAyBw2QabMhaNSyNB8M/Ne0aKgjpMDuLE83dgsilM/dE/J6veNz/zy853/QYgw
         eYZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739956516; x=1740561316;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vKcwOmcPKfivUFGu30SDPaYB1K0Ttk6s6NwpxGL2HUg=;
        b=WuZjcT043PaMlgR2IRzemdJ6ivkE/haAOuJ/YQ09bFLn2c3OmSaBteSVyHPlnmmA4U
         RJ/6DghJkybjGo24IKk/I8RVDI9iuaHkJSHg9psHWbyDBYuKCS+ds62vEyFawpnH44ma
         kCDqB1ImzUWjlaBuPwT254WqxghgKtr9zmYu3m+1T26FyRfPWnz+LkAOU4N+BA/NHFud
         czoclC9G5AsmSFDNFTLF5xqq+NwfPdKecnMYs7U6EaFbCE2tRzl+mwIJzPh7cUJK7aDq
         xZaSSsJOB6Zx7VJpcvKOjVn9FxnSkqA26a07Nk+SmoqiesF4AiunTml6cSODG1k5sj+j
         TPNQ==
X-Forwarded-Encrypted: i=1; AJvYcCULNsvRYN9U4iWxVOZu42cAQn9ssLwXSODNyRQt/tlYuf/AzO3L4FaE5QilQnhDY3Pe+rlKVi+CSMP+@vger.kernel.org
X-Gm-Message-State: AOJu0YyvEXzwUg2BYsP5Zj4Yo45k10hMNwUNh9P9wQ9Kew9SRTD6WNRt
	+w0TqoNuAxZaOzUR8Kg/LbFQZdBs1peOvV5n+7kkDYxsEmdy30UrKH+gI6q94oQ=
X-Gm-Gg: ASbGnctbMsNrqwimzEcCRLpfF59n8ke9SGBHefHKuYMZLzrjLcnh/VLa9VKkzb6xLfZ
	mv4mA4iOaLRjxWFeo9Nl0sziUN5J/d7kAo33UOSN/Chy1fee1IUIIspnnbjolPDNowSpc4mG3Nj
	+pizAmnMCYVq65XKW8dQPTCRe5KIn/vasLlc6ReGEE+V56kfiURhdL/GFZLE8mrsGC5lT4QT/pd
	nhhNOTYJQyTacOEdBwz6JsMddpf/ehpNraQAwVWYE0LXPj8fI4gupN9FduPy17o2ILVEafzbduL
	D4NjWBm0NEdiGSrZeNb+0GuL+skxi2Oyxg==
X-Google-Smtp-Source: AGHT+IETOPciWX74+ZE9Bl6l1lcO3l216e9P8MiGUAdRNpHGDW1StBCSDR5iTiLz9/q2G0qWR+sSbw==
X-Received: by 2002:a05:6000:1842:b0:38f:2856:7d9a with SMTP id ffacd0b85a97d-38f58782b96mr2427856f8f.3.1739956515874;
        Wed, 19 Feb 2025 01:15:15 -0800 (PST)
Received: from loic-ThinkPad-T470p.. ([2a01:e0a:82c:5f0:ad62:b2f0:914c:91ae])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43987088ecbsm75404005e9.31.2025.02.19.01.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 01:15:15 -0800 (PST)
From: Loic Poulain <loic.poulain@linaro.org>
To: marcel@holtmann.org,
	neeraj.sanjaykale@nxp.com,
	robh@kernel.org,
	krzk+dt@kernel.org
Cc: linux-bluetooth@vger.kernel.org,
	devicetree@vger.kernel.org,
	amitkumar.karwar@nxp.com,
	Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH v2 1/2] bluetooth: btnxpuart: Support for controller wakeup gpio config
Date: Wed, 19 Feb 2025 10:15:11 +0100
Message-Id: <20250219091512.290231-1-loic.poulain@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When using the out-of-band WAKE_IN and WAKE_OUT pins, we have to tell
the firmware which pins to use (from controller point of view). This
allows to report remote wakeup support when WAKE_OUT(c2h) is configured.

Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
---
 v2: - Move pin properties read in ps_setup
     - Display warning in case of wakein prop without related gpio

 drivers/bluetooth/btnxpuart.c | 32 ++++++++++++++++++++++++++++----
 1 file changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/bluetooth/btnxpuart.c b/drivers/bluetooth/btnxpuart.c
index aa5ec1d444a9..4f2f429c9800 100644
--- a/drivers/bluetooth/btnxpuart.c
+++ b/drivers/bluetooth/btnxpuart.c
@@ -447,8 +447,14 @@ static int ps_setup(struct hci_dev *hdev)
 		return PTR_ERR(psdata->h2c_ps_gpio);
 	}
 
-	if (!psdata->h2c_ps_gpio)
+	if (device_property_read_u8(&serdev->dev, "nxp,wakein-pin", &psdata->h2c_wakeup_gpio)) {
+		psdata->h2c_wakeup_gpio = 0xff; /* 0xff: use default pin/gpio */
+	} else if (!psdata->h2c_ps_gpio) {
+		bt_dev_warn(hdev, "nxp,wakein-pin property without device-wakeup GPIO");
 		psdata->h2c_wakeup_gpio = 0xff;
+	}
+
+	device_property_read_u8(&serdev->dev, "nxp,wakeout-pin", &psdata->c2h_wakeup_gpio);
 
 	psdata->hdev = hdev;
 	INIT_WORK(&psdata->work, ps_work_func);
@@ -540,9 +546,11 @@ static int send_wakeup_method_cmd(struct hci_dev *hdev, void *data)
 
 	pcmd.c2h_wakeupmode = psdata->c2h_wakeupmode;
 	pcmd.c2h_wakeup_gpio = psdata->c2h_wakeup_gpio;
+	pcmd.h2c_wakeup_gpio = 0xff;
 	switch (psdata->h2c_wakeupmode) {
 	case WAKEUP_METHOD_GPIO:
 		pcmd.h2c_wakeupmode = BT_CTRL_WAKEUP_METHOD_GPIO;
+		pcmd.h2c_wakeup_gpio = psdata->h2c_wakeup_gpio;
 		break;
 	case WAKEUP_METHOD_DTR:
 		pcmd.h2c_wakeupmode = BT_CTRL_WAKEUP_METHOD_DSR;
@@ -552,7 +560,6 @@ static int send_wakeup_method_cmd(struct hci_dev *hdev, void *data)
 		pcmd.h2c_wakeupmode = BT_CTRL_WAKEUP_METHOD_BREAK;
 		break;
 	}
-	pcmd.h2c_wakeup_gpio = 0xff;
 
 	skb = nxp_drv_send_cmd(hdev, HCI_NXP_WAKEUP_METHOD, sizeof(pcmd), &pcmd);
 	if (IS_ERR(skb)) {
@@ -586,8 +593,13 @@ static void ps_init(struct hci_dev *hdev)
 	usleep_range(5000, 10000);
 
 	psdata->ps_state = PS_STATE_AWAKE;
-	psdata->c2h_wakeupmode = BT_HOST_WAKEUP_METHOD_NONE;
-	psdata->c2h_wakeup_gpio = 0xff;
+
+	if (psdata->c2h_wakeup_gpio) {
+		psdata->c2h_wakeupmode = BT_HOST_WAKEUP_METHOD_GPIO;
+	} else {
+		psdata->c2h_wakeupmode = BT_HOST_WAKEUP_METHOD_NONE;
+		psdata->c2h_wakeup_gpio = 0xff;
+	}
 
 	psdata->cur_h2c_wakeupmode = WAKEUP_METHOD_INVALID;
 	if (psdata->h2c_ps_gpio)
@@ -1266,6 +1278,17 @@ static int nxp_shutdown(struct hci_dev *hdev)
 	return 0;
 }
 
+static bool nxp_wakeup(struct hci_dev *hdev)
+{
+	struct btnxpuart_dev *nxpdev = hci_get_drvdata(hdev);
+	struct ps_data *psdata = &nxpdev->psdata;
+
+	if (psdata->c2h_wakeupmode != BT_HOST_WAKEUP_METHOD_NONE)
+		return true;
+
+	return false;
+}
+
 static int btnxpuart_queue_skb(struct hci_dev *hdev, struct sk_buff *skb)
 {
 	struct btnxpuart_dev *nxpdev = hci_get_drvdata(hdev);
@@ -1546,6 +1569,7 @@ static int nxp_serdev_probe(struct serdev_device *serdev)
 	hdev->send  = nxp_enqueue;
 	hdev->hw_error = nxp_hw_err;
 	hdev->shutdown = nxp_shutdown;
+	hdev->wakeup = nxp_wakeup;
 	SET_HCIDEV_DEV(hdev, &serdev->dev);
 
 	if (hci_register_dev(hdev) < 0) {
-- 
2.34.1



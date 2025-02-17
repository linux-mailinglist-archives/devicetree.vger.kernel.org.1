Return-Path: <devicetree+bounces-147434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD733A38436
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 14:14:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A703F189618A
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 13:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74F7B21C16A;
	Mon, 17 Feb 2025 13:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yAqVoynA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ED9821B1B9
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 13:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739797852; cv=none; b=egP+fie/immtJ8vsSjcgbYED/J7SG57uwMYbaGOedQrHQh2M84ZIlPbKrhAgKKXoqb9mvTv2WToNMtGdphNskAgWD2Ogv4BbDM1GOKRgLZ7HFZS5GjSKZ0AV9pL93bZhCgOSWuH5yE1AbTbTpYZQsbbA5wKftkT3Ez2t7tv8JKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739797852; c=relaxed/simple;
	bh=lDSLWAKy5zVwxaRI3b4gArEF1npqKdDWOnLwOLH996Q=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ZzfnuTD2YOcxdqCNEV//IxM5zCFB7YcTZ0nxJYJAWxB6dTanzKUiR0FTGQYQmnR02JXqM5syQNdC5QM2JZRLcQJ1g7yk21nYAjOafyRM6VVqSpTTSWhtGYSmmED67Rj2QKQ1MS09xOI6bi5LlgB4fsO18ocjg5tKhJPUqBwzxXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yAqVoynA; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4398e839cd4so1188935e9.0
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 05:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739797849; x=1740402649; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bYncmRmaNaCf5wVabkduYC5FODT4da0WmrLiept0GSs=;
        b=yAqVoynAr90tcy4hjgAFtCUhriB8JVUjoH5dlaT9yhAR/hCv8YseRLoUKbq7pbxlKD
         7Bws7QT7y7ulpfE7eAGRffiyM8T3TM17MfEzhlDpm2QHyuwRlnmKAaHjE83QlynHRK1E
         QKRaaCfzZ1gEUrtPX1BWq+gqdFkHwQV61kI0196KdFRvU3EQG1yUnwamUAC43kRg0ux3
         HEoo2fpfz9VgYTwFSyk7dJT4sgaLqyc3K6WlrG/ovKJWwhwrygi3H7+D3mHxo8J/Pxpe
         aj1VR+EtBQsPXwPmOukM0TAb7zRw6T11DdbKHntRS9GxGn9jMoM0RqPmyIs0rQi8oekD
         8ItQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739797849; x=1740402649;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bYncmRmaNaCf5wVabkduYC5FODT4da0WmrLiept0GSs=;
        b=WfZYB47AXghdb7GOYvBmfEW+v/D82/ZoFpAW1yabk5FcZHntiyoOCVUshHBprIbBqO
         R8GBCFLeYXJNuIbqnuQI7sq/5xi3HZ7G0Mw0yJo85t4mfOWMJEipPh8YLgLS6uC0bKA+
         Zu1q+RF6W9vfaEgeRlOINl+iNfWVsvGmOrplWveA6BXHyEwFH7Cjpt1p26/2+c1E6Sac
         UDkWMyXo6JLgWSOo+MHqFWUZvNP32LrsFxcu7qG4Ljci3LS4jmnzDHLBZijZ2QiYndhh
         3HIhjFAHdYfjQ2OX3yxvlyktYqyflcJQ97jR34eLSQw9C3Sbvt98NlQieBbZEAfDT/AN
         jZAA==
X-Forwarded-Encrypted: i=1; AJvYcCWs+c5IXKaA5jXjwd8BcVUGEpzlQz9W9idiRP5vPyZxD0AatpOTo5HACDay/ItBL9BRxiMHqU/pIVk0@vger.kernel.org
X-Gm-Message-State: AOJu0YwJQh0Pm7NDA6xekUJh0RVryk+/cYkYMRdOwGeTirNZHMiCmqoT
	FvQaWT+965ossrGi7mMRO3bUs1497o3BGmQv4kyt84KUK23f/aEbqFEfPmsab+M=
X-Gm-Gg: ASbGncv+/xOY4xZwBJ8yT7HRsSAeYe083RmkMcQgBLCCgO1/WuFdUcTOR8RPhUT/pqZ
	NPyx8csknNJ6KRScR/rXEYko43sQCEhX8yn48SjRGM/rnvbQ47VtWQjYNrV1Jgo7RLvnYoTseZS
	s6yDnSGTFSHPGwunteBu6/2BP0i3bXm8z+7G+ZrCtH0CA4z6MnfXSrYWTSNAbFL0Ht5oJEhSVLM
	qnTbcNd1QCeGTE9g/h5uhdX/5y4HSHwzdj5w3hKGxpA/B1UVlb7ll3aJJbSB9D54iEbqkYhj8/w
	X0ZADHddkRcrmL1+OQTKZ7yrO7+V7lAK1A==
X-Google-Smtp-Source: AGHT+IFxGLPejkLm/Ee75L3ZBZEK7rAm12A2cDmzH6F0gcxZ6/ES/ueYG6ZKRwfFu3c+6K9OlLEttQ==
X-Received: by 2002:a05:6000:154b:b0:38d:a695:6daf with SMTP id ffacd0b85a97d-38f33c20c39mr10292031f8f.19.1739797848840;
        Mon, 17 Feb 2025 05:10:48 -0800 (PST)
Received: from loic-ThinkPad-T470p.. ([2a01:e0a:82c:5f0:ad62:b2f0:914c:91ae])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258f5fb6sm12043763f8f.44.2025.02.17.05.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 05:10:48 -0800 (PST)
From: Loic Poulain <loic.poulain@linaro.org>
To: amitkumar.karwar@nxp.com,
	marcel@holtmann.org,
	robh@kernel.org,
	krzk+dt@kernel.org
Cc: neeraj.sanjaykale@nxp.com,
	linux-bluetooth@vger.kernel.org,
	devicetree@vger.kernel.org,
	Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH 1/2] bluetooth: btnxpuart: Support for controller wakeup gpio config
Date: Mon, 17 Feb 2025 14:10:45 +0100
Message-Id: <20250217131046.21006-1-loic.poulain@linaro.org>
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
 drivers/bluetooth/btnxpuart.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/bluetooth/btnxpuart.c b/drivers/bluetooth/btnxpuart.c
index aa5ec1d444a9..6fbb8daf6f05 100644
--- a/drivers/bluetooth/btnxpuart.c
+++ b/drivers/bluetooth/btnxpuart.c
@@ -540,9 +540,11 @@ static int send_wakeup_method_cmd(struct hci_dev *hdev, void *data)
 
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
@@ -552,7 +554,6 @@ static int send_wakeup_method_cmd(struct hci_dev *hdev, void *data)
 		pcmd.h2c_wakeupmode = BT_CTRL_WAKEUP_METHOD_BREAK;
 		break;
 	}
-	pcmd.h2c_wakeup_gpio = 0xff;
 
 	skb = nxp_drv_send_cmd(hdev, HCI_NXP_WAKEUP_METHOD, sizeof(pcmd), &pcmd);
 	if (IS_ERR(skb)) {
@@ -616,6 +617,13 @@ static void ps_init(struct hci_dev *hdev)
 		break;
 	}
 
+	if (!device_property_read_u8(&nxpdev->serdev->dev, "nxp,wakein-pin",
+				     &psdata->h2c_wakeup_gpio))
+		psdata->h2c_wakeupmode = WAKEUP_METHOD_GPIO;
+	if (!device_property_read_u8(&nxpdev->serdev->dev, "nxp,wakeout-pin",
+				     &psdata->c2h_wakeup_gpio))
+		psdata->c2h_wakeupmode = BT_HOST_WAKEUP_METHOD_GPIO;
+
 	psdata->cur_psmode = PS_MODE_DISABLE;
 	psdata->target_ps_mode = DEFAULT_PS_MODE;
 
@@ -1266,6 +1274,17 @@ static int nxp_shutdown(struct hci_dev *hdev)
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
@@ -1546,6 +1565,7 @@ static int nxp_serdev_probe(struct serdev_device *serdev)
 	hdev->send  = nxp_enqueue;
 	hdev->hw_error = nxp_hw_err;
 	hdev->shutdown = nxp_shutdown;
+	hdev->wakeup = nxp_wakeup;
 	SET_HCIDEV_DEV(hdev, &serdev->dev);
 
 	if (hci_register_dev(hdev) < 0) {
-- 
2.34.1



Return-Path: <devicetree+bounces-74867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A41BC904D77
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 10:03:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 255851F26318
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 08:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDF5A16D9B6;
	Wed, 12 Jun 2024 08:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="IP0n2msn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE5316D336
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 08:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718179344; cv=none; b=pqDa9doztjacf4VCh3Q2D32qtE2CeYd7Akyu+I7+mcfJMKhpQnp72XlRPyXHRCbFoTarm+lnTtHIlIKKIqae7M3OvPIflfqJw+uH4zFG7wiMN0Y6FWBhs3ysS8bldX//jB1UuVNI78ZR3ClPKBsSqdZ2PKi7y5k1MefKZ7YX0Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718179344; c=relaxed/simple;
	bh=W+e6GzcGPpmKnfH/4lMgnkYBO9jQbYopGjcoMVmsm/o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UbTdV1ph3tMb85HCUh3LZsdnuVFrbafYbFIeN5JgYDAekYCRyKVQjT5qiRIt1/W2xO+C2fH0GkJxBue+/E8AZuHsjEpAJCDZETPtMbsWt99eqRmcNUOzE+qonurrj4nhFzuCYCvi/c5LwJZmB/PXMz1i+qffh4UErqesCeaIDKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=IP0n2msn; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52bbdb15dd5so2294645e87.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 01:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1718179340; x=1718784140; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ibUc+zwzJLvbl/Wmj0pe2SpxSlINttj4gVe75zpWZPo=;
        b=IP0n2msnQb8vkTxJnWkRKB3Q+0/1Kmfsm/tUzDE3Srv6qCIkqDHUrP0oyXf2qdO3KA
         QT3y3wycFgwQIUgozlrJ3LnMb8tcOTwGXiaVLvCzygnwCbEvrrV7HUPh/Mvu/qWMYcsV
         vJlqehWI+la2i6cKLkeFwqMb/Y2//4VVZWJTEl+DUTvo0n1Hc6mMFWqbP5Y+iC4rOxo5
         QZHczZUtrUYZFl17H+ZE0wV+C9ftAxfYHMrL9O3QuHWfrUytiEUFfcHVNN6UztGaZzoG
         CqXDLAPTYAHshtNiTcSb/NZeY4ngZH5t8cfGNiryqeYzsqIoMoJDqO4g/r8X0S9NCXrj
         +1jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718179340; x=1718784140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ibUc+zwzJLvbl/Wmj0pe2SpxSlINttj4gVe75zpWZPo=;
        b=OAdS50jp6DybkEbyAUMJkWuVIWh7iFPfspUznwhhYVl1ZGnIRWgpiWbtiZPjv2UV4u
         DGLVHPeBOPnOsVos9pPgiMwmYsQ6G31ndzVDuTU1PM3VqQXe85nRWATKXSoeDShOZqA1
         m6fCzm7LQs9FxH467IL+Ka66RIUIGlrmaUt8DN5RcsdmI5hA1sTTOL7FVU6/zHTw/f3A
         /5YORZZuSEAzxdB2ZQ6WDAA8nNUhP2pjBcQhbCwomUrsT4ocV/cIqeiVo5lYalkjVYme
         mCqP4d1V1xmP+ae9PONyDBwiUKXOHqclao0Ae35LF4Wqy0www26iocj4XFkZI5IHIwpQ
         Y+TA==
X-Forwarded-Encrypted: i=1; AJvYcCWyMeYHm2fdjoeTM3znsbeaYfk/w+WZ1qfWmwo2jX21nSGfJmYWwwsS6sUTaCz3NsyBO1VwVKyh5jNPh0b4A6SllTgNXC/w2+hOJw==
X-Gm-Message-State: AOJu0Yxm+6NSqfTEhvG7bDo4NhYesWcWithgpexF4UV1yN0kXSsymcKx
	q52QyeUYANB70npJPl4KduAjj360z2Ko3ftN8Jn/6KJ1Q/pX1YVwL4fYiIPk/xM=
X-Google-Smtp-Source: AGHT+IEZO0Ryu2SN1F0auWS4jC+K9mTuzpwX5ynw1tvj4TWxSVveKrOVJOe+PFGEMMWDSZwmTq+PVw==
X-Received: by 2002:a05:6512:110e:b0:52c:9252:f822 with SMTP id 2adb3069b0e04-52c9a3fd6e8mr697924e87.53.1718179339955;
        Wed, 12 Jun 2024 01:02:19 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:8d3:3800:a172:4e8b:453e:2f03])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35f24c7a9c8sm7452585f8f.78.2024.06.12.01.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 01:02:18 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-bluetooth@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Amit Pundir <amit.pundir@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Caleb Connolly <caleb.connolly@linaro.org>
Subject: [PATCH v9 2/2] Bluetooth: qca: use the power sequencer for QCA6390
Date: Wed, 12 Jun 2024 10:01:50 +0200
Message-ID: <20240612080150.18375-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240612080150.18375-1-brgl@bgdev.pl>
References: <20240612080150.18375-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Use the pwrseq subsystem's consumer API to run the power-up sequence for
the Bluetooth module of the QCA6390 package.

Tested-by: Amit Pundir <amit.pundir@linaro.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD, SM8650-QRD & SM8650-HDK
Tested-by: Caleb Connolly <caleb.connolly@linaro.org> # OnePlus 8T
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/bluetooth/hci_qca.c | 74 +++++++++++++++++++++++++++++--------
 1 file changed, 59 insertions(+), 15 deletions(-)

diff --git a/drivers/bluetooth/hci_qca.c b/drivers/bluetooth/hci_qca.c
index 2f47267508d5..2b31f3dc33a9 100644
--- a/drivers/bluetooth/hci_qca.c
+++ b/drivers/bluetooth/hci_qca.c
@@ -28,6 +28,7 @@
 #include <linux/of.h>
 #include <linux/acpi.h>
 #include <linux/platform_device.h>
+#include <linux/pwrseq/consumer.h>
 #include <linux/regulator/consumer.h>
 #include <linux/serdev.h>
 #include <linux/mutex.h>
@@ -214,6 +215,7 @@ struct qca_power {
 	struct regulator_bulk_data *vreg_bulk;
 	int num_vregs;
 	bool vregs_on;
+	struct pwrseq_desc *pwrseq;
 };
 
 struct qca_serdev {
@@ -1684,6 +1686,27 @@ static bool qca_wakeup(struct hci_dev *hdev)
 	return wakeup;
 }
 
+static int qca_port_reopen(struct hci_uart *hu)
+{
+	int ret;
+
+	/* Now the device is in ready state to communicate with host.
+	 * To sync host with device we need to reopen port.
+	 * Without this, we will have RTS and CTS synchronization
+	 * issues.
+	 */
+	serdev_device_close(hu->serdev);
+	ret = serdev_device_open(hu->serdev);
+	if (ret) {
+		bt_dev_err(hu->hdev, "failed to open port");
+		return ret;
+	}
+
+	hci_uart_set_flow_control(hu, false);
+
+	return 0;
+}
+
 static int qca_regulator_init(struct hci_uart *hu)
 {
 	enum qca_btsoc_type soc_type = qca_soc_type(hu);
@@ -1752,21 +1775,7 @@ static int qca_regulator_init(struct hci_uart *hu)
 		break;
 	}
 
-	/* Now the device is in ready state to communicate with host.
-	 * To sync host with device we need to reopen port.
-	 * Without this, we will have RTS and CTS synchronization
-	 * issues.
-	 */
-	serdev_device_close(hu->serdev);
-	ret = serdev_device_open(hu->serdev);
-	if (ret) {
-		bt_dev_err(hu->hdev, "failed to open port");
-		return ret;
-	}
-
-	hci_uart_set_flow_control(hu, false);
-
-	return 0;
+	return qca_port_reopen(hu);
 }
 
 static int qca_power_on(struct hci_dev *hdev)
@@ -1794,6 +1803,17 @@ static int qca_power_on(struct hci_dev *hdev)
 		ret = qca_regulator_init(hu);
 		break;
 
+	case QCA_QCA6390:
+		qcadev = serdev_device_get_drvdata(hu->serdev);
+		ret = pwrseq_power_on(qcadev->bt_power->pwrseq);
+		if (ret)
+			return ret;
+
+		ret = qca_port_reopen(hu);
+		if (ret)
+			return ret;
+		break;
+
 	default:
 		qcadev = serdev_device_get_drvdata(hu->serdev);
 		if (qcadev->bt_en) {
@@ -2168,6 +2188,10 @@ static void qca_power_shutdown(struct hci_uart *hu)
 		}
 		break;
 
+	case QCA_QCA6390:
+		pwrseq_power_off(qcadev->bt_power->pwrseq);
+		break;
+
 	default:
 		gpiod_set_value_cansleep(qcadev->bt_en, 0);
 	}
@@ -2309,12 +2333,25 @@ static int qca_serdev_probe(struct serdev_device *serdev)
 	case QCA_WCN6750:
 	case QCA_WCN6855:
 	case QCA_WCN7850:
+	case QCA_QCA6390:
 		qcadev->bt_power = devm_kzalloc(&serdev->dev,
 						sizeof(struct qca_power),
 						GFP_KERNEL);
 		if (!qcadev->bt_power)
 			return -ENOMEM;
+		break;
+	default:
+		break;
+	}
 
+	switch (qcadev->btsoc_type) {
+	case QCA_WCN3988:
+	case QCA_WCN3990:
+	case QCA_WCN3991:
+	case QCA_WCN3998:
+	case QCA_WCN6750:
+	case QCA_WCN6855:
+	case QCA_WCN7850:
 		qcadev->bt_power->dev = &serdev->dev;
 		err = qca_init_regulators(qcadev->bt_power, data->vregs,
 					  data->num_vregs);
@@ -2360,6 +2397,13 @@ static int qca_serdev_probe(struct serdev_device *serdev)
 		}
 		break;
 
+	case QCA_QCA6390:
+		qcadev->bt_power->pwrseq = devm_pwrseq_get(&serdev->dev,
+							   "bluetooth");
+		if (IS_ERR(qcadev->bt_power->pwrseq))
+			return PTR_ERR(qcadev->bt_power->pwrseq);
+		fallthrough;
+
 	default:
 		qcadev->bt_en = devm_gpiod_get_optional(&serdev->dev, "enable",
 					       GPIOD_OUT_LOW);
-- 
2.40.1



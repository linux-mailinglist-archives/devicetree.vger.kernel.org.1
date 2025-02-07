Return-Path: <devicetree+bounces-144113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A56BFA2CE46
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:42:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E119188F429
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 363681CDA2E;
	Fri,  7 Feb 2025 20:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JaGm9Krs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4921BC07B
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738960893; cv=none; b=aBNISvzdQW/DQFBugG0yZX734O09sDhVqmZsEgpxljUHxOEeUz4vzA3nLgPb3P6sOYBkYdvG/vVtykx5L3fqjr41fNJkwdK/gR5hw8+HnsNoKw2YM0IWZzisQFmbh+vlKN6/ntTAJzcnBgDXmuHPWagV63HC/3FqFuZhVznm9u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738960893; c=relaxed/simple;
	bh=4YP5ILDAhWLFOzXAyWykx1y2KrD6Q7IeV+E11CzXC4w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=taZv7XNH6lSQSXnff5NW/Q4158BFbk3xIkCMfGXo7psvGc0YwW8rr3PbG4HYTfmPRY/d9dWNpVRF0n2lEHMGv7rIg2t9ugkEVe/8/ov3VSOT9ExbDuJcQHwtvbdvYy4YCTifyQymcVPgtzGkgYvigZgUFzzBW8KGxJgUTtUqPUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JaGm9Krs; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30229d5b21cso22598491fa.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:41:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738960888; x=1739565688; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ckV+zDmxUPxFXOUa/QFr85H3OeY0Ep07vfj0NguxjGY=;
        b=JaGm9KrsyXxH+w5GHqlVwvq1IC2IVbzTtAEi/5201A9c5oXUSpf0/NBa59fvXTpNoG
         vnNbGiTo/Lq/rWOzXq98HMISSpEJHfI5KM7RQLaJWOekSELw06SM3vcqh99fBTMjTgps
         SoUxPsPpUv5gRkFC+a4LHSM7MOwkUrle4WlolBTIO/XJu+kOhW/o2UnvTmBjNKOLZ44u
         c4vhoSTiC5RVQdPTaLGmBH8sPoNWVK6EefZKHe5b/sOmeje2pK3IhfsLgvT4p2ry5/wY
         wsdCgz3+AvjEGhaoFhInr9X7X8BlsNeMpsgb7Z8+WjK2/U2hWgMjdBTeRRtfz/iruAv1
         gDgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738960888; x=1739565688;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ckV+zDmxUPxFXOUa/QFr85H3OeY0Ep07vfj0NguxjGY=;
        b=ayi21GvY3OTTSbTfBr7AA43HZLnwaHpnKpgFLctNCoraELYP14YI8kfy7ENGfNJsQ3
         diYnX6fuKBTW0ng2bqUGV4D/QyvsJOmmPxVuyNyXt7aKyMawScaQ94/eAUCKapyYlkIa
         7gB1zMvc9N9NC8SJO135C66YfRzQfuxwoo+JrUF3WEP9rH5ulu1crzp8uu3pJ8XNtOj6
         ZRVjlM3j3XhRyP0QbkiN0lfdg0ZcBVhdmwcRo6lzh2iQGui/fMFLAUtKOHggPDSx9ScD
         +yDy0VAcIdyoTmzW1j/nTQwJglUFNNlGRHA0q/89pJ/vnsuVDx4xkX+YO+/ymiSy3ght
         2Zvg==
X-Forwarded-Encrypted: i=1; AJvYcCXodoWehsrzA12xVEssJje/W+zRNRuZYSCO+6HNsB6dBMf5PLWlDS+APuoWak049cBTYGXerVFTNTOM@vger.kernel.org
X-Gm-Message-State: AOJu0YxyyipuYS6Fo/2E5mFgdl++gUuDOgz9QYRAL+fWvrK7UD3VE4rG
	Nv83ySzpxYPsDXt1QwM1/Zs23HQs2Fk3mUsuaNtvp0s5jA9F5PyFJqCffN6fB0k=
X-Gm-Gg: ASbGncuVHGuN3FvI1rSp89iFL8/jAxFw7wDd6mkIE+QvTbmOmBMTOXpBcKw/Np3driK
	+CONNy4wxin7jcE+tOyxWbOXDL/7r13evu2+6RjSHcW/ZRtrIsZqX3zlTnZPRl7jQe1ep6qNzmt
	qGORhzIHHfPR4Hdvol1dAjdtj7ALryygWzXxHjIuGEG80X32FmbAM8CTPGBG0jdmISo89pRhePd
	PrF9ULCwUvKFqBdXLaoFWY4F23KIDYJaieMnVPlmgf2TxXpoQ+QCAuRQB9sg2wajZsEc1pFduzc
	HMdA4wmDh9IBFdTiw7qyUTQ=
X-Google-Smtp-Source: AGHT+IHAF171jwGreoAfCS+qIAXuUNgCF0vCCbR8Ca2fWtNNaE2jDVet0J8Ww4xEbrPz9K5hZ2BfVw==
X-Received: by 2002:a2e:a98e:0:b0:302:17e7:e176 with SMTP id 38308e7fff4ca-307e57be353mr13604501fa.5.1738960888388;
        Fri, 07 Feb 2025 12:41:28 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de178628sm5343811fa.10.2025.02.07.12.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 12:41:27 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 07 Feb 2025 22:41:17 +0200
Subject: [PATCH v4 3/6] Bluetooth: qca: add WCN3950 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-rb1-bt-v4-3-d810fc8c94a9@linaro.org>
References: <20250207-rb1-bt-v4-0-d810fc8c94a9@linaro.org>
In-Reply-To: <20250207-rb1-bt-v4-0-d810fc8c94a9@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6877;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=4YP5ILDAhWLFOzXAyWykx1y2KrD6Q7IeV+E11CzXC4w=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnpm/uWi6QsFuEkb18jSOyduZrhX9EB00S/e0By
 yxcT+3Wh5CJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ6Zv7gAKCRCLPIo+Aiko
 1ekACACt4s5dnfutKVpPRti/nIUchrWcJGS3N34hhKnAdfhS6ZI1vDwjL3Ej1S27HQuFCvmurKQ
 uvGPYh3cYu8XSq7DHm0f8ei9JiWTL2isrW7rKdn5/3rpsQ/1VeUvkiHMqcAJFSCCkKfR7yi5SyE
 CHHK8K2BzNYtJds0w/ntXEt7wtq4p9kQrXB1AWW/1rDhBR2hPQC7BlmLdHwKwCmVSe4RXemMXvG
 lU4gK42mIDL+56yOqjzyS/95qRCxBgqVyYG+SJF3sNhJVaM8Qnim941wyJvnLrjOrHsHU20nYVL
 IEVoMnizAuNguKThkm5CIjHNHiXM3uTQKSCJTbwtGc0J/P4T
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

WCN3950 is another example of the WCN39xx BT/WiFI family of chips. It
requires different firmware files and has different current
requirements, so add it as a separate SoC type.

The firmware for these chips has been recently added to the
linux-firmware repository and will be a part of the upcoming release:
- qca/cmbtfw12.tlv
- qca/cmbtfw13.tlv
- qca/cmnv12.bin
- qca/cmnv13.bin
- qca/cmnv13s.bin
- qca/cmnv13t.bin

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/bluetooth/btqca.c   | 14 ++++++++++++++
 drivers/bluetooth/btqca.h   |  4 ++++
 drivers/bluetooth/hci_qca.c | 25 +++++++++++++++++++++++++
 3 files changed, 43 insertions(+)

diff --git a/drivers/bluetooth/btqca.c b/drivers/bluetooth/btqca.c
index 7d6b02fe2040ff16d9d62de683571e1e1900fe85..3d6778b95e0058beda3f0500b21caaef8e797d32 100644
--- a/drivers/bluetooth/btqca.c
+++ b/drivers/bluetooth/btqca.c
@@ -816,6 +816,10 @@ int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
 		snprintf(config.fwname, sizeof(config.fwname), "qca/%s", rampatch_name);
 	} else {
 		switch (soc_type) {
+		case QCA_WCN3950:
+			snprintf(config.fwname, sizeof(config.fwname),
+				 "qca/cmbtfw%02x.tlv", rom_ver);
+			break;
 		case QCA_WCN3990:
 		case QCA_WCN3991:
 		case QCA_WCN3998:
@@ -881,6 +885,15 @@ int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
 		}
 	} else {
 		switch (soc_type) {
+		case QCA_WCN3950:
+			if (le32_to_cpu(ver.soc_id) == QCA_WCN3950_SOC_ID_T)
+				variant = "t";
+			else if (le32_to_cpu(ver.soc_id) == QCA_WCN3950_SOC_ID_S)
+				variant = "u";
+
+			snprintf(config.fwname, sizeof(config.fwname),
+				 "qca/cmnv%02x%s.bin", rom_ver, variant);
+			break;
 		case QCA_WCN3990:
 		case QCA_WCN3991:
 		case QCA_WCN3998:
@@ -947,6 +960,7 @@ int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
 	 * VsMsftOpCode.
 	 */
 	switch (soc_type) {
+	case QCA_WCN3950:
 	case QCA_WCN3988:
 	case QCA_WCN3990:
 	case QCA_WCN3991:
diff --git a/drivers/bluetooth/btqca.h b/drivers/bluetooth/btqca.h
index 9d28c88002257bae31249457b98a5df1df26efe4..8f3c1b1c77b3de8e7c86578aa3af17aefe99dab3 100644
--- a/drivers/bluetooth/btqca.h
+++ b/drivers/bluetooth/btqca.h
@@ -41,6 +41,9 @@
 
 #define QCA_WCN3991_SOC_ID		0x40014320
 
+#define QCA_WCN3950_SOC_ID_T		0x40074130
+#define QCA_WCN3950_SOC_ID_S		0x40075130
+
 /* QCA chipset version can be decided by patch and SoC
  * version, combination with upper 2 bytes from SoC
  * and lower 2 bytes from patch will be used.
@@ -145,6 +148,7 @@ enum qca_btsoc_type {
 	QCA_INVALID = -1,
 	QCA_AR3002,
 	QCA_ROME,
+	QCA_WCN3950,
 	QCA_WCN3988,
 	QCA_WCN3990,
 	QCA_WCN3998,
diff --git a/drivers/bluetooth/hci_qca.c b/drivers/bluetooth/hci_qca.c
index 0ac2168f1dc4f8ae2f7a3b2912e7f5b5b8115cac..b39889ce0e8ff9d97f72eb8e70cb9c6825984c82 100644
--- a/drivers/bluetooth/hci_qca.c
+++ b/drivers/bluetooth/hci_qca.c
@@ -623,6 +623,7 @@ static int qca_open(struct hci_uart *hu)
 		qcadev = serdev_device_get_drvdata(hu->serdev);
 
 		switch (qcadev->btsoc_type) {
+		case QCA_WCN3950:
 		case QCA_WCN3988:
 		case QCA_WCN3990:
 		case QCA_WCN3991:
@@ -1366,6 +1367,7 @@ static int qca_set_baudrate(struct hci_dev *hdev, uint8_t baudrate)
 
 	/* Give the controller time to process the request */
 	switch (qca_soc_type(hu)) {
+	case QCA_WCN3950:
 	case QCA_WCN3988:
 	case QCA_WCN3990:
 	case QCA_WCN3991:
@@ -1452,6 +1454,7 @@ static unsigned int qca_get_speed(struct hci_uart *hu,
 static int qca_check_speeds(struct hci_uart *hu)
 {
 	switch (qca_soc_type(hu)) {
+	case QCA_WCN3950:
 	case QCA_WCN3988:
 	case QCA_WCN3990:
 	case QCA_WCN3991:
@@ -1494,6 +1497,7 @@ static int qca_set_speed(struct hci_uart *hu, enum qca_speed_type speed_type)
 		 * changing the baudrate of chip and host.
 		 */
 		switch (soc_type) {
+		case QCA_WCN3950:
 		case QCA_WCN3988:
 		case QCA_WCN3990:
 		case QCA_WCN3991:
@@ -1528,6 +1532,7 @@ static int qca_set_speed(struct hci_uart *hu, enum qca_speed_type speed_type)
 
 error:
 		switch (soc_type) {
+		case QCA_WCN3950:
 		case QCA_WCN3988:
 		case QCA_WCN3990:
 		case QCA_WCN3991:
@@ -1746,6 +1751,7 @@ static int qca_regulator_init(struct hci_uart *hu)
 	}
 
 	switch (soc_type) {
+	case QCA_WCN3950:
 	case QCA_WCN3988:
 	case QCA_WCN3990:
 	case QCA_WCN3991:
@@ -1776,6 +1782,7 @@ static int qca_regulator_init(struct hci_uart *hu)
 	qca_set_speed(hu, QCA_INIT_SPEED);
 
 	switch (soc_type) {
+	case QCA_WCN3950:
 	case QCA_WCN3988:
 	case QCA_WCN3990:
 	case QCA_WCN3991:
@@ -1807,6 +1814,7 @@ static int qca_power_on(struct hci_dev *hdev)
 		return 0;
 
 	switch (soc_type) {
+	case QCA_WCN3950:
 	case QCA_WCN3988:
 	case QCA_WCN3990:
 	case QCA_WCN3991:
@@ -1891,6 +1899,7 @@ static int qca_setup(struct hci_uart *hu)
 		soc_name = "qca2066";
 		break;
 
+	case QCA_WCN3950:
 	case QCA_WCN3988:
 	case QCA_WCN3990:
 	case QCA_WCN3991:
@@ -1925,6 +1934,7 @@ static int qca_setup(struct hci_uart *hu)
 	clear_bit(QCA_SSR_TRIGGERED, &qca->flags);
 
 	switch (soc_type) {
+	case QCA_WCN3950:
 	case QCA_WCN3988:
 	case QCA_WCN3990:
 	case QCA_WCN3991:
@@ -1958,6 +1968,7 @@ static int qca_setup(struct hci_uart *hu)
 	}
 
 	switch (soc_type) {
+	case QCA_WCN3950:
 	case QCA_WCN3988:
 	case QCA_WCN3990:
 	case QCA_WCN3991:
@@ -2046,6 +2057,17 @@ static const struct hci_uart_proto qca_proto = {
 	.dequeue	= qca_dequeue,
 };
 
+static const struct qca_device_data qca_soc_data_wcn3950 __maybe_unused = {
+	.soc_type = QCA_WCN3950,
+	.vregs = (struct qca_vreg []) {
+		{ "vddio", 15000  },
+		{ "vddxo", 60000  },
+		{ "vddrf", 155000 },
+		{ "vddch0", 585000 },
+	},
+	.num_vregs = 4,
+};
+
 static const struct qca_device_data qca_soc_data_wcn3988 __maybe_unused = {
 	.soc_type = QCA_WCN3988,
 	.vregs = (struct qca_vreg []) {
@@ -2338,6 +2360,7 @@ static int qca_serdev_probe(struct serdev_device *serdev)
 		qcadev->btsoc_type = QCA_ROME;
 
 	switch (qcadev->btsoc_type) {
+	case QCA_WCN3950:
 	case QCA_WCN3988:
 	case QCA_WCN3990:
 	case QCA_WCN3991:
@@ -2374,6 +2397,7 @@ static int qca_serdev_probe(struct serdev_device *serdev)
 			break;
 		}
 		fallthrough;
+	case QCA_WCN3950:
 	case QCA_WCN3988:
 	case QCA_WCN3990:
 	case QCA_WCN3991:
@@ -2683,6 +2707,7 @@ static const struct of_device_id qca_bluetooth_of_match[] = {
 	{ .compatible = "qcom,qca6174-bt" },
 	{ .compatible = "qcom,qca6390-bt", .data = &qca_soc_data_qca6390},
 	{ .compatible = "qcom,qca9377-bt" },
+	{ .compatible = "qcom,wcn3950-bt", .data = &qca_soc_data_wcn3950},
 	{ .compatible = "qcom,wcn3988-bt", .data = &qca_soc_data_wcn3988},
 	{ .compatible = "qcom,wcn3990-bt", .data = &qca_soc_data_wcn3990},
 	{ .compatible = "qcom,wcn3991-bt", .data = &qca_soc_data_wcn3991},

-- 
2.39.5



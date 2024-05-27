Return-Path: <devicetree+bounces-69388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C778CFC09
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:47:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4837F1C21756
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3F4D13AD14;
	Mon, 27 May 2024 08:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="rWGpU9n/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA9913A89F
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716799458; cv=none; b=oQHLTzBSQbDlTAJ57mj2RP39HXERQbfEE27c5w+64ZYf0TM+8N9ErFw17s3S7KFXSRYHASVPxSzfMD90Fxo/mlKQSm4qocBhk9UJ7GPvTlO0iH+OAWcNpG7VkauXuq4LpCDdvNRNv7sO0gwxbBsHonqiYA1rjeicfecfZ4ERkGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716799458; c=relaxed/simple;
	bh=WC5t9WJX9lXcwGywBsZysQERtwOQQGRD77DNGgPmsMU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Etx+RjYsORwDG04U7jfJW3bVk/4nPo4zrZP7EvKKtOyhmjqd96/0zdZiXE+pvyKDdrvaEVpI1YMyT1MMZtBQ1KkOo8j0c2SZBTOkICFeIprvA8RnGPeMEzzs8JzkC9vpnhdlscX+jW1YThEk80jwzOYJ273i24YMlIhglPnCKao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=rWGpU9n/; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2e724bc46bfso98963861fa.3
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1716799455; x=1717404255; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Whg0Dc1FYMXBytTq0QfKHAfxqeAkThzFIKkCrZ14fSk=;
        b=rWGpU9n/Dct9b+w6SmnETXuD4DPPWt9f+DUPsaPNn1d1MX2/iuZnTyRIidjyVRzxaA
         fc054S8b3ltzcyKZV3bxyn0wxpMqOFMJspqsXp3UnVG8iI+GXajlsoDRaVld8DQh92Gl
         pCqSUlGjA/DBqxAr+JePE7HlacBv/pFpw5oc8jpFvuOJDtCDWx1g61p+/Az0JjVFIR3E
         hNbCBdaSwYywy8cWH8US+NInPH3JSijpdmy6EPjr4eWTCwTZgA4or/HFAVZvtzaP2nDr
         JpvjBu2iIhj/hSdqdNm8xze+pMa+6C0oJLzULtOD6mhf3TEKcfVTj+mWEWpncdLQngjX
         tOLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799455; x=1717404255;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Whg0Dc1FYMXBytTq0QfKHAfxqeAkThzFIKkCrZ14fSk=;
        b=a9TpNyGgASRt8/T4uytIvQy44YU/0BJnrIiKkK6GN5CY/s/M9aunCRcWFi//BJeJPq
         ZOwufLUdCIT+xi3CCsiKG2qYx5vWfd2LtD3I9zmem2Ne0R0QvJY78iVWy9nzkmGBvy9t
         INnqCC3oJk1SOfVB7zfhsnT4KQ8YcJR2YaRpIdMoZeEkjsyxiBEKtrK+OpHUTE0IqpPb
         0EtcomrcR2toKQNoqytbTO/+nhuXd1agTQa3u01FEAsTaDeiypOX8gA4kU8HqGV4wbQo
         9cVyHwJw3Pm5sCArvgCIRHZo6KZ+8g5fWElH9232f3IHB4bMLRfGApU3KxwTHxWSIvHU
         XtAA==
X-Forwarded-Encrypted: i=1; AJvYcCV96BFeNPVzMQPSXkKYSABgp7RYwBEKi6FSM46aKyTIkVGmbN8vPoReGhdSDn/NmBVTAlBYKlAnhfAsYDfHUlZ/Wov42AVS3vT8hw==
X-Gm-Message-State: AOJu0YwCV7gIaKw/qgTIKILsZAPnUfzmxNmYqrpXASv/iqKcrqh0iN7t
	yNFizkCU7KBvLfp1uuGK+C2IyXJHpQN44g3sIV+7/L8qLh/7s8P6H+YUtzKiMnY=
X-Google-Smtp-Source: AGHT+IEWt0u/t8Qaa5BYXiEFGNwc5PwERsRrwFb9KhoDMobp9TEkf9v4PF3TQDi0k2waH4ei6Goz6A==
X-Received: by 2002:a2e:90d5:0:b0:2e7:2d1f:edc2 with SMTP id 38308e7fff4ca-2e95b242205mr50404141fa.38.1716799454709;
        Mon, 27 May 2024 01:44:14 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:75a:e000:c322:131e:ff9d:ef41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42108966682sm101365575e9.2.2024.05.27.01.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:44:13 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 27 May 2024 10:43:50 +0200
Subject: [PATCH v2 3/5] remoteproc: qcom_q6v5_pas: Add support for SA8775p
 ADSP, CDSP and GPDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240527-topic-lemans-iot-remoteproc-v2-3-8d24e3409daf@linaro.org>
References: <20240527-topic-lemans-iot-remoteproc-v2-0-8d24e3409daf@linaro.org>
In-Reply-To: <20240527-topic-lemans-iot-remoteproc-v2-0-8d24e3409daf@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tengfei Fan <quic_tengfan@quicinc.com>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Alex Elder <elder@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4035;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=8QckCTJd4Kk+SVsJgULozGfhpAdR9WlTYPz4JkRMW+0=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmVEfZEPjkG7EDeDr+8Cja21yKzpf1H0zSGheZi
 pYtKf2PX26JAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZlRH2QAKCRARpy6gFHHX
 ctdwEACK3txeA+4QXB3RGBWW4+2bCJftoYBQkfd2qqyVmadFu3lp+Zi+1sw6Y7BctzTcpTObEby
 NaquBekLgZVRRg8AFCOwBxUA9OEHvd+V2TByairVxO4BjfIiz0GfmDbmzxKWJJ+Dr4P1RwFE78O
 SO9QqQ2cbFz/28Av8nqau8rUysBkKCuYHaU21nf4LY/5VxYgYF9kCNDg+aPIhI/1sW0Sl64gMEE
 ZgL7tqfbVRFdBixpjsGhMB0GkOAf3XpXbHg0Yv/k3k86yunCl5eSfIDxtmkwPac4NvF+W2Udk9D
 +iNirb8iq+0GhckhaO7AUQkyCjPlQag89wy+CioCd7OFDkVe9ZQeoCbIuk86IxVPy9W6bUKV/YU
 T/uHTRoYchG6fdWw3paMgYQz+ANL1iA0XwrkyP121Eb8JzHHXi8wrzh6ulP2rPDdHocViQmzKmN
 2pnuskqMFAVengJ5yLttkAgQ3SDOH8YBHVsJTYExXE4mNj+wE1yFd8HHuSg3JW+keEsmCZRliCT
 lZWqAh7EoqEDRQWMrrrukZilIOrJKYFCJdxh5o9ppTTq1k1gOnVxkEEgZcVus8Lw4cYlJJz4TUk
 +UsT95XiwPQ+zQIp9oKXBYJFfUEMfNJBFnY6w283LrYBwLO6tfyrpIBuovyf1fgBlejqyufSf6+
 MqzTX7CdxqDBgCw==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Tengfei Fan <quic_tengfan@quicinc.com>

Add support for PIL loading on ADSP, CDSP0, CDSP1, GPDSP0 and GPDSP1 on
SA8775p SoCs.

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
Co-developed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 92 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 54d8005d40a3..16053aa99298 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -820,6 +820,23 @@ static const struct adsp_data adsp_resource_init = {
 	.ssctl_id = 0x14,
 };
 
+static const struct adsp_data sa8775p_adsp_resource = {
+	.crash_reason_smem = 423,
+	.firmware_name = "adsp.mdt",
+	.pas_id = 1,
+	.minidump_id = 5,
+	.auto_boot = true,
+	.proxy_pd_names = (char*[]){
+		"lcx",
+		"lmx",
+		NULL
+	},
+	.load_state = "adsp",
+	.ssr_name = "lpass",
+	.sysmon_name = "adsp",
+	.ssctl_id = 0x14,
+};
+
 static const struct adsp_data sdm845_adsp_resource_init = {
 	.crash_reason_smem = 423,
 	.firmware_name = "adsp.mdt",
@@ -933,6 +950,42 @@ static const struct adsp_data cdsp_resource_init = {
 	.ssctl_id = 0x17,
 };
 
+static const struct adsp_data sa8775p_cdsp0_resource = {
+	.crash_reason_smem = 601,
+	.firmware_name = "cdsp0.mdt",
+	.pas_id = 18,
+	.minidump_id = 7,
+	.auto_boot = true,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mxc",
+		"nsp0",
+		NULL
+	},
+	.load_state = "cdsp",
+	.ssr_name = "cdsp",
+	.sysmon_name = "cdsp",
+	.ssctl_id = 0x17,
+};
+
+static const struct adsp_data sa8775p_cdsp1_resource = {
+	.crash_reason_smem = 633,
+	.firmware_name = "cdsp1.mdt",
+	.pas_id = 30,
+	.minidump_id = 20,
+	.auto_boot = true,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mxc",
+		"nsp1",
+		NULL
+	},
+	.load_state = "nsp",
+	.ssr_name = "cdsp1",
+	.sysmon_name = "cdsp1",
+	.ssctl_id = 0x20,
+};
+
 static const struct adsp_data sdm845_cdsp_resource_init = {
 	.crash_reason_smem = 601,
 	.firmware_name = "cdsp.mdt",
@@ -1074,6 +1127,40 @@ static const struct adsp_data sm8350_cdsp_resource = {
 	.ssctl_id = 0x17,
 };
 
+static const struct adsp_data sa8775p_gpdsp0_resource = {
+	.crash_reason_smem = 640,
+	.firmware_name = "gpdsp0.mdt",
+	.pas_id = 39,
+	.minidump_id = 21,
+	.auto_boot = true,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mxc",
+		NULL
+	},
+	.load_state = "gpdsp0",
+	.ssr_name = "gpdsp0",
+	.sysmon_name = "gpdsp0",
+	.ssctl_id = 0x21,
+};
+
+static const struct adsp_data sa8775p_gpdsp1_resource = {
+	.crash_reason_smem = 641,
+	.firmware_name = "gpdsp1.mdt",
+	.pas_id = 40,
+	.minidump_id = 22,
+	.auto_boot = true,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mxc",
+		NULL
+	},
+	.load_state = "gpdsp1",
+	.ssr_name = "gpdsp1",
+	.sysmon_name = "gpdsp1",
+	.ssctl_id = 0x22,
+};
+
 static const struct adsp_data mpss_resource_init = {
 	.crash_reason_smem = 421,
 	.firmware_name = "modem.mdt",
@@ -1315,6 +1402,11 @@ static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,qcs404-adsp-pas", .data = &adsp_resource_init },
 	{ .compatible = "qcom,qcs404-cdsp-pas", .data = &cdsp_resource_init },
 	{ .compatible = "qcom,qcs404-wcss-pas", .data = &wcss_resource_init },
+	{ .compatible = "qcom,sa8775p-adsp-pas", .data = &sa8775p_adsp_resource},
+	{ .compatible = "qcom,sa8775p-cdsp0-pas", .data = &sa8775p_cdsp0_resource},
+	{ .compatible = "qcom,sa8775p-cdsp1-pas", .data = &sa8775p_cdsp1_resource},
+	{ .compatible = "qcom,sa8775p-gpdsp0-pas", .data = &sa8775p_gpdsp0_resource},
+	{ .compatible = "qcom,sa8775p-gpdsp1-pas", .data = &sa8775p_gpdsp1_resource},
 	{ .compatible = "qcom,sc7180-adsp-pas", .data = &sm8250_adsp_resource},
 	{ .compatible = "qcom,sc7180-mpss-pas", .data = &mpss_resource_init},
 	{ .compatible = "qcom,sc7280-adsp-pas", .data = &sm8350_adsp_resource},

-- 
2.43.0



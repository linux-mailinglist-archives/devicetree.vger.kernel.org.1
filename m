Return-Path: <devicetree+bounces-256013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E287D2FBB0
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:43:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A201630CC938
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF273612FF;
	Fri, 16 Jan 2026 10:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y6Xfcexb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KzBsDbI7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4962940D
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768560106; cv=none; b=sWdqg8S28y60v+/i9Yy5mzCHAI+qA8mf2RAa/7G/BUTrx2WZlUJnEP4Bc8Ihr5bZ8mPGoLjuNayfFm/mgoI5VyyrysxCArgtjayaLlhJgfuw1OmC8h4EFvGPBw/W2VzBf9RDbuGZF1b4+xb3oLqU55eYqEjDoWL2KnN3YGJS2CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768560106; c=relaxed/simple;
	bh=nRbhcsGUzEBRd//cJGdc1CTziAEXsTl3Od3TxBL84BA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dT/3TNcDeIMaMgLs7Ldl7w2+R8mHuRV5uhLRLeMxiBFv7azt1Kk9+tj6+yOczhHzoHMxt9e5OPgA1DG0q/dIZERCbBFigbi/whNMEKwtaV9wr8QRPJ9Gvcgv01iJXx1Kos3PlP3Jgd43Ca0gPn21Di3yVh0Sc5qNbXNXXsNKB0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y6Xfcexb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KzBsDbI7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G88ca73714946
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:41:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+6arHGnDlUN
	YPv3P4q0uiidePRXSn664P7Yjsk4T9s0=; b=Y6Xfcexb5dOMtd+U/CF105any6Q
	I+NkGuIqKe1vrhslHkuYSDmqA7vinIui2LUZAk0x5qXXBN5GU+n5f3kENk47tFfG
	8J1YQcn7Q5iLh3uz7Y/WXKaMJuN5kUDkJdsXvMWcNTEkOn4yaqKYGWue8edMJMOD
	R0/nhp8mIZ4BuHg2+OLSCZBHkcLQHUZXyj6CIo16PMF0+BHjIHLijqSKnv6DW4H2
	Oqt02PrnjwJ47TY24IAXlkQ0NFgpmaStaQgrRwLMmzOrlg4q+KTuz+xeV4beQki8
	F6wFERX0LKcc4jCSCvy9LAtzXcLtR0X54/gLEf5FpmIQfyQZZm0ZKPop52w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96p9u34-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:41:44 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a58c1c74a3so14967445ad.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:41:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768560103; x=1769164903; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+6arHGnDlUNYPv3P4q0uiidePRXSn664P7Yjsk4T9s0=;
        b=KzBsDbI7GKKsggCIoXeT+NrC8LvBoZkEEFsOQ16OwsRv0l5DqwDcOl6fHJFyE2F3Sl
         ihPOhnXEwbSYHFHTJhfzKwfRmLSMc7HAee0LYyRtmH4kFnURuK48NUpJkxYuhMRARJgU
         nGvIN7x8fK/Q2mgOjoP/Siej2zhxqEa6dIcFyQbU971UKTGKtXe56GqqsHnZCdie3Hpy
         KbO4zKQhft3xfYYfvdJL2MxEobM7BJdfZ4HSxLKKmDLqnraqFQIiME8oUVNDRfNwvzu8
         aBpXkiLsRau6E+fKZsBZT+OLcdmdmZ4TJhw88VB251LkNLlFxEirAMkv/TX8+taVJ2t8
         ZIPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768560103; x=1769164903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+6arHGnDlUNYPv3P4q0uiidePRXSn664P7Yjsk4T9s0=;
        b=c8aSJiwRT4hBc69kC1LNkdV5kotgF/4+wBLrxmWiwN+Z8Ujmx4idLRu/yi9Le1PfhL
         baCvK+J8z2qVhXkFyEE7VPcQH4HdGxc2kYcUjO3RNDNcv2ijkDL9EqbqY4IGcoyflFV4
         z0huxx8hpiOnzyxwIX92wgeaL6rUhuiTE0SZm3w5nXq7vGKwdI7/HGfJvajxW+lv1yii
         M15G/b8kz0fJdKtsroIdErOo2GaHSHp94S6AdQHNLe9hFZeapyHBBOkq7udtgXIcshR2
         YWS8H40tyma1jbsKam7vKMrX8stRzKQVfy28T2o+ePsFEQEPl4X+MqHw/mOiIC0uDaBJ
         39JQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtpo2W2MD6H2qF8s2yKFetEoAY80d49E085EnsAK3/Rl1f5BI/2x8WwPuNbtrAOCQVA6AX/MAUkRnM@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzuz66BE10pQf/BiM0p0vXZeQr7xbmk3NNsf/GfY3u1HmTFIsf
	4N6CpaYEwAB5LzBzfgr4bVDbURkoUQH3VHxRoIv/0FxnCukE8RehGugtKiMUU1XMZSwAIgwoB5v
	gaZm7+C0OKIBPfYqXRrjJvBscrs3o4Cn2AUfEXSy1CvQP4IfT+zQj3OQkUlCUTSGT
X-Gm-Gg: AY/fxX7eYfD7EZOqbrW0X8Bd9/fL1hUWcLGJ/gYyVHCqOIeY/VA2kWqKI0Hvb2anY7O
	zw3q76G4pAztvDveer4gwsfMxKsl+ngSShOQwxnb5fEBdeEtJCwaYGaQ4svIbAg8+VAO+pljZE+
	mntwiWEhrN02LO+RRde9VN49/gVf2olEiZ+FaB0eNvlypEr1Fdu7qOnOVvJ2B2b/Qu/SAxTKuLl
	5ikEVS9bP2V5ZQR91K6UDhbj4Iw+blaHDu3K6uZZqaxUfPMKMzxiiomHylxUi/0s+oKIQ+LcmJ0
	jkiz2qScDo+VKsj8cYVsNtl4t8QGuOu2PokqfXAxFU1U5wwfuCbhK7k55853pm+aIJI2cheI2nZ
	t+kg7ewtg1OXa7vtIxQl9umxsopOea9qxzHjuPFzi0yZ7BVrofI2+nzl57tTB6NsvD/sD2aXfW8
	A=
X-Received: by 2002:a17:902:da48:b0:2a0:9d0f:b1ed with SMTP id d9443c01a7336-2a7188be6f2mr23864895ad.24.1768560103586;
        Fri, 16 Jan 2026 02:41:43 -0800 (PST)
X-Received: by 2002:a17:902:da48:b0:2a0:9d0f:b1ed with SMTP id d9443c01a7336-2a7188be6f2mr23864655ad.24.1768560103166;
        Fri, 16 Jan 2026 02:41:43 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190aa340sm18009215ad.3.2026.01.16.02.41.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 02:41:42 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v4 2/4] firmware: qcom: scm: Allow QSEECOM on PURWA-IOT-EVK
Date: Fri, 16 Jan 2026 18:41:28 +0800
Message-Id: <20260116104136.2922032-2-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3OSBTYWx0ZWRfX2+nByj4WhfN8
 OnHpJvVqEhKzn0Psv7h/iuyK65qPLQuOkO3CGKuQ6UUSaqX4Au5Is93iLK/7Js9FzThAx6R5nOS
 07QfvB3gPCc00NdMvxmyfXXKxZjcNLakAOCZFchwh+v6znNV090GYJLtNGizDrNloz0S6vXscp4
 wFf91cG2LVqDSQ/JWWlbFngrTbA6r5rl24MmUQXgxH7rjet7VsH5IvqwmY6zN1Zj8SPx7gccAGa
 F1356P+Juhb4EnNs7ke7RoBHO4ubDBYKWSqKdnZLF1tvilqqp/SH2N2Da+x1qihjaRsY+D82DOJ
 gt6QI52nQ/lw+yXYKhOQhhy25GZdSMqBd3IQOqAg7d8E+eEek1TQGcnE2nHvEV27jaVqBCttjb2
 8QB6K+Zscz5xdEVVJHc52cO87Dn0D5WfAeF8R1eS3U/8ajlGLVMQSj8yIy2dtIGfIotNWIYNLfa
 qDd7NLx3TEpfn7i4TlA==
X-Authority-Analysis: v=2.4 cv=M7ZA6iws c=1 sm=1 tr=0 ts=696a15e8 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ZmGgbmymOzp8U7yWMvkA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: A-2xjzIAqj8yF07HZdU6AQ2r7YM_m7Tb
X-Proofpoint-ORIG-GUID: A-2xjzIAqj8yF07HZdU6AQ2r7YM_m7Tb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160079

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

Add the Purwa-IoT-EVK board to the list to enable access to EFI variables.

Guarantee that subsystems relying on SCM services can access secure-world
features. This change improves reliability and prevents missing
functionality or boot-time issues by making service availability explicit.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 1ced6022c716..9a046b09275d 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -2022,6 +2022,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ .compatible = "microsoft,romulus13", },
 	{ .compatible = "microsoft,romulus15", },
 	{ .compatible = "qcom,hamoa-iot-evk" },
+	{ .compatible = "qcom,purwa-iot-evk" },
 	{ .compatible = "qcom,sc8180x-primus" },
 	{ .compatible = "qcom,x1e001de-devkit" },
 	{ .compatible = "qcom,x1e80100-crd" },
-- 
2.34.1



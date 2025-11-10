Return-Path: <devicetree+bounces-236571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF936C4571E
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77566188FD2A
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 08:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D3552FE577;
	Mon, 10 Nov 2025 08:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YqLCHXYy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BCTZsh2Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD67B2FD7C3
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762764644; cv=none; b=lu6rtinl+yP0quiwboD88UvFEou8TLpfncEVBTTkWM6w3A19bYmWOB1EKnxFHzNqGY81RyuKvft0ALmWHGqisU6A92HBnftB6my5imAtuXTHC0gXQPsG6k40jJNwL6hp4iKdujuX8S4LGX5d9Hqzjf1koFuP10Z9otQo9s1/pdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762764644; c=relaxed/simple;
	bh=uI9I1fkK7CXeQsPWFeT+xjn50HGW1cXwe2C64/oLTqU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QUwr2s02lwo6VjOxL4m2QjVsHZpmQFTuTHKgJONwk5fE7zigwFUEdjgt61wiAVTCeAwB4+AHXC4n6bSkJY8bSKqJCcrV+WP7ls2uTNgalcBLI03itNwOpqAqvR9x5toblxFBsCBpHWJjcgC270oiig4PogzFFyp9/4rmC76/ujs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YqLCHXYy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BCTZsh2Z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA7hSNn2861647
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:50:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NBZd3PMviR5
	5grv86w6EJGN6jeYZhx9rfGhFYWoVYFI=; b=YqLCHXYyDVoDCN1vQPGojMa18yk
	0Mz1n3jBudvDXD5kvKLAgra/eZ0N3YhsLJUxjalff7AU7PwEfV7gdYzMB8pXUFlN
	ZWiA86zp/eJVMmVhQulQz1g0IkQKbHMJkL5brn8QhpfRmItL6d1qkfFt3OQKCaby
	hvnKh5aA1w8oa5dIO2Lk4xaFqaRcKTkd/m3YLbxA/CEY9BayY1dwUiVQYvJc67XB
	UtwtepHz02red35fuJNCxsbGx+P6cnoewrwTzM7cAv6ltll4BALTwo6K9WySLiQR
	+QAld79/edyCjPhbhrI0p9bGcSx/ly3GftbIhYjkOk74rV7Cj8/boig3MNA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abbwe05yf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:50:41 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2953527ab18so10987545ad.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 00:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762764640; x=1763369440; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NBZd3PMviR55grv86w6EJGN6jeYZhx9rfGhFYWoVYFI=;
        b=BCTZsh2ZtHw0/DHV/KftRlgbVqF/vpO1itFhODSUigJFBFC79SJvpBKpltTNXuu5/f
         L6qmDl3MH82Iyzyy6rCUs9WNwXtq4k6AGEmX2dNCqzQrvQMJ12sxnlQiGdcDQVQblAZR
         1g/g210SBGIH6GJG2ac5WL3/9E9VFWd44Zd/faxL80u5MK1Hnaivm/6ZSsTCu6VW2hwq
         hBeK0dPSQakehzKwxuSov00dIouOSe5+7usZfuiquYF9Q+RQrPDxCAE9YThOPUernOZr
         0tJhL7nb2sY1KGjUh7FXmwbCv0AiYVnae6ANTjfiTN5wKgUroicIKRF7OvllxJgz5ele
         XMSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762764640; x=1763369440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NBZd3PMviR55grv86w6EJGN6jeYZhx9rfGhFYWoVYFI=;
        b=kXo11GiK9VS74cakg9mFYVYtSFpdwu0BbUdNP3piF31VtICBnOtWozSiqtJLhEI8wg
         KG1ZmOiC8l3K9UOaWlFPq1RAljL5h9kbBH4FKUl6KPOIYRHN37jkcCXVGSE5mcPPwLmH
         Pw6316oC8CKVyHurc3btR76s+4dy2SNHH6ynRpTodLr0M0HNaHWdGlPtqH8H1duVyqYT
         oqouaiYduAlj5Y2M59oeVtQcZWvlVxyWy1MuA4NymbtG6xguWr1j64SO6zs1DzbDMJMl
         nv+Zwr+oGSsBJbDpoGbi24MtWCqsFYI5VznGaWKFJh3p8YfQgQPXgBQu5GFsiyfYGG/F
         uC9g==
X-Forwarded-Encrypted: i=1; AJvYcCVqaN0kKpkZ+4rBrl9eESqiCs9E+QHmxeOLx93CJeT889Yp2TlsE3Bu4f3et1cl/CxCpM84g+9v0DA4@vger.kernel.org
X-Gm-Message-State: AOJu0YwixXOrSyy1zZg/mIteEGZ1vmD/6ECzSPxDhY+6EebnjQgy988v
	h22Ezf7QKAy6IUT/tCV8WEANhDiDglVQOcNX1B845iNQgASvrd26pi+tI+FBq8Z926TUnBxluXk
	o7R5t5OmE3bz6+XmrSbRdu6ARIFHvk4co403uFsQ7ypRXN2zwq78QEKR4NnuOLW6el0stu04=
X-Gm-Gg: ASbGncsdWH/nciQGtkMsl+nOAB5TpiX9mTskW35sWKu4TQjqmMDDKUY9jAbmZTxzgb1
	tVtsZnha+Xjbim9R+DqoLC0pjj4ufALEdcuU9mqwW7WRGOFKZmfzFKqZqaFUbM3CeSXaRKIhGRE
	j9EH1yEyDk+OGtQr5Mpgmslw7P28zf2tkzCPh+ZFG+JscYcccgYBuX4kMQN9TgNZtIQVwfWp6oj
	KJJFFTYpJN1uoXd3f8npaEovrZk8a7+w3C/wrRXLIc0/S76tNao9A8PEl2C8bBl66hjpVB6mqST
	wRI30waB7/XgViZYu/FV/+NJVZ6g30w+iIU2S3BJULN5PQeLwKvQQc9n3ueGhZGvaV5ZMrOmgJ5
	MaXRTdZVQFSGV6zVAQ/yAsAUxNxq3bA==
X-Received: by 2002:a17:903:244a:b0:295:f960:be2a with SMTP id d9443c01a7336-297e5712034mr48843825ad.8.1762764640152;
        Mon, 10 Nov 2025 00:50:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGbKwjSpzaqIwETQ7AXQ0mZlRymqM+XUs2HO3ow8cFOplYqI2CXTamxE/t21BFzUSI9M3CTZw==
X-Received: by 2002:a17:903:244a:b0:295:f960:be2a with SMTP id d9443c01a7336-297e5712034mr48843745ad.8.1762764639641;
        Mon, 10 Nov 2025 00:50:39 -0800 (PST)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29650c5f94fsm138691365ad.40.2025.11.10.00.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 00:50:39 -0800 (PST)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com,
        Sarthak Garg <sarthak.garg@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH V4 3/3] arm64: dts: qcom: sm8750-qrd: Add SDC2 node for sm8750 qrd board
Date: Mon, 10 Nov 2025 14:20:13 +0530
Message-Id: <20251110085013.802976-4-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251110085013.802976-1-sarthak.garg@oss.qualcomm.com>
References: <20251110085013.802976-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: oiFah4b-mmXVAsNbUtWanfebOMxNeRLK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA3NyBTYWx0ZWRfX2k89OYw3uMOW
 8F8zf16gx7/8TtstLXSy2vxs9FectzXT89+ss4jXoOcyT9p9Z2XAFl7xNQZRGRcbs2zseiB/KpG
 FS7D4U0nwCTgg6HnxyWIhdKcf6h1HLPxoGZBMFkEX8/gUXSjuzpbLJKGZrXt5TwMyRcnRcVs6py
 u48bsAwtjX4S2wy2Xr5z/Epe0RUI6Q4lIbBmzoXmkcHMjJZAzrISMEXJsdtpV6Dio2k0Ft/xhvt
 dQ4QxqLpwJdlRjhrG4lsKn6kIrCf1STFzI7dZ4AgrKo1aEXNewhPrKBJRHYvzNpZJylAmzoUVxh
 5wXBIc3Da6NT+gGayS2R1dLEbwQdqLQaALlLvCXf52KknYSKTMBWC3RqCEs0YvZbD6Ec9UEdea/
 ObkxC7sjRCP+M8TfkPBO9sRhZk/czQ==
X-Authority-Analysis: v=2.4 cv=GbEaXAXL c=1 sm=1 tr=0 ts=6911a761 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=zXSOlch8-c1XrFqEhSQA:9
 a=1OuFwYUASf3TG4hYMiVC:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: oiFah4b-mmXVAsNbUtWanfebOMxNeRLK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 phishscore=0 bulkscore=0
 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100077

Enable SD Card host controller for sm8750 qrd board.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index 13c7b9664c89..e08bebf93966 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -916,6 +916,22 @@ &remoteproc_mpss {
 	status = "okay";
 };
 
+&sdhc_2 {
+	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
+
+	vmmc-supply = <&vreg_l9b_2p9>;
+	vqmmc-supply = <&vreg_l8b_1p8>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	status = "okay";
+};
+
 &swr0 {
 	status = "okay";
 
@@ -1031,6 +1047,13 @@ wcd_default: wcd-reset-n-active-state {
 		bias-disable;
 		output-low;
 	};
+
+	sdc2_card_det_n: sd-card-det-n-state {
+		pins = "gpio55";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
 };
 
 &uart7 {
-- 
2.34.1



Return-Path: <devicetree+bounces-214220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 599E0B486B1
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 10:23:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B6F33BA26D
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 08:22:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C36452F6574;
	Mon,  8 Sep 2025 08:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AhNtNLzA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578F32EBB80
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 08:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757319652; cv=none; b=o3ERAapgatWZSdCgMVNgqiQ1jg2KnOWOQDMgT54kuerFqbmZxC0sTgTnl0D1RF8gMebPQfcC35Yc5W5kFHYzmI+3NjTxrNZsagWMpvHCdsGOBZMZQsHdUXYUNHw/eoQNHtUAUYS92RkSvKSqMlZBNNIZdTuMdbDiCq4TCOdWkLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757319652; c=relaxed/simple;
	bh=Z17R4uxUgU+bBwcNXl4EOOFcTTKHC04Ru6ei0RAupaI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CL9FL9QtCjskzsMGm1UtfmD6zZ+l+jpdlKK1NVzkTwiANPbp+IZUqSfPaVopux6VcMfWr6xt1shEqQVuAw7ushMZUrPzKuGqcGb8B28IsZTK8zJg9Z2vhql9yr5DU1byXVWISyqMFzD2iKFUrUQmWWt8tdJ5JyS/oj9zaBNqtWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AhNtNLzA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587MGASM025960
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 08:20:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ykjIJ/h7cv7PVigxcwlijPGxTqDBl4Xmlevg1Vg/7XY=; b=AhNtNLzA2BfKtu6u
	6yocinb1pPo+t4NunV33zYBVHtpgafUSmR+Z2fGoe1Muow4f4SUXY+CWzSLo4ptz
	eHpP8HmxMGQlfE1zAQXMCxVg0e9nuRiRmEGN49+z2Xtu/HI9qUNxISZMm8ezsTFJ
	kky//FSKLcx6qm1GsDq0fXWvD/AqHQeArLWrQvefwcFZkqXQf5dRyqeq5aAlEpxz
	Bd3Wlcw62F+Rea3x0bujz1hOCr1mfjXtCDflOAvgegQvanaNNwr3krcrW+5gn6eH
	/BzrMaKl2WE5ZVjGBfGa4h38qRcAJiEge/IpIuaJxRawhr9lggZLwzBBfq4gzTip
	qoeL3g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4kupte-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 08:20:50 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-252afdfafe1so16707485ad.0
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 01:20:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757319650; x=1757924450;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ykjIJ/h7cv7PVigxcwlijPGxTqDBl4Xmlevg1Vg/7XY=;
        b=jsACYA0dWI7DycQceueGUs10nEGBBL8lFaMnGwYbhyVVsP0+k2A2xqNb+lidDXYEtG
         9yiyzaeKKFeCV8f3jbdOh5UbouLt/2RQBcBWZy/R+ZFM+HJP0kgmiwHP+2a5uldrHxmm
         clI6vPXaAgS6Et9p+IRPdjNF1uQU4PXdSxxBC+hX9HMkH79KtilW9yPO7Bag6VFt4LOw
         7P4yJsb003u7roiAkNjT5jPVr3BGd0eJI4YheWebyfR54tbCN59G5/H4srXQg+UwHCEs
         0KxBOUkR9ADjQLLEaxbHEiRDn2TI9JluiJEmuRRwGX/dbch/8osowBf1U/0JM4Dwg4Bb
         oK0w==
X-Forwarded-Encrypted: i=1; AJvYcCWNVaqlmizgo2Zgjki9use8cbxBk1mX02npoz88bjjv22wImWM3+lOGbpi3t6uz4uoYu35aq3bVcu54@vger.kernel.org
X-Gm-Message-State: AOJu0YxkW0jW7bbBF0FbDeokhcmkEQCz7ZtmG8mYrsMonDlFJvwR2lkL
	Giy0d1532kwexGyjzM8rfxhPed9EpxPj2fy524/6opH46AfhUYT7DTPHipBislA/qr0GTjugIzD
	E0TMPwdrmCQ/J8G5YjpYdbFSHqMJrsJtaNCuZYsYdXXmKKFK5qPJ7YmM7Or6Gyg8d
X-Gm-Gg: ASbGncv6e8YAejUKR4BEyBD8ntnoIYsaYK83bfIoI3TpJBUg+Mi5nc3gJvgGX4Yi7Ju
	7FllZMFNZLuPWmuAs7kufJTTGUcYOHaxSa1uXDzRT+ZZWDbcCkBT6O5AjP5k7dDXkzTAt6VCxz2
	TlTqx2mhN0lwEptvDIb4/zg03LQR/GUXSkBqivJxLlFeodKHoZyzQpEVdWdZcvI/47rXfQkTe7b
	LSazHb1t2xVQ9Ysp+9gvB2vRU2t3RSmn2C0lrcFseJqWzshliNZXVWNeW8LSEqy8/0UzNZGW72I
	7dLi2C3vbVfhW5GTaNtEAg7eG2X3gGBV/2RerfJzkY8gigp/iPJawmXEcOBspF0zw8fQ
X-Received: by 2002:a17:903:4b50:b0:24a:ab0f:e87e with SMTP id d9443c01a7336-2517301ce3cmr88103455ad.55.1757319649964;
        Mon, 08 Sep 2025 01:20:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZrdo5xjhycVutw6GQ52ITtWgmshTdAXB4TsZXe/wwIb/gpks+7hZaULtdFlwOFTMBebuQoQ==
X-Received: by 2002:a17:903:4b50:b0:24a:ab0f:e87e with SMTP id d9443c01a7336-2517301ce3cmr88103275ad.55.1757319649432;
        Mon, 08 Sep 2025 01:20:49 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24ccfc7f988sm104852845ad.144.2025.09.08.01.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 01:20:48 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Mon, 08 Sep 2025 13:49:58 +0530
Subject: [PATCH v4 08/14] arm64: dts: qcom: lemans-evk: Enable remoteproc
 subsystems
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-lemans-evk-bu-v4-8-5c319c696a7d@oss.qualcomm.com>
References: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com>
In-Reply-To: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org, Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757319602; l=1181;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=Z17R4uxUgU+bBwcNXl4EOOFcTTKHC04Ru6ei0RAupaI=;
 b=AAUNN9zBr2X9i1EJ1D3Eje//aVUURrkPMOH1CL5ctvoVFi3wCa+/lrGJC3NJ1RYJZU5yzNG2Q
 sdA5G+fjPhoA5JZ1k5Ooo5M7NIEEUTgQXNZTRsk5NfuudglLmfGuZxd
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX+GFLYGoUc2Js
 U4TqqoiE73zcWBU0eGrs+MR0fqFtoflbfO3weUbUb4QaJEWqBkCxRX4rjKEzk3Z2fU/TPWlxIrU
 8SN3eBfpOGnlYXyB/lfYkrG3jgRYpTYLkm6xSc5VZRuTRERsj/iWdJvLqkdCgQ5h0SmKntk9qq3
 7HMIESW+f34cU0vd48Ubrai9HP5/sJrCLmyoJMMVYE86/ssreoUsw9KBlQ3Yp8WG6NFDLx+ucuI
 LPI9iTh2tya4ciwPQDwlM2M+mcDHf5NLJakWyQAf0XcDZUp6dPeERcg9n/HpfnCKpc/TFX6kgqm
 MTJj8Z2Sutx9fRR/sRBkPjIwu4O8bcj7k3hwvrPz9Do2O3zh3UtYkHncZ+iZpFZpfbtLjcGdy5k
 hzPJ8CiF
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68be91e2 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=08pr6S3s0jzPFaFj3AwA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: l52kkCRxSBO7FlA0TyCd9gq1aSkqnFK0
X-Proofpoint-ORIG-GUID: l52kkCRxSBO7FlA0TyCd9gq1aSkqnFK0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

Enable remoteproc subsystems for supported DSPs such as Audio DSP,
Compute DSP-0/1 and Generic DSP-0/1, along with their corresponding
firmware.

Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 17ba3ee99494..1ae3a2a0f6d9 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -425,6 +425,36 @@ &qupv3_id_2 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/sa8775p/adsp.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp0 {
+	firmware-name = "qcom/sa8775p/cdsp0.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp1 {
+	firmware-name = "qcom/sa8775p/cdsp1.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_gpdsp0 {
+	firmware-name = "qcom/sa8775p/gpdsp0.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_gpdsp1 {
+	firmware-name = "qcom/sa8775p/gpdsp1.mbn";
+
+	status = "okay";
+};
+
 &sleep_clk {
 	clock-frequency = <32768>;
 };

-- 
2.51.0



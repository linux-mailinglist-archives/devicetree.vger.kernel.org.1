Return-Path: <devicetree+bounces-212949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F0FB44344
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:43:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 277F64805BC
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16F7E320A0C;
	Thu,  4 Sep 2025 16:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cQykeKbh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7465831DD98
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 16:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757004003; cv=none; b=DB1vTdTfZBgQmojy0+CUB939uOp2UkO5eiUiNiborFM0UY6zbvj8i3RemCaZZ+Dmwyq3D/eRR8VM2by+f2zMq7NIAtmWAeeR+bP1lt0O1AFO6ccMlvsULKsnmLG0teE5V9dUJfyVwaw9dC+A7Cr6QB9ZUf2/seZXx50LvzSfrFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757004003; c=relaxed/simple;
	bh=Z17R4uxUgU+bBwcNXl4EOOFcTTKHC04Ru6ei0RAupaI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t7nnzjjxTkWnC3uMiCU5tsVBiPKorY+6AoG3XfSZaPKsNvuqYF0xvCZxowbZklgLLtsGHP1M/6jDOAjAdpHiygr/wAXgpcAKIl5EJ68IyiBoR9J5Xcvou2zVfcCBab21mKjijRPOAFAUfNRGm+iptlcqb39fuLBgHy+ZzGO0zvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cQykeKbh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XCtn013645
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 16:40:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ykjIJ/h7cv7PVigxcwlijPGxTqDBl4Xmlevg1Vg/7XY=; b=cQykeKbhoL0yn21P
	Y8X/m1b4TwbKZOf7eFDv/XelBpBXiwG7rnOpPr7ecnqd/c/OjGZ2spiz+Ort8Qm7
	3oOqcIPMP23f0RM7EB8F6cy9tnZtocGFKtuyZRJm9E38I7uo2QreUwLcmcwHNcio
	lRqFldMUnMj4J3LHHJyZ70GlVI5hRweA7WkUm8SBfSt/xoB1nNphYCVNZzdRCAFT
	890K9Q6FXcW07BmKd4cJMk56I9VLUKgC+cc+HlzB+kV0KhBA3l9ErhjcWovRLE8D
	WoYecHq5mMPuOLg4LPBhqUHZ1RrNKcNJGWzmGvRZtBvLxEIWxos80ui/4bx8Gz8e
	bvFZ8A==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wyc4ka-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 16:40:00 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b4fbe29e44bso800014a12.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 09:40:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757003999; x=1757608799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ykjIJ/h7cv7PVigxcwlijPGxTqDBl4Xmlevg1Vg/7XY=;
        b=Abmb4W0ZDTgHzxbluOzoSl2Aiu2GKrFRf4keNbY/jTOr4T1BEbRoDFlng2Xxcm/cpq
         zn1dcbTH1zEfEJ8GSEDsOysD83h4cB08vwK73Jbqtw0eNe0GB2imEUiHygQAL9lHcVCr
         C1b3cq3lqSBueV0HANTKktvmQB+5kySKIGDtP9A66B4yNllTSJs1sKp12TY6BA1PIDig
         K0Tvu7/pVpCFb6fqo0fqB9HJzYp/8BosVa6EfO35hWEQMn5mRsLi1xNhlIhOQIss0t7h
         tHz5T9FA1cB71kU0xuFmeJg3SieRKvBywgXsgv3nU72xUB39EFknrkBkgtUywGYIHmmg
         6Z6g==
X-Forwarded-Encrypted: i=1; AJvYcCX7ysGkVNq+2pE13Kh0AEc7YUlBHfhwAcUb9ERBnKVF6ruQ6ecNYN3KtpgsZe5F74G80gqXPvJtG9Ag@vger.kernel.org
X-Gm-Message-State: AOJu0YwpD8EBttxrT9t23Jroav1wYxP1Ga5cFmd+0mtykMNaTe6bR4fn
	AGDRkVlJaHxrrTEOCy9uVIjlLOMo64SRi1Kmn5z8GziogYT7Iv8K/fFD0vTrCRB5odzxm2qjh7J
	ZiZ7eaTprD5HpI1EhjpHtH6LlhEuMpTJzOT75CInY+S5U8ehu2PwSqZFaqIodZlGh
X-Gm-Gg: ASbGncvUiMNL+io5rE2kGx/Uj3nyRjdta/fsspRLAUAtvnnYOrYFtomimfeTUBB2yoO
	Oar0uIf5d5k61jE+iocBxJaMEWC7YMPwDKfqqmLZ7S9kbB72B8/onaMAcIgdDgf1osz2Ufxnl8a
	HCY2SzEsF/ZL2rEEscW2UX9UKu2PmDQoKArkPqwYxWLt+xno1z/edieRFuunULUs3H6x2O1AsAX
	yN935a5PIYCt9Mr37Bwu8L0iy2/q73po2UbyZvV0vcVBuV8tk7skGm+lENlX/g+v71XxVJTHiws
	002N8EVgxNqpW8NrjglJj9gUarFWAPt1s1dKnhO/9pcz0hul7IRUGBKh+Xq+qrMK0VN5
X-Received: by 2002:a05:6a20:38a0:b0:245:fbee:52e2 with SMTP id adf61e73a8af0-245fbee5703mr12170845637.36.1757003999310;
        Thu, 04 Sep 2025 09:39:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3yfPjFoXT4zW9IB0D+yJDheXIOMZ6xE5nc9ficLH7236+y8wL6rRb8AwET6KzJXDdeLk4+w==
X-Received: by 2002:a05:6a20:38a0:b0:245:fbee:52e2 with SMTP id adf61e73a8af0-245fbee5703mr12170806637.36.1757003998820;
        Thu, 04 Sep 2025 09:39:58 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd006e2c6sm17346371a12.2.2025.09.04.09.39.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 09:39:58 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Thu, 04 Sep 2025 22:09:04 +0530
Subject: [PATCH v3 08/14] arm64: dts: qcom: lemans-evk: Enable remoteproc
 subsystems
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250904-lemans-evk-bu-v3-8-8bbaac1f25e8@oss.qualcomm.com>
References: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
In-Reply-To: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757003953; l=1181;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=Z17R4uxUgU+bBwcNXl4EOOFcTTKHC04Ru6ei0RAupaI=;
 b=6wJJPLyeumdxPLCldgh1JOuob6GxTwr8kMoGGD6GLMkZW8vNN/3nshAnmnbA3DbR+4Ey8ngm9
 kyFXXI26djnAJbLFGIm4NztHyRSyViW35R1jwZLpy2wWw1zo5nKNT6O
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b9c0e0 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=08pr6S3s0jzPFaFj3AwA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: ghhqrIFpqAYf-K5Y4GbonnQOMYhX6m9J
X-Proofpoint-ORIG-GUID: ghhqrIFpqAYf-K5Y4GbonnQOMYhX6m9J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfXxJUx84yrounY
 EBOKpDlb34K7YzTfvEHltU9CFRnQd+mM7+1DYWXwtGo2/aUdE7kjjL5pK8LZohnro32eqAYstJI
 vWmJk5P3WZmMTygIJIIIXLCYEoSkHc75Iva2f4wNQb9WYCOAEAHzX2TlFIKPdiW8LKnjGGi2G9/
 T6TiwwU3RvqupP2knqijclzMzHVlrkbSJeAMLxT2F4XOUCMTr4C9DJ4HHGxxh/VlKwE/2mf/5jC
 VaACWqODOtTfNPFDL4ZudD+DyHYdfCA1qoLI9KtkS05sp1hB5kh7OG5Xk+j2QCamOIuKQOoLsQe
 GFQBZaEhn5+nL/MugluY2vMbiMvM/Ya1J+ow5RTCa0I4Un2zqeMwkJp5m8NJyKiYtv/TBIl2N9g
 IDXpSBF5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

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



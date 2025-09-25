Return-Path: <devicetree+bounces-221170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E6BB9D9F6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:33:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 22A017B2E06
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5347B2EE27C;
	Thu, 25 Sep 2025 06:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U11XaSTd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5FB2ED175
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781792; cv=none; b=pgxE/7n8iY8vuEiVtkVqfEMxIqdkjR6a7MHTqQcWNS1JoIBaDLdu+8fFxAB3Q4Zn5ELKso/ry76nNg/AVW4DNlaOAmqeyOqNJ40Ko8d1m1lOoQ/LQQeHG0zKLOb2yyO6jcwM7+KwktFAMTkzCRJ5PNopjNs2x55g37BLoNxET1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781792; c=relaxed/simple;
	bh=9LsryighRnETN2UrxBpydd19TKIhUoH8J1E8OIf9RY4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HdWThfe0hK7DEVIzqq+xxJyPsznUuXNdu61NfEQyqDd7M2UPa/1UmWJy13Yn9chFpK8E8EKBadWSWDG99bg2/fXTPweaAMLl/0YAnKCFgB2DIVuaJSzaRilWMWoeNWQD1J8A4WFJnZCADb/vLvOsBIvZewaCKVF3IJ/zke8oIvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U11XaSTd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0rTHn025119
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VV4MOx0mlwBQzDc46rG9zmLxghWZvJp0NqZlDVgFSZw=; b=U11XaSTdduYqNtin
	kjfhek7+tngOTDL5if7gtAQVXiQSsKoptxcmcnlibDaPkolJOjs5SoKJWOzHH5rq
	vUCidaUpufeXirPrTYrYAu/78B4/c3HDg7ei9rpKYejg5ZQkVNtvfvKEYxLcKlyl
	Db1fStlw4S/s9fTrpO/k2wUzmh9IXJ5huEtAs8aQkx52kpXN2kiV2kyacFbTyMEm
	AL+niolEOmhRI2vlAQUKX8Ml+aSblb/I2+J7NKrHorLFFZprd2f56wn7pIUsd7Yf
	Vk3gPq4x1gkSimEAcAts3Uacng62U4hBSWItOG4uR6UjJCVs1yuw6yeCIn3IiegX
	/pmz8w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv171nq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:49 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-780f914b5a4so705978b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781788; x=1759386588;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VV4MOx0mlwBQzDc46rG9zmLxghWZvJp0NqZlDVgFSZw=;
        b=WNYup13WOkFWj6jQBaVMmlmlM3bjJQqnwI+aG2ZL8679rbOFAtsqp8hIVFWYz+nzBm
         crr5C5ZyjhWKFqjQwFhSJ7rnFCvVbdAtymnh4e3XLfQ6MWGMi3oRg/P3eupEWxmiZ30I
         K2GCKtrezqYuAeFlbrD8bIxwVNeokh6C2ScxxHf6r8xS6SoEo50gpK5CB+1bf4gzxM09
         9c/ptiGhjjod4lIAh5NRqAN5qHPmjhHyVuvukWWF0vFYhEqVVNquHH1xUaZnuLRvcwbd
         3pfps/Ec0wLvtIC1VNHvSnNs5rwBN35RIHdkn/YerKMEmBRkbY9XsHw1YWd6Iw7l2NKs
         2GCw==
X-Forwarded-Encrypted: i=1; AJvYcCUQlBPRlDPbYmvVicTVMHJkP6q/0gkTzE+VpCjV2+LxNTA2HTkAyjqqOOQjAhE+E1cOBgFKpujRrZQ2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6oiAzaaUyAEsi7kTiFAujJeiQ4kSYODb92UB9GPokhr5GvSTV
	/iCxkS19rjlb7Dki4sHtXv5SvRuGAGRDdeLu747q6miBWADAdXDfz3MR8yZ0QodYj0TRTZ2l5Qz
	TSU7aqqX2QSdeBwWkYdcWD6206NWZxSOr9OQ0u1V7xB6QsyPZTJjFll4uR3TzhTaG
X-Gm-Gg: ASbGncsnGL+7TMOqoKVBdMkvX1JXq3neUXwE7x9RZa0ppcq5K6vaxQVv/kAwZkzJ6U0
	Aj0F9da+UhzxN2KfnIxllFU8vCwFPSA5ayVoy6v8nrZIpqc3YEhBHjrHz/ZZLNwXGkO2cZ1eL2p
	gDyay7K9BP395cw3ez1MGiBo1U8qClfPzonNhyvh6R5o50u4/MZU+UpFgJXsYXx0bHOBZE3jr4z
	thoVP5kGHnLwP4Gl2ouLmHMIPi6hX3SRC6yZbhiBc2XnWDRjxxRHChyogMBRcjKvE2zERAUpglj
	oju3nkmQw7G5L+JnFN/Yxn1f9y8OkMZ88e9MnEW1WS3iwIjIC/qbrgZBZVqVVwmsmizPg8qXGgO
	6JeOCUcyYmhTAxuJvSjDkYqltzbcN0j+ji3bspmX63ch0BNBLZ2iFxFRevprY
X-Received: by 2002:a05:6a00:26db:b0:781:556:f33 with SMTP id d2e1a72fcca58-78105561ebbmr642573b3a.5.1758781788270;
        Wed, 24 Sep 2025 23:29:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSmaBiNSEZFNTgVGxeiZurLaxid5rTzkr2yDI27F9UmteVsp0PaGzPhMcmhyEJqcPNc3eN5A==
X-Received: by 2002:a05:6a00:26db:b0:781:556:f33 with SMTP id d2e1a72fcca58-78105561ebbmr642550b3a.5.1758781787833;
        Wed, 24 Sep 2025 23:29:47 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:29:47 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:22 +0530
Subject: [PATCH v2 16/24] arm64: boot: dts: glymur-crd: Add Volume down/up
 keys support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-16-8e1533a58d2d@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: kxaYk3-6h5dTa3gegNkBuZbvKaNBydwx
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d4e15d cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=eOB7tIhUYvXyc_ElL44A:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfXw3dLGuJWuBmm
 q/gpTh6qz9R4kGD/9hIfYKRgElimn2FS8kk5jxjoApdKiVakvZ65FkUIwKHmayBBei7TLXcn2OH
 UqcnYvYHQhH1CLIEY+sdBERLMmimFyMB+mPzCKR8W5eWk4IcN08cuRUvm2HjfVZHJnMOVGqEnab
 MRnQmfM9LUG6d0HWd/VIpGPUqmQIzNB4+k/n3zT7rH+GFwqQ92EAEuXdHZcj5T8IQHG4xP2W3hS
 8iyEon3Q7R74PTF6EoA4Oaf1ve18wMLhc/pJ6Wai04I6qpOFnj2ou8UIGIXNmytezK1y1qsmM71
 TPPLPe2t0clRJ7Sy0uaCYCy+TAv55t1+MC9sjjuUlMlsLtRGW6eqj8S8kFL6wu9tiKz9uXRutEh
 KRO02Mxn
X-Proofpoint-ORIG-GUID: kxaYk3-6h5dTa3gegNkBuZbvKaNBydwx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

Add Volume Down/Up keys for Glymur CRD.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 97f6eedd7222368f5cbfdd02e9c4d87261d7f19a..d6003ae515e37049fdf17d6b604b974dc8e9fbbc 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -63,12 +63,42 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		pinctrl-0 = <&key_vol_up_default>;
+		pinctrl-names = "default";
+
+		key-volume-up {
+			label = "Volume Up";
+			linux,code = <KEY_VOLUMEUP>;
+			gpios = <&pmh0101_gpios 6 GPIO_ACTIVE_LOW>;
+			debounce-interval = <15>;
+			linux,can-disable;
+			wakeup-source;
+		};
+	};
 };
 
 &tlmm {
 	gpio-reserved-ranges = <4 4>, <10 2>, <44 4>; /*Security SPI (TPM)*/
 };
 
+&pmh0101_gpios {
+	key_vol_up_default: key-vol-up-default-state {
+		pins = "gpio6";
+		function = "gpio";
+		output-disable;
+		bias-pull-up;
+	};
+};
+
+&pon_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+	status = "okay";
+};
+
 &apps_rsc {
 
 	vph_pwr: vph-pwr-regulator {

-- 
2.34.1



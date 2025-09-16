Return-Path: <devicetree+bounces-217802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B3928B5941A
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:48:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1CB41BC1BC3
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FE112D23B7;
	Tue, 16 Sep 2025 10:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pTZkmkRc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A70A22D1907
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758019642; cv=none; b=KJPgKxlJTM3O2fRhgxyle2m68JHZXLEZhLDSPpbv0Hi7PD1/li9Q/1Qg5QYv93jHAIkp/qDY9WYXmiZbjiGd6eI+Dd5q75evlrDK5hCZ9T9/jpyHSUgkhHsLINW91zldbDSJ4GU8QjRAAeIZelElALytr5FkO0tWSZRRI/oAb7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758019642; c=relaxed/simple;
	bh=2Nt/WViwfyk1OM7Esn+J4JmZrNIA4MYrfc77+xCl288=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lwDFRf7QXQmGtXKLUG1egVuyZOKrP+RXuFNvGu7mABoywBD2DL3CbiawykE4GVDlQNaF/VZqNdMe4Y6M6GVF+Get/i579tdTRgBUqnLASnI8iu/VybdAcsUJy8MvMuWgJm1W0v0ThIN6kVHc8DCUIcJsRIcAnwoxBs6IQkOjgEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pTZkmkRc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAcwDD010790
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XxJ1YelP0P/MEMkGmrnvBSD031m8K/rwDAJvdjwN3a8=; b=pTZkmkRcg/Ewu9db
	qcZSwPKVHE7TTmxv3HvxyE4Ce6wKO22aLpHpsiC0JHJuX+NaCzSX/RPxPq8lVXRs
	NEMrwprypecYxM8E9EaXtYaoIPox3Iy/RsXUEiF2V+DPtV3kWiclQttEsX4iU3Tv
	YEB5WE7LLNa6qaKZJCFVSwa4zA9PvjvGSHAinAK4y+KHTBA1znfmRHCp2lx6jxVJ
	pcfS6wQuaH4+fhI/Jx86SAK7A89F5xne1N3lmtnxM50dN7Ggde3xCFIthhSiyLI6
	E1JkoydUPvy6oXrp/cnUbMfqmfeb5Q2dvSMKc3mKifcMbCwx+/4krYbSuGqlb7Pb
	gPgAaQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951snrc77-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:19 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-25d21fddb85so74951445ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:47:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758019639; x=1758624439;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XxJ1YelP0P/MEMkGmrnvBSD031m8K/rwDAJvdjwN3a8=;
        b=eFQSnycvtL1gc0/W4zPmBcTtjDXvMEYmbo005MYkPeHRNCYgXCx92BKsQ101CgmD4d
         OjLLbpFQpSX05OQ3RXsOgb/T1O0qxiHHLfbO/z8FjNAg/MyYtQYlAJzZJXSDrST8Z0Yz
         s+DpHE21wPQ56F9G9FfYrGI2z0FrGrGYL4AzzoDP+ubwDyFDNxsbROjp4NtPdo44DZnb
         RYvm27b3dc5+X4jN7U1E8tgj3VLkqeQdQ1e5jEkfnfgX7Okqea+6tDuk4oxdi62z3H+D
         rBmzbcUZ3ROV92g/XIROGA0gnz3QTI7VKzYmbJzwzPLtLMyCB0N6/HXgr6nxlwoRfESO
         WHMw==
X-Forwarded-Encrypted: i=1; AJvYcCWDuYY7clXdFg3Wb0593tEAXwQa8CgJJIZg/DvweIscFCANkwsrVuhdvG45vqaafsgOo5Wy56ja+ys8@vger.kernel.org
X-Gm-Message-State: AOJu0YxyykNyb5TrYRDjzdDpxIroQvWL0aZyPA+V3F11Rh0KSq1fzoGl
	SXmZ4Z+bC3eNEi+BhAHd/MeYCF8AYZGvhy21BObG3EjdIqI/IkPqJ0xe2iIrH7LSyNyRdbv8O5G
	6rQ3/dXFToY2gT7s47CvqJSFarrw0E9t5CBvNYUDYh/PkSQxtoH7/WIibgMUQCr9A
X-Gm-Gg: ASbGncuFv68J6Tz1AvP9RZ0fUUT6yVN7FKjJ+8rF2t/hUNR83grQOLdRpWM1RgIdyP1
	J/XdYJF8z+q8iWzw/KF+DfCrWALUuiTJ5gV9RJK+sonoJnSwihTfHRQ8XgleoMWkEIrKZLxDP5N
	5+dU8HDerofeGQw4tp0D35//nGuPesS9DPHQ82VJzlhfzNnnme22P72HqlsgNPWXmWFs5DCF63m
	NHoMhYqabxQRgDvpHgllT4TPy3I3bpIj7+wxBax+vPW1nXyYxl9fISo35nmeSECR0LdZKUwD41H
	lmO69yNakCpQkAxenlfTYiD+eqKEoZ4LWmsoILEaHa+atsYBFULD+yc7DK0DdfUk8CjP
X-Received: by 2002:a17:902:f606:b0:264:8a8d:92e8 with SMTP id d9443c01a7336-2648a8da599mr109172605ad.59.1758019638921;
        Tue, 16 Sep 2025 03:47:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7saP1Ar/P6pWa1Kzd2p7ET5TE7rq15TK8LA3rxi5m/8GOCy5RHHsiOzWCFA3FOf++9lRCHQ==
X-Received: by 2002:a17:902:f606:b0:264:8a8d:92e8 with SMTP id d9443c01a7336-2648a8da599mr109172405ad.59.1758019638470;
        Tue, 16 Sep 2025 03:47:18 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-267b2246d32sm33122355ad.143.2025.09.16.03.47.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:47:18 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 16:16:51 +0530
Subject: [PATCH v5 03/10] arm64: dts: qcom: lemans-evk: Add TCA9534 I/O
 expander
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v5-3-53d7d206669d@oss.qualcomm.com>
References: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
In-Reply-To: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
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
        linux-i2c@vger.kernel.org,
        Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758019616; l=1374;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=MIs5mqG0clseQiptNt7kkk2bdolwAQ9t0S/sVJLewOk=;
 b=BXSUlSzRA708u8vtiLqtfTP2QhJyxORTxGXMfG7C7FGQD8zySWMtksU4/qtW1zMd03nT7TklE
 Qln2qf6HIawBZ0f2OaakXBam4CHmJp8lcFiELAUxnRrAMG2MvTh5lkY
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Authority-Analysis: v=2.4 cv=JO87s9Kb c=1 sm=1 tr=0 ts=68c94037 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=5DqHOVUeJ4EYgL39aBIA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ltHcHHIBzDOVo18oEUEkpjCocPZmz5-T
X-Proofpoint-GUID: ltHcHHIBzDOVo18oEUEkpjCocPZmz5-T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDA0MCBTYWx0ZWRfX0gs27O2UjDgP
 Huo/+fNBxCxhuvp3gg/4OyBSjwfONI1sY5gvis8TUriMmKbWDypWjAJJ3FAatwsDbBvxXrKfsDK
 zwKxDYmMAkxF0kv59e1ZpCclz76BHaGLNH/2QWs/dwXJ36aeaa8wFB0R47C6148ji3uGYZuHghe
 MiyNFOrGLJTVy0cjao151N7VEwzdbF1+xZAGRn9mHXosC2AaYvYUkBoumg6G6F/Vqbzh6Ml4KS5
 n0LetOHh1YhQU1dn6bOe7uPmDlxstt7vN9ClrIAZQiQKf7IQnSHdKB/r5wKArbh3jM8IICBwibb
 +aOaw+jZRPICFq7tWILf2kFig/xeAbhbS1qJ606B5pg9XFTfe4mswtPXmZR82tgJPm9QMKKtNmS
 e17K9bmZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130040

From: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>

Integrate the TCA9534 I/O expander via I2C to provide 8 additional
GPIO lines for extended I/O functionality.

Signed-off-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 4da2c5a12c1f..d1118818e2fd 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -341,6 +341,38 @@ &gpi_dma2 {
 	status = "okay";
 };
 
+&i2c18 {
+	status = "okay";
+
+	expander0: gpio@38 {
+		compatible = "ti,tca9538";
+		reg = <0x38>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+
+	expander1: gpio@39 {
+		compatible = "ti,tca9538";
+		reg = <0x39>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+
+	expander2: gpio@3a {
+		compatible = "ti,tca9538";
+		reg = <0x3a>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+
+	expander3: gpio@3b {
+		compatible = "ti,tca9538";
+		reg = <0x3b>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+};
+
 &mdss0 {
 	status = "okay";
 };

-- 
2.51.0



Return-Path: <devicetree+bounces-164368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A91EEA80C5D
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 15:32:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A9EC904406
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 13:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2832A20898C;
	Tue,  8 Apr 2025 13:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NI4ClvuO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 816051F4199
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 13:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744117828; cv=none; b=ap38mrvjxW8BhAco65KuDqXodAcCZylIsnk9xNnSRYVzihRV6tYsgKzFiR3LeLs6KW9fqZ+kwspb+ZqUEwzqrhdgqPRFmMAMdVKJGIqzlD84ky2w+ND7hynwhT+/coHo+VJIeyUtvZMg+5DJgezXuX8dhxksc7o1/vkfvDfcps0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744117828; c=relaxed/simple;
	bh=wmcbvuwfcexkF/IZq5AXxakmuiHkGVEOuFwNiJ9zpng=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Z5eWtJlY4qpuYCAC8Lh359J/xqr9tiXTFbygZ3TJ2joNv6ERHQWEks26ZiSVhEHlxyfct83zWNb5QMHc50fv7ZZthIp5ZuAxmO0YW3gW4JL4LqKCUjvczAaysKw5Ur3L0e+4DS8srG59UydAT//4xBuHFSwJrm2VQ+0nRuoFgZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NI4ClvuO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 538B3WEq029849
	for <devicetree@vger.kernel.org>; Tue, 8 Apr 2025 13:10:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=5UBWW4MRrgta4eIXJ9yYXc
	6dcVrwrrFfqWYMy2Uu/k0=; b=NI4ClvuO39OUzvCXEef7OTJniPpNB7FhjGWtjF
	TZgqnc4tIxDl/cFF2AvYmAazLljGuT9/JFxYMC7+TUUyo9As95bPsLfzafbfPH4M
	vfkL4WY6ruPAzXCJbeWjkFezTN5bZxpiNlORu/XhB6qxBxwzO1suqr5wdummxbfN
	y37Vs3kBADMNxJHDlG+l2LGQa6RyPvZvpiXCdb3/eLuJ121+Om0qRfZQTNyIxnZT
	WRJqxgWcB6tl1A8HhznjJMf0N3gvZFZBflbVk44ppM8G7CSTHBFY0tsgfREvQe/0
	NV8tuXHb9x2CI9xzcxPvrrumKWLDhUhHEEh4gF74dlCzk3Eg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twcrfuy7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 13:10:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5e28d0cc0so994135985a.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 06:10:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744117822; x=1744722622;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5UBWW4MRrgta4eIXJ9yYXc6dcVrwrrFfqWYMy2Uu/k0=;
        b=Qgvy/UciytpamhU6zDFy9L52QEBHR7I4puyKT9gCe5goMjuNzTYSi23/JcJCokRXBv
         NKELRyKDfB1eP3/P1RLQFTDaN5rY1t8HK2TMl9shf+IEjWpxWU+8jIVH9Ro/HbDE9/Ey
         b+rYhHz10W6LidBOqDkUM4xxbtvdI5hn2BfVf5eK4BWBJaDP13ctB79kvfNtCu0j5UcZ
         Tp3rgUgixm3xB9au1TW/DsSqTmu1DPdmwEniepbCyKEXIWpd/iUee39V5FB95Rf+65Nm
         e8iuO0KIL+nrVpsUJc8H+dNSXIupgv0QrRUCasbtS6qbFkTK3shWiLRNX98TNVCsgpja
         shNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh8PkDrINp7mEb1XbXlR+d0ONZ3NuoQVX7OosUCYozf3WCfBJVTmK7D6zzID5vTyhTllmOaXGJQqx5@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl59KCKYV4+ogDqjw+iyfkwYh/awLBklQw7sW7ADT1uN3tFBhF
	11fQf3rdhT5cpeDMZepEYHftzZCWE9E47plgDiaup+fcNA7A1tsCN9lPDX2FXMLpxBeacD2EcTm
	7ftD9PhNURBdKbVfIFwl++u9H3fBRBs/G4QNzws4w9altzJRhZFz8dNImPLZj
X-Gm-Gg: ASbGnctv0jK17X488qjbzJfTZh9ZVYvN0OrLbj/pZPt516UjgK01hTpbeN36+c4vKVK
	DZwg14yYEmZlNoorWiFWYB6YrKgWz8B/z5ZG6uAWKP8giWTNAUGq788Hb00A+wUbDxb3ToL8b0D
	nKB3/fmA0DESEtbp0wSmxJ7NLkHGnfHfZitN34Ly7Nw1dzO/sCFmgNtRHbV68MR1Z8Opd1WOKn9
	jNmjBRqDMSl8h28uj7sDqJeinTJprTB/9I2G4T5d39bU30+Fqk9kOg+Q8FJvjxgb8JRnLuqcs2z
	EUG03YDZ7U5b475LuGZujSa9nDiPRHvfXwTG7sB37ukNr+VmcDjoRHbDan5XyCe9XZxkdiRwSkX
	bzPUL5ebrAn/Q8LOUbrI7wzzMkw7t
X-Received: by 2002:a05:620a:40ca:b0:7c3:97a8:901c with SMTP id af79cd13be357-7c774e4ba4amr2246817785a.53.1744117822649;
        Tue, 08 Apr 2025 06:10:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKoJuWHnW0lE7wkJ2sSIhMNy1Bxs/JmW2vMjs80QwWr8TuvnplUD0b17fUpjDotwXYWysf0A==
X-Received: by 2002:a05:620a:40ca:b0:7c3:97a8:901c with SMTP id af79cd13be357-7c774e4ba4amr2246814285a.53.1744117822206;
        Tue, 08 Apr 2025 06:10:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e5ab889sm1514837e87.11.2025.04.08.06.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 06:10:20 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 08 Apr 2025 16:10:19 +0300
Subject: [PATCH] arm64: dts: qcom: msm8998-lenovo-miix-630: add Venus node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-miix-630-venus-v1-1-771c330ee279@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIADog9WcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDEwML3dzMzApdM2MD3bLUvNJiXfNEgySTNMM0Y3MLCyWgpoKi1LTMCrC
 B0bG1tQCETl/FYAAAAA==
X-Change-ID: 20250408-miix-630-venus-7a0b4f1f3788
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1021;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=wmcbvuwfcexkF/IZq5AXxakmuiHkGVEOuFwNiJ9zpng=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn9SA7VNUl98nBv3ZNkD88KYglSCweZUYPxLyTL
 mCsUeWPNIiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ/UgOwAKCRCLPIo+Aiko
 1aktB/9/USl+Q+vHI3iIzz4QXK+WZdXBO18AsdRDQ0iQrwGu48tunrs5c076iK0LMbleV42Cqcd
 e+RxWus5cZSE4w/uRoDGryj/IhAGAkQfvubEOeK8MsaukPzSpGm+TYDLiJMwUzIne3EgjDhELwg
 BUJYTx2HmX+oH7SsnHXyNnMB3XhqUGhsi0UjAP/To4mWSpER6gBNq/2UT2wFrwrCCC22Cc1o9rm
 fsab6zH2PnrXJWl6UKkrqgQeLuv66mgRs0jbY9OXKSv8SjXPmCyyWNYzuno0dWdlGe0fO7XedoU
 5sx7X9JwUJdvYfQequyzuKn42R2mdzXBvPK66ctodBb8CE94
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: CLUtnm5WpVYtwY8XP2TcrCi9_4K4uTp_
X-Authority-Analysis: v=2.4 cv=QuVe3Uyd c=1 sm=1 tr=0 ts=67f5203f cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=TDdjnMeiFjqKsEOA0EcA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: CLUtnm5WpVYtwY8XP2TcrCi9_4K4uTp_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-08_05,2025-04-08_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 spamscore=0 malwarescore=0 mlxlogscore=902 bulkscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504080092

Enable Venus on Lenovo Miix 630 and specify corresponding firmware file.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
index f160ba562b0af505bdc1357731f75a394b5eeeeb..c11b972771c3881a57ba5a4dfbdcea487da7c6f1 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
@@ -100,6 +100,12 @@ i2c5_hid_active: i2c5-hid-active-state {
 	};
 };
 
+&venus {
+	firmware-name = "qcom/msm8998/LENOVO/81F1/qcvss8998.mbn";
+
+	status = "okay";
+};
+
 &wifi {
 	qcom,calibration-variant = "Lenovo_Miix630";
 };

---
base-commit: 2bdde620f7f2bff2ff1cb7dc166859eaa0c78a7c
change-id: 20250408-miix-630-venus-7a0b4f1f3788

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



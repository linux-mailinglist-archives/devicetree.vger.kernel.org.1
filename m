Return-Path: <devicetree+bounces-227116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC537BDECD7
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 15:44:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 839D4482F26
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 13:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6234823D7C5;
	Wed, 15 Oct 2025 13:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BQZEOMkg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72ED7231A41
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760535763; cv=none; b=QImWZGZOhMcaavfdhySeTpW0h4l9RgE95y5aFQIfOhtR+lJ94BuDGpYq21+GQqSO4eE/7JOqCa75nLuFFTL3x+YbvSe1vKCpIc83p9yd/meELtfViUZ2w6rP3Q7zdKHTCtckL2XgZNc4LzCLHZdPVGpkDkfj+QnYFmNDsPwLGbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760535763; c=relaxed/simple;
	bh=PBQh2etxK1f1LTUrNCY2I1fGG2Es6sPC/p64HJuEj4s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=pcwEORAfUkIKx80t5+0P90ULIpXMJ6rOqUWFbB8JpWlqD0SxMQGmX+ggo8wBhyecMYIbIf+G78XZjB7M7VaO6t5rnlsICm2GoBf1pZFFg2f50qn/Hoq57lmfW+ugK6ZVDcFSgM7E7eE9Dute/kFHnmLFXYoOW4YIF3wyx0sGoqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BQZEOMkg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FAXBsw005092
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:42:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=H+F/Zx1E+4LDjkQuE7qBfj
	1kxTU3KKLrksPW74kFLG8=; b=BQZEOMkgZWQgu1cKzQd97L1i8RxVHw5mVGK5+5
	9bQFG6NPfJbbad6+yMnw4qSbspov8zubc2EzVR9dTuluEotrb7LX75vqwCGIxxwZ
	B9LMr752wE/uJP4PKEDQ8BFrnG2LOk4KnABNYJnVh2qDfyVuhKipx5VSglUBXuB5
	dQ1tjJNgfCto2Q0dKpgkMwIgUHQHqAr7RikNcrD993GrYyxDSZAaoXbBbcc1dg8P
	K0aHkW3A2sFJTT035ohRX3Zs+/DU49SU5JGT2nSfjHPMX0cnJNNVHOOuCqEnwHJa
	YqsHIcWA5Hxd4Kqic8YjV/hdJZKIV8Evqo5cI/+dk+pqat9Q==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdg4eek-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:42:40 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b632471eda1so10311753a12.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 06:42:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760535760; x=1761140560;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H+F/Zx1E+4LDjkQuE7qBfj1kxTU3KKLrksPW74kFLG8=;
        b=Ng/kXG/mzgVZ48kiXTLz3ZzjY3ZQfNEu+W9AjuRIe4BZhGsX5BtHPa0oGPVA2G3KGF
         46hDdscHnIS+WRnX1skvHfB1iMMFUAxKqjU6yYDhfsUEmZTlTDY8C6deLU9sV7LIlaCJ
         p5P/12PKFWzkgdrymNUlx+x4/xO0JPnegqwK7BKMJGuyeT8Uvqc0FXqT0E+tqvA9lwa8
         HzYCQxrE/CwMFmQYTzCKjQY/IltuORGxlImIgwMZpH8uIrP3Gi8IEkcKQ/fdkgXWVJr9
         FKf7gEW4CC0a+ZV7BARxQhEWuP7kV0d3i1j8ROq/6W+xM7fUEARzDlwIUcTO1MXAilgC
         UWUg==
X-Forwarded-Encrypted: i=1; AJvYcCUddHpPd6LD5Sxd+mO2G71xA6s7xXYXDcNhIbdB3CLUEl616yQXncOMfy8AmmbOQxFk9LntfSpUVOcW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7M/6NuneSnz9T/ia3EJcJ38v2vSrAO4NwYxiVLmRmfcujzpyy
	/2gHYhI1Be+QC1RtAITIo5VPZ78pwMwbOqbmaSN8gOcCy7TCUpPH914eejct1z5vApBeWZOhNej
	97As65zKvLYdCRVQIy08k/YIZ24sESgnm/oVZ3Ws8fx9XL1fvjoDritdE8xeS1jk=
X-Gm-Gg: ASbGnct/GH/5OCNBD1CWlLKCliVgnCdkmR4EQDH7hIBUtzF8IwNa1hpIvQtTLFLjp5v
	DACrrErMUOWWMLdGPUpZ8T5ra1JiQbznlG8/lgenzQOro7qqCJxxkdKB+xW6O0NM1g6DBTdat21
	Du3hw29N8rhnraj7PNqzf68AkMa5ZxAkTrziSMM1vFBK60o3xFWcb6VwEtutxJRiuIs4v1tMGaN
	URuphqYPx5GVWLtdtk+QHlbOorqGDBEbfkpDLNV367RMRF6gGPoqP8qZGay1ASKu52WFMrUXEkt
	lROzELTSws2uPHQIsTs8KM6GkFFBF/F+NFX94BohaugXsfrfLu91w8WA0fjiQDPUP6LbAw==
X-Received: by 2002:a05:6a20:a11f:b0:32b:725a:d684 with SMTP id adf61e73a8af0-32da84616efmr38547264637.43.1760535759733;
        Wed, 15 Oct 2025 06:42:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjUPUFdYaIufIIt8S8dui225qseRVZF4bOTg8Kqh3cjfmBmHA0/by9WGvbGn7zbMYYmRePQA==
X-Received: by 2002:a05:6a20:a11f:b0:32b:725a:d684 with SMTP id adf61e73a8af0-32da84616efmr38547211637.43.1760535759170;
        Wed, 15 Oct 2025 06:42:39 -0700 (PDT)
Received: from hu-kotarake-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992bc18c96sm18849417b3a.37.2025.10.15.06.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 06:42:38 -0700 (PDT)
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 19:12:34 +0530
Subject: [PATCH] arm64: dts: qcom: lemans-evk: Add RTC node for PMM8654AU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-add_rtc_node-v1-1-601c9663422b@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAMmk72gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDA0NT3cSUlPiikuT4vPyUVF1DYxNLgyRzAyMTCzMloJaCotS0zAqwcdG
 xtbUA7V4Sm14AAAA=
X-Change-ID: 20251015-add_rtc_node-13490b702486
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760535756; l=1110;
 i=rakesh.kota@oss.qualcomm.com; s=20250919; h=from:subject:message-id;
 bh=PBQh2etxK1f1LTUrNCY2I1fGG2Es6sPC/p64HJuEj4s=;
 b=RlP8WWM4kyq3AY2tzV2Uxdz6tWHlt09Teuf+elIYO08JDrdBX49xY9wb741nXhp54kvu4IJ2Q
 YksN7jOqQPwBbS9q1X9qFYQx49wpMtWzNXnmHdex2x9Klzvea2l2wwN
X-Developer-Key: i=rakesh.kota@oss.qualcomm.com; a=ed25519;
 pk=dFhv9yPC8egZglsSLDMls08cOvZKZkG6QQn1a/ofwNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfXzznNdeu5Tu/K
 Sk7HDk0LhlJ8GfZQTi7C74h2U7Uf6W2QEnhs4sGRH2u2kg97ewpZVRHPhJSX2Lgi5bAE0MXCw+k
 0SlP5E1wN8p3fOf8BgeKkjEhkzpdWoZdbfQWAASpAgBXMbcB2srzEKGNxbynKON2FAIrovhG4G+
 IywJPx8j2gwFQeuR3E/DOoLjkZ45ZJgOV5qQzBR64Jmn4rnLief/ra4Ys/4TYU8s4meOWwOzNcP
 m7ndZtuXcHxxtkQSaTHfIKlHYmSODI2WHAd0UAqw8VEl/pCHD4UAQ0bqvdpxrOn2ALmNRRORwGx
 ho51kCZhoIws3Pi081XIwJgdqDn0o1ZPddtqJo1QaUL8qndFeh5vxlTUnEf3byiI0OGdB3/wH4z
 ZuZBcmm4bg1PAg9GP6Z76Suds80YGQ==
X-Proofpoint-GUID: vYekqGUQR6-33p5fL7e7Lmit70l-2VG_
X-Proofpoint-ORIG-GUID: vYekqGUQR6-33p5fL7e7Lmit70l-2VG_
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68efa4d0 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-rC6o90vqo3ez8JSJP0A:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025

Add the RTC peripheral node for the PMM8654AU PMIC,
which is controlled via the SPMI bus.

Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-pmics.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi b/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi
index 1369c3d43f866de9d8cd5cd4985241b99c0a0454..4eda7043b851f363d0bf053587fb1f5edae0c4cd 100644
--- a/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi
@@ -142,6 +142,13 @@ pmm8654au_0_gpios: gpio@8800 {
 			#interrupt-cells = <2>;
 		};
 
+		pmm8654au_0_rtc: rtc@6100 {
+			compatible = "qcom,pmk8350-rtc";
+			reg = <0x6100>, <0x6200>;
+			reg-names = "rtc", "alarm";
+			interrupts = <0x0 0x62 0x1 IRQ_TYPE_EDGE_RISING>;
+		};
+
 		pmm8654au_0_sdam_0: nvram@7100 {
 			compatible = "qcom,spmi-sdam";
 			reg = <0x7100>;

---
base-commit: 13863a59e410cab46d26751941980dc8f088b9b3
change-id: 20251015-add_rtc_node-13490b702486

Best regards,
-- 
Rakesh Kota <rakesh.kota@oss.qualcomm.com>



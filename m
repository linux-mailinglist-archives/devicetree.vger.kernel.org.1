Return-Path: <devicetree+bounces-203532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7171B21B74
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 05:12:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54BB83A43AD
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 03:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B2062E11B5;
	Tue, 12 Aug 2025 03:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b4RUZNOB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C502BF012
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754968313; cv=none; b=g8BKY5WO31kD4IEg3sUoXcdWCt3pekwzOGJ2FuMqh6jackEjN/zi+5kGvGRMlS4/yt+NTSNu0vMStM1Y3xPD21DZdLtADhvBwbBNqU0c2BCohex+7aDk2/DT9WriVpECd70vJaDh0O+ioVnqLcQ8HUnJDe6LiKXXGX2l0oqUQkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754968313; c=relaxed/simple;
	bh=yAYPEUK08VYj2ujcch9sT+wEp8YxtQPuLJnVvGWBCps=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NIHU7E6oEiSDLazAuEJOfUzxldXt+aXFC+evmri9O+oC+8Praipq4TGARxm6q3KTUet3f3MVlTg8KHsJLdeqB16DpkM9p9IZdS9kzAwpA7hUtRbyq+sgWZnM1nv6N9kutFiGC7foOrYZGfJTzuOTxHFV5knwjYZUuF2O/lbrIxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b4RUZNOB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57BFVDlZ019150
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:11:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	koGcEsmeJ1+5mqLjlYSSxGm4OKtlykXOE+APf7A3PYE=; b=b4RUZNOBsCP4dlYm
	8qxEV1BmZk72gT4/JbsQHHhlbNePEtFQ4gqUCCqKROUKygdh7+2l8uVQmnB3tKDj
	LggyrajmWngFSg26/4QEc+4fLBDYXLHYSL60RMXHDGhyqk6lbM0Su4a32Dj+WOvN
	yUF1ALkNs4U1q04Pz9Q+2FVhLy6zdq4yvaZsa/xmAM8KqG3U8fO42iYb3wlOGTIC
	dB3bTwJouIKSX2ugGK15xwhYRHmEsddvqyNyaUy/j5oN/ceRP/0QAJn/pf3DY4Fa
	91SvvttWT4nORM+9UlcXEeCF5/HxD7Ws4hYkYWe1RDriVFoQnKxzX5oa5ePqH7GU
	B6OtLA==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxduxjsy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:11:50 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-741af44b6aeso10766869a34.3
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 20:11:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754968310; x=1755573110;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=koGcEsmeJ1+5mqLjlYSSxGm4OKtlykXOE+APf7A3PYE=;
        b=KMStOm2J+Esj8po+/g5Aq8FIHakrpPFG/Lx9P+q903uzXrQl3MxYWNiUxael5vTIHo
         Yj+JRjbyx5x0kMouHO3tuspeGMVEyJ5dRc0hHfAuQsDTq0TPeYfJoVKJ4vqnJTySDsuZ
         qmmqjHldRBuiTS0ClQP26MVTU23a/c5SIxEOwfOvCV5ZiH6JTubKMzuUu6LeTXBEVdDM
         qzDfTEumjIIh/HLE3BB3UTe/L78APRJHPTkfdZyNXBClrIBf9CbZ42q/ZQ6jkOtcn/qI
         lnqPU+yS4fiW5ZUTqHhhFKA4aZ9fL9wrYbpTNCJUpj+e1xjUcQMEs34N9dF9Kr8AcI5A
         ujrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXvVt6jzrv/OOrWbZKF63YcsNzLNZs8XBFyivdzRjPlxbghLf0j+6Un4kdzUP5Ks8rzGuehQeu/Y/v@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw9sZongybeizX5aG3EULL5J0cDXpNjFGr0EJMUZQUM3+d3kZP
	fuZFqivaXOWIi556D8UYaoT0QQpgf0io2lfXVJusODs2MckPSCnAIF9f7+EFyt1zgZScqQA/Whk
	SFIrX9YQTRoo7eB31KzJ2O5TMNpTM2ccfYS2NKCW04vEf7lH84SMhYv+81a/6HKUv
X-Gm-Gg: ASbGncvSo0pXz1/dQWCL5mEEQozwhK4+aDT0MZ72E1jOtvURvlEus4nCP4atvo42MTg
	xJUsF57/WK8ODz/JzJUryj0WI2AJR0pNY0vuQ2g7mCm67pVwOlOIl66GcIktVJquqFegb0Edfgz
	aBH9hBlexa6ANCjL9eEMF183dMAjboi87lQ4pX/CjhvQzezTyIIOqB7pWf07CG3hhydHwDRLKlf
	rZ59jCOFLNkt3TfTT1R/NrBNGQyqpIotT2J6FRJHOaUDg+fR2K1P8bGKXuMEEvpzhLLODH3pHI6
	DOazGQP/iyFHj3dmOukGY5byhS3nIvG9gDg7BsCcXM+jya2AcPe/7344pfgRZCk8Py5tybeZRTB
	XAgh42iyV8PdQppCJt8OrTfLwO/9IyHMuV+J8La8=
X-Received: by 2002:a05:6871:8305:b0:2bc:918c:ee04 with SMTP id 586e51a60fabf-30c20f1f6abmr9606652fac.14.1754968309921;
        Mon, 11 Aug 2025 20:11:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHcrtot4++AM2DTQZDZVUqKw/I6MmXZTfbfJDZPGmRoZtqtAJkZ4YF8l2jc6IaKXeGSuDOFrQ==
X-Received: by 2002:a05:6871:8305:b0:2bc:918c:ee04 with SMTP id 586e51a60fabf-30c20f1f6abmr9606629fac.14.1754968309569;
        Mon, 11 Aug 2025 20:11:49 -0700 (PDT)
Received: from [192.168.86.68] (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-307a717f0c9sm8174531fac.13.2025.08.11.20.11.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 20:11:49 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 22:11:33 -0500
Subject: [PATCH 1/3] dt-bindings: clock: dispcc-sc7280: Add display resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250811-sc7280-mdss-reset-v1-1-83ceff1d48de@oss.qualcomm.com>
References: <20250811-sc7280-mdss-reset-v1-0-83ceff1d48de@oss.qualcomm.com>
In-Reply-To: <20250811-sc7280-mdss-reset-v1-0-83ceff1d48de@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=828;
 i=bjorn.andersson@oss.qualcomm.com; h=from:subject:message-id;
 bh=yAYPEUK08VYj2ujcch9sT+wEp8YxtQPuLJnVvGWBCps=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBomrDzIVrU2qOI4utrb3zu6aJ3bGes/Jv8BjFbV
 chxKEUzWSiJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCaJqw8xUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcVYkw/8ClZbWphkBhh7Fh0H2wi223597q9cOeVWPcy7vDx
 svRcPIipdrdKVTfUyoCerM9qqXbsZ7d9fwkyEUme8p/TGI9bbFpbo9DfdpR8HpGstKn3mnJVkMq
 RTMvt1LsGaZbpxmPIv7kR+YuMkIsZtYSd0+9voSJB5kbDHHyjYGjyf1fVqgkoS1uKgMJvVDpuEf
 /Vmd/slrfDTqCWuAQGNw/GWJZhuvHHH6rC7WyUfBJscEY3A4PSpmJwWHM4WLorGBhmLaRhJRRg6
 S5CglPa+U8MAFduqQrZT1PuQZVNdvUhAl2qangbbakz9Ss4O2Huj3uEpPJ4gyy4CWyHDolNJM9U
 J+0f23PlalCxN/Z/wHGd3I02zu77klHhIV8QFZtQhXHUwynDvbLGEuKN8KW6EDcZgpkI3ykVh06
 T1LixADBfu7zUpn1ECmhZ2kFEOKAR3Bj4o4ZHK4CxXn5b21AR26/0/iy/MrgbaI4DHqrm8yG4Qv
 SJMlCi+DoZIx7WJh4RjwZiZx4TT/coY+BoEPOyoVJpR9xe4Y+Ndkx8GqNE+dpVL5uXL0E5eaZFU
 ZT0HTLRQk0/QZjRoSCv4gdWpuKdxsFTC+lqC5Ik8pQgCzNMWp3PzdiZ7HvCDdzLaLsBB1cob4UR
 MvAff+ZpagZsXF5ox7pDxRMn/WQ8t6DAEVak3dLIosWY=
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-Authority-Analysis: v=2.4 cv=IuYecK/g c=1 sm=1 tr=0 ts=689ab0f6 cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=DaeiM5VmU20ml6RIjrOvYw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=ZzzWQa5D6bKC9TZe_doA:9
 a=QEXdDO2ut3YA:10 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-ORIG-GUID: t1u3n4bvtHB6Lgu4sgyR3IjbhOw-HDZf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNSBTYWx0ZWRfXzllM87w+hg/i
 yh+f+3IGG4l7FlWnkBMuKv12obXQjHNDu7BjOvlT5NHYrrpUB9uJyIPdF+HKE0JCiZ2Gy63kLDj
 J96iKIBRRYG9rXwEkqRL2RhCmLRbI4Aa+5dpDrZjb4L4WI4b31s0OwAnL8cBBpBfoSSKnGa8SAI
 fk+t3OOgHDv9F85ra/B3HcY27+Kve3kmmS9RcxD2sW/BW2T8fa3t9NBUlSJPK0QRBlgxEebDAI3
 6Pj0PjvBAtkbSELeUym79nlMtXJs8IC68JZPi3SjYNyQO8mfA3n0gwafrXxCVWpS2dkSa3nz8Xy
 TXjxquTf9qPFj9pHlc7aVhkDZq5M9XJkaQZTp1AuacJb1oR692qBUg6FS5AVaP5LnE3NuD8fo78
 9pO3WQNv
X-Proofpoint-GUID: t1u3n4bvtHB6Lgu4sgyR3IjbhOw-HDZf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090025

Like other platforms the sc7280 display clock controller provides a
couple of resets, add the defines to allow referring to them.

Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
 include/dt-bindings/clock/qcom,dispcc-sc7280.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,dispcc-sc7280.h b/include/dt-bindings/clock/qcom,dispcc-sc7280.h
index a4a692c20acfc954251fd1a1a59239ac62b20015..9f113f346be80b8a7815ffb17a6a6ce5e008f663 100644
--- a/include/dt-bindings/clock/qcom,dispcc-sc7280.h
+++ b/include/dt-bindings/clock/qcom,dispcc-sc7280.h
@@ -52,4 +52,8 @@
 /* DISP_CC power domains */
 #define DISP_CC_MDSS_CORE_GDSC				0
 
+/* DISPCC resets */
+#define DISP_CC_MDSS_CORE_BCR				0
+#define DISP_CC_MDSS_RSCC_BCR				1
+
 #endif

-- 
2.49.0



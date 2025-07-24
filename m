Return-Path: <devicetree+bounces-199282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0B2B1033A
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 10:18:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22EC11C20D55
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 08:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96CB22750E4;
	Thu, 24 Jul 2025 08:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AJsp9JNO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10EA274B43
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753344966; cv=none; b=D9/hId3gS+Cyy1R1h3ki3VPfpDueZxQncusHpS8+SPtdhm6UkHzZi9gmv2ztEDOic5q3hIGslGLR+yG9KoIHv+BXCuGBSOECj9HDwebpRcmxQAVNgM0C5kG3cYpoHjJ6djastwDNZ3mMHv95Wps9dkWzcQnexcZISyKVXbCJ/uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753344966; c=relaxed/simple;
	bh=dpxW8aShh2RYLX9CjF0k/XEH2duG8LnixEBwdfov9eo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NBE4zc5yd6jwW+YuhbZIaNcmedkjawgXQFJKXsl9NoK+SShL6Ur+54lU9SkQ8xEVLb/q+A6nYO20PsR4EKqbBlOQOA0lTeqFB86KpCaltGXSofLMGoujvlSHyAE5D0TqvZasZONmUJEqPVgsQPMKUHfgMAqOt6SCAUf17szOvFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AJsp9JNO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56NMXc1F022169
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:16:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+WbtO0JaeN1fhr4oYLduWJfFLHLQ9helHJAYmSQJKos=; b=AJsp9JNOghXwSaYH
	uiwHwJ1hy14x98G2UyGqqhgdhBXYglreHOk1qrXs/5ihnGUcunI5DlFWuHip/+48
	MPewf5csXW4R9pUZJie+Ig7VODNpXvPmH179TEwdCb2V5Hoicwh/O3WHqTNddVUe
	SRbuV50IzOQi6h5z2uOeOLenAkdnbXL2xTJu64yAY+mkDtDREIkSS0fwWKMhloKF
	reigUOloGt1ZVLadAHt0DBQPM90JfW0ye4hnjSmVj/y9hbdRTzpwVJPNLht+4bEH
	fKlm2M1pu5dvt1IPDJz1lmBcsfLI45xz0BlB9FbMalwdIXG+oQwigFRlvHcxKFXC
	6gLcJA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044dqrnf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:16:03 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2369dd58602so8195405ad.1
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 01:16:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753344962; x=1753949762;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+WbtO0JaeN1fhr4oYLduWJfFLHLQ9helHJAYmSQJKos=;
        b=fCqNCcXiitOV+P9wSgz9cib094yDT8zfkTyPgsy6uM7AUm0HjrYolwr68HGKcXZv8L
         VDk9/8rq+lc/YRgBJC3TtE6tHWxlLKQQ1jk5XM4lSegxb98ImHXrVun22mKMnXyP7nPT
         Oe2SEnM/h2P4PvNXTdAlU+iJZkyn051AtjZH2trHTMTEOUyKOfflNUlBidebOW2QrQii
         eUNjsqvOZxG0DwrPLqeTv9cSaxVjNXXtEumt6OX7Xiv14pQWfc3ZhXwvW6QaIOheUH5r
         xry/S4Fl/TUjfHIpry4cFpF86bK9/6O795R3byMzu052Khhy3hhJIyUI1O499xSb4Bqq
         yiLg==
X-Forwarded-Encrypted: i=1; AJvYcCVrIO+QujyBAKmI9MmShmRUj5Dk1ds7N+dWlL/s/oHZl0hOjzEtLuKu7DAbnITcA0UcEhb/ujNkuGKB@vger.kernel.org
X-Gm-Message-State: AOJu0YxKg/xwjWE1DMBlTU7miLwNmMdtR2H0PY39fNYtvFjQTpRoJM9d
	9DGZFROwTsBCECoivCzC/KN7g7IZT5wvAlbiMbDYkDdK6046SEQiK/tPvKMZ2nofdic0XkYtLQn
	sbxpVaqJ4bTFmhVATsoTdjSEAPqSGtWIG6yII/RnlJc9Kgu9IxKgi1Z0YVt7GJdsi
X-Gm-Gg: ASbGnctzpfSE1PoctPcL61SmkZqyHqlxRkFjLxEGSQF4yMAdGe/SIv34RVaL/9RhKwz
	sbbmW4n+BWs6K36zsjiL9xvV01P9WcW1e1uxyIefIsjN7tc77MZkIrirbbWgexjt3IXKEGtvUW/
	Oygbek40n89yBH1Ayo+h3aAhw8qv0OqSMiBsFjdk83BIlOTkD4qn4qunXtzRGIJU8J6T7asEY73
	0Itn1iHt2o4heY71DgFgK075X5uFlFDrYglWWhlkDaJXMj+G66TWz2aeOprXHkd2kRghE6nFhSI
	x//okEZyDvPkwM2eNl/X1Lf+HitD7C7oiw5A5bgxI4PhSxyQWqc2vF7hyiBkXUX34floACYse8N
	VlKacE3mGhlB/tLFsgKOg/ZRqtjqdt7Hfew==
X-Received: by 2002:a17:903:2444:b0:23f:8d6a:8e45 with SMTP id d9443c01a7336-23f98140a01mr95820415ad.4.1753344962231;
        Thu, 24 Jul 2025 01:16:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkr91/pw4vNNaIUOBKuk9Uuu5PH41arn7hoJ9vxyrcC/rkoCGcnGUaqdCIG0nlSwdowIBEpg==
X-Received: by 2002:a17:903:2444:b0:23f:8d6a:8e45 with SMTP id d9443c01a7336-23f98140a01mr95819995ad.4.1753344961803;
        Thu, 24 Jul 2025 01:16:01 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa476eb07sm9770595ad.65.2025.07.24.01.15.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 01:16:01 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 16:15:24 +0800
Subject: [PATCH v2 2/4] firmware: qcom: scm: Allow QSEECOM on HAMOA-IOT-EVK
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250724-hamoa_initial-v2-2-91b00c882d11@oss.qualcomm.com>
References: <20250724-hamoa_initial-v2-0-91b00c882d11@oss.qualcomm.com>
In-Reply-To: <20250724-hamoa_initial-v2-0-91b00c882d11@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Yijie Yang <yijie.yang@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753344953; l=902;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=dpxW8aShh2RYLX9CjF0k/XEH2duG8LnixEBwdfov9eo=;
 b=+I3p08M5AzxBFw1WlgrLsUDXm3vOpWV5Qoo9a4Jpf4d6ErbbLKiNBW3hdCzKo5eyxU67bTfk9
 6F4CKEtqLhRAx4DQqxEDhcXx7+pWzfFHbhxIEEzar7mHBYs8IngrpLt
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Authority-Analysis: v=2.4 cv=BJ6zrEQG c=1 sm=1 tr=0 ts=6881ebc3 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=h7II6S6JRGbW-U2bcKQA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: IWcN2DY4r91MhtPKuNRkdWu-EOpb4qwJ
X-Proofpoint-ORIG-GUID: IWcN2DY4r91MhtPKuNRkdWu-EOpb4qwJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA1OSBTYWx0ZWRfX2a6zzbD328nu
 zudhe9Wwx1vzUFT/nqcFfJegZqbUPdEyD8z98YcWB7XzuGf6XTJbigyjt+yhzxSiKnJas4H3Cb5
 AP1NPmkKcvys/x3GHES2f76NLZEJwE9EIXCUZBLoeaFLHS7XJPXKBe3NrIkNOE+jI0His6JSnkA
 CUIOwinPCW68WAOxkvjUsj16v/MiG5mizic7tUFKddlCsC7TVWDX4MaDHUrqF5FT4sW3co1mok9
 GCEb1IfiEsTjIAPh3PrNniUgyJGepyYLpXqyB0A98m7Z/rfkhVMKGygOoHZm4bTCqDgZiiyUFK8
 7i278JBmXYvAZWWpfuJHpxdu3Mye/1M9ZT2QlZl5YpMFaPSJ2p36UK5x1xEr1CVZx3cuFZUNI/g
 jFeghILVTegPhRrPadenB3bLfqZ6HkTEDIOEaC74/zOk7Hx861Dp7gImLdDrCPb8RaPZt323
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_01,2025-07-23_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 mlxlogscore=999 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507240059

Add the Hamoa-IoT-EVK board to the list to enable access to EFI variables.

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 26cd0458aacd67dcd36f065675e969cea97eb465..27c9d4a0912646415efac2df089ddedaf971fcb1 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -2006,6 +2006,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ .compatible = "microsoft,blackrock" },
 	{ .compatible = "microsoft,romulus13", },
 	{ .compatible = "microsoft,romulus15", },
+	{ .compatible = "qcom,hamoa-iot-evk" },
 	{ .compatible = "qcom,sc8180x-primus" },
 	{ .compatible = "qcom,x1e001de-devkit" },
 	{ .compatible = "qcom,x1e80100-crd" },

-- 
2.34.1



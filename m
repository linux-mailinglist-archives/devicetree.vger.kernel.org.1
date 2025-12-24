Return-Path: <devicetree+bounces-249484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D65CDC090
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:45:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A986303FE60
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 308B53191C2;
	Wed, 24 Dec 2025 10:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nc3TuhcA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hg1hdLoH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADE1C316919
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766573140; cv=none; b=mCCgmfRz1kRb6/tjPeYMBToG3jtkBntt68G3VhD5zVGTRoWx461nwEcfKy9xz1iUH2cuAk9BGDD6gLPYaPIMRh53WyfzHB7q4W6I4y+rH/b81VQLyWjAt4sFHs0vWCWeDJxYefTvKJIO6omYn2NpU9ntx1g/dVT80iqdsj8Xv+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766573140; c=relaxed/simple;
	bh=nqQivijX3tURXwG2DhlovpvYwn5frwJQUGpzB/oBX1s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j739XD9+2f0QAmCS2ZLMiq6qmqUlVQLOLepsWGoBA6bG8QMaKAvEkj9YAxeUc/gUbtF5rz/UrPGObnbqAtfb7mUFYewjO/cF52rtJSYUu47P6/kRnETSsGNxMjSt2HLsoKLkO+gy+IPoyhOX14LawUpfX6OP5dukkxuj4E9YAyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nc3TuhcA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hg1hdLoH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO6YJu6678258
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:45:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hLseZ2koo5eBCUAcJR2ZBCeHJWKEZLaDNN3DGmDDF3s=; b=nc3TuhcAw0WZ24RV
	9fHkJkn2gkiH372nKePuMTTbGOQuyBInTBcdiuxhwDNpFllJoR7hyL+TkrVXdv9l
	W/artb8KzDY+iuioEFUZDdJA7BHd6USdwEqESX6f7Bf8m+PkCO3LcGUeanioxR45
	D1U3zAqShR2r2EjwM5+JPQoMft36PlwGVYwye46Q1x1dcQpm6pvl6guiUJnhQGrg
	NmmKyUVNGmmS7iVYAPCD3/+xNYMJxe9m8LoFamQ2aY/oWnkX6CZKS5znq1b0ksqq
	2Hh5OQjYWUUnaZ6LoFVanI17MR06gOeYMja/ZUKm8NxzJra8C1lmoMxBdkfJnoR4
	H2HGbg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7yvq2cj4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:45:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b6963d1624so1397101585a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766573137; x=1767177937; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hLseZ2koo5eBCUAcJR2ZBCeHJWKEZLaDNN3DGmDDF3s=;
        b=hg1hdLoHAh+LKMooz2hgyQA5UOMofcXkRzI037iMsHowGfnmYDfrSQZQxZl8nCq2Iq
         yOQR6L1PWwExEjuSs5kC7RWVlPI38dr/1BwQYoG6czj7k8pEgptjPH2dw2G/GuYTdl7E
         8lCwDUwfSq9JccqwBYMLOrj72aTZcWbWVVC/BQKZGl/w3ZC9kKouuB1ZKe4gS87JkZjO
         LYVmCSRPriIla2wGR9/F07bMObLoiIUf7VIPaXTnXAYTgrRKjtrnQROgn21RyhD1aq5p
         z0r9c+nZDsWzbFPO8cotZxosqCEi5uxfyY7p/Rx3jSeDbFcPD7t/VXGxU0dpN2MGBU2T
         nVbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766573137; x=1767177937;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hLseZ2koo5eBCUAcJR2ZBCeHJWKEZLaDNN3DGmDDF3s=;
        b=aWZlNNpxNYMg0QaZBizpTuuXdjd8kWX5C39CNPcFMSLt4kskSxZa0E5X5++XlJ/qcH
         VrZApKG+fsC4HyuUxXjvSgpqb+8GtZEiulUEEaXYz1HrqDBIlMrCiYddP4GgjVlRiExN
         q6F+pctjsDZWpJHq+y0EcdpZ6PgZKf/pthLcmbyLa7MxZje+RDbb3qRE2FHxg1TS8Fnj
         e6LzCSDKDn+YBDe+lfwGgjzNODT94y0C4c6Ghiq8SONpjjJ8mjopQztAuEyulBua/yXv
         p08Ly7/KV1XuaiMeiOGo2omHBV45iXqBLeyTQUwOH9czs4Jx4VW3H+6nxq1R4mruq3Iu
         QmMg==
X-Forwarded-Encrypted: i=1; AJvYcCW2mI9SWPYmXiA3rIC2Edg8R8gsSEgfDwgijFoKOqo/gFDLSeX67iIkHS6TmuXhqUoSLhJuXJR3DxfV@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7RvPn5ctlU8PJKEKWo0UDu4MHebAGT1NQAvzgE+qyhJeNIj8o
	YNdD8bcBocuHONk/GBCE++FPQotNg8ZcWerwQhM9SNaXV/ZjL8NHmxCe8FXdXQZdFjv8/SSBP5c
	ESdFI56M2H2pMxkqiwhuk+cMy76rQtopXL8NtaVVQFTA/Xn0cUSZt0+Z3wRiifeea
X-Gm-Gg: AY/fxX7LIXIgfi1d2YQx5LR2YNfsLpCbpRNxTC6AlPmw79pX9lnarrkVHQ4wdeQTV0r
	ekiGXMfIVoqh2P/toLVIea99RiSRiu3EI3avRUz4fHvLxo2EN3St6Dt/eIJXK/CyER6VlkOWYqo
	j8khgHITHjoj5Wv0xWVYizXwClKPbx8VOnCTzQSRJ+kP7NI2u1XM0nAmMvExmMEqe0cBwVb1Vw0
	MJdbJF1EczdbVVIVCKwubU1czs02QX83wE5tUAVb1RdO2N9o5HwtBaI+eKZJqMl5mAptCPmxRSi
	32NHHQS6uri2O+w+mbCb1w2+SbKtfIx+lSvNI1vnTHdshyPaaJ9ebd8dUY3ZbrXltBT8GyfqX9l
	0eJJehRd/29B5BB4=
X-Received: by 2002:a05:622a:2b04:b0:4de:cb90:dbe4 with SMTP id d75a77b69052e-4f4abd944c7mr247219191cf.66.1766573136688;
        Wed, 24 Dec 2025 02:45:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHwv80jcppdUyBm76lrlgHFQBgBfzQmfNyDA+QXb75GeakDc5Qkq3iK77XpmdwLyzVP59dYIQ==
X-Received: by 2002:a05:622a:2b04:b0:4de:cb90:dbe4 with SMTP id d75a77b69052e-4f4abd944c7mr247218901cf.66.1766573136130;
        Wed, 24 Dec 2025 02:45:36 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1af20sm31409049f8f.2.2025.12.24.02.45.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:45:35 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 12:45:20 +0200
Subject: [PATCH v3 1/3] dt-bindings: watchdog: Document X1E80100 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251224-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v3-1-1801c55d2883@oss.qualcomm.com>
References: <20251224-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v3-0-1801c55d2883@oss.qualcomm.com>
In-Reply-To: <20251224-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v3-0-1801c55d2883@oss.qualcomm.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=995;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=nqQivijX3tURXwG2DhlovpvYwn5frwJQUGpzB/oBX1s=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8RHc7/JTmGnZuvFeiySIeaZH2h48wHK79AvT
 Yl2oKiXG8+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvERwAKCRAbX0TJAJUV
 Vj9GD/9Ud6nklkgjS3khWOqLhGfQZl3by8q7qMHw3jppICIboZ3SMQPwy8Cki27I7VDXeKmkrnG
 PDxxcKcwSE0z5LzXXXTjT5r7AnbmUHye/By1Z5Vs6iXxFPbWpwEtGPs0So19DcqI4n3witNZISc
 /9WIiGETuysN8sZAHO7DPB5ZYdv1bab/LrPDDXU6zmt6KR/qS9li4XoTs4FhYX4bg+dlraJvQ7p
 ztwice2khR0hfJAnpzyP8E51vEIJLy8VL3AQNclCNnGh1A5yx6mmqQsGBpPevGIy8Gx9XpcRbmx
 ZkWmBgTnN5yi665cWaU3DJbt2dRdORKhdvTF6BU5CwDnYd54MkjFfNaScED0m0QKs7iJLqVvyks
 Ugs85oxe8Ni2uDbUdxFaYW7NAI/Kg8/xAeXFZ8KguUmkmwITKGkFjEOEyjRdyLileJ0d9cucvQQ
 pH6RYB+wMguO6DYNFwsbFPEhI3yctCrE+r3r3mdjLU6cxmGmzjpwF0D9KcWe0SrpKBmKKnZSDS3
 66lr2Ls8tUBisKxZv1KjQHtecyXjOBLBYfps5VyrdAa5rrGyD9xV19d79Cuw8rYIQ/4pfoadkxL
 5b5bLZ3w1zzrtANNyoB0w8pVkFswX9SDEXzPhGbw7lpE/L/l+upKSr7o5hImLlOpN7DepOIyUHt
 P2vljh3ZzIiSWpg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: kjuqndanG6RV36O9Rl-4rB4Lc-9nB00i
X-Authority-Analysis: v=2.4 cv=abZsXBot c=1 sm=1 tr=0 ts=694bc451 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=_jlGtV7tAAAA:8 a=EUspDBNiAAAA:8
 a=b9FoeKhDW2wivhjuwToA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=nlm17XC03S6CtCLSeiRr:22
X-Proofpoint-GUID: kjuqndanG6RV36O9Rl-4rB4Lc-9nB00i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5MyBTYWx0ZWRfX0sDMO2CX9tE2
 ycBWG+xMkv21yi+wyIaccV9D7Cb3Weeyr2Dak6mpc26X5QmJ/3/bcTOgRgvydtq0HVYDWS4DenF
 tM1169K/qpokW9NwefI5pxe2r4A4HShXAkPV5Ep7ZHvXMCMGUCRb6MZt+QMipUXdgeCsBHebyzo
 5JYHTjR7FeoYuY00Lq07k5l/IzJDqRrlVZB1+0SxlCCWc5XzkVHZiWPavXuv638XK4jGdM+cnsf
 OHwhm6ZQipLWDzVAOnwQ4mKxWap29Iu4doVoVnXXJzxA4JQfrt+TUKVaTItjDmnoB64h719/Lo9
 n+ijngZOI4Q/8EW7kRV5dZL2sVm5ULW1b6RbTTM2Xglbv1X3kD1UU2pdoAlIMg4I1l8/wiIlk5+
 mXxuQYURgD3wsg8tBw9DrHKamTc3z46rj5eZ8MNP8O5/OUUVUhSfByPuxEhbXiczQK/NLYKUi+G
 el5BwAnBRs9Lwg2stIA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240093

Document the compatible for the X1E80100 platform to the Qualcomm watchdog
binding. The HW implementation is compatible with the KPSS WDT.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 54f5311ed016..f2c4bc900e5f 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -43,6 +43,7 @@ properties:
               - qcom,apss-wdt-sm6350
               - qcom,apss-wdt-sm8150
               - qcom,apss-wdt-sm8250
+              - qcom,apss-wdt-x1e80100
           - const: qcom,kpss-wdt
       - const: qcom,kpss-wdt
         deprecated: true

-- 
2.48.1



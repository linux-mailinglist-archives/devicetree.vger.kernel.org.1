Return-Path: <devicetree+bounces-214218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC99B486A8
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 10:23:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEFCF3C1433
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 08:22:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3F942F49E6;
	Mon,  8 Sep 2025 08:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SC1xmNvQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161A42F3636
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 08:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757319644; cv=none; b=E3S6KUs4nTjUaxuHGlcJkMkbxu9Ykwk8Fx9zvAa33sD6C30jiuHSqUHLOxd/I+528cAb9IEYnX/z1piSvz81lc+Jwc5aUUmUjUz1Hsgbyui5juYyafQkwh0ghvUqWbeY0sWpwsj3msn7qgp5B1cTI1XhLnIhStYsfgLhC22VZjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757319644; c=relaxed/simple;
	bh=GtMkvJtKpN0l4S/TYqIWBJap6HQ5JYL7CkanzzfgJnY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h6CR+dZIo1Dz2rtisFz8SktXLC2M2sQmnTj2HG2Bdwv0pEjy8rbPjuKJVx7MmLUvNEWdzmvQaLL4fRzBHARXTv2FumxW3eQ3YoAU30ARxHIaHXUCSzXp17UkZZjIg9hPj3TSRW0dKTjpUI5wKKXpE8cNccy8OmTXh/G2T9dxffM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SC1xmNvQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587MlMar017314
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 08:20:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EmVDnxU98TqnYzCFaSxLfvmX5Q/ll7vp8vhzU+iN+og=; b=SC1xmNvQPJOQXL+0
	KSFWtgUk+HOakDpWUhgtKeIQc1WWgPeoTD0DH8XVtGOsn6ZOKgJ3reo8fS9CGEaa
	MudiCDNRo0GDcVRBb5hDHDV5gNJxwzEQ70jGkWENpXcabvE4yeSWbecIN7Cf+ul2
	esivIyOlzlNmomMLmcjwhMOIN0pHargebHuA4S8mlDYJlb2ZtIDqj8y/SnpG4nWz
	vuRYTe8+ccToH9p8ECQh8XMXfqgizfTtBKUo4DlCd4PbbovKg85VsJ/lTxE1DKYR
	qavvradENblror0n/dCYyVuBrCkJG0/pB/DrOtKrwR65cAowq/0RbQanm7PpqiPy
	Kzb2cQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8bsxy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 08:20:41 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24457f59889so39912545ad.0
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 01:20:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757319640; x=1757924440;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EmVDnxU98TqnYzCFaSxLfvmX5Q/ll7vp8vhzU+iN+og=;
        b=PjnxluSyfq6+VSAC3Q9ylIwEVpdWlE6985y5NcGIbnYc9mc9NbGMYAjCAKzkWPwCGZ
         h/b17RXzJMrmae7jQ2rve9RMBOAvMkS4L4keLxmL90SoOgNoV2T2JDy73BdOidoar4K5
         c9D5EQIUxNlyoTzuCzyqdd97WB23jh6vfrKzYkzpH/QMYS7RRC1PHuesArPl4tkOs9PX
         OdVKYoryeh0c/P+Z3NPLEzE9BkW0ZjqsN4/2EZzYxk80I0ADazs2FCmxT4jmMsAQBKqa
         uDEojL+J9a9Glf5Hx39pFj1VYUKYUSM5EslbPXJfxr0NMWX5qzcGg3Sc5MBMr+OJ1YWM
         ishQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkxe1MJEcgpEj/P94uIDD4wmtspobDHqxBeoIk57a6oTJRgOqz2jPSiHdfee5Cw1x/K03g+MyFaMDY@vger.kernel.org
X-Gm-Message-State: AOJu0YzcKahLiIwLVhZASp0vPJ+Bgej4/z+/zgPu01gNBTSJJO1IwFlZ
	SbMdu/70kXqtD2HAPLT9QWX4gVcFYUjcyQeaRiw30b41n0Jjspk0yjoAzoWkEABNwmdw1wgcErg
	zdpmxgNYJQkhKIbSy7H6kudAXyiYLp1eIsgT2ZpJJEt4tYWWV18+ocJ6tDDqko6VR
X-Gm-Gg: ASbGncs7C0pQ3WQneoDgaW64ToaWjumZhEZtPdVQxryRcPydsDNNrY4CWHpJHUqDdtt
	vyuCtS16OKT0tX0l2hVnk7YR50Or6oOIMHY8zbqLhdvmgcpKl6s24RTxt9FP4uCXiv1kseCTcq3
	b//VtdaBULqc1IWjqs62NmUJEPzrJ26eH9U9WI6eU9fhhS09Py9fgDe1BhJ3jPIEiTy8rc6gMcP
	RWyGyD88JMLnH3NKQk6ACumRqBQvVBXCPW8Eex8yV401R8GT5quacPyOMccjoXnHO9AevMkyF9s
	+J4Cqv7T2tn93wQbG9cQ6CRUkdikD9ExTqqIcu6Zh4XSF9xT10l80+aCyRwtsYxs3XiQ
X-Received: by 2002:a17:902:d541:b0:24c:d717:71a8 with SMTP id d9443c01a7336-25172b49a1amr104521515ad.48.1757319640396;
        Mon, 08 Sep 2025 01:20:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnIkxO2hRnmTHM8DY8Yy8QL6Z8w8e2IIYZlJagoO9krVL6mQcBPeRZhU0urfOAZkEARU5PCw==
X-Received: by 2002:a17:902:d541:b0:24c:d717:71a8 with SMTP id d9443c01a7336-25172b49a1amr104521045ad.48.1757319639802;
        Mon, 08 Sep 2025 01:20:39 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24ccfc7f988sm104852845ad.144.2025.09.08.01.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 01:20:39 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Mon, 08 Sep 2025 13:49:56 +0530
Subject: [PATCH v4 06/14] arm64: dts: qcom: lemans-evk: Add EEPROM and
 nvmem layout
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-lemans-evk-bu-v4-6-5c319c696a7d@oss.qualcomm.com>
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
        linux-i2c@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757319602; l=1155;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=sXiH/sPxber/1Cxwi07raIsGtdfiI2L0RlmvNjYR4nE=;
 b=6ROCwfQG4lnnOWSQCa+v+ZMjsd41mzsfZOmBlGk/2/AadvqTkIzN/CxqN0DAlkXCADt4coT9l
 Zllg710W+kMD7f775FVbJZ3PLh2hrSa1tbx7YlHJ7SSXWuJZQFIj4Av
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX3CY3bMLeC6bU
 wc4OzUgcQ4s716GL+oAE6McLRTHNo5QjFZnDPsElzR9m40gAWEVEmdTI/4bQR0cw85q8EBBHlK3
 KHFYK2VtRRsbP5o6K3wIEQ/Gp64bQRqZpelaq9BGeQEH+Ruf5DuaZoU+ujtUWrb4NUytsi5JsFe
 lZgQxZ18xhCdGRccT9mhdWy4ZJ9F/spoOXX0tddP1yFMWPQw5aHsF0JrpQMIdRZLurn48x+MYdC
 O0egmEgrrE4nZEE2Dq+QIIyJ67tp1It0draS1rHRHKJMBqSisrSRDBjXN5XBtVu0EEc466B/mot
 maLrL53kdMG5DGJ3by2N+vuIfCzxSrdpUJfh5eblGlU5daxD8DCE2txeRiEzYMGgsUPV7ol4pQt
 kDLWE4iE
X-Proofpoint-ORIG-GUID: JYK3bTbvoWkICmc5RYyV_dDzdlbTG7C2
X-Proofpoint-GUID: JYK3bTbvoWkICmc5RYyV_dDzdlbTG7C2
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68be91d9 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=cq19zQBcvAJi0RM8MkQA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

From: Monish Chunara <quic_mchunara@quicinc.com>

Integrate the GT24C256C EEPROM via I2C to enable access to
board-specific non-volatile data.

Also, define an nvmem-layout to expose structured regions within the
EEPROM, allowing consumers to retrieve configuration data such as
Ethernet MAC addresses via the nvmem subsystem.

Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index c48cb4267b72..30c3e5bead07 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -319,6 +319,18 @@ expander3: gpio@3b {
 		#gpio-cells = <2>;
 		gpio-controller;
 	};
+
+	eeprom@50 {
+		compatible = "giantec,gt24c256c", "atmel,24c256";
+		reg = <0x50>;
+		pagesize = <64>;
+
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+	};
 };
 
 &mdss0 {

-- 
2.51.0



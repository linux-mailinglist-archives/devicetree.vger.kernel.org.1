Return-Path: <devicetree+bounces-199947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8F8B12F32
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 12:23:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10E933B9FC6
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 10:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6194920E005;
	Sun, 27 Jul 2025 10:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fOx5Na5+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC240207A26
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 10:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753611789; cv=none; b=hrSbOEJbXXQ/1UViXanf5hHzT5GHK516DyWgSttkWFxdxnQ5oV13/HaOK2nuGHnXsqqTHhBnsdvZOUgFlfWmF79ZEtmcgVHH+g81HC0Umn/v64vbVSMSQbksgYC5oxnZx+s1ILBUEdrwd07sdP9i5P1jlYL9Ug6IKEjeyQ32F4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753611789; c=relaxed/simple;
	bh=zsNDOxtssyyXKwrA/Xqhu6xlTQfQcZiumpCvpHLeiVE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FPgP2Iz8/Fsrf293ylYmzOXf9vBHocOwhA43Lzk/sUrPufJRmsYeRFbgwiVjzPYZY9juzKiWyOk6FvwkRsHj1RFpPr/r9frP44MkIRwtkYAVieppZUR4RcMvAA/lyUCLZn8Fp2yb+ypdI8gTNsI8qUZ7nvdyOpCYxry4Zrxwb2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fOx5Na5+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56RAEatd022629
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 10:23:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K9lCHtaEWJJtL5rVllaD+CR/7jxFq0pVmlc9VCIqSOw=; b=fOx5Na5+yJX7QcjJ
	+D8ruVw5Bc7kYIcH7JxnxYR4LOO8gmnbhymhon63OpAPebOrApIwILcMl+NAjAEr
	6qZLYh9noYhXpzVeWMwgScgAZ73TyRcd0I64L3VJClQf0+orO482Vl1wvL2MspVR
	kYkt3MjMcua2sVOUV++zgPo56BkfEjtIfRnVJ43Kq+SNsimu53vwHsK2OLbEfltH
	QVpSiVV38N7xcsFr2dYoetYmlbKPEGzsojm1QMIPflVWUMSuo6tKCAxSwwMRL4Mk
	p1+z7NY02pWD91oipfv3VXPMR2z/dMNqn6KyRXdBp1TfJQIq5KAylMD6N71U13oS
	ufjsfA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484mcr273f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 10:23:06 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-23632fd6248so34847155ad.3
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 03:23:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753611785; x=1754216585;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K9lCHtaEWJJtL5rVllaD+CR/7jxFq0pVmlc9VCIqSOw=;
        b=DGUwUwGBwCybckDrFkxoJOeOXdP50v4pYqhcZ9NJ07Xe4YlA0+ZKAXiwUPH5CFxr+L
         FveCop/3M3cbidFgF8VKiCB2Ru+utAMrXoJ+ekcf0YKK549I0zCg17LEnqGt7V2P7kPJ
         2KNvzlskJiGG2gqLri4cTfZgJV4SA/0uiwRsvPyQV29ub1EHC6DV6zpALwP+CrXcbkzd
         3X/FAxekbyyknv2NeaAqOkBGUJnwY1xalgy5+GuFOU7AR/OsXdb4DFUzXf3Bf985HDuj
         v4hOBH0aLrljj8b3EwnZpTC4eOIEVqAv0UkssCAkcJ0fAW/aXPYZ5lFqFNxi0GAYUKsB
         Pb5g==
X-Forwarded-Encrypted: i=1; AJvYcCVxZfmdxNW9XGJUJ5XJ3QWTIQwjsy7RGts0bPcfF9tU8evW530Y/Rmm6U+TrdTjl4lLMUUeqadOjmbb@vger.kernel.org
X-Gm-Message-State: AOJu0YweAql9R8d2H+CukhsaJONzohy+9PUoUyt60sVn5125zsuVu0JE
	rZK9ZZ/jeXeifQI5itnW5opL9tlhPswnRiauv5nrBQ1LZW7nAwUZXPXLtZYab8soqFFh+cIOcn/
	rGK9It9jRAjTPDKY4loCGIyUoJVsvME3ZjLJ7sL188l8RdLd+V3Xcu76AWekVjZyC
X-Gm-Gg: ASbGnctJmw2Ayfsm8w2ZQI/gMOwweNphAOwRtNvZSPAt4msyCC8aJyuigvZ7SWL3jY3
	Ge8OG8TD3/NZpCoi5z2p56J/PNSfNCSagGYWsbCWpLLLbMQajSnrX7dEJ2hg0T5CLFpRn4yWaNy
	npq1DxpsJSm6l77iehs9urmmwIGL2ygvruQyWNqAdXg8Jf4k7e9FM5JQqtYWihs0k4dz8AgE3Pv
	XxfXD92a0B0Wmc3pNOVP3AmUPNaaIlEEvT+88TzD6/WIVdG4snPv6hYfJrl+67wEdKL6bpyMohb
	oNYMiTZoFg8bytJSu8nv1Wy8PxidoVx96vzUTz5fJEMp1svgmFixarFc9IDfgFwuj2HAin3EHYK
	RmErYzYz0HpzBSS492Kc15cGzFj0=
X-Received: by 2002:a17:902:dace:b0:237:c8de:f289 with SMTP id d9443c01a7336-23fb30cc9damr120223215ad.36.1753611785379;
        Sun, 27 Jul 2025 03:23:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEffSp9Hod9Mf4aXUsaJsrmaY+GjvtK57/b+hyNJcIhI4juMtZi1jc/Zap/MP1wvUdJkllr2w==
X-Received: by 2002:a17:902:dace:b0:237:c8de:f289 with SMTP id d9443c01a7336-23fb30cc9damr120222905ad.36.1753611784809;
        Sun, 27 Jul 2025 03:23:04 -0700 (PDT)
Received: from yuzha-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fbe533b1esm31869715ad.158.2025.07.27.03.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jul 2025 03:23:04 -0700 (PDT)
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Date: Sun, 27 Jul 2025 18:22:36 +0800
Subject: [PATCH v7 1/2] arm64: dts: qcom: qcs615: add a PCIe port for WLAN
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250727-615-v7-1-2adb6233bbb9@oss.qualcomm.com>
References: <20250727-615-v7-0-2adb6233bbb9@oss.qualcomm.com>
In-Reply-To: <20250727-615-v7-0-2adb6233bbb9@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753611779; l=943;
 i=yu.zhang@oss.qualcomm.com; s=20250625; h=from:subject:message-id;
 bh=zsNDOxtssyyXKwrA/Xqhu6xlTQfQcZiumpCvpHLeiVE=;
 b=w0R2/WhIyOdaw3Fhq8slMtc3HXofznoztUpoYdRqstMtPQPpAEfGHbxGo85HknOpeuNmAW5TV
 xTShKiJ9oojC1t5IHRHFwyFfWmXKexEdvENrdVXzQyPglqCuF4JfBcq
X-Developer-Key: i=yu.zhang@oss.qualcomm.com; a=ed25519;
 pk=ZS+pKT1eEx1+Yb0k2iKe8mk1Rk+MUki89iurrz9iucA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI3MDA5MCBTYWx0ZWRfX1o/hTynAzcAD
 eqEttx7JmFoKwLr5sfLxgDVLglsAfr00FLWwnIP5Xc+WtbV9p74aWKkMLmzUFTHJueUk53mi2gq
 aQGx+vycPZYMgZJ9DBvcBX/p54bF2yP6hh8VKn4zbg394od9HjtwqTxKYfe1V0kAJKcdaiX/HOy
 GjSNfNOSCor2PZsHLWBYr4+CSY8AzYndAHTLcZ0crb9AFPZ8FxC1T00U5ujel9BwbXmKyJyeezr
 pv3+ZPj11yjriC3RE0o2Y/sWIJMndd3p7oa4PuKPga0MpBgsmd0EGhU7PuJv+Np/uTDjsFHMI9S
 EIOFoELZ4VCto7S/aTrW9QredXsfe59qFaYsQxw5NKJ+QH92G7Zcedj0DD5zl2f6FIF/rgGkh16
 rsvNRH7RFk6PuBG/5NmlxRecMQJ0DlosJgYtvSqU8VidGkJ0ClvNu1lt0bWtvu2vgRoKVLqS
X-Authority-Analysis: v=2.4 cv=Hth2G1TS c=1 sm=1 tr=0 ts=6885fe0a cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=dI-8CA4c5Xf8_vBnWYsA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: 9sBiQ21L-IDzMVfrKNF-IfwVZ_KazIyq
X-Proofpoint-ORIG-GUID: 9sBiQ21L-IDzMVfrKNF-IfwVZ_KazIyq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-27_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxlogscore=966 clxscore=1015
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507270090

Add an original PCIe port for WLAN. This port will be referenced and
supplemented by specific WLAN devices.

Signed-off-by: Yu Zhang (Yuriy) <yu.zhang@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
index f4b51cca17de5518aad4332330340a59edfdc7ec..b4fbed517cde18e088096d182fe6b482363e403d 100644
--- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
@@ -1173,6 +1173,15 @@ opp-5000000 {
 					opp-peak-kBps = <500000 1>;
 				};
 			};
+
+			pcie_port0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+				bus-range = <0x01 0xff>;
+			};
 		};
 
 		pcie_phy: phy@1c0e000 {

-- 
2.34.1



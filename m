Return-Path: <devicetree+bounces-227046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF42BDE184
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 12:53:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4496034ECC8
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:53:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48AC531D38B;
	Wed, 15 Oct 2025 10:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jUcA2ciG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919CE31B82A
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760525592; cv=none; b=F001rnf38j/nHQ9/XUQoP4Vh+fsk8Q0SS9NFUrl1wZZflXYAH4dB8YTVaDeulehzE69t5hlBG9veE7j8yFbR9nNCGJn46jjADQ6bhkyZlJXi/Qge1NmUl9+4+C2Xv/VL2u7fBSx7oJT4s6heeJTrcmXgQcRv3p9UqGQ6KeyY3a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760525592; c=relaxed/simple;
	bh=FiZWKtwOY9Jr5BZSeyKiibtBbBMRoJPxKcH+WMAHIwA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ce4zn8w/IUPD5Dhpz+/90iSKVqrpP764oT+bcMp8G971M11Y3uUqgST+U/qIrFB/f5M6jxqtBnFfnsJwTMOkRc9hVtgwoE0xH3CMRyuWsZz2YG68AbrLlGsyLFpXhGM4lFrh3mORKqgylS+PyjBTQc2yvPLweA3F9M2kZUjJABw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jUcA2ciG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sFKv014793
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:53:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=mrkw9gI6cWU
	Jhtm17vDeWcRDNXPNLRYq7s1YQ5mZw3I=; b=jUcA2ciGot8kohRGVeJIsTFDwIM
	5oefWSEdpA1jv+ErOtzGc48ubsd9AqWlM1G+CnM/NaE/z3PpKYjOAak49u9VsljX
	wIUOz5qDaJeUO3yo5gP5ZvE1HXtbHkjBWhGZodi6axQEucHcIUzsSZCDcI43prnx
	YNO8HbYaiXaTU5eK4RuEiJwWd0juY+FIuuhpmlsHXQL/ub7pfWWFeEg3ZkT8sEMJ
	YAlT7bJAf15uhQJBio1qMfEMm19KAG1nqY+IXMZqX+iyeXmfCYaihlqRMHgVa9Vq
	C8ue8+8YKvsdEVdwOQsEivsUrItEO9RqEXTnSZuayFCfMn2bLEDeqVnq15w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfbj454p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:53:08 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-277f0ea6fc6so224480185ad.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:53:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760525587; x=1761130387;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mrkw9gI6cWUJhtm17vDeWcRDNXPNLRYq7s1YQ5mZw3I=;
        b=O6i9suulOJ+YsTaTWYdGej0X6+FMframv/XHCcoQOtLL1lu9+99Tp70eKHfn0v7K05
         OJ/RKmkPAlJs5q8uXYS7pkP8X/jjR5CeU0morT45/WUqOE6Sdzi5xpRXc0wE4W5tIyRD
         fVzvaDLtJaFiccbUzw/nwyCCgjJ0WcyvTU9RBT5zU5buY9K8sMCv8AEPVO5KlA1wAEYN
         LQacXbS4tkYgGWeV97g2fCDZzjwD84WHupnbEyqgZLTxwjGJCttMp8o1XnCqoYSVGTiH
         626GsM2qiPXLn918ykJdNOZx7/qrHKX3olteQ5qQ6v6eXSwnTxzt+chJpixJe+v/N9yh
         r+Sw==
X-Forwarded-Encrypted: i=1; AJvYcCXRvIEMK3hqhm8Ww07FqcZHzexP3GJDT5TEz3E0ZJ4W/iBkjiwWZjQKA4tOd65PN/qj83KvxtNtItln@vger.kernel.org
X-Gm-Message-State: AOJu0YwyAonX0NZRFtBMe5w4A5du5PAd0M3vW4I1CWpStM5omYmd167t
	o/45ucg8XSIZqymdrbExeJf5jmxBC9tGhXS7gmVqf3U7BccYtJ4pRlENQpozy5ZQnzyPpktWYVc
	onDHYl8H76zZa74Liu/ltcFrw/oSsG55Z+6eWpmxe3AjpHv1VgpE8JokfbOQ/cz305djOSA3I
X-Gm-Gg: ASbGncvbfUk2rs3eTJrB66GSGhn3EnAH9T7QSBHYctQshbQ751Ixcd3fQQ2GGMbphr1
	W3WiLY4dyuHZPRZsu3QclykGt8VB9kmzcI8Sq9YYRk8vKZW3dm/4PQ+hkxXtV/yCSMLBmYAbf5S
	MQ02qh6qWpdul2f/3OHrJtVon480c3JLc3q0DM4qqShixRTuE+uQJQxImQIa9066YyhiepzWHm5
	S7gmEU1dwFU9iYGktnge2HZOi8mbFXwP+JL/wyNiSJPyo+QU4xctKJ87z8sbP0HrP1y37f4TXFk
	744MTaNrv+po7YzQW6gnKhDj9LPAapt0Htfqfw82q140KYpfWYGY1IZoV5gJhfw4CYPRgwTX9cj
	pHQ==
X-Received: by 2002:a17:903:910:b0:258:9d26:1860 with SMTP id d9443c01a7336-290273ffeb7mr386954025ad.40.1760525586791;
        Wed, 15 Oct 2025 03:53:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGR8xjz/k5XFLLDdMqPKDjnU+itUdO0fqH6mjDSaolwg56TKlZ6p9EGiaz6+5/FZwrM0jZ0zw==
X-Received: by 2002:a17:903:910:b0:258:9d26:1860 with SMTP id d9443c01a7336-290273ffeb7mr386953665ad.40.1760525586281;
        Wed, 15 Oct 2025 03:53:06 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e20f8csm193698385ad.49.2025.10.15.03.53.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:53:05 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Arnd Bergmann <arnd@arndb.de>, Nishanth Menon <nm@ti.com>,
        Eric Biggers <ebiggers@kernel.org>, nfraprado@collabora.com,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Wesley Cheng <quic_wcheng@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v7 3/4] arm64: dts: qcom: sm8750: Add USB support for SM8750 QRD platform
Date: Wed, 15 Oct 2025 16:22:30 +0530
Message-Id: <20251015105231.2819727-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015105231.2819727-1-krishna.kurapati@oss.qualcomm.com>
References: <20251015105231.2819727-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXy73FysZmf5Nq
 StpK80mbjmpMVQXWuYjRA6VyCceNnAb93ZVcaXG61fXPr/Cs0nmlNRvNy2VdUb5rR3sqfFS67Ol
 FjNxnWMoHGeEFisQvjrpMr4ZV+KC/j1WRdFjkiz+T7wKQLcdRlOWkmWBB/7To38W5LgMjnJbed8
 yyEszYl/abhyc8e94yrO9ow3rzuKgzbO+Tn9h96YmeXubGbgZBHnLsLl8YUWZ4yKMSXo93Z8PiP
 ZI9evOPj0PWkGsZjmJ3ve93zDlFanV+Blw34GMYhD+uHqOD3ctYB2ZFWK3Jxbu3maaUuelzQlL3
 3nK7dYNWc1ZeU8enlWfS+AEBLjDSr/W2cY8CjpZoCmWrPSD4P1O4pHPnPdQUODkbGROezKBOnyG
 L3X7W+OYUKCnsexvs2kdiQX9nO1f6g==
X-Proofpoint-ORIG-GUID: XOdCdxFXUqqhovou6lB341FGCbWf4Ns1
X-Authority-Analysis: v=2.4 cv=bodBxUai c=1 sm=1 tr=0 ts=68ef7d14 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=EoOMd-xwxZjzz6zYUw0A:9 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: XOdCdxFXUqqhovou6lB341FGCbWf4Ns1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018

From: Wesley Cheng <quic_wcheng@quicinc.com>

Enable USB support on SM8750 QRD variant.  The current definition
will start the USB controller in peripheral mode by default until
dependencies are added, such as USB role detection.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index 13c7b9664c89..1949b28c90d0 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -1037,6 +1037,30 @@ &uart7 {
 	status = "okay";
 };
 
+&usb_1 {
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&vreg_l2d_0p88>;
+	vdda12-supply = <&vreg_l3g_1p2>;
+
+	phys = <&pmih0108_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_dp_qmpphy {
+	vdda-phy-supply = <&vreg_l3g_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p88>;
+
+	status = "okay";
+};
+
 &ufs_mem_phy {
 	vdda-phy-supply = <&vreg_l1j_0p91>;
 	vdda-pll-supply = <&vreg_l3g_1p2>;
-- 
2.34.1



Return-Path: <devicetree+bounces-248320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 94511CD12AD
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 18:35:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67CAB30E7A40
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 17:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F58B339B51;
	Fri, 19 Dec 2025 17:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cks+pymi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DTWZHOJ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5EF2EC569
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 17:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766165503; cv=none; b=YofP2qYA7DYespIl5OXqqThD+o09pIzY/tkNQaAmBusycahKhquwW1fgA407RgmG47vwU/tGl6fR3bBxUb32HD8QLiX/9XOa0ubySkfKiayyQlp+xBP6VICU0RsbBJmS8VZlwVPkeW6QvnAOBGymoPSySJY4FTAGrBxRYIQXg/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766165503; c=relaxed/simple;
	bh=pP26+1wUMnMr1Tozf4bynlfcpdn4IpokB44y8hg/gY4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QR7cd8aepxKvCHhvQXwR/Hw+pztEcZ8oHq5jb0DdjFP6BrHVdHgTR8au6cYKXpVN/8xdUshjuSn20lxyykVprAwixjZVWff2Cf6LPzPx+XcpJqPrhdDyBKybeXSFaBsotm0AFBeOBJoN48ucYX/Fa7ZFyVEKYw16QkmRirHd/vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cks+pymi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DTWZHOJ6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJFjWFb1684454
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 17:31:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=9rRpr+2lGVf
	GO2ynoRNZ3+oyjhCVAZtHgCMk/WRUehc=; b=Cks+pymiEH+Pk8kSf4FSNR096X9
	UkWSo4KzcTg9M5BHtki8/n/CsG3NXAJ/NcAfMgRfRsKIhuIaWm+UDCjsr7flseMF
	Sor14s0DAojjmdpdtcSkyEaQblGwFIweSgaEYNfJjcP/TgmaD43mdmAy4cavIMhu
	mP75OSnI0DpDrHD5oEDY27dGF0nnd+kS1o+Igr22s9XrNKzh6Ge9W70+6Usun++V
	6fIpf7UvMl05R+IlL7INjFgncs03oGOTbYnT8LNDCNPr42e7/DoWi/D5CMoieoY/
	OJtZGwCccuy3MVzPSPmdfozK38isHHolGl9D4NCcks+LqH2p9cDCEAhQoVg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2fkemr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 17:31:39 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a09845b7faso27314455ad.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 09:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766165499; x=1766770299; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9rRpr+2lGVfGO2ynoRNZ3+oyjhCVAZtHgCMk/WRUehc=;
        b=DTWZHOJ6KizTcpxDZYK3+iKts6HE78GbEE3WMLuBFQ7koD5ix9y3564IQEMn0kWavk
         ucvX80qnvJUBgF3Gyi76gxy/lvc4dtct50cuOV9wN3Ob4UV/cGxTYDUksUKszrAIM8E1
         XiEaOl2SOU41B5F9vf64scbKxlrmUMJIqqot3YNXZQeVtRv72CMhHk/nchTEFpLLd8XL
         kASAKZ7fe2uxh5rcHtO9TLjUvTeJhV6l4DjKp2OvD9wcakUN5NphjSjd5hs+LqREU4HH
         UbKQ2Ud38TWFr5zNz6aCuvrxQ6TxDtXKuk7uiCdalApuLqltrm2zZ67JeaKgaGnVVKVs
         s23w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766165499; x=1766770299;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9rRpr+2lGVfGO2ynoRNZ3+oyjhCVAZtHgCMk/WRUehc=;
        b=PXQao5xeqOFJaQd4jxXRE1gLzorfFtl+L+w9DpnZd4SPDD5Y3+CohkNVcEQ9FF/u3a
         faDmOxGkxTUfONdwDh0YpwwgiRZkhgXX2eHqXwAQ0UgkdGe/Y7/NEHXawq9TOMJa99f3
         qMMF8fH37VqPppaEA7qppnPn1eDhK0N1AcOHsF1NwXrw6A30qShLMXXUPk2OaIYpcdci
         dAxsXJVfI1wS8Xu8if8GqlTb9VYChxOtZJWQ5PWBwz744XWDldVufZobfiqZmEuFGaee
         3+CzJd+OzMP6Gc2ma/qnVo1NLwUVtA9Y9rdd6RuvRInAMihOs8WZFGaDJY6jBVgGWGg0
         llMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUr6k39L44rVz9xiOJVl+x5R7Zyfvw1G2Fw0nKNSv6CfIb+nERcjdkJA2Wp19ikmImIASIoecxrrm0q@vger.kernel.org
X-Gm-Message-State: AOJu0YyAN6aByBh71gXWH8ZLpjXNSRkhJ4cqFTiR5zFkMJf10kQhWWAp
	kkBBqA64oOncbgBf033aBZ/j2Tym/+ua9vLSJFgnCoQR81yLy+YW+ytnNhDCEFvR9hp7IdZ3vf1
	jUeU3klUvKDDind9yvR3j0yzbwqf+OUiKtmDLNaxCONMOIcBYBxENfFbjOahF7ptw
X-Gm-Gg: AY/fxX5rPtUhhRRLYsp4bNzifl6G2sZevyo3Va2ONCaOXIWJqOY/GxJ+wTsrMtqGMR6
	jBGdssiZeS5e4IDuzsTcEiBtpTkeIimtA/79fey5cwci2Epf+4j1oKrkbUrX1sZL56hemBXFPzB
	23lMfY0wnQynRk7o+Kee0t9mK4oADxpWIbhOX8St1ZmXX39kqDb3FJx0af/js7QL3RHO57PEoqY
	lcughLMFwGhosMofStT/WnNHsWxsvkG2CxtXay37DGt1lqDCQ7X+3vA1495DVUR8bdZHxJx9EFX
	Zy2yqpwCuX9YMoGWCEc+YILjsxjrtJAg+d+1QNkvR3ij3uPrR+x1RuYuB8/wVWiYhZhXvJ15WaK
	ctEsTKe/O7V/89RDgI+8FNjBxu2uvpQNA45fmJS74GMJg0xM=
X-Received: by 2002:a17:903:3d10:b0:2a1:388d:c084 with SMTP id d9443c01a7336-2a2f282fb33mr35306325ad.42.1766165498891;
        Fri, 19 Dec 2025 09:31:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHkdGvhSvHIucDXnFNADNvwoJ2Phvw2oT21ZR5c1W3WAQHaZ4DaZrpeVugAoWJynpe0OMwzmQ==
X-Received: by 2002:a17:903:3d10:b0:2a1:388d:c084 with SMTP id d9443c01a7336-2a2f282fb33mr35306005ad.42.1766165498357;
        Fri, 19 Dec 2025 09:31:38 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5f5dasm27568705ad.82.2025.12.19.09.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 09:31:37 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v3 3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater tuning parameters
Date: Fri, 19 Dec 2025 23:01:08 +0530
Message-Id: <20251219173108.2119296-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NODYOk6g c=1 sm=1 tr=0 ts=69458bfb cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EBPEhcQlbJxYYk3eU1cA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: QfcUte-upZIvhbsI4Lb_bOAmFlpoSyAe
X-Proofpoint-GUID: QfcUte-upZIvhbsI4Lb_bOAmFlpoSyAe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDE0NiBTYWx0ZWRfX+FBWwT+PpExq
 NGe29GOyWJIQkkiAeHsmoH2y43i7OzGAE1nqhBcC1YsCcIerhblsTUs01ew54vPLLnqDnMmVKYQ
 gsEL0UUHapV0fdk7SJUilOMpE7fyO0nQvdn1KsGWozH8MnECz3VTjXJRM7hfbAw8y6yTA4oPDgj
 ZZjPYzPO+5YQj3lCPMqY+8twPdU1noIvJ4iCtXig9rZUPal9KGHpB1CYR0UVBRqSaPbXenXMPsR
 d4hQpGLGTaSQPcopqp1JXvMrnjMLTObeL1QqInCsTHH/LAJqSpRj6YuHbx7h7ZA+Rk/lm9KFQrn
 5bpAMB26NapPIfcbwm5JEoWKVDv7BF06MfoyzqhGEM7QLCWLAtwig+26cxn9mKURu+UwalgI/4d
 a03oCiahCzVvxgVnNZtGzkq+GcWGd9kA1vN/xAQhMRpYKt4slkbzcZ1yUK/FFSNKm1jmImeSLZ8
 gqh0pvyU9Xl5rubMLvg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_06,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190146

Add eusb2 repeater tuning parameters for MTP platform.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index c8cb521b4c26..e28faee466aa 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -1039,10 +1039,14 @@ wifi@0 {
 };
 
 &pmih0108_eusb2_repeater {
-	status = "okay";
+	qcom,tune-usb2-preem = /bits/ 8 <0x3>;
+	qcom,tune-usb2-amplitude = /bits/ 8 <0xa>;
+	qcom,squelch-detector-bp = <(-2000)>;
 
 	vdd18-supply = <&vreg_l15b_1p8>;
 	vdd3-supply = <&vreg_l5b_3p1>;
+
+	status = "okay";
 };
 
 &qupv3_1 {
-- 
2.34.1



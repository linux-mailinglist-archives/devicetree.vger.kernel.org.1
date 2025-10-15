Return-Path: <devicetree+bounces-227045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 086CEBDE178
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 12:53:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A726548131C
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54DE31D370;
	Wed, 15 Oct 2025 10:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W5yF6ROD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3328431D372
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760525583; cv=none; b=XXjesh0TW5AWG/i2W0QqoLeScH8t28JtJOZ0Kw+dlHIOFyXmtwTorYcn+m+fPv5N4XWSML8JSyfZ4ofVHiCyepig54N5oe89R64q7Q5Ahl/86jPeC3qCiwCXhRwckbT2rFQaqgkvN+EOj2f9yDvZTP494zxkbuLvXA5MzBt3Vac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760525583; c=relaxed/simple;
	bh=sTi0mjMgcJhdedOXtNzqmiW6VLMIuc4TNTSQ/qMYOn4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VWGf6d/M182nu4UgTTuR5m1c9YMpfkamuJGkXRT63Kr18FWacBj4b3+xf2b7vCKHeghpjQgNgsh8QMq5NxxG3xExkAWqL5NZR6pm6O3+9yxzzSAkAa/I2vqlLSgABzei/VLOFMLXAqZ7cf0rf6z4YD9jIE8LMI8yH7XTyG5KFlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W5yF6ROD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FA7ZwI002591
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:53:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/401FWP9t5m
	7Jf+b/B3IO0Kir0IpsFHNMXaHyzjAR3o=; b=W5yF6ROD2JUbxgY1TbgnljK5qq1
	8ovQ196ISG9kLZLI03Ic/DsnjKQ5OODhw8ii6JMeWasT5HowxG4kJ8VI2HJCJ0AS
	Nh/kGCKWwW8r+1ab5T5HPV4KzaRndfDEcD74Vq79B8jTqDNjhBWmZ5gqF/+oWV55
	uWwVoo77VlvSCloUwywzils+RA9Ti3p+uQS+scGyT1xwCAG4DlFyTRF7lqpCjazt
	WHoMk2x+EJsEIN0HL94c7bak+xvrH/bY12HCJEEzoQklwsw/5yvfhc8titAF1bl0
	GTIfnq8lpcF2xL+Y6kdnXMicwT5sdhDpP/LznfEnFscjsqfQsvCcnGxh+Ow==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa8c5x2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:52:59 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-269af520712so112276715ad.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:52:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760525579; x=1761130379;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/401FWP9t5m7Jf+b/B3IO0Kir0IpsFHNMXaHyzjAR3o=;
        b=sJ7Zxlxp6QLSRfWJAUVvk2je2xLBqVEWiJO+zE4Pq9HdvTiahQ70k+xzzo9eljuzRT
         BgVQxVwAOnWjr7K3lbqOjp/uzmn5PX4T4ULD06y9I0gcHluickGcuJxei30qBfZz80A2
         GADQC/ohOlGG9CeRSuj0E3vhmSDikACqq9r94PrqXxNnMjtFanstMOMIYsr8DaGyHTJK
         8y1rhA3JX0kvKsiVrao4zyajbuhqGSEqxKwhik42C87agaadWzfr+0OAzn6zOSmeXdRG
         kog03BawSW4nz53O+HIGvN3EwUokcwE7rdNWwy3I9z1k51yZkXgWERqYCO5ULQTI9l0R
         I+pw==
X-Forwarded-Encrypted: i=1; AJvYcCW8cJnV2zjtDJVyruFsyTuzKVlBa+Giq61XxgxsY2oPC6s8sM9x5ipP49OXJC2qu8U8yFX42jsBlL4K@vger.kernel.org
X-Gm-Message-State: AOJu0Yx51eXWxUZkygqGsrlsthkLeMcOJuc7ZDvRso1f/yQLLxQFxd99
	F/cDJiprtt67o7qbuI7yJZIQ2dhjwGnHHjaEqbOD1qoQqoXiKkaJT45I+3EeUxcWzU9asBCEvGO
	Sy/WtyqNJ69GvZc+oimCsBef77RCtunRdNgxZgBUH5Mx4geEaVpYSFGcgMleOrGjb
X-Gm-Gg: ASbGnctSLlDyS+1ps6Mac+jrzi2IzB/P+dkHrbJq2ZNMFElbRzcvj7USVSnir0v2kHv
	012htrIDy1sLUXYCZbAPCLzo91JgnajjoRT/J0n2nCs4w1vlVXXuC8yoGBQ0z6QXw+NaWteaq3s
	7Eu4mvXV88Qq5UR0WcAH7OdGgsupVC398MdfRGjLWdJafgmGvUwd+pJOnraz2XyGcpSAAxvh1vW
	29O8gCe46EppzeMQyxzorcWoHts/H2V9iW75uiP7HXRGHvp1ZIajO9dSKgiyf3pjml5T1sph7ru
	U6E1Ql24uQHDFpBiOatOa2Q3F4n1UFYuUPMmPXq/Wdz7jJweOIU6YjLfXWkedHtgeJ9jvm06OAt
	UAA==
X-Received: by 2002:a17:903:1b0d:b0:27e:ee83:fc80 with SMTP id d9443c01a7336-2902741f56fmr318580965ad.57.1760525578277;
        Wed, 15 Oct 2025 03:52:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFoemfCYSTXrYgT0AV+vF05ax/7/vMsr12lKaTHQmgsRF6rfncvPZRSkFSThvhgQ2qzIDrfYg==
X-Received: by 2002:a17:903:1b0d:b0:27e:ee83:fc80 with SMTP id d9443c01a7336-2902741f56fmr318580595ad.57.1760525577755;
        Wed, 15 Oct 2025 03:52:57 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e20f8csm193698385ad.49.2025.10.15.03.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:52:57 -0700 (PDT)
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v7 2/4] arm64: dts: qcom: sm8750: Add USB support for SM8750 MTP platform
Date: Wed, 15 Oct 2025 16:22:29 +0530
Message-Id: <20251015105231.2819727-3-krishna.kurapati@oss.qualcomm.com>
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
X-Proofpoint-GUID: GLpnhXyfY3z3ah4tR1PrFhDAWWrQWAEX
X-Proofpoint-ORIG-GUID: GLpnhXyfY3z3ah4tR1PrFhDAWWrQWAEX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfX89FBxi6yJCXH
 24oUha4Kw1ozRCHiqr9JKmTBIPMdrxWSigW7P98DpwJtIa2lBg4Z6QnXV9Lk4bgfwAXxHB07ObA
 r5IX71kCuyuD1scnRfU3R1tWP83JcrNYrmZRz9gDgMr4AZtlGQlrqBY7aT2dS4e8Z2YS/QbN1D0
 CHkedqfgnrvryEF04XMx7h5hxNkmUlEkV7Qk8tC800P489YccALraCoGTrPPFsYCvs+g7mYPPHY
 EBNx/Kg/f7ZKv52tdlJ1OdzS+Pm8wgRlRWMqXFQT7upgUNZRtOnulOqtWlVN9mRxdvHKN32nwQI
 SxuYlzwjG15Qgnb9rm83aRrC3g2AwEasTuc64KnMb8PE0aYq4mzJ2vHBkkRjuQqXbFNAxaaUhqn
 jzqPuVAzVLCNIhaBWGgEoVfFG57YrQ==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68ef7d0b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=Tsvuh88POXG944tnl6EA:9 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017

From: Wesley Cheng <quic_wcheng@quicinc.com>

Enable USB support on SM8750 MTP variants.  The current definition will
start the USB controller in peripheral mode by default until
dependencies are added, such as USB role detection.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 3bbb53b7c71f..815651f65214 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -1121,6 +1121,30 @@ &uart7 {
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
 /* Pinctrl */
 &lpass_tlmm {
 	spkr_0_sd_n_active: spkr-0-sd-n-active-state {
-- 
2.34.1



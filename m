Return-Path: <devicetree+bounces-170780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DD880A9C466
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:54:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 376B84C2B87
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 192D0247284;
	Fri, 25 Apr 2025 09:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G+7V3tXs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781D12459D7
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745574736; cv=none; b=hvbpjcamtLgiQ4+0902Ff0/0ujiFNC/IDx/yxyGfW5Ves8NfX2Ddzi0muIRU6/lpzRXF04Phi4OzB3Wx6LjRn5mVDw9GI+ZRmhyULcTjWb7ddnv8IkYO8rhsxNiUW7F9coOpwFToeNtJmLs7Z/gLXWLvGCffnDC6HcmqzlfKfTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745574736; c=relaxed/simple;
	bh=w/z1T9uSzmC+bw/KQ75FUbGQYWjQVDzJ2e6/MqXTTIM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p3CjwUQT+F0lW4YIaJm/2441WYNggEk9xQNzq/T2SnoLwXI2HzgvE9WoCAMU5+1DX2VbOfKNvKstHPWMFZ5bkuRyoeragX6QduBFz/B4WoFXVva09ogv6QA+cyCWFW2/3rmWGOP9i3y8cNNjdaSk/tumXJlexPzJLK7mKKMUamI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G+7V3tXs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53P8TBso007411
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:52:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NPo6Q64R8Ie+grYGknWiayM+abt8O8HAhJ3oPPs/n34=; b=G+7V3tXs6P9jPY9Y
	Ss134wveIjwo+kW2gY/B+9zv69ehzifyGoON/whd07TrJe2SwXP0fwybchl0u+vF
	qiSs4PSHFGx+pqHVDJatoTX7wfO0VmxlWSfsxsbwwOCSlI2pg+MymoUnhgSK/XQh
	MJQuxd3oYUIAWjJwr8EIAkNiyJr9OZuKyDa5t+CZ/5PE882kgalhe82ZzPOc+hmD
	TDHgulhv221Yjkc/6i/lKemMNyreU6pEA+ymvpz8ip+FsKZzYaLwpsCdLuSEwKv9
	84AULNPK4qPfWX+Piip9ZbdBoxUezuuMXZQO92m18knQ7Oj5sD6E7LaXjKVP5Tmo
	aV+QtA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0retm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:52:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c09f73873fso280519585a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 02:52:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745574732; x=1746179532;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NPo6Q64R8Ie+grYGknWiayM+abt8O8HAhJ3oPPs/n34=;
        b=Lo3jAQyD54Rk+EjyLwAxhZZ9Mk2HwDtb/bk99DvJ81CKnX3i/mnmCqlqpUPSI5clLo
         sRU3JxqiOOc/XE3XuyszFXnjjU8D0qaKuJ8reNuN0x1YKmzkqmsURygvB3XnfByEN6e1
         RViOxmeZ5wqotwc8P5i/sj9loruYWh/4emM9i2CU41+fSSg7DQddfciU0dD1urE/QYFC
         lFzKusQpqNQOMQAWLUOuSZYRblqyTDOYbawwaj63r9kdJ72T54zn3Pv0zKDQNUT95C+1
         xSk75bpLZ4jDgxtgZOx1SX/WVvuKw4zb87Lc3t0gLpXlH6JbhwQ5AoZrHPO3AxjZbwCl
         iMuA==
X-Forwarded-Encrypted: i=1; AJvYcCXA/V9mlMxgOHAw7aw7KM8bHInc1c90nNbGylnbtAPhB+FVf+1M8XR5xXNyh173o1FSRqbMYmxhjECR@vger.kernel.org
X-Gm-Message-State: AOJu0YyUTNNNaCvKpGSUlncVjLKHgQwl8rIpNxLqkN6Sl+ceg60JK/h3
	SoS1Kv2mgQphYAhrlFuASCh4ST1CxcUcGHW6+nXZy6EPXQjiVin9NlYGSOkrNyiOw7Rm5LqeqQS
	ab4dWRvQiDuiFdWwLjGeNxvE3fMtmOCwOVOHmlJTOJWGetCZDiiY34Znv+IOh
X-Gm-Gg: ASbGncuwsC+Wjk0tEpway6sI1gdN4Gn44Nk2DjmCi9CZWbxTqKS7uSyWUYG7ZPII+pT
	RSZNRGPOG8iyA/95qFrIAOysWDYSb4JM9lelyARdqR+bQlIbMRY30Mvd9tUqDP3g56o7Z682Rmf
	ZSnsm7gTOMRcIClB6mbpl8Pct2HYAxQW1NG6UWXLckwCji67GxZ5PRnvRTy4LwBOUd0FJZUmbPB
	8UQ5PatX6v6ECYGH7teTCU0zt8ah2SSZY29CuYc6VU/45zi/yd3w4yC5ekYhSu+vUuVsCNCNxv5
	zPTzTguU20qyHiXK9o6OoB4yIGPatyecb8CHEkLyP6ptvA5MhVV3UuLEBizVFQXHmfr1glc5IwW
	fEePQYAxpZ9KAungx84nmlxeR
X-Received: by 2002:a05:620a:43a2:b0:7c5:4b18:c4c3 with SMTP id af79cd13be357-7c9619a84c3mr221795985a.30.1745574732237;
        Fri, 25 Apr 2025 02:52:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxNIuYNNjaQb8PK7de3lCR9P9YcVtolbk+mly+U7z7/oU1wPkDB+IRFiFcg0g6m6VaQc/Dgg==
X-Received: by 2002:a05:620a:43a2:b0:7c5:4b18:c4c3 with SMTP id af79cd13be357-7c9619a84c3mr221791385a.30.1745574731855;
        Fri, 25 Apr 2025 02:52:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb7c99sm539164e87.218.2025.04.25.02.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 02:52:07 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 12:51:57 +0300
Subject: [PATCH v4 7/7] arm: dts: qcom: apq8064: link LVDS clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fd-mdp4-lvds-v4-7-6b212160b44c@oss.qualcomm.com>
References: <20250425-fd-mdp4-lvds-v4-0-6b212160b44c@oss.qualcomm.com>
In-Reply-To: <20250425-fd-mdp4-lvds-v4-0-6b212160b44c@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1695;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=gTQKG0fLWpD8Mjgk4DoVlbsZZVw4cfaJYQqKJoHiGbg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoC1s6eKqblmHbFW4oNBrTuCB4SRcfiIHrdxIln
 Z11Q7ZLLwyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaAtbOgAKCRCLPIo+Aiko
 1TWQB/9/M8KQR/dnVmy9NtEwx7xnrdi4/+6hjugHCYXxnOB/WAIT1s5H1KOWGVTHXCaw07Gdxl6
 v0jvX1yDPdUVVX9GYmZ60MW3p1eooDEw1NUbqvBbbQdPhQIw68HrZKdPpeoOBEFsbf6OW24FXX7
 PusgB4xwCfBNzefYVzBZrVX6gybe6g3rvNERHa2tROfi/4h+r1NdQZBdZfUNCGDU2hZu3tv65Qo
 OtW2TZGeffWeRa7Nr+5p4N5KRxATqLwMYZuVfq1fskGvmBQHWmG9jnOWGQgVmQKcfRmFaHMmnT4
 yDTiRIhPUbCzo+GRNTROdUaFD/fmODG5bTtU+8DxtypOzLyK
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 5SeMoji_cGuIoDIvYczcUfIiKI2D7K3O
X-Authority-Analysis: v=2.4 cv=ftfcZE4f c=1 sm=1 tr=0 ts=680b5b4d cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=qzM9u8Bgc55Ixitz76cA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 5SeMoji_cGuIoDIvYczcUfIiKI2D7K3O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDA3MSBTYWx0ZWRfX36h3rFINEw0G nOsOAJmM/VnhffVWmGxyQqm1vGTRxR94pvSnZRojghUZyWbuA+DIxBw53y2xkwzSLPELwXFQm9Y 6C38gKlYrVQ2T+xsfWaTJLQB4Dswp0nSle2W3Se5C3cdPI6UxuiyR8Gk+PN8kW0qukHd76R4A+9
 KHbfpIxN02sgf8I4Kp735/HWMCQMIjS4/Qe/DNv9CKL1RtxXZd71JSEKbn331OsvR2F4+BpEzB4 COSuDx+EHZlDh9PO/x3mskzp8n57pktJ12HvIV544vMShoM4U3QH+EtzU+JKX4JSe8QafVrOGjp Eah8ThEDgpJW4ma/j/H51m0NbxSnQL8MqjmrbXUGreq6E5wSJltMyMTvnLoGGjJvbz8Is/i5CEb
 QJFeNUNUKU8JOpXv+0FvjeQE8DPODctcHWNe6dWMJmaQrIcDjU858FtPhwvcnuo902y6V7gQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 suspectscore=0 mlxlogscore=681 lowpriorityscore=0 phishscore=0
 malwarescore=0 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250071

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Link LVDS clocks to the from MDP4 to the MMCC and back from the MMCC
to the MDP4 display controller.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 5f1a6b4b764492486df1a2610979f56c0a37b64a..b884900716464b6291869ff50825762a55099982 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -737,7 +737,8 @@ mmcc: clock-controller@4000000 {
 				 <&dsi0_phy 0>,
 				 <&dsi1_phy 1>,
 				 <&dsi1_phy 0>,
-				 <&hdmi_phy>;
+				 <&hdmi_phy>,
+				 <&mdp>;
 			clock-names = "pxo",
 				      "pll3",
 				      "pll8_vote",
@@ -745,7 +746,8 @@ mmcc: clock-controller@4000000 {
 				      "dsi1pllbyte",
 				      "dsi2pll",
 				      "dsi2pllbyte",
-				      "hdmipll";
+				      "hdmipll",
+				      "lvdspll";
 		};
 
 		l2cc: clock-controller@2011000 {
@@ -1404,13 +1406,19 @@ mdp: display-controller@5100000 {
 				 <&mmcc MDP_AXI_CLK>,
 				 <&mmcc MDP_LUT_CLK>,
 				 <&mmcc HDMI_TV_CLK>,
-				 <&mmcc MDP_TV_CLK>;
+				 <&mmcc MDP_TV_CLK>,
+				 <&mmcc LVDS_CLK>,
+				 <&rpmcc RPM_PXO_CLK>;
 			clock-names = "core_clk",
 				      "iface_clk",
 				      "bus_clk",
 				      "lut_clk",
 				      "hdmi_clk",
-				      "tv_clk";
+				      "tv_clk",
+				      "lcdc_clk",
+				      "pxo";
+
+			#clock-cells = <0>;
 
 			iommus = <&mdp_port0 0
 				  &mdp_port0 2

-- 
2.39.5



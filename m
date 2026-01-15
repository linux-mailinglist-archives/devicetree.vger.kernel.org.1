Return-Path: <devicetree+bounces-255392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6E8D22A84
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:52:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8F5830DB481
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7304F2FE589;
	Thu, 15 Jan 2026 06:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bh+Wb3WF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iCjBuaZm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA5052ED87C
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768459775; cv=none; b=JFiHwLqlvlTXb+RfGUbRlR2ZI/yHrtYo/6ienuQ6og3G9/0CSAQ4e0JQf9Kp+0ndJuSS58VmGCRVV8/6vpUkXVdif9BxL9JeL2bwWoznfUeB5rQcrgf3voqRA5CnjP5vCYOfBhhT33VdltKlxHrT3lAYfv67wqWEMr9+hOunk+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768459775; c=relaxed/simple;
	bh=xp2OoNJ/JME6lm3gL5GdAzpj7J6D/7fvnMTRotvZFng=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DDffPEBgvStrciUcM1ISkgPWiVf8x2KVMAGeKyyCnqPuerPG91X2akZ40h8r5uAjctIhp0xHza9eUllWUW6qJ/koI99OULGtnWl8ekkmrDD8bk+pfYQGxB1YW2P+R9wutT5tcyRvEJZV4UyK+adB4mUVKwYOJAHFmrQprZ7IYHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bh+Wb3WF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iCjBuaZm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fuDw1171086
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:49:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DwRXuth5sOfxC/h8qXw02imj+yI96ScM9yQouU7S5aI=; b=Bh+Wb3WFRMM9n0G2
	TsenAl+7U+YDDin/JWpnvDapA+EjzAaub6WORTlrypbXldYV7zrBK+P4Ro16G/8M
	2vV1gYNqwVKsJ/atjiJeJTHjOjk/zjvZ6umX/wGKZbCs3crRXB3rob6LeoMiAv+b
	HHFZzbBxEKFzzystF9sIeYKqAJMcvPj5jVYDnJ96EyQL5JQwfIQxz1pvnoV4Bt9W
	ZpDiO/NEFKPVcp9O/eSGyc/iAI56BUGUw+w73Elm5fAg8QeGRPE70RAUUzvgqGTB
	vsmN9gelhQeSxir3ZqwgxkuAoPfxhqoQcTp+ChFQ/UeVSxBbwR14+1AIGSk50AsF
	2W0EKQ==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpg849vt4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:49:24 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1219f27037fso213834c88.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768459764; x=1769064564; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DwRXuth5sOfxC/h8qXw02imj+yI96ScM9yQouU7S5aI=;
        b=iCjBuaZmKxyBoVdbM8p8Y8S+SBmQ2hwEOZ/xNTwBvB1+7jUU6/lcDjEs1lTHuqnJlJ
         mTxj70/TRSIbxcIUbK2jP8nrlhTOesZVIf5l15BGRh9+4Ad4AlKMh32shcFyATqHbzmv
         FFHZzXh++tNWnik+RGbOzNcP+IACyo4vmRyZ6S+GoUpjUhXKvp74NalS4ZpBc3ZuuTbZ
         AEjzT9XE5Ruf2ifdvXUYkVoK481tGRwImBA+S43IAZKWpdh1bOBAPjZ8Hve6s4eT4MIU
         bgsVcgsbtc8ypQqFe8om0Q0UhkeqyEFHwI6oeVkqht2NAAEItGdI5kpJ1ZpfzwErcnJg
         01Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768459764; x=1769064564;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DwRXuth5sOfxC/h8qXw02imj+yI96ScM9yQouU7S5aI=;
        b=HACCXPT+i9DTC/JZ7RbVg+s8Vk+LvHwN+bsrtM55xP6YFzEZEVSdsjWvCdpXQkauLI
         zbdVzWZugd+AtQI36FwLk3oZaMRhlJTutAzX35DDgafQJxlNAn30VVjEig7t1uchcbRz
         4B7Qw5VvpthQ9P9xpwHHajPhEX9pnjeBIpWxkpS7nyJhPPVSvLjaIsIk3w61eUqvCShu
         SnvFLe9g2+Q+dMn7vuxNw10xphREO42NJBKQAIONI5SLDo5U4El0gYuietDlAl7zsORZ
         HxS28+31fx3sRFhYq0zZnODuNz84xpJMkvycTpoRvRoUhdyhlK604wh84ao5FtA15DS0
         bCVA==
X-Forwarded-Encrypted: i=1; AJvYcCUItiivwwIhlHbq+D1HP6U+7lICQMwl6gRQTAHwsGIVBe/ss5Oz5b/gO10pQ/AnyAOjwWGft13RC3rU@vger.kernel.org
X-Gm-Message-State: AOJu0YzHhp+trOnB5j4kzRo9S8WBbefwIh8+oHC7JB+XVev0NTDMOSyB
	v3N/JelvuDBses6w315uwKJvDN8svuuwM6yZ5I9pex4dn+YzMgS4v8V/XU4+RR1nUHQnnRogXwM
	A1x7wjHWnheOtWfqVGMQuy9S8Vg/KEzikXM2YsLJPC4LFQMG50DjFb3G3kpQr75wx
X-Gm-Gg: AY/fxX52xn+UQ+F/g/H+bacCNzdUAG53+v9DukebmZo6V+EqQz52p1LYpokJnXYe5VE
	thCwSbVF0kBPvXXI7mdBT59cLt7eNFYzVuInvSyzaaS1PvNM4VDMyQhJeMF27a72YI2C+55INgd
	cvQ6eCCHR+V9m9z+nQqXxadMzj5H8tzhLUwEVn5uxe+H4hNokmXhDHJqNpW2ch3wtHY4xENMtHN
	SpGeNwB1HCFrD97JDPxIDMmsv2c8eUnz8oLy9TOcJmuTYadSbgwFIqTp0h5oyfhjjzy7xTOkNIi
	KyZbiBhOfRvmOh5ZeFQudax6omiZNkIuT2Rcb4iRx3cOWHxlilFsIXN3SXoLw4EdCZw7b02UHEp
	0CRBvDdHdjnkL+OeQhAtuSrkJZgQN/cKiAAMiiqQ9YgU7i8JPIwwITjBtsv5I
X-Received: by 2002:a05:7300:549:b0:2ae:57c2:7c96 with SMTP id 5a478bee46e88-2b4870693e7mr7578628eec.24.1768459764279;
        Wed, 14 Jan 2026 22:49:24 -0800 (PST)
X-Received: by 2002:a05:7300:549:b0:2ae:57c2:7c96 with SMTP id 5a478bee46e88-2b4870693e7mr7578593eec.24.1768459763708;
        Wed, 14 Jan 2026 22:49:23 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b480dea94fsm3259143eec.24.2026.01.14.22.49.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 22:49:23 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 22:49:11 -0800
Subject: [PATCH v3 09/10] arm64: dts: qcom: kaanapali: Add support for MM
 clock controllers for Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-knp-dts-misc-v3-9-a6cc9e45de93@oss.qualcomm.com>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
In-Reply-To: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768459754; l=4376;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=A/wP8vKRq63n+rmtODpcZTle9QOXAomtcrBdNDPUjzs=;
 b=vy08cXOkAzQWjzy/Yg9fC13wMA1bkLb8PJ51Sm8d1rq/tJToVwJspoigcvchUnOq/OuiR/oIU
 5I4gKtzdt8+C7/Lj7L+EESgQAB9Xd7XsLHWbPeiwGmPjDZC4Gb7YOkC
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA0MyBTYWx0ZWRfX9pMnMYytOt/V
 9PBQivHpC0DINnYu6L+NwqSNRhb38FAR8joHaQullaAVPx5nAEB1LS5aHaJSjUWw27J86nm2/PB
 +8M/3n81ctgW39PRAiv26rxydeDQaAOCx+9vxt+QdgKiwIK2EZ5fHDymXJwByQF3g0sBPyJ7wdh
 8JhT347noqJVQq6A4JdXGALMav7zjuiwHgjWwBHBcVXrWdnr3gm1Ai0rcpa1c07Oqs0tXpjVOAB
 xWnmw5bkaT8qaH3FcaA7sB+pTVJsatUrGyz6ETuisnYDFr4N2C/Ss8iVHoLLIXrK08gwSMN40UK
 96INsFjQGfmLZRO1DGQ8CmLf5XMyO1hdeVzQWqLWJJcjFZml2Xv6Fl7d+h3FGU6zWWb/8a0vMYt
 v5rKKhIYGpFpIolR4CFUYdTz1Qcy3p0OZ277FS8bjc0hriOTfpfGVchhWFAZfkN7kkCkmeguDez
 SrLz7h74WmMJEHB9QoA==
X-Authority-Analysis: v=2.4 cv=IO8PywvG c=1 sm=1 tr=0 ts=69688df5 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Y3HLYP14RHR0fgYgac8A:9
 a=QEXdDO2ut3YA:10 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-GUID: iydn8a5vLqyT13npRbqOMc1S3TlFHn_G
X-Proofpoint-ORIG-GUID: iydn8a5vLqyT13npRbqOMc1S3TlFHn_G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150043

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add the device nodes for the multimedia clock controllers(cambistmclkcc,
camcc, dispcc, videocc, gpucc and gxclkctl).

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 102 ++++++++++++++++++++++++++++++++
 1 file changed, 102 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index 30705483ca20..8689715ae24f 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -3,7 +3,13 @@
  * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
+#include <dt-bindings/clock/qcom,kaanapali-cambistmclkcc.h>
+#include <dt-bindings/clock/qcom,kaanapali-camcc.h>
+#include <dt-bindings/clock/qcom,kaanapali-dispcc.h>
 #include <dt-bindings/clock/qcom,kaanapali-gcc.h>
+#include <dt-bindings/clock/qcom,kaanapali-gpucc.h>
+#include <dt-bindings/clock/qcom,kaanapali-gxclkctl.h>
+#include <dt-bindings/clock/qcom,kaanapali-videocc.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
 #include <dt-bindings/dma/qcom-gpi.h>
@@ -1594,6 +1600,24 @@ aggre_noc: interconnect@16e0000 {
 				 <&rpmhcc RPMH_IPA_CLK>;
 		};
 
+		cambistmclkcc: clock-controller@1760000 {
+			compatible = "qcom,kaanapali-cambistmclkcc";
+			reg = <0x0 0x1760000 0x0 0x6000>;
+
+			clocks = <&gcc GCC_CAM_BIST_MCLK_AHB_CLK>,
+				 <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&sleep_clk>;
+
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MX>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
 		mmss_noc: interconnect@1780000 {
 			compatible = "qcom,kaanapali-mmss-noc";
 			reg = <0x0 0x01780000 0x0 0x5b800>;
@@ -2569,6 +2593,46 @@ tcsr: clock-controller@1fc0000 {
 			#reset-cells = <1>;
 		};
 
+		videocc: clock-controller@20f0000 {
+			compatible = "qcom,kaanapali-videocc";
+			reg = <0x0 0x20f0000 0x0 0x10000>;
+			clocks = <&bi_tcxo_div2>,
+				 <&gcc GCC_VIDEO_AHB_CLK>;
+
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
+		gxclkctl: clock-controller@3d64000 {
+			compatible = "qcom,kaanapali-gxclkctl";
+			reg = <0x0 0x03d64000 0x0 0x6000>;
+
+			power-domains = <&rpmhpd RPMHPD_GFX>,
+					<&rpmhpd RPMHPD_GMXC>,
+					<&gpucc GPU_CC_CX_GDSC>;
+
+			#power-domain-cells = <1>;
+		};
+
+		gpucc: clock-controller@3d90000 {
+			compatible = "qcom,kaanapali-gpucc";
+			reg = <0x0 0x3d90000 0x0 0x9800>;
+
+			clocks = <&bi_tcxo_div2>,
+				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
+				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		remoteproc_adsp: remoteproc@6800000 {
 			compatible = "qcom,kaanapali-adsp-pas", "qcom,sm8550-adsp-pas";
 			reg = <0x0 0x06800000 0x0 0x10000>;
@@ -3139,6 +3203,44 @@ opp-202000000 {
 			};
 		};
 
+		camcc: clock-controller@956d000 {
+			compatible = "qcom,kaanapali-camcc";
+			reg = <0x0 0x956d000 0x0 0x80000>;
+
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&sleep_clk>;
+
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
+		dispcc: clock-controller@9ba2000 {
+			compatible = "qcom,kaanapali-dispcc";
+			reg = <0x0 0x9ba2000 0x0 0x20000>;
+			clocks = <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&gcc GCC_DISP_AHB_CLK>,
+				 <&sleep_clk>,
+				 <0>, <0>, <0>, <0>,
+				 <0>, <0>, <0>, <0>,
+				 <0>, <0>, <0>, <0>;
+
+			power-domains = <&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+
+			#clock-cells = <1>;
+			#power-domain-cells = <1>;
+			#reset-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,kaanapali-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>,

-- 
2.25.1



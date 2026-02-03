Return-Path: <devicetree+bounces-262064-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMOKKu2QgWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262064-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:08:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACC4D5063
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:08:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 22696306D89A
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 06:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F20D374742;
	Tue,  3 Feb 2026 06:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wv7wBMOq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="imslsuDu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C52536BCF9
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 06:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770098806; cv=none; b=X+60dX1kkb9uZihLhNONS9esGBqGwtGANJxC8bi45IcO9MhEixn+n3vh9LmtocbwgAUNrMGCHCzaAr+rYQ/5TcWuyjsNzuVuZTY51rxfdJY9GRey0PdtsQZM/0OhijEc0zUEb5b9IAiTIq6U3s5cpGjqPOPzTXamYRh45TsN0cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770098806; c=relaxed/simple;
	bh=zSgUbhxM+1v2t0vUuHsTMcJ+1ZgGak0JkArlZ55Mm+Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ESSjF7eLqJw+YSC/UuC/22/e7SE1DSwn8PlCs+3q6rYtD+o2k2i+g6ISnCu5JoQ1ushqB+R07OUG4tFekreXko7flS7tYCAD7MwMq+G2wNlTiVxqiiqWv9BKRsRShL6KG5Xaq6YRp+z2DYVbfW1m70G3BVJkxFBh1P0eiaZzcmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wv7wBMOq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=imslsuDu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612JUYvl2899904
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 06:06:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hkCGCTiCHMVR/mguRwnUT83l5wSIslUVZ2Xb2/EK8Yo=; b=Wv7wBMOqtwCDNKr2
	OsokMonk/uRlADUlB8ZH3KFBvYSqAwYyXIEjldJiDTIZNIgoB5I8QNlpz8UHVOGj
	n8m8c/IbRNSdlEWAJ+QodBl5/HZ2YiU8nWMYK8b6f+SiPc/SFvLP3Wd7x71Bnd0z
	+6F7cWDmwA4aiuTcCV3X8M+SqS5VrpJzouCZ70gfKJnQvGf9NYVFkMeq2FvFqmaI
	kRjRCAExbPdaDHfxKpXSjiRfmf9KjTMRL+Jb/ZbDOj4VTlC6dANWaeuXa413o6Tu
	GrdYjEU+t/UUPt3aiprwI7/rm52plkcuUSBgc2UFf4WD+0QSr4D3ydDOuhMfr8xi
	27mlxw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tp0u34v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:06:42 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2b708fa4093so15632742eec.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 22:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770098801; x=1770703601; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hkCGCTiCHMVR/mguRwnUT83l5wSIslUVZ2Xb2/EK8Yo=;
        b=imslsuDuWrUoSCXxE78UUBynsr9tGF1HFlaHNhz3C74787wUUM2+/u5L/YbQ7CQVzs
         8I7FiUEnKHI/VsTcGzSZ5jCHt4OpsiGpkgLZOMjVzFkghJ3HeXhi89VrLH4GLytaVjFR
         hXsRLDWxMmyP4RmIa727kdazfE4MxBcbkr/dzYpF+kTNO4zWB7tl7NBL3RYMRXrSXgwd
         35wc6GUYNCCYw5cjMLwpI94Tvz72tHgkxUYywKGgbcqIAxxKBlK94oW6hZcPRG4kUehf
         zj2fnidup+P9So7GBw0ofS/ctIBYXGG+ZzW0VJ26kuMM6KW1Dnaizjkh7OkD0rfO1x4a
         fsbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770098801; x=1770703601;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hkCGCTiCHMVR/mguRwnUT83l5wSIslUVZ2Xb2/EK8Yo=;
        b=d3d5w/kxTKav4M9MitY6N3J3Uk+BTwBcVppKJlO7Srkjv2/3S4rkiqGgX8FbJBb4Gx
         n+S/2H76V2oiP6s4Jk17SHdep7LNQvuo1q2Aza9NLTgvPYUcDcJ5tGplowZzdfPxKIin
         ZkbI4WheHC6vzhWY8xyQgQiu+/wbg7mu2yAj8L7NbQxPVqNXQZwwfDd4/XedpQyNMvya
         LpNmRdVkxcjSGjewtNwlX4OWfTIFvDGnhiIbnZermm6aTLXES9lt2uX/vtg0s7bKhIfG
         waDa0GSzk3pzMSgqLmyeDPz3fDllEleJV9Mi64bDnTmOZPN6KS8sVkcpSJDOw3R2shWT
         0x1A==
X-Forwarded-Encrypted: i=1; AJvYcCV8bocWSOLV4BDjeeqd9zbwPFyz8pGWk6NCuwS2GMS1GZHjuEOZMX3xwF9vSJA68D7KW+lkTqcA7NOZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxtSJL0gSU5Ns/QLcGx48U/HPB/MspJqXuU41gHRh7Jdu8cQxuc
	04P0Am6o2MbxyjYaKWxpgoMGrCA1M2+0/r7LLgwpDXl7mSz6iIe0wS4iTn+CUMjjhyR2jwCc42j
	5Ct64s6J7u5eynrJzR0XCnhqTX55CHObamnGbGWywCjxmhLfza9o4F8N5sAs+/1Rg
X-Gm-Gg: AZuq6aJ2fgiL43zzfBXAV/Qqwx4dqSiuujRI+yzPPMhoJlE+a/0yP1yiIfF+aFW4fEv
	SfFPrrSeHap4Qk/nrs4ZGALWNl98qgcCdAfuYfvOht8jd8ryNaOCkE3/arcjE2TE1gleHCZmOhh
	ggZYSr80ZE3Ass0eb+sW8/N2rksDxI1ZB0vTPqx/4UwIx+JODpmrDuGs37rzh2FAORSF9rOGEs5
	u1HtHq5LXlrwzoKyIWJ7zHy4kjLY0GsXVeYFbqoYTvvRtl1SpNrrBMZhVZ21IIGY1EAPN8itgmV
	1AO10v4LRC7T4Fj/TBYIv4KtG4QbIKi9fXZNxYc23vUfX7OKgYTz8ej0h5XWu0rZ5TO0Ern4Bdp
	K8KL+WubCEpWXhmxO8RkuiRkePckekg/923S0bu1o/TLdOLMRAihD3x8bl5AM
X-Received: by 2002:a05:7301:2f95:b0:2ae:56dc:eb18 with SMTP id 5a478bee46e88-2b7c88da46dmr7309861eec.21.1770098801260;
        Mon, 02 Feb 2026 22:06:41 -0800 (PST)
X-Received: by 2002:a05:7301:2f95:b0:2ae:56dc:eb18 with SMTP id 5a478bee46e88-2b7c88da46dmr7309845eec.21.1770098800756;
        Mon, 02 Feb 2026 22:06:40 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b8283def01sm417499eec.34.2026.02.02.22.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 22:06:40 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Mon, 02 Feb 2026 22:06:26 -0800
Subject: [PATCH v5 09/10] arm64: dts: qcom: kaanapali: Add support for MM
 clock controllers for Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-knp-dts-misc-v5-9-02de82bf9901@oss.qualcomm.com>
References: <20260202-knp-dts-misc-v5-0-02de82bf9901@oss.qualcomm.com>
In-Reply-To: <20260202-knp-dts-misc-v5-0-02de82bf9901@oss.qualcomm.com>
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
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770098787; l=4559;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=V8klYJcTlCA0XXPc7b6wczy0KpOL9nFdZCIXVz7dVR8=;
 b=FKKu39p50DwCp0ka35XVW2kfs65wOudb7bNZhS2NB7BqFTW6s/K6lfOyY99F3hXL0WS/P29g4
 62OObZZ1szPBD9mU1qwtgKuRd2Mb/N14tkPvHflXQp43OGSdY01sSPY
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: oCZi8Dwsk47OtGHdeHEtxoTjhmViArY0
X-Authority-Analysis: v=2.4 cv=VJ/QXtPX c=1 sm=1 tr=0 ts=69819072 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Y3HLYP14RHR0fgYgac8A:9
 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA0NyBTYWx0ZWRfX8GSXxtmmWc2p
 wrwtzCmXYxCVjc/jY0vDEph0eWOuXAst8zWtLrxtoNamtBVXS4ge7R1W8DGuQGh86XsrCyjKcm6
 mEqLBiM565Bqpl7cj1IrUg6BhRklJime/d0CQy/gRqtzhB8vrSNt+u14lpSdXYKj6tAKusTkFNo
 eV/UIw6KkATJcf8Ix8FhWDg2DH6HT2p3c4zk8dSpydz0CorNZtGhFoYR8TB+ijG82uUs9amXszE
 j13Nf185JWpPLHY70NsT9hNP/PV8IESOQGOd4RANA6b1UPbRiOgWf4R7oijl2KyUa/HexBrLpLx
 WRZGpv1cFzq4otivxozuUAt9xjNQv+sDPwZjVbktg3clXJEEQiBPsGgh7s0Py9R23XCFd+r8zdK
 OnCI/dyeI7avqBa5D8x7nVg0DejEZHsPI78jH/kR1XX5gkr4WFbQUJk8l1DitQ28/oLB95BId1c
 iy3JBcVuQoWXba0GUXA==
X-Proofpoint-GUID: oCZi8Dwsk47OtGHdeHEtxoTjhmViArY0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_01,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 malwarescore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030047
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-262064-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,b220000:email,0.103.194.128:email,0.27.41.32:email,20f0000:email,qualcomm.com:email,qualcomm.com:dkim,16e0000:email,9ba2000:email,1fc0000:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.26.219.0:email,3d90000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2ACC4D5063
X-Rspamd-Action: no action

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add the device nodes for the multimedia clock controllers (cambistmclkcc,
camcc, dispcc, videocc, gpucc and gxclkctl).

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 111 ++++++++++++++++++++++++++++++++
 1 file changed, 111 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index 050d47691f5c..08d098c1f5af 100644
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
@@ -1557,6 +1563,24 @@ aggre_noc: interconnect@16e0000 {
 				 <&rpmhcc RPMH_IPA_CLK>;
 		};
 
+		cambistmclkcc: clock-controller@1760000 {
+			compatible = "qcom,kaanapali-cambistmclkcc";
+			reg = <0x0 0x01760000 0x0 0x8000>;
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
@@ -2532,6 +2556,46 @@ tcsr: clock-controller@1fc0000 {
 			#reset-cells = <1>;
 		};
 
+		videocc: clock-controller@20f0000 {
+			compatible = "qcom,kaanapali-videocc";
+			reg = <0x0 0x020f0000 0x0 0x10000>;
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
+			reg = <0x0 0x03d90000 0x0 0x9800>;
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
@@ -3073,6 +3137,53 @@ opp-202000000 {
 			};
 		};
 
+		camcc: clock-controller@956d000 {
+			compatible = "qcom,kaanapali-camcc";
+			reg = <0x0 0x0956d000 0x0 0x80000>;
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
+			reg = <0x0 0x09ba2000 0x0 0x20000>;
+			clocks = <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&gcc GCC_DISP_AHB_CLK>,
+				 <&sleep_clk>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>;
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



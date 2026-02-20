Return-Path: <devicetree+bounces-266894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6H7+ME03mGkkDAMAu9opvQ
	(envelope-from <devicetree+bounces-266894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:28:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E6A166D3B
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:28:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 66057302C33A
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 593E433CEB5;
	Fri, 20 Feb 2026 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IhjehMkD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W6NWy2/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA76336EE9
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771583296; cv=none; b=s/14vvVlW+ZSu6lUsPwuVyGY15Pybf0Sm3TzGj3/mJHm9lVOFqHD0oa0xTQ2fj8aHSp7WcXgs0YYBaasuPaRMZ+CNkHsgcITuZ4bSBucn++0u9NEd1tM7NWZYW8rpUXDKOmsgx5gHsY1Yzp9b5kcfGCJACnhbJ31j6D2yhPopj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771583296; c=relaxed/simple;
	bh=cBciamsnZd3KkSlYbrsDAQh0R7GbghrvkBhg7gyq4dQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Dugjd2Vf4zyoXo7/w+ftleXJ94t2YPo1PES8pzToW2AU/1Eniuxbl8AIWMFhYQvMzqQ1zKtGv4mf3EM/dumgqwbVWFWpHlj6IJ92Xzd8MG9NHccwNFZ/VoDPRky3Yio8HZNiaZM6o7w9oi83u7GsgmUhysLfKUuavrZmRYssJGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IhjehMkD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W6NWy2/Q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5S8TT3337643
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:28:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=9LWk2TOkd9yBcJrWQVxVKZ
	a87Ucz25ImWsGz4goXwuE=; b=IhjehMkDKLizhTblNrlHM7HGALdq9QNXzyv7E0
	eWx6iZzN0PoU35TgelvNglrpaD2IN6qny2tHAChfqxYzv5TPzI9cwUqIeJsHuvGQ
	dJkbA7x0VuJsUiqyOh9wXGkipPWLKoy7gj2erW0S5t4B8x8q5ki9OQx/ZuXLJX+e
	Wx+ZJ6f5A0ktrXReeZZFra+rXYok5CUMtu90dde48er52ygs+gvSAQTUFSwanwSU
	6KV9Mjjg0sUAnUYdDZ5DTctcq7HQHEnGh+6sO7ed8y7SxLwOGNsHnqq90/pXs/aa
	YdCnW0qpK/EoQ0HUUNstDdS0fR9I4IFPM2yinGbLBg7zNIkQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cedp6h94p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:28:14 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35464d7c539so1858024a91.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771583293; x=1772188093; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9LWk2TOkd9yBcJrWQVxVKZa87Ucz25ImWsGz4goXwuE=;
        b=W6NWy2/Qwu9XaduWi6D7t324/1mPVcpQ9SAsN2Po8lNgRu09xX2i/Xy8gDlj0GFl1x
         WyRj93VqvJfScKCTg5MiG/TijqZIM0MKJmrGnxVNifbNJfd0cip3PrvmeqrN6zw7uMs8
         ljt3tnFQbZVoCQMOzvX6OLvxrqt+AIDVQQps0xjF498btqDen512MMcxWQEmnDQ0C15E
         wPL0uwEQc90Q+uJZhloUiPZnqTJp2DnzrHLfMTzBYceOe7y1k0h5DY5AwIfk83S0yoRk
         YVs8g/eviJ89IJBxDkNiyNbLpVJaiArzQ41u8gFfr6U+WFNti72Gu2YbJDlZ2OSdFMCG
         5EjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771583293; x=1772188093;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9LWk2TOkd9yBcJrWQVxVKZa87Ucz25ImWsGz4goXwuE=;
        b=a6q0fkXHgxYcIwZ5c9sbMzHOK5kbWihxxxMwZhzi0nNeyDF0l5bfI+pIyBfyj+od4J
         VctWFTE6vVAljgQBYUziFgUSLS2ZVxKREEnWvZoXRs6E/YPu2w1hxmOQTJ5Qj+ZtwMzi
         yhoAaao39n4AHCB9Sj8EzsjNvMxqnJhdrhf5HHINJtHSSCcOOXK0Hhk2TV8X3UTG7sww
         54MbR+j+m+ax9528uVpsJDIbp9UuvyXwwW7fCTkoZAcET5bpwBpUf0myZvhX3nHp0qOk
         4JJoir5+fuWey9mz7+7jPv+7bz6tm3+Y7lDEUdtGBBoCyGaimKfev3IuHKabDygr4Xbj
         27FQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWlDaV3hJmSaRQvruKzLfEgNIQit5WO2ATvKZLi896U+4zExGlkc+9ydHx2QxjqdMOfW6p5JELMB+m@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8sns7JylQ4YC8+0R1ofM7HUSrHFpLCf68hZx+nRETS8kGAy1Q
	zekQu5Opcpgv8t5PHMbRObW6+zRP0qyTln9vfACPqbvgP89tppmmzOpzHiANegi/01jYmJa0wSJ
	u1vqXhplMuSeKd3LlZtqZCAHKXHV0fUsiACwhbw4AVZE9LV+wIPNlm2fxw8zIn+EF
X-Gm-Gg: AZuq6aKW1twsV2ViDZHannr9sDR0EQNPkiyuqJ5kbgas3r4WyV79ue9IB4T1o2bCZyx
	9pWkTXqLnujSoL8H9soCl/IlmNc6Xy22dBqz7ojjaincNud/mRaZs9oSJdtqbXQJuLFU4jeQJV5
	OTG59udKkQH9Jwgvn3FtgiLFwn2pH6uQPE+T3Nl4Ip7c04tunpJJnRWOoPG0SlsjlqUQiEJO4/n
	iNQOuxANUGmsqpKMyB2cof5LYEe3mI72Lo0z/M1aKooghYCO1/u1FkHNiNXQlfrFCDil5Jev5PT
	Y17ucXypCe+Vpu7UzzR0n/dX0hP84TGBgfiUzyPT1IxWvUqHCQelcQTZh4bARIIT+lRuBMxw/db
	s5blHDChNwguoIwxd7l1DZ5bi4OznhyWVFcukZk+f9OLRzw==
X-Received: by 2002:a17:90b:5644:b0:356:24f0:af08 with SMTP id 98e67ed59e1d1-3584481e55bmr15644686a91.1.1771583293430;
        Fri, 20 Feb 2026 02:28:13 -0800 (PST)
X-Received: by 2002:a17:90b:5644:b0:356:24f0:af08 with SMTP id 98e67ed59e1d1-3584481e55bmr15644671a91.1.1771583292930;
        Fri, 20 Feb 2026 02:28:12 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358a1b1f84fsm939084a91.2.2026.02.20.02.28.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 02:28:12 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 15:58:04 +0530
Subject: [PATCH v2] arm64: dts: qcom: sm8750: Add camera clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-sm8750_camcc_dt-v2-1-e4b7faf35854@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIADM3mGkC/3WNywqDMBREf0XuupE8jIau+h9FJMTbGmiMzbWhR
 fz3pu67GTgDc2YDwuSR4FxtkDB78nEuIE8VuMnOd2R+LAySSy0kV4yC6TQfnA3ODePKlObWjFJ
 0qmuhrJaEN/8+jNe+8ORpjelzHGTxa/+7smCCNcJgq5Fjg+YSiernyz5cDKEuAf2+71+3tKrOt
 QAAAA==
X-Change-ID: 20251203-sm8750_camcc_dt-350a8d217376
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA5MSBTYWx0ZWRfX7gCn+C+rI60C
 VcWVerC81D96IzKFbopjvZ3GlVKSO+FaH/GjZw5Gn73t5gsEw/7d9sNI6/CpYkijYdYpKLzFB5G
 y5KTtONljkn6mqG/fgQ61tTGeh/j36Ho8xNnGR5N4s5bmUE7pIa0mfRtkvZ5YJfBsMaWkzDVU12
 +QiCcrXOGvPF5o/NDw/gQ0CwThe6aCEPukhVLg9Bcu89SOdXtxUqOf9XGeqMD0irz52scjFDqnB
 gfigfcKrYUCsKli8NO3dVSm5ckId+jrTsDSLk2rwDkzRVhrzIS1i5x3DwNcFRvAaNVbV0lROIo1
 5q+h3DDLAoCyoIojZKgWNrssaDBGJ94LXowimO1k8/tOLtZM7pnN/Pui7Xb2XChDbVEFGAVscaj
 5W7siMNdHjBzIzUxKGZuLQwWC4y7j62MDY8CQgBIdEOBppBOZTYj9H+AP20EOLIp/RDnRM1ygGG
 mW3Du8b9XaEJM///RTw==
X-Proofpoint-ORIG-GUID: yrsul4q1M2WwdhVkcwXyt7pHEjsJLW_p
X-Authority-Analysis: v=2.4 cv=Vuouwu2n c=1 sm=1 tr=0 ts=6998373e cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=MaR1rDPHEXExjTPKk_gA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: yrsul4q1M2WwdhVkcwXyt7pHEjsJLW_p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200091
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-266894-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.25.240.160:email,qualcomm.com:email,qualcomm.com:dkim,0.27.41.32:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_PROHIBIT(0.00)[0.26.219.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 84E6A166D3B
X-Rspamd-Action: no action

The camera clock controller is split into cambistmclk and camcc. The
cambist clock controller handles the mclks and the rest of the clocks of
camera are part of the camcc clock controller.
Add the camcc clock controller device node for SM8750 SoC.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Changes in v2:
- Update the MxC phandle to use MX for camcc node.
- Add RB tag [Abel Vesa] and update the commit message.
- Link to v1: https://lore.kernel.org/r/20251203-sm8750_camcc_dt-v1-1-418e65e0e4e8@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 37 +++++++++++++++++++++++++++++++++++-
 1 file changed, 36 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 3f0b57f428bbb388521c27d9ae96bbef3d62b2e2..740277b34427a07bc89ced99c80cd717466d6fc6 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -2,7 +2,8 @@
 /*
  * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
  */
-
+#include <dt-bindings/clock/qcom,sm8750-cambistmclkcc.h>
+#include <dt-bindings/clock/qcom,sm8750-camcc.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sm8750-gcc.h>
 #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
@@ -2046,6 +2047,23 @@ aggre2_noc: interconnect@1700000 {
 			clocks = <&rpmhcc RPMH_IPA_CLK>;
 		};
 
+		cambistmclkcc: clock-controller@1760000 {
+		       compatible = "qcom,sm8750-cambistmclkcc";
+		       reg = <0x0 0x1760000 0x0 0x6000>;
+		       clocks = <&gcc GCC_CAM_BIST_MCLK_AHB_CLK> ,
+				<&bi_tcxo_div2>,
+				<&bi_tcxo_ao_div2>,
+				<&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MX>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mmss_noc: interconnect@1780000 {
 			compatible = "qcom,sm8750-mmss-noc";
 			reg = <0x0 0x01780000 0x0 0x5b800>;
@@ -2740,6 +2758,23 @@ usb_dwc3_ss: endpoint {
 			};
 		};
 
+		camcc: clock-controller@ade0000 {
+			compatible = "qcom,sm8750-camcc";
+			reg = <0x0 0xade0000 0x0 0x20000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MX>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sm8750-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;

---
base-commit: 47b7b5e32bb7264b51b89186043e1ada4090b558
change-id: 20251203-sm8750_camcc_dt-350a8d217376

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>



Return-Path: <devicetree+bounces-274361-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHeiMd32sWl7HQAAu9opvQ
	(envelope-from <devicetree+bounces-274361-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:12:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F26E26B3FC
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:12:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82CFC30D56E3
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD2743A1699;
	Wed, 11 Mar 2026 23:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zfdx4vqb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SFvBkwUv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7633F3A1689
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773270666; cv=none; b=JlbasznZ3rkMkRmhEKDVKoEadzDffhF6TvSyQ2mFUlCaXAsnf5mIetNYPx+e2AMtQL7pux1yfNNeTafk29Fw+kxVDJoZhVmqLCx/jfwIuztvzWZthd9eyHQeSqlAuhjOcygghapuwWqWv0o6qlqp2SVD8l1etxoW1cuHvywphEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773270666; c=relaxed/simple;
	bh=SXa+mau3jfFMiD1Kcdi6AkdYoMxzyaecUcMaLamI3dU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=I8xvjTZd1IdcouIi97QBQaa7oj1BfyyrTZFK9Xmd1erZg4cAy1ZbESgPVIaUkQGs57qlAJnUyTjYw8EJ7rQuEtFTUF1jHJQ4M+RHMLLmkMSVBPXf30fMyILrKl5lR+VA0CiVALp8vWy9/2fVIEEYxTsU9MP1tv8gTujqsO8TeeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zfdx4vqb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SFvBkwUv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMPIdW588938
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:11:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jKDL3cImGEqTtnfi4sYSODQFZNMuhNOHw9FFCw66hPg=; b=Zfdx4vqbYExZBvug
	EqGbwHHNQjoiRQ5eor9uc0BlPdTx4ZyaKwbd+pxO5MiVKQ+ueohgDFCUURryAuiH
	3byxH7w0BHER47HNwK1PoM1cG1CF8q8c0lEn+HiO9K8Ccf5mwJz3vgbJFRwm0O0C
	zr3A3tby0kACI1LnXU3iLGeX3FbFld3cxgv/Fg5YR1vfFHU2+TzlPTA7q+CTaNx5
	fHX98DRW8RrSQYe2PiidXAGDpZrzwTU/NaV2087MCfJAOlFz8IvLl9Y6wPqI48Gu
	QBGQKY/H5nhrJDycS5TR4z/R6yC5ClhxeDordY+/pgodBr342twCCEcxNSLf8myz
	AJPsFw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh5q03qy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:11:04 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c7387c70046so176760a12.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773270664; x=1773875464; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jKDL3cImGEqTtnfi4sYSODQFZNMuhNOHw9FFCw66hPg=;
        b=SFvBkwUv6iD/CSSgoCgTCI0iW4w6n9dBI07yJmh5RbzdkSvDUo+U70v+fM6kwfoVnz
         4teF52nu7mfqIz6nwPxH8o7rfVlSg5himW9RPct/FUmny1MsVSQvu8Gj5aeMbK5waLWx
         Ew5lIqkhko3Mt+aL5GjR5DgnVayed0i/7hleEIUOK9BUNqy0fmG2u4i93iRjM1/8q1qI
         11fLf6hYvA2wiWoKojDzzVUa1Xip0QKM9W1+JnoYVgVOsAI0sS21cJ6Ut+aTjTH2WOm+
         J0TYd8fUO7Rift9PnC151tdLCQNPPMARdvM5c+k3DDdAsXc1iru/3i8tLEy/G6z7t2qL
         /How==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773270664; x=1773875464;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jKDL3cImGEqTtnfi4sYSODQFZNMuhNOHw9FFCw66hPg=;
        b=Zec4u2copi0mShOvXnp9GzyQUkpQNgi5Jjnxz6ayDoi69XUlkuXeRW6VWJq/UJg/wG
         eDMWPcUct2GZFmChJIv7JeWEIVmZUugiyVgm2tU+hCfBrQi5W3LvzVtQLmgxg7ry+5aa
         LnSgqYQVmPMZDFRnD+Fo1xmRWQTkcI1D/tLt9w3OSgNJku7Tm8uRuuNBGw+tfZe9RBc3
         eSLqo8r+4JkuxRxlmzY1W13YUYAj4JsoELyDhZEXIDBU3bWUPxEOh9Rd5sTZbtg9G0/T
         HZdr+Yl2umbwX5wub6q2yZWpzM6mhx0RmoCUsIVwIACoFRtA9vsXh2VMUtAYRhbvB/yN
         Lt2g==
X-Forwarded-Encrypted: i=1; AJvYcCW7exFkpY9/FyfcKx6Q+VjcWLlMINnTxYdypSgAdoDjUDQP6P1IQ1OXKPb1Klj1O0npl/0gLMZM3aBV@vger.kernel.org
X-Gm-Message-State: AOJu0YxPQ1BEB11TsNIGNY5toVfEshZ4Ni3PqzUq1W+NvOnNVAA3q+Iw
	/zsB8yk7iIZKkbJSR5W7mGB6OCld3mobQ2MNB1webi0x8WjUzPSdaBVUaqd1J3jOFjbtqh/NeQ+
	DVS+NHz9mVEy9lskloi/5eQTcbUvkPsgxqm7hA1a+VhJq//T3nC4Pdfxt+rUGdZNd
X-Gm-Gg: ATEYQzwl1XLtzcWRgnhGlkW5xIHUH2Osu+0Yqm9SZLif8abgqfYD0nIFpPHy3QUfGkp
	oGBLe3Wi9y0WvenHoOcoh8eJRobWAgbiLcV7M8PqLbTSKK597aRTmSmxtbFuC2lIkaocmxqROND
	72MtPkhi3CwXNQImBe4rMOxaTkZYLi8PkZFYKxqJgVBr3Fyttq2M9cfn2hqN91Hhasdq5fjsYn8
	Drtg7RqXcRGEMsdlq5HdEZkl3kqSFT0FQtVziRFimru6ykSZWYWy+QwDCc17ZR7856Y9XTlxbvb
	+oU0AJncw51IEvJYEENSJ8KQ69Qkk7tJnkriUE4W0La5owLCiVgmX8XGfUtAtK+3nQScaIB8/1/
	ahRuJHnAFkr2f8hGfSzvvmhVvqiYRvggakOdVLZwBDc1dMw==
X-Received: by 2002:a05:6a00:3d54:b0:823:786:1990 with SMTP id d2e1a72fcca58-829f6ea729amr3871140b3a.21.1773270663973;
        Wed, 11 Mar 2026 16:11:03 -0700 (PDT)
X-Received: by 2002:a05:6a00:3d54:b0:823:786:1990 with SMTP id d2e1a72fcca58-829f6ea729amr3871109b3a.21.1773270663478;
        Wed, 11 Mar 2026 16:11:03 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a0725facbsm774569b3a.20.2026.03.11.16.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 16:11:03 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 04:39:54 +0530
Subject: [PATCH v8 2/4] arm64: dts: qcom: talos: Add gpu and rgmu nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-qcs615-spin-2-v8-2-fca38edcd6e6@oss.qualcomm.com>
References: <20260312-qcs615-spin-2-v8-0-fca38edcd6e6@oss.qualcomm.com>
In-Reply-To: <20260312-qcs615-spin-2-v8-0-fca38edcd6e6@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773270637; l=3735;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=ThNycDlDHq3nbEQXKh4EQ6jtaESo+ZYW37OSwdG7k4U=;
 b=g9EZkQTBBCqrtW4WyC+DqI0IQ9rqR/WvFul0l/CWgBEKPjE4HchA5IosgCf7n/98ZqCi8zRHk
 t+6ldc27MN4CcbpnviDtkk+cHiio/KxWdbj4dhFockAAvGdhwWjKKu3
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: _FMJFeQaNBN4yhLxnoQxwdNS5cNMjvRA
X-Authority-Analysis: v=2.4 cv=CIUnnBrD c=1 sm=1 tr=0 ts=69b1f688 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=jWRUczSHPS-Ra7sZ8p8A:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: _FMJFeQaNBN4yhLxnoQxwdNS5cNMjvRA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDE5NyBTYWx0ZWRfX1/onEyAXsYve
 8xO4eB1O8PKWlI9W8xlZLFO9RI0BT4BbS46LwC11wIYC5iDtf2PfqLGupl23iDS+eAXmGBanwFD
 mBg7hH2HLADcKaZbY2F0d1sBt0xpR1dcnZSz3oH1S6oXMJKtHOJFz9unM1aHDXtQVofGVSGieEn
 lMxpEcjkujVVUzTSDVVnwGw6XGloxdpfIsULVsSMiLnM6uO6N6OjLINaAimy7qVA+nRp8BMsbSP
 0QEu+1pmwsmW+K+KDLZbqv6UZu+QGIN1mWrNmBy19WXEccR3WG0pMXw7RJLg947NbEq83BvDk2n
 NzjbATpUQ78G+W0/2aRcMaLW293nhOYqnLuuAZ9i8g9PxXlrulb2e2CmfbakRU3RPN8zzjsRsHv
 huCALTYMCpEU46F+VY92M/ULERGfDqaVLpP6jcmQw1Xcp3YeAXzAT1T3ksuA4JkTBsNWRmEgeX/
 YgDd/OdF+UuC+yZLr9w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603110197
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274361-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,poorly.run,kernel.org,linux.dev,somainline.org,gmail.com,ffwll.ch,linux.intel.com,suse.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,quicinc.com:email,5.211.3.56:email,5.183.81.96:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.76.75.64:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2F26E26B3FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jie Zhang <quic_jiezh@quicinc.com>

Add gpu and rgmu nodes for Talos chipset.

Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 110 ++++++++++++++++++++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index bad57592f63f..11689da96c96 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -651,6 +651,11 @@ rproc_adsp_mem: rproc-adsp@95900000 {
 			reg = <0x0 0x95900000 0x0 0x1e00000>;
 			no-map;
 		};
+
+		pil_gpu_mem: pil-gpu@97715000 {
+			reg = <0x0 0x97715000 0x0 0x2000>;
+			no-map;
+		};
 	};
 
 	soc: soc@0 {
@@ -1833,6 +1838,111 @@ data-pins {
 			};
 		};
 
+		gpu: gpu@5000000 {
+			compatible = "qcom,adreno-612.0", "qcom,adreno";
+			reg = <0x0 0x05000000 0x0 0x40000>,
+			      <0x0 0x0509e000 0x0 0x1000>,
+			      <0x0 0x05061000 0x0 0x800>;
+			reg-names = "kgsl_3d0_reg_memory",
+				    "cx_mem",
+				    "cx_dbgc";
+
+			clocks = <&gpucc GPU_CC_GX_GFX3D_CLK>;
+			clock-names = "core";
+
+			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH 0>;
+
+			interconnects = <&gem_noc MASTER_GFX3D QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "gfx-mem";
+
+			iommus = <&adreno_smmu 0x0 0x401>;
+
+			operating-points-v2 = <&gpu_opp_table>;
+			power-domains = <&rpmhpd RPMHPD_CX>;
+
+			qcom,gmu = <&gmu>;
+
+			#cooling-cells = <2>;
+
+			status = "disabled";
+
+			gpu_zap_shader: zap-shader {
+				memory-region = <&pil_gpu_mem>;
+			};
+
+			gpu_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-845000000 {
+					opp-hz = /bits/ 64 <845000000>;
+					required-opps = <&rpmhpd_opp_turbo>;
+					opp-peak-kBps = <7050000>;
+				};
+
+				opp-745000000 {
+					opp-hz = /bits/ 64 <745000000>;
+					required-opps = <&rpmhpd_opp_nom_l1>;
+					opp-peak-kBps = <6075000>;
+				};
+
+				opp-650000000 {
+					opp-hz = /bits/ 64 <650000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <5287500>;
+				};
+
+				opp-500000000 {
+					opp-hz = /bits/ 64 <500000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+					opp-peak-kBps = <3975000>;
+				};
+
+				opp-435000000 {
+					opp-hz = /bits/ 64 <435000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <3000000>;
+				};
+			};
+		};
+
+		gmu: gmu@506a000 {
+			compatible = "qcom,adreno-rgmu-612.0", "qcom,adreno-rgmu";
+			reg = <0x0 0x0506d000 0x0 0x2c000>;
+
+			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
+				 <&gpucc GPU_CC_CXO_CLK>,
+				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
+				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
+				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
+			clock-names = "gmu",
+				      "cxo",
+				      "axi",
+				      "memnoc",
+				      "smmu_vote";
+
+			power-domains = <&gpucc CX_GDSC>,
+					<&gpucc GX_GDSC>;
+			power-domain-names = "cx",
+					     "gx";
+
+			interrupts = <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "oob",
+					  "gmu";
+
+			operating-points-v2 = <&gmu_opp_table>;
+
+			gmu_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-200000000 {
+					opp-hz = /bits/ 64 <200000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+			};
+		};
+
 		gpucc: clock-controller@5090000 {
 			compatible = "qcom,qcs615-gpucc";
 			reg = <0 0x05090000 0 0x9000>;

-- 
2.51.0



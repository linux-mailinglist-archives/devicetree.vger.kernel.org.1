Return-Path: <devicetree+bounces-275119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEQ1OEvps2l6dAAAu9opvQ
	(envelope-from <devicetree+bounces-275119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:39:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCC328194B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:39:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD02D31FAED6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:34:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D43E3815C7;
	Fri, 13 Mar 2026 10:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A3D1ML3t";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K3XvR5O3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DCF36EAB6
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773398096; cv=none; b=LaV31XXJ2K1WH23Acvx7SE7cpnli0p7UlCYdcB1RA6uGGnB59T47IH8JsRu4RQ3WKgQDOzqKazgnUvObWIy8cq+Yfe+SJsv0MlhYWJPwLiSXL7Way+d3J+3lVGISWetS3AKXViJdSHKEzt6joXSzj4M1MK4v3A104ZsI9s89e6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773398096; c=relaxed/simple;
	bh=XfiXAIcRI75MS4u7gslGL1jfZXxWbrztlWTJHyNyt+k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aiXQ09sjqLtLyIvwdw2R+fAaePIjgFhDGJcovXKGNEcE0qoQ9uyoAX21Qs2A35NCJp0jw6KV510oswz7f/TLOB+pbhIfwI31hw/muyLksAn4UVOi4i0Cs9hyyQIqFHwIOq3EMvhC2XY1d9/pTa0SdARpOC4GeJevw9b7ku1YI7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A3D1ML3t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K3XvR5O3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D7iLar2262547
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:34:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4foNtZIT0fT8vAlQDW618ueX/BHOfYPkGuVXcGxidw4=; b=A3D1ML3tZVAoOVa+
	TdRDPvsbMD0yY5FfGoJjZSMYqQR9fjiDd8kETWf55lT7dohMbdutnUmjBL31Orgq
	g/cJyGO3os+er41H1i0go5DMMnzvKCRF7SCAeoqsJlqp1BPNKHZDU7cIXbJANebb
	CHkvzRI9p5zyFDqL6/kUV1vKhZHuTuiggfQaEiTt9cU94NxyZrdsAk/zL4lCvDap
	qs8oS3L2zoz7IIrFwUHLV7mxupxBaOE+SdUnVQTSBJ83ehl7r7gkSx2wXn4mDKeN
	/5vS5xE6GWf08sCTwlZv7z5L1MIPPL7THTrXfNi/06PgUikcxGMb9dHlqGh24bns
	H4l65w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvef4rkvv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:34:54 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35a203038c8so1079418a91.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773398093; x=1774002893; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4foNtZIT0fT8vAlQDW618ueX/BHOfYPkGuVXcGxidw4=;
        b=K3XvR5O3LsyKueyJVmFD1+qeM6AGN3RCTeihR2tBnneWaCr3+SOAMFqaa9TqlY1ABe
         7/N94JhBaKGieAv/Fd9DPAAqK3slN6KB5dnfJXNMs1hiAt442Z2nVZexw3L84g0Asa8o
         ohBdaIKP9LgFdRIvcLXCaNd+SH8QK6BLBA1e2fDwXNHHQpJDV1wbEB7w+bwqY/J06sUQ
         t4TBMkLXBAP1WfWMbGPxD3/OYgMOr4kujD6BQ3cn+EzPYRnrlGIEyJmR5D81PDMLIjTQ
         SbNG0yMtggmfauotLD74CfrH0BqD/rSfRxY8aZpHXp86z/b60PdG2IFoH7/LrpjFiGip
         eVfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773398093; x=1774002893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4foNtZIT0fT8vAlQDW618ueX/BHOfYPkGuVXcGxidw4=;
        b=qYS9m1mH28gSZ+xXV/IfpDsZXNIB/1QvdHorf+zZERePuFDEikvsPU0wvnoYn4szfG
         09zYO2g918bgqqrJsECuK3Dx5hvUjLMRASjTY6rxr19VCDzV5OhQZidRzYvjmhC7+d08
         FHGRAfGyWhM1iXsJLuLdJY84mj3E9udTR/ttwgxk7nBmPFJmEh0qRg3Z7XrMGH97XbcI
         VbVXdDeELdDkY3s3kLEkIbXy0QDHL6DDarS/YwoDtZdd01hrroyYx9nYMHaqvIgojfLM
         eLtdXdTykuanX1rinl6qARxHQaxmdRKVxt0re1agiSg0GKKLDiQikrFGMIyLmoDw6f7/
         iO/w==
X-Forwarded-Encrypted: i=1; AJvYcCWY0uRYnPPTK/EsH1Ud9pFM+hqaUVqRTHS7AsLEG8N82RfsM1d2UINeKt9aDPp7fI0pSf2TdVaK1N+t@vger.kernel.org
X-Gm-Message-State: AOJu0YzcN/5El+8GuDYgyxMwINdW1GvyFMFT19vV3YzJgqZzeNpR8CCl
	YIoAOiNDZpX8xcwIMyeuJnDjWvm9xQF8uHMTSouglkQDy1VSXJXCBh3swrn1pjZHI98UKOQ6bWr
	vknoHvr6KAn/tQEFWjJY8TpNmJkNnPdRmX+bFgQ6H8el/6hErjYpVBkLdA8/i3b+i
X-Gm-Gg: ATEYQzwIBOarBSISYXJKvEjrr8KNW+BNeh3ukkYa2JgwfE+aoLA2Widm5PJbGEh8811
	PFaqt7GBneq0IU8apNptwOlIwCWDgglJrP2Q3d6RlEYjlvrFlTPS5lC7ssKH1203KRrrzXHXsdf
	V+ARkqHyxj+uQ+U+qflgt9Nz7EJT11l/bGLhvJ5GEKEZtBgDNCU0mHfZ8196C9ZxJpqdBhoWQRS
	CK9kz4EPsWt3palMz2uOzIsArXgKhYNCIGTIUkBqtjC+3yeYRzHP4Th+yq5kXOQitUzkhes9lmg
	GWaLSFKNjufXT69T4UdQgPjiKEpaGrAIHMmoTnserRNd8GgzSQa2yETP6Iq6AUWICCP/6+JuuLU
	UCvSkqzcbAvCfzHoYwipeIv9Uw0hEnFjdIshVcUOMy6B+STOrEY8=
X-Received: by 2002:a17:90b:5284:b0:359:1063:6aed with SMTP id 98e67ed59e1d1-35a22003d20mr2304263a91.22.1773398093328;
        Fri, 13 Mar 2026 03:34:53 -0700 (PDT)
X-Received: by 2002:a17:90b:5284:b0:359:1063:6aed with SMTP id 98e67ed59e1d1-35a22003d20mr2304239a91.22.1773398092637;
        Fri, 13 Mar 2026 03:34:52 -0700 (PDT)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02fc8465sm8055383a91.9.2026.03.13.03.34.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:34:52 -0700 (PDT)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 16:04:18 +0530
Subject: [PATCH 2/2] arm64: dts: qcom: sm8750: Enable TSENS and thermal
 zones
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260313-sm8750_tsens-v1-2-250fcc3794a2@oss.qualcomm.com>
References: <20260313-sm8750_tsens-v1-0-250fcc3794a2@oss.qualcomm.com>
In-Reply-To: <20260313-sm8750_tsens-v1-0-250fcc3794a2@oss.qualcomm.com>
To: Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aastha.pandey@oss.qualcomm.com, dipa.mantre@oss.qualcomm.com,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773398074; l=17826;
 i=gaurav.kohli@oss.qualcomm.com; s=20260302; h=from:subject:message-id;
 bh=Qq78rE3686cWxmg+QjEoJJ86ziShDXJNd8W7wFAecKc=;
 b=Y6oJUKY5C5TLTQj6Dupzl2ZEqvcQGSai1f9qXBsMJryJds7apPj4HQLb4pRUk6OtH3ngSzuwl
 ZDouyvEHcIgBxS5krH8cOYTWMd8np96uqWIsqxMY0TxEXII5/sTfnSF
X-Developer-Key: i=gaurav.kohli@oss.qualcomm.com; a=ed25519;
 pk=IdNsqe8rWsF6dbpGHfwPEH9zM0nbOdRH72HxUT9qPak=
X-Proofpoint-ORIG-GUID: ATbRI7FD3HKLUZp7_RQCDfrxf-myTpZq
X-Proofpoint-GUID: ATbRI7FD3HKLUZp7_RQCDfrxf-myTpZq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA4MiBTYWx0ZWRfX1cuVGD6CoFbm
 77zejiw6K0KP3AYnybEmCbMh1gsGq2pESxjevSXw4IduFOyrxDv45fK2r/wvsX3N40KTMujcmjB
 jaX/E0GQMVgP1axbGDVppGMURTZNofcOLRMVc8faHyJUXVF2fBkrH38+TfWIdzQrElQVNo2yHHW
 dE2eHfzvkh9DXHIwjO31KcHhP2NrxoJUQJNKlwv1hKLrwJpJ5Zf59H/hW1J+n5dN34TV8ILbw6G
 giSaoAb2E7ATLx2WD69R7/EffasVnnRq7qJbOxIClUSBbqZNn/wzvhyMVhMlz0uxQT3q3gt3IcK
 R9YnuDXE0HdXQS91GPsKUUIu8IntNuGc73zxKG4s4MvuCzxM3rN9c1HtTZ6gcXtkG1E/w6OAnhX
 3vRKgniB56N+Zp0s3Q4aTQXnnn5Beh8dyEi786LHCTtjHP/uppQ0b5m6uOx/zFzIIMWVrRYw5ym
 FSq0fDcn0meTheGX91A==
X-Authority-Analysis: v=2.4 cv=S9nUAYsP c=1 sm=1 tr=0 ts=69b3e84e cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=CZh-BAwd9a0rruJy_4IA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275119-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quicinc.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,c22a000:email,qualcomm.com:dkim,qualcomm.com:email,c229000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.14:email];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,intel.com,arm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4BCC328194B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>

The sm8750 includes four TSENS instances, with a total of 47 thermal
sensors distributed across various locations on the SoC.

The TSENS max/reset threshold is configured to 130°C in the hardware.
Enable all TSENS instances, and define the thermal zones with a hot trip
at 120°C and critical trip at 125°C.

Signed-off-by: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 897 +++++++++++++++++++++++++++++++++++
 1 file changed, 897 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index f56b1f889b85..db2a97cb228d 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -20,6 +20,7 @@
 #include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -5457,6 +5458,902 @@ compute-cb@14 {
 				};
 			};
 		};
+
+		tsens0: thermal-sensor@c228000 {
+			compatible = "qcom,sm8750-tsens", "qcom,tsens-v2";
+			reg = <0x0 0x0c228000 0x0 0x1000>,
+			      <0x0 0x0c222000 0x0 0x1000>;
+			interrupts = <GIC_SPI 771 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 484 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+			#qcom,sensors = <15>;
+			#thermal-sensor-cells = <1>;
+		};
+
+		tsens1: thermal-sensor@c229000 {
+			compatible = "qcom,sm8750-tsens", "qcom,tsens-v2";
+			reg = <0x0 0x0c229000 0x0 0x1000>,
+			      <0x0 0x0c223000 0x0 0x1000>;
+			interrupts = <GIC_SPI 772 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 485 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+			#qcom,sensors = <7>;
+			#thermal-sensor-cells = <1>;
+		};
+
+		tsens2: thermal-sensor@c22a000 {
+			compatible = "qcom,sm8750-tsens", "qcom,tsens-v2";
+			reg = <0x0 0x0c22a000 0x0 0x1000>,
+			      <0x0 0x0c224000 0x0 0x1000>;
+			interrupts = <GIC_SPI 773 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 486 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+			#qcom,sensors = <16>;
+			#thermal-sensor-cells = <1>;
+		};
+
+		tsens3: thermal-sensor@c22b000 {
+			compatible = "qcom,sm8750-tsens", "qcom,tsens-v2";
+			reg = <0x0 0x0c22b000 0x0 0x1000>,
+			      <0x0 0x0c225000 0x0 0x1000>;
+			interrupts = <GIC_SPI 774 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 487 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+			#qcom,sensors = <9>;
+			#thermal-sensor-cells = <1>;
+		};
+	};
+
+	thermal-zones {
+		aoss0-thermal {
+			thermal-sensors = <&tsens0 0>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				aoss0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-0-0-thermal {
+			thermal-sensors = <&tsens0 1>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-0-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-0-1-thermal {
+			thermal-sensors = <&tsens0 2>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-0-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-1-0-thermal {
+			thermal-sensors = <&tsens0 3>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-1-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-1-1-thermal {
+			thermal-sensors = <&tsens0 4>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-1-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-2-0-thermal {
+			thermal-sensors = <&tsens0 5>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-2-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-2-1-thermal {
+			thermal-sensors = <&tsens0 6>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-2-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-3-0-thermal {
+			thermal-sensors = <&tsens0 7>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-3-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-3-1-thermal {
+			thermal-sensors = <&tsens0 8>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-3-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-4-0-thermal {
+			thermal-sensors = <&tsens0 9>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-4-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-4-1-thermal {
+			thermal-sensors = <&tsens0 10>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-4-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-5-0-thermal {
+			thermal-sensors = <&tsens0 11>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-5-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-0-5-1-thermal {
+			thermal-sensors = <&tsens0 12>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-0-5-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpuss-0-0-thermal {
+			thermal-sensors = <&tsens0 13>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpuss-0-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpuss-0-1-thermal {
+			thermal-sensors = <&tsens0 14>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpuss-0-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		aoss1-thermal {
+			thermal-sensors = <&tsens1 0>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				aoss1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-0-0-thermal {
+			thermal-sensors = <&tsens1 1>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-1-0-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-0-1-thermal {
+			thermal-sensors = <&tsens1 2>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-1-0-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-1-0-thermal {
+			thermal-sensors = <&tsens1 3>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-1-1-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu-1-1-1-thermal {
+			thermal-sensors = <&tsens1 4>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpu-1-1-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpuss-1-0-thermal {
+			thermal-sensors = <&tsens1 5>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpuss-1-0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpuss-1-1-thermal {
+			thermal-sensors = <&tsens1 6>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				cpuss-1-1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		aoss2-thermal {
+			thermal-sensors = <&tsens2 0>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				aoss2-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss0-thermal {
+			thermal-sensors = <&tsens2 1>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss1-thermal {
+			thermal-sensors = <&tsens2 2>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss2-thermal {
+			thermal-sensors = <&tsens2 3>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss2-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss3-thermal {
+			thermal-sensors = <&tsens2 4>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss3-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss4-thermal {
+			thermal-sensors = <&tsens2 5>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss4-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss5-thermal {
+			thermal-sensors = <&tsens2 6>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss5-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss6-thermal {
+			thermal-sensors = <&tsens2 7>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss6-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss7-thermal {
+			thermal-sensors = <&tsens2 8>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				gpuss7-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		modem0-thermal {
+			thermal-sensors = <&tsens2 9>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				modem0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		modem1-thermal {
+			thermal-sensors = <&tsens2 10>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				modem1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		modem2-thermal {
+			thermal-sensors = <&tsens2 11>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				modem2-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		modem3-thermal {
+			thermal-sensors = <&tsens2 12>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				modem3-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		camera0-thermal {
+			thermal-sensors = <&tsens2 13>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				camera0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		camera1-thermal {
+			thermal-sensors = <&tsens2 14>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				camera1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		video-thermal {
+			thermal-sensors = <&tsens2 15>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				video-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		aoss3-thermal {
+			thermal-sensors = <&tsens3 0>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				aoss3-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphvx0-thermal {
+			thermal-sensors = <&tsens3 1>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphvx0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphvx1-thermal {
+			thermal-sensors = <&tsens3 2>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphvx1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphvx2-thermal {
+			thermal-sensors = <&tsens3 3>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphvx2-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx0-thermal {
+			thermal-sensors = <&tsens3 4>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphmx0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx1-thermal {
+			thermal-sensors = <&tsens3 5>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphmx1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx2-thermal {
+			thermal-sensors = <&tsens3 6>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphmx2-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx3-thermal {
+			thermal-sensors = <&tsens3 7>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nsphmx3-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		ddr-thermal {
+			thermal-sensors = <&tsens3 8>;
+
+			trips {
+				trip-point0 {
+					temperature = <120000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				ddr-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
 	};
 
 	timer {

-- 
2.34.1



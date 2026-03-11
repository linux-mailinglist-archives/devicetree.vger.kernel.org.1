Return-Path: <devicetree+bounces-274362-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0K8vMv72sWl7HQAAu9opvQ
	(envelope-from <devicetree+bounces-274362-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:13:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E16626B420
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 087DA31B646D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F25C3A16BD;
	Wed, 11 Mar 2026 23:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eRj5z1KV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fb1WT8+Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9E03A1695
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773270675; cv=none; b=aGs6wgGOxOOdfPnW4yBIobym9gnIfgoXWtgMXN/fA2h6c/tlszn57+PlNIgXT032QB+18x2Fe7qjftLrddnsaU9xviquo0aRRSONVvo1o7AhbE3nk0J8vDrdza4/P1QziD9nmy6/KPW+pRUI3FCTg+MSszdzqL0zLS32ymiE8CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773270675; c=relaxed/simple;
	bh=7elHzg1UNk9Wsnish7wJ90vrYg3EhkwD0297Z68TdME=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UBDccP5OLBudYnHwkXrYsqtpPlSFphYEtCqtNSsnuc39vllZcUv4aYgSdBwmgILhRlniMlahsBUMn4YuS1bf/RsnxCTg9ylNfPqGgGQdEDBR1KY/zrk2OVrcLDbBvfgup/8Gbfac6D6LrAfAAl3X0W/QyzRKzPxneq24tSn9D1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eRj5z1KV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fb1WT8+Q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMN5Ej1208414
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:11:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S2T+MvpygE6cdPLi+vNPpCGaifOm1eWlB3knZySS7pM=; b=eRj5z1KVH64rNJtF
	DjYoXO40PIA+Nzr01La4x3/RYBlVXCgDI/d13NYTDnkV7YdI+zSlx3tYx+OzhY20
	EfBora4ee0Ev+zen5+ck7LG1gF3AuHckCUp8xkk5Q/z49YjSUyZSyEjUo8Imc+Rn
	lEJIsnM9ALZuN2JnobaUeX5rbJEBoRt6cQq8f1+Pl1By/zTpf0qcgHo9JsaWZ0WX
	jGplvzdEwWNt2rYla6P7K29xtckxxFy1qJwlH6EYM2AMj1FCMzTnPQajJ9Y6PRJV
	X/GFEXsvOPqYorF7c4Aa2pPwThPlNy1zt6cyPGWEcsS+v1u93o9zXjO92f0WqMvS
	K/LldQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4v03t8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:11:12 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-829942cf9deso302370b3a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773270672; x=1773875472; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S2T+MvpygE6cdPLi+vNPpCGaifOm1eWlB3knZySS7pM=;
        b=fb1WT8+QpBS+LDtmD1pF3F4jPYkSOmiMy9XIPSW55/JbTb1eX1aNYwXS7MvYmVeSq9
         VOyk+svBAeNumE97afIYaBv4PG4Qd6ifM5tpovoL7v57xwsRmsUFx4VgNhSDTwHJr+nz
         Un4YsRbOy+woUEDB2+dEqbR+cuZnMTkWzm58Z0G5+pdJooITVfvvofu8/G3KPonMEjxS
         DV9y3GaH2iu/Uo/2n3G0xhRipvOUfoHYN++c9dEmpFBqUcz9y1lQt5B89ytlQxGxQMBH
         dJgtovBSZ5DVfPb84zJ3NZjk3zmuN4GocsyTfiZ2/NIZ7hotgjdeJI+J4JuZcV0UUqln
         NVdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773270672; x=1773875472;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S2T+MvpygE6cdPLi+vNPpCGaifOm1eWlB3knZySS7pM=;
        b=xB/af7nZ2uc2eQjOnJGNhLSBI3YuKskBPjm7r+63WJqtQecv/yRixKjWPYK4Na49aD
         s4p94BBY/BfIPI075gnx6e3A82/jnbHT9wTeMNf+TbcibA1/hOwzaz+nyfpi9eoEaBsH
         g0TdRmUORROMpYlWq8j7+i3IIJ0VFCormxJ8b9bvNC/srVPB4obne/QKock+B73VMpFN
         r9aFBpc9mSYb/2JLhVPVHbrQnxvFNeyonw9ClT5Tw3sFfJTmVYw/+Sfbm5MRIufyfkxa
         RLqWJqNVruD0GHgnJHLrtBbFB/biMWG2NCXFxo5vm8fmLFOOeMQLTMnUoVXRim+n7Cat
         xq6Q==
X-Forwarded-Encrypted: i=1; AJvYcCU7GDEtk+10ZOqFrJMvcoefDIKo0sTnIPeIcn/aOZePqIqogBUMut3J/pGb+ONwuBLDymebaIEa1UDG@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8smO2u4RjKULayuLDr+KIcAdGW+/mlTa3Rou61ivBZ6s4jrl8
	rXiBY0PPexCY7km13n57y4HPMaZYhDt+fusuUT0KDSGvj5wm+bpbb7ItU4Be12EWkPbBgJU5e3B
	t245pQ/s1X39wU64N9s9bJWrnB9qNMDAJctuaZr6dc600NnAEONJftaRuoCBtX71d
X-Gm-Gg: ATEYQzzsu6VYYqlsda9JYbanal+MAln6APs6EatXDBS8hiGg55JRMlCeZn1WnBHVhnH
	radsg4XtgcZZ8SD1Gm7IHqYof8L3rn4IOVEgvePCsG8sRjeKQJffAYbAAIcltplxULN5eG0nISb
	NIM4HGWD8tLmcJUZkkNHtwsKOmmYAXugo3FNk2LzCOu8FJtcjIdEYdSLyoetJv8ZMSf0QjdTBV4
	KpmtiXDZjM2hTn8K1M6qwnBHE/QZu12yIRJkoVFu5kFXhwi5ym8o9l9Y4/Hmt99u7F7/6vfvJ4u
	oUa+n1/YCY8z3O+eR7hpihCUXwCbVXo+aMrSM1iOsla1WZWmQF44cgqXO7IJnSCy79FuS6GbBUz
	5nb7Ct8E6mSxjQnCIMx5DcgFPRR9zpSOsr2KwIC1tMDvKNw==
X-Received: by 2002:a05:6a00:139d:b0:7e8:4471:ae74 with SMTP id d2e1a72fcca58-829f70f332amr4484456b3a.64.1773270671834;
        Wed, 11 Mar 2026 16:11:11 -0700 (PDT)
X-Received: by 2002:a05:6a00:139d:b0:7e8:4471:ae74 with SMTP id d2e1a72fcca58-829f70f332amr4484421b3a.64.1773270671365;
        Wed, 11 Mar 2026 16:11:11 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a0725facbsm774569b3a.20.2026.03.11.16.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 16:11:11 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 04:39:55 +0530
Subject: [PATCH v8 3/4] arm64: dts: qcom: talos: Add GPU cooling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260312-qcs615-spin-2-v8-3-fca38edcd6e6@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773270637; l=1513;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=+Z/QPnrPmdecyuWUuiIu3xggJAb73CsDdJQ5DBAszX8=;
 b=rCzsQrtcv0dpai5LoHUt0DH3EKLieN0xfqaVMuJV/X9vYM/ec9uZJxaGqo/URLDLufWBEyBPi
 knS/wGFoYNwD2YcObmP+ZBMq/dwZrT5xK5Yv2YZMu7scZnBR5lgznkE
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDE5NyBTYWx0ZWRfX6FjPXBe727/H
 dG4a/Td38ISabyNupjTkxWFv17p4BV8+7wzbPxCYI2jC83Y1Xm01XxZhJqW0jLkMkp1XMhcBnlf
 +pKfZHHXS46y5gZAi937+xRNDE31wnxa/q3+IWZPDfB5tmaGqNOdqjhSRNoZd4aplazQE0CXsAu
 R1iQcOQK8bWQ8RCgYT4MzB4VqLS/p4NS/jqc5vyaLCP+BqNEYREpaos12mq7HAvrZUZCboSzzbj
 IzQzVeyTO+q6HrAsqiVjtU6HL5L3O+IEAfeOtTVcVP2fb5WeASerbRo5u5DzvIIEMZ7MY/uvUWd
 3S9owNH/RF4po2XtMU7nZC1QNDFCogJjtwC5Ms7PRnYRjooILXm6J5BbbxD7mRZW/yN6r5Bt+16
 Ni3BJhpxd4J3hFeUgj6fvxRiEDeAOg4DXfc+OZFcB025EzOy85RjZc12K53LPeK0IZl8ik+OFVQ
 8qK9+kb/smfloDCDV8w==
X-Proofpoint-ORIG-GUID: mepiMnviDUfIt4QMjb3Gx4hOm3HI7NdG
X-Proofpoint-GUID: mepiMnviDUfIt4QMjb3Gx4hOm3HI7NdG
X-Authority-Analysis: v=2.4 cv=V7NwEOni c=1 sm=1 tr=0 ts=69b1f691 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=doS3iEISOceegCkkCwMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 spamscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603110197
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274362-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,poorly.run,kernel.org,linux.dev,somainline.org,gmail.com,ffwll.ch,linux.intel.com,suse.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6E16626B420
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>

Unlike the CPU, the GPU does not throttle its speed automatically when it
reaches high temperatures.

Set up GPU cooling by throttling the GPU speed when it reaches 105°C.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 11689da96c96..fcd9aa0f5c33 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -19,6 +19,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -4985,12 +4986,25 @@ gpu-thermal {
 			thermal-sensors = <&tsens0 9>;
 
 			trips {
+				gpu_alert0: trip-point0 {
+					temperature = <105000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				gpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&gpu_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		q6-hvx-thermal {

-- 
2.51.0



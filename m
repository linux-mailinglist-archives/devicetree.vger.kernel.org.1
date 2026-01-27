Return-Path: <devicetree+bounces-260027-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOabBGLoeGmHtwEAu9opvQ
	(envelope-from <devicetree+bounces-260027-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:31:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBCB97CAC
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:31:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6496B30A86F4
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1017361667;
	Tue, 27 Jan 2026 15:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H7QtjTqX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UaXRELZ4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC05F36166D
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769529503; cv=none; b=euhNoMKP5u8Emy1y6m/kR3rHkb+aRWPEw+wPpr9zb9kHsCa87gttLSPnTNvI03m4z5LyAesnKJBqAmUAAnhvK3Bvtlg0ldUeXiDABzz5rdScmijn/YhDJma6jMDl/DpQSIo3Jf2QoJmEdGKVjvdGEL+J79EYqwMs9p38LR3j7dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769529503; c=relaxed/simple;
	bh=F/WRCepjFcpZUUlC6qKcNtIckwG89xuifemDPktE66M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ckASVvYgpXr1A57bWqiyCGmvf/C/QjY+Jy11r5CAo+el7AWdKbRnhil2zwi+hmhk73fpx0QQTAzkUV+h/2f6rHAtu6W2YACwTOVPny4gOfdksczkW9DASq+7Nr6mawgodMxmIXdijELR3734HvJjgq/XDk5XavDuM5sqFC6BPOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H7QtjTqX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UaXRELZ4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RA35rl171530
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:58:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uXzCklFu+psMk/IKlNTq5oAZ736zPPobE3f7vWSqzaU=; b=H7QtjTqXAuw4k9a4
	occA8r8M3E+Detbe8qIyRppt19qKFtMzZ0M/jgg7SFUYmUppEdtv/iWZzL6ArC2y
	m7VTpWEHYmoqalkwunzqygE7IXaZASNdWVB1eO/Vh0Q7g5IEQwsFTvpzNdHnA+Eg
	4lhbsn5PysOrUyZUP4rGoMVmh2kNNCYX6PYfv8IN4SjeMGfBNVeLDd/4kTnKyrKj
	7iG4DEynQb5evfIYFPAWKCFPliexrQpLWww6+9E4wNhhaZmdCG/T9SZYBQig5NGu
	1AEOMQCEOoUwBcgXUz4iNMYVjWpm+v32CpJzeZtq4N0cV4VdTccDk25x75H0HrAh
	FUlSvw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3a3fk5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:58:21 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a13cd9a784so54428835ad.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:58:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769529500; x=1770134300; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uXzCklFu+psMk/IKlNTq5oAZ736zPPobE3f7vWSqzaU=;
        b=UaXRELZ40uKgg7IWbpT3RlbFfHWtgj1MofiKhs5WO8MIIjaGaZfNaVM1uRhOSGEjOW
         2W5gYdftfDYa6BF9Wl+0OOKbXAIC/mjOJk9KYuIExESpWzlUThHK0VpMBkXOTmsfQ8NV
         wrcmcndxccE2pf2HJ5+PB4kg9Yd14+GZn4UXKscwXKNPZ4G26CsfcNrVOVIoYgXXYJfO
         CQ2bgKi0pGjomTuZnsF/NkTKjQYcjln4bi0sf5sFiGWuF7c6XhUT4e31DBQ7jyZMYv4e
         XMn+SeMFWqpaYiVtTMg54kDGEwztCXbO2UcajF1oXOcLRPQALtvndGePsctjl2I019BJ
         V/aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769529500; x=1770134300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uXzCklFu+psMk/IKlNTq5oAZ736zPPobE3f7vWSqzaU=;
        b=IY+SHKl6IFAZOHSAsAnsTnfcnyxgBzIDxKexwnUcsMXJpFExBoyGueBdjEI+XDa7Iq
         VC0+hr6CjwnpshoCVZIqLfOCrf5GMuhPUDmnBAo9hWu8gHf3id15/eCSZpqvlwTLMQ8+
         7LOIFbCAGq9AgTfPwijziq3nvNN8PvsNXpp/+d8+QRl1RE2XbjHNMor87lB5PZbrMidd
         u2pwqPUKehff6+ZgAvvP0hKnWDmh7MPiSNV2dWoPTfOhOqxpGPrsmVcmehj7al8E9wLx
         Hhus3mSU0/COOX3NZpcH1u5W8H3r/ZOskqhD7E+FfvjdrCXtJGn4klLyFlpVDSTzFodW
         LS4w==
X-Forwarded-Encrypted: i=1; AJvYcCXUiNqNUxzNtfjWEngkEOxEWdd3Bqg4cacpv5yiDYkoaoTYlbpbQfLD2O/nlw6CmRjziRmsiR7gdqbs@vger.kernel.org
X-Gm-Message-State: AOJu0YwOOr/Pgkk9KLrsxW3L9i1sFeG23AROxH7Dj6yhEJsiM1DLRrJt
	aVer7IroOuGVG4ORiBaUn+HV815WH2fyn4Zhom7YoAJz1Hn+VIHibpKc+L3/aEhn49M0NvSM3RK
	vDG7z5kLMFuwI3AdDNaTF2P1OT+6tLX024AuYRE6jdF5EmJLHyCSSDcDtOD+fNdPE1jNR/YI6
X-Gm-Gg: AZuq6aKNtWp7Sdmt24DunpgRTb8FDl+gAWJ01xon1IpFsliPTU75Ct9ue47Jkp0jWbG
	uZrSRHf3EqiuN6oAZiu1PdfdeJ6Ex0vnt1jOmnTQvE45eHKxBi2aP030jDl7FKHUr3/CHomBy/K
	N4iuizzCD8YY3A236RCfefhmGJh3G1K4Q5R4jYenI923IIjEB5gPiFB8r3r3hQjV+htZn/8jMET
	E+/g2H+BilY3qS47sJtUcu589LmWbRILDsrC/NvZ8eIYi4d1PGx8UXHKIJfd4au8PFbAqE+VvLj
	07tMeAcWng5uOXMjj/PugW/oZVxltr/a7Ae/PKaBmmbHofoiX2BVRUVSViumK4vAQPm2Wntv/nU
	1/UM//ktDywZCRvYwEJsxbHV3vjmsotofZ49mK7E=
X-Received: by 2002:a17:902:ec87:b0:2a3:bf5f:926d with SMTP id d9443c01a7336-2a870d79392mr22357165ad.24.1769529500364;
        Tue, 27 Jan 2026 07:58:20 -0800 (PST)
X-Received: by 2002:a17:902:ec87:b0:2a3:bf5f:926d with SMTP id d9443c01a7336-2a870d79392mr22356865ad.24.1769529499779;
        Tue, 27 Jan 2026 07:58:19 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802ede745sm120577465ad.44.2026.01.27.07.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:58:19 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, amit.kucheria@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        gaurav.kohli@oss.qualcomm.com, manaf.pallikunhi@oss.qualcomm.com
Subject: [PATCH v2 8/8] arm64: dts: qcom: monaco: Enable CDSP cooling
Date: Tue, 27 Jan 2026 21:27:22 +0530
Message-Id: <20260127155722.2797783-9-gaurav.kohli@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
References: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEzMCBTYWx0ZWRfX2tt04sYb60K5
 hTYoxaXhPTmTXvx6zcrI/Jia9kigyE8Bi0l10xZqRhJvty7pmbORE09U32ixp50nTZpKM5LGHg/
 nX5ShKaheA/d1fKcts0vGKWUMr4lA3yUWP0/m8z47SEOQvOcN2VUE9FSH0wlg/7nBQHNKO8WqMM
 oIqPL3/evCQgCFXhxliLI2a6P5pn7jeD8Xs9Z0t/wVZzLdZIUjKvuQ9t4Of1QnE6httuExp4kGB
 ow6xJmikJdaOVcsebC25rERxjCbaXFsiJsvAt/Vr3Nfhbc8cp1HUdw8Pe7BsgZzt1rRZoPkeAdz
 qNet9dXWfoKesL9Fji7KeYBpw6zTue1lGW5uL5oFThf++JoVmWa7S17bgLYYZkPCgT5RJuelAm3
 Jq9EV41wP2UzYPTJqWdorqtLn63krz/nd1kNI9xkDKZaYAG7vXF400brK80kx62ZyL0fXp8vhk9
 TCZz0hNa2vgyX/Zu1CA==
X-Proofpoint-ORIG-GUID: 9bBqck8jLoxo6O-p5e8YZb4M68DmT6UF
X-Proofpoint-GUID: 9bBqck8jLoxo6O-p5e8YZb4M68DmT6UF
X-Authority-Analysis: v=2.4 cv=a6k9NESF c=1 sm=1 tr=0 ts=6978e09d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=L7ffWoggXZAuNz6kUr0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260027-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.4:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCPT_COUNT_TWELVE(0.00)[17];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2CBCB97CAC
X-Rspamd-Action: no action

Unlike the CPU, the CDSP does not throttle its speed automatically
when it reaches high temperatures in monaco.

Set up CDSP cooling by throttling the cdsp when it reaches 105°C.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 93 ++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 5d2df4305d1c..6d7a269cd98e 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -7194,6 +7194,15 @@ compute-cb@4 {
 					};
 				};
 			};
+
+			cooling {
+				compatible = "qcom,qmi-cooling-cdsp";
+
+				cdsp_tmd0: cdsp-tmd0 {
+					label = "cdsp_sw";
+					#cooling-cells = <2>;
+				};
+			};
 		};
 	};
 
@@ -7528,36 +7537,78 @@ nsp-0-0-0-thermal {
 			thermal-sensors = <&tsens2 5>;
 
 			trips {
+				nsp_0_0_0_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nsp-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nsp_0_0_0_alert0>;
+					cooling-device = <&cdsp_tmd0
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		nsp-0-1-0-thermal {
 			thermal-sensors = <&tsens2 6>;
 
 			trips {
+				nsp_0_1_0_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nsp-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nsp_0_1_0_alert0>;
+					cooling-device = <&cdsp_tmd0
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		nsp-0-2-0-thermal {
 			thermal-sensors = <&tsens2 7>;
 
 			trips {
+				nsp_0_2_0_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nsp-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nsp_0_2_0_alert0>;
+					cooling-device = <&cdsp_tmd0
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		ddrss-0-thermal {
@@ -7648,36 +7699,78 @@ nsp-0-0-1-thermal {
 			thermal-sensors = <&tsens3 5>;
 
 			trips {
+				nsp_0_0_1_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nsp-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nsp_0_0_1_alert0>;
+					cooling-device = <&cdsp_tmd0
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		nsp-0-1-1-thermal {
 			thermal-sensors = <&tsens3 6>;
 
 			trips {
+				nsp_0_1_1_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nsp-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nsp_0_1_1_alert0>;
+					cooling-device = <&cdsp_tmd0
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		nsp-0-2-1-thermal {
 			thermal-sensors = <&tsens3 7>;
 
 			trips {
+				nsp_0_2_1_alert0: trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nsp-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nsp_0_2_1_alert0>;
+					cooling-device = <&cdsp_tmd0
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		ddrss-1-thermal {
-- 
2.34.1



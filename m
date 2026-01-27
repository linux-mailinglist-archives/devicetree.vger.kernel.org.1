Return-Path: <devicetree+bounces-260025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHpIHBTieGkGtwEAu9opvQ
	(envelope-from <devicetree+bounces-260025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:04:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A297975B0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:04:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABCB13103343
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96A2D35F8A0;
	Tue, 27 Jan 2026 15:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k9l0BtHs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Tybqx73X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4931306482
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769529495; cv=none; b=GkCyfgd4mD3QY+h2rCGyKlvIDi9dASs5cj5LqT+tMJWypO+m5WFQAB8sddbXnwRAMiSAH2PY3tcZBS9A9gOwOC2DixhImjKUprrI0s3LybqWCBgSMWTtBXRL878m7Il7F5hhUxg9fzwDG1Ap5/uC3PrNpP1QqbDy+k9rVVcGsRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769529495; c=relaxed/simple;
	bh=imtITUMdGl12JmD9BqLF6obXBs2hrUtdLo4cmRhOnEg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ihgiF/hRgNdjRoPbcVhfu6lpCkBtpfEtfIW3FLkalu6KYyCxXYf0x78V64n6M2UJbcHzZjjKj45csMOl4PIl+H8a2zOXLIckpxzthk+ww+NOXbEZBwhmUEwh/aUA9xN0F33NKwmuGvP8NAOFgTDOvop/+BY586Cmzv0cBEUrhmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k9l0BtHs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Tybqx73X; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R9uXMg786330
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:58:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jK9v27e9BZ+Wwf8D2qBSh4rJOfb5MBzZq76RGHeZTQ4=; b=k9l0BtHs9jmTcDc9
	RLFbrXAwEEHxBkgqN7JkKr057KYnbVGev1dqezGf09ldL140BX4Ajiga5aHObGA2
	2lQ5Y3tDSOigOOFxrqLwj1v2X7J5vazuA2eWvLjEJX69inV6CLKduy2fUl9nzuRt
	hFoF8N+R1qEiIr8pGVfdvrZYT/+1Z6J8C/Hopoxc56/r3FjV5ilckkiT+qES3lKl
	4hluLEbtNjTgsU3RbKxC7riUSF3AUgusba/cel56sGGF6QmSq1jrLgBzxsIKnRdF
	27mR/Dvg8OiHh1S4YzO182pypC/bb1mTqmqhlUykIEZLXCo5GzFwD9yRwEYXM/3B
	RHx1Nw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxg93k72e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:58:12 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34c43f8ef9bso6209729a91.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:58:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769529491; x=1770134291; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jK9v27e9BZ+Wwf8D2qBSh4rJOfb5MBzZq76RGHeZTQ4=;
        b=Tybqx73X4TXD0DlHGhIM+XBzdxmDrH0BxfN/y6aWbAuRkY4T4nodEgG/ywCgL/rdWF
         bXwUEaQc+iahHaQZ0mDlzKKk1bZxHQGxXDcc+7O38DRVO/eG0ye1ub8L8qxNq2T7G+I9
         ioZ4gh8Cc8eM1zbuSOHpiaSApWP4cRszIcdxX2jRy/GcMTkPVI1iWdDAs3sQo6xcDxvD
         WhdmNAP81hxreGDjK8UxjrBVWtxuZRjEj2ovFRQv6ceuJCnZXBoaafJGTTcfFZS5bM6I
         WqgTcmO2is6f+V2H5aUVgPvD0mcHKUTV76eBghEtCbso1o87dcRjDV4kYhbWDh9YlF7l
         p8IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769529491; x=1770134291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jK9v27e9BZ+Wwf8D2qBSh4rJOfb5MBzZq76RGHeZTQ4=;
        b=jmc7yXctdvsynXkKspBcf07KPL10Wga6qaKkynt8p0E7+fMZ0KpmsMT2BGP+qaEnlc
         Ef6AoPkS6+MySXEs9rZKuYucVnlruhKeKrXglINLGNbX957lZlXHVptwsz6HW9TpJ/5Q
         FOBHSDK2mdgZyJwamzAfIs21f31fglvLJEgEti90CRIih7Ph4mo99zndG3XnNke3/2l7
         lzlEYSzXg6bGbgzdHHemKF3uSQ5NnDfOQh2buV6DjU5W7UcVmy7QTLbh5+hVhHmdMbEy
         Neg+SXzO/Jm23a89mEfKjfPjn68mirQapfa1pD4KZe0X7Romd9ObQ+SHX0qS8J8h6Yyb
         B72w==
X-Forwarded-Encrypted: i=1; AJvYcCXxE/D/shzTvFyA4pVWo3omlmzWE0WIrofLM6HvuUkOzp3DREcBM+QPOkGSQhS+knRSEf3U536+6BMj@vger.kernel.org
X-Gm-Message-State: AOJu0YybArYQ/4uhufN/8BMcDM72XEL1OW38Wl3NBnPeO8uhFF3h1nK+
	sztExsitn/Fen0qz7CBn+IqJ6OGeRODL45e8Dr4Uy1+g7ztJFXTmJxySWtqseuYkMeFePWMb1a6
	nBJXgWc1dQc0CgZC0MkX0SBldBf9Z4psjpHw9GFGkT4JMaUGUBDmCjgYwPJwZbnhw
X-Gm-Gg: AZuq6aI9JEvO69Zf1FfHlgYXjSSu6TIG6HcGF7HKr2iU4H6gGdEP9iKZLgTr3EPy6c7
	wdqI73E8DlqsBwf9weWcAHW/tOZ7RhOZPDTyRivlgUBrMCMjQJqUvsdQCmYw9SPaTQbRdboSvcB
	f7noNzhxp5COz0GSbfXnbJaKMZ6T3JCiJwwYs198bKXYjFyfdXzhLtYgYLEKFzogcyeMF6f7VOx
	UOw9M8IPEeWP4Q7/BNtnluKyhE/dzzOcSYcs/sMQSQRsYYNRJyIJQv2GcGeUKckC/Gi8L4tD0UQ
	0yglYVAMjbT8NJiy9oo+2l/D5fkV80+T6p2MRh5YHBSK6S81TdTk8j+j5smwEYGQv+TCElwfs+X
	7e1x+NU3v0vb75XJlTL3RF53Jbzd1X65aL2ArThc=
X-Received: by 2002:a17:902:d490:b0:2a0:d0ae:454d with SMTP id d9443c01a7336-2a87133729cmr17254675ad.22.1769529490794;
        Tue, 27 Jan 2026 07:58:10 -0800 (PST)
X-Received: by 2002:a17:902:d490:b0:2a0:d0ae:454d with SMTP id d9443c01a7336-2a87133729cmr17254425ad.22.1769529490171;
        Tue, 27 Jan 2026 07:58:10 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802ede745sm120577465ad.44.2026.01.27.07.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:58:09 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, amit.kucheria@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        gaurav.kohli@oss.qualcomm.com, manaf.pallikunhi@oss.qualcomm.com
Subject: [PATCH v2 6/8] arm64: dts: qcom: talos: Enable CDSP cooling
Date: Tue, 27 Jan 2026 21:27:20 +0530
Message-Id: <20260127155722.2797783-7-gaurav.kohli@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEzMCBTYWx0ZWRfXyaw7XYPT+g9X
 7eiNNhZVkiZ52rJXjTDNkvzgeRzZw2psPNuDSkg5a9CvyMmNcCg5nwL1x3DWZcpxQUy5J5uhSCj
 NK795KVHQTuiNjcxTTv91ZLItV3Uk/IJ91v6G0chIzlumaul4JZfNskvWHMkaSnF9qsaMYyFsB4
 VDK+hwpgkr8nK+hmAGOCSBBpXQ2L9mZ6ku2g3HpX3MlXhBF/pv15Q5e+klS2kgOHS9vxTMIQVNK
 KNvrt+VIKas6wnXTuIjkL0LUKc5twIwkmNE+7xTgOnmE/EUXje6kMIxP9S77jnJrBDgKOu7w8FY
 v2gfOcV1riqoL91CIwncbJQtqWVPI8EFXxQramrRHq1XcTWBR+MtyGxcTzi3cDs4gRPn7QQzxLF
 FF+j641nCrTMzuLi7oN1b19osXf2sNMgsf7CJqN7nUN8X2syoFNcazup5jM5D9IokkEj/E9mEDv
 k87+zUz4JKNUktybPRQ==
X-Authority-Analysis: v=2.4 cv=Uc1ciaSN c=1 sm=1 tr=0 ts=6978e094 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=9S75qEfK-iFrpP9ttAoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: OfTVq6PaORczeE6_HUSTnGaVJF0mqh3E
X-Proofpoint-GUID: OfTVq6PaORczeE6_HUSTnGaVJF0mqh3E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260025-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.6:email];
	RCPT_COUNT_TWELVE(0.00)[17];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1A297975B0
X-Rspamd-Action: no action

Unlike the CPU, the CDSP does not throttle its speed automatically when it
reaches high temperatures in Talos.

Set up CDSP cooling by throttling the CDSP when it reaches 105°C.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 75716b4a58d6..4091afd0b6e3 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -19,6 +19,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -3554,6 +3555,15 @@ compute-cb@6 {
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
 
 		pmu@90b6300 {
@@ -4845,12 +4855,26 @@ q6-hvx-thermal {
 			thermal-sensors = <&tsens0 10>;
 
 			trips {
+				q6_hvx_alert0: trip-point0 {
+					temperature = <105000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				q6-hvx-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&q6_hvx_alert0>;
+					cooling-device = <&cdsp_tmd0
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		mdm-core-thermal {
-- 
2.34.1



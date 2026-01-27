Return-Path: <devicetree+bounces-260026-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKCkBU/oeGmHtwEAu9opvQ
	(envelope-from <devicetree+bounces-260026-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:31:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2002F97C94
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:31:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3441A30A1562
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92ABC3612E6;
	Tue, 27 Jan 2026 15:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MckToMAX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GyBE5OAN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB8436073B
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769529498; cv=none; b=tjhkQalphp2RsDuvMlVnZ00roKAfMuYPvRVzWWpddJXfDjSLbRq3f1Rja3UxK778hSBouImyT8R+BfvA88A4mYwMIo+KtIkZEHNsQ0mIPJtZ0jOXL9L1G6VuzxKCYS5guufGJekFZ1vIfkE7ScRSjZrkmX8lD3eVRq5+EnULwlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769529498; c=relaxed/simple;
	bh=rT9aOvKoSdoVMoHRIYOqTjccVfZ8vSzhwbpRtBd8d4U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ahOxL3kg25Kr5CtZT9r6IT8P/tx6+8CA1C8Hbsd67/SOjymhS4/zklOhDmKzK4QGXlgtBSXnlycnlOfi+rHMAOBTLAW4wPrPT6H0De02Jdt4sTPhDUfzo7rAJ0ugYyOY3hU+wrUIbubDn3urWVXqjqEcxU6cIuBQ4l4PRmC2hKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MckToMAX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GyBE5OAN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RFCCLT2379266
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:58:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F+ZHp27u6SO09MSQuvFyIVk4/ZmKs1kInQ5godvccYU=; b=MckToMAXYIa8T6OI
	vGtZEhd1polk+Ow4u8Tp/ZNtsbWZNEwPLWVomCBClbTeOvc/Xv7rMaESHIve8Qzh
	6aF43VuejqjB7vU9gitmIFS1AgawiE9qtnDrtYdQrshlF2HDle19+OvV3O/2hLjC
	ekGIA6QMxPg78U2IX1xvqQTfB84AIQK4LUydKnSX0r+pRMAsmIyEyrgwK/x2Py8E
	7Rn4LJSofT9SHv2zt1r9osDXOij3YBHGZl6UKB3mjom7wRkMPtel9TyhwWJ/05Wb
	TJ0Oj/sjZ6wEUt9aGrOoZRs0D91m05rsFKArpvfQnkeQTt3mzMIFcJWXcvMmwRiP
	mkXg+w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjr9hdt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:58:16 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a351686c17so51623515ad.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769529496; x=1770134296; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F+ZHp27u6SO09MSQuvFyIVk4/ZmKs1kInQ5godvccYU=;
        b=GyBE5OANqbz3VLkJYtdL37ozw8xF508XEVtkcO2HQTH4+YyRYrwSM+eB5pdN5+Npmx
         zJQ0iA89z9AKL0BIVxE9SZPDWndP2ZtAfKcKw6+5Ix2b9eZc/vS4yAjJjDOI2PBozXa0
         Pz/fZZn/Wt5JgVQCe1AmrqkvFzenO35E/1Er4Yb3bIE2HwHIg9W+LRoUlF7U3PsFNzGF
         M5W5dUbnmcMU9gNlVX8ckpCt3c3a+L2htPD5JDBi3fLV9b7PqW46n3J4OGQzIuo+WKVK
         SgyIlOD7nO1ZqwPOpNyi7RDfdLMdZWdhOyPPYSrl7PF8r764zDy2PNrOOk4jgJ+Cmjgf
         wKVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769529496; x=1770134296;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=F+ZHp27u6SO09MSQuvFyIVk4/ZmKs1kInQ5godvccYU=;
        b=f9q+Gvgz2YKoLtLjo1x5jltVjPKCQtx00UJ89FxQgcv8gWEtczErMrFhkMD4UcLr0L
         6DrAVR447Dbt2wyhKUiJIqqqeWtjfn/WZ7t0i1kV4OK7eh1W4+QzW0dZHnKtjNbxEj+7
         4eCpQfzsschrX3zBCWyDDfdnVMCnWY1IPg92wDhPqOoqLpCpIMqVmKx3PtVkE8TEhpEw
         rAZdRjpuyl5QDsR8KWv45WhS+GmVSrlL4wDV0UG3ucENFcTULUj04JlivXFkuj2Nv4DH
         JU7vZAneZMhxJDikRY1R/KjDvCqe3jf4c1uGCw5B/k/vQgklUKl1KVKVcd9HuIkY6a8j
         G6qA==
X-Forwarded-Encrypted: i=1; AJvYcCV9mALs6kOqA97PPd3Axl+9n2KtsUNaEs2tHDRd8EEcao5dZ7t+Vp1phjuwTU8dKds4sXDfrJqiLxmy@vger.kernel.org
X-Gm-Message-State: AOJu0YyMKSdR1EpHByNhuo2TKFVzWMR6Me3HoFrUvd8UTc9bC+v0eMUO
	TAXIc4z9RiBa21WcjYgaAQztresNh5ECUol0ky5ZjWQV/XJKbiIZl23pdJ/5NJeVXPbJ71eqMip
	rq/sULzE9io0c/68sB4kM3EOeKYA7V7X6SDO/paJp0vXXLvpx7kz3+eqNkCiF0/5P
X-Gm-Gg: AZuq6aJpFMq3wJVsdcHNpc1Xcl0YrrxKba3QE06c1vs2ugCutMIl71HAJoxC0aE+y/c
	fqXVG08iK2ePYoPstWIbBJup0pgtPXL9X+XpxyuEROhRRMBkejq0EoryQx1bqrwDCs/cFJG0Kdj
	f8DOI+2BLvWopiLaxGncLBn3Iam9lUS4On1A1GmLxZpQxn8pKiYdALaov4Kdm/79fmq/eLjRMKf
	j+l+AsgFelttqkadYKWvDYUGr3hS/q5aYUNvF5WzIxH0B3GU0jNah8ItzbLBD9V9EPaU7TPR2vj
	rYdu7i2YQM931T2pQ8RD14XDlHYQxrzbAjuOSQFCdn/W8ZspkLjeVr5w9zc78tZja0CQKMkgxgT
	F/oZ+51MdTXw1z85Y9wTEBjirYvxRz1zDBIPydX4=
X-Received: by 2002:a17:903:1206:b0:2a7:a98b:9fa7 with SMTP id d9443c01a7336-2a870d96a7dmr18054915ad.25.1769529495521;
        Tue, 27 Jan 2026 07:58:15 -0800 (PST)
X-Received: by 2002:a17:903:1206:b0:2a7:a98b:9fa7 with SMTP id d9443c01a7336-2a870d96a7dmr18054575ad.25.1769529494982;
        Tue, 27 Jan 2026 07:58:14 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802ede745sm120577465ad.44.2026.01.27.07.58.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:58:14 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, amit.kucheria@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        gaurav.kohli@oss.qualcomm.com, manaf.pallikunhi@oss.qualcomm.com
Subject: [PATCH v2 7/8] arm64: dts: qcom: kodiak: Enable CDSP cooling
Date: Tue, 27 Jan 2026 21:27:21 +0530
Message-Id: <20260127155722.2797783-8-gaurav.kohli@oss.qualcomm.com>
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
X-Proofpoint-GUID: uj_Lu1mzQJz59LN0p8nZHxWnsWs6fNqd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEzMCBTYWx0ZWRfX3yE8YpqOdT2Y
 4YfheByeq9Hh5w08J6Tn6Chs6esFCfVM3otQlUbhe1ml637DijN2ZsSVkg1EkgzYYjQiR/Zin+z
 nMsVHSZO4hLiabEFTmWFTY7hKVW+BfmdjmD9uLD8RQfj1pKyNoUY+0k0Je+hg1Yf59E93jnSEZD
 Ask0Ih2Ui90AaxE+NbS5heou/ujXzHMtn7J+7GFhfPVh9RmpM44duw7iJ/6L4/fdb0rmx/tZ+cN
 cyUpuOEeG575Y9sPZYmAR8A+poLNbxNW7+OJUWAXUKV26ymKykET2cVi7NuRpxq5dH1LxAGkVUT
 qYqe9RBoP7yyGMb7d6Kw2ZZXrve82rjwW/FWihK445LGQ5gxykTCl8Xm9vov3VAlbi7rzq/9tdk
 71t1yy54JU3dXgy0vgjauPTmLC3a4YWLUVpcIN5K/ri8+THpfgvCii4jCT+9QMmDUZNNUc/Bt+1
 RKUZIPIIEhjlnxp9jUQ==
X-Authority-Analysis: v=2.4 cv=b+i/I9Gx c=1 sm=1 tr=0 ts=6978e098 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=9N0ZlmuXsyx8K3-BwEIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: uj_Lu1mzQJz59LN0p8nZHxWnsWs6fNqd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 impostorscore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
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
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260026-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,a600000:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	RCPT_COUNT_TWELVE(0.00)[17];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.14:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2002F97C94
X-Rspamd-Action: no action

Unlike the CPU, the CDSP does not throttle its speed automatically
when it reaches high temperatures in kodiak.

Set up CDSP cooling by throttling the cdsp when it reaches 100°C.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi | 37 ++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index 6079e67ea829..3c79572bf55f 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -4793,6 +4793,15 @@ compute-cb@14 {
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
 
 		usb_1: usb@a600000 {
@@ -7600,12 +7609,26 @@ nspss0_alert0: trip-point0 {
 					type = "hot";
 				};
 
+				nspss0_alert1: trip-point1 {
+					temperature = <100000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nspss0_crit: nspss0-crit {
 					temperature = <110000>;
 					hysteresis = <0>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nspss0_alert1>;
+					cooling-device = <&cdsp_tmd0
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		nspss1-thermal {
@@ -7618,12 +7641,26 @@ nspss1_alert0: trip-point0 {
 					type = "hot";
 				};
 
+				nspss1_alert1: trip-point1 {
+					temperature = <100000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
 				nspss1_crit: nspss1-crit {
 					temperature = <110000>;
 					hysteresis = <0>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&nspss1_alert1>;
+					cooling-device = <&cdsp_tmd0
+							THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		video-thermal {
-- 
2.34.1



Return-Path: <devicetree+bounces-271942-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDdIHeGfqmlLUgEAu9opvQ
	(envelope-from <devicetree+bounces-271942-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:35:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F9421E05C
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:35:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A33E2306905C
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F4D38460;
	Fri,  6 Mar 2026 09:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="igSsrnbe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iEjbYHm8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B1734572B
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772789630; cv=none; b=BwrPQymGCTYvOKeNdtCk3McWRzDCTBZIfdAcf4Hiz5rrPZRrGCq/YLO1bvWW5/0zlAPTLAb2VZVmA/PHfRwj5bgxg8Gl+5f6CutoE/85qLONAYhGqgt8xt6aEps9kAP+CWC/e0a5ih1N4T9HgTphHpPIGciPns+r5/6TkkQfrjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772789630; c=relaxed/simple;
	bh=8ebMs7i13WqPF0zC4w+oVAIdgnjTx2rCxck2UIJoxuU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Osx5hTYhA3KoRBxX2jhHBu1FPZaaWMGzLLnomTG81gx0ohLBvw8ISoIvEmFr50c9tomumT4GkwWv9G2hHxywewRGCjoYEc0kt1BMxvWywejofeyh6xTL5DXlfrHIDm7un3541n8J/Gw3Al7Pk6vJUGxODbnG4n7bRcROeYRXQ0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=igSsrnbe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iEjbYHm8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6269P0vv1162833
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:33:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=prNokE296Cy
	f7UgIGcapomuvXdqfCedaVm3IT2o8IjI=; b=igSsrnbelWVGKxA7mWx75h62PaQ
	D4XXqFBBLqx9rt866v3WbV893LY/W5ORuebT4eGTIeyIQnblsw2kepbt3YvvOBU3
	RktRYosxcBD+yeU3k8MdgX6IPAwlDf6Wda3gGpSjAOkgT3y7K4YUdhGakcpbkQAL
	hfXZc2JrrR2NBBs+biv8IYLpPyWb7R0pH4mxIsfFFoZFMVV6qN/PVTDJYrooO1sy
	Q13JbWTYzayHwipDCW1DMzsymEZEjWZ4WDYWKTRBNJ4yxczOhQ6vdWra/W4pkOr0
	mLwkTasxs7+zupGOXnNyIUgyofCJ6Dgys7/jPngOhdREH6lvCNw/2cA5AhQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqv9ag11n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:33:48 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-358df8fbd1cso8474803a91.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772789627; x=1773394427; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=prNokE296Cyf7UgIGcapomuvXdqfCedaVm3IT2o8IjI=;
        b=iEjbYHm82QffZbhnl/dFFPQAkoI9niUSWEHzv4t4eWvCkO4W8LagE0LTith9qLxZ+o
         hjsByh7csxw0xUkQ3s205c3pdZN/W6hKxRfLMCoRqj3XKG55dnkng3RmqT36MeRXvRRM
         EqtanOdPUDhXoZbc18j4/4MVPsBTDgg4laudht+86Gj7Ih3F4qeGoAp9X/tRX51eWirt
         sowMD5R8lRNidZ/UptaMYEhRuoF0Pf5jzDVWrhl1Ep0mHCEaI4KQ4V8NedVetapQ/Y+l
         jmxaEn8oW5+8e++g3OPE4/uPADxW6BoSq9Y95YZ12zEkspVVzJrtyb52Qk8OB4VbkNuq
         aLqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772789627; x=1773394427;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=prNokE296Cyf7UgIGcapomuvXdqfCedaVm3IT2o8IjI=;
        b=Pw9Z05kTK5FceiNr06Nt7og81YAA2rme/NLALafblzM8BIugUMyai4Hz9isdSxX2U7
         dmgsjSLS4M5XJiSZ8jotS3yTwGtDnIyoc8vIKIpIKxf/j0sVhy2mY5Xe3y8yVCNS5NR1
         imCvRBtfzcXPIZ4CpFjwNM1sDfZw6AqrdoctIvjumR1G7YJKdbILRJ8Lb/L0iBd0bVPN
         3qbFmW019qyfcMVGK890J0ItmgKXU1tQVSIhtQb4jfvwsziZEnUvm1Fkzjqj92vxUCB/
         rRmmubWcZGN1O9oMFdRZJnoE+1p7QaguiJNi27vsCekAtyw6zCZqYzA+WkW8+SHuVcOH
         Yeqw==
X-Forwarded-Encrypted: i=1; AJvYcCXkzf7jiBah+XMGzYHGTr/9mt3kMkjI+qHoF8go6GId9U25R3Eol8aKYbOq9qT8lAAYVILmziE4NOIp@vger.kernel.org
X-Gm-Message-State: AOJu0YwGKqhGgiD2ROzl1O+yAwELLO6XYNpOth7na3ytMa7DlTxBUyrd
	iI4e1p6F4OcrSKxS72Ea/RrcuMQ71G4Vui0C0nu4NIZB41IovI8bboL4laQK/kvVFhVKovXwuKt
	8r/2m18CGqNCz44++JTRKVWjV/IUNGXC0QesXerdnJMT2ZoRqvJUWwIgPjGhHKOA2
X-Gm-Gg: ATEYQzxeJ8NlqnsC3DWgSjK/87VyLl9IjngrTVpdongYeB93VtHzGRMsgCyhFeN/L9P
	zklgaf7Wd5s9jSN53fs3mC4NQQAAWQuC6hsD1WhR8I86PZpmBa+jSFpqNDk8w9ThGEi2vfVeBKW
	cgg4qfK2YH5Lizfp/qBnEBjU0ygacMcceXhVVJZljPazOr96+MC7XR0UmB6jEo4BG6eN7nQdaJT
	ihVIv21UrkRKIGoM3VY8t0c5n3htl04St2a740ApHzMTUgntAn6Q/u8qpXEgdgYciIqGAWXtYHu
	b0YIPJ4w5BjDG6Tj+TYpKLW0LP3X2Cri+4PfTF5h6pUUQJkedEYYRE0RIBT7D7rb547IGO9wB1r
	7Vvf14VNoOdxnUiL3eoOdhKrjlnvBChCXD/zqh25QAAgdNp4wO9kh
X-Received: by 2002:a17:90b:2f8f:b0:359:8727:6448 with SMTP id 98e67ed59e1d1-359be32bbbbmr1443976a91.17.1772789627462;
        Fri, 06 Mar 2026 01:33:47 -0800 (PST)
X-Received: by 2002:a17:90b:2f8f:b0:359:8727:6448 with SMTP id 98e67ed59e1d1-359be32bbbbmr1443947a91.17.1772789626858;
        Fri, 06 Mar 2026 01:33:46 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359bbcacf06sm647549a91.4.2026.03.06.01.33.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:33:46 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH v5 2/3] arm64: dts: qcom: kodiak: enable the inline crypto engine for SDHC
Date: Fri,  6 Mar 2026 15:03:31 +0530
Message-Id: <20260306093332.4193993-3-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260306093332.4193993-1-neeraj.soni@oss.qualcomm.com>
References: <20260306093332.4193993-1-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: YCnFGtyU8oMG9rG167gQviVI1fQ338qg
X-Proofpoint-ORIG-GUID: YCnFGtyU8oMG9rG167gQviVI1fQ338qg
X-Authority-Analysis: v=2.4 cv=G4wR0tk5 c=1 sm=1 tr=0 ts=69aa9f7c cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=w5lGHQi5D-TRKhmXJ3sA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA5MCBTYWx0ZWRfX38sHz9/u+b5u
 +scAqK36CQn8Tq/upWpqLSFyyEt782xeSWMfaA/KQU8pBko13FPE6poxF7OGNpd9at92zzY9W48
 2u7O0KBIRdjz21ucANmkr2tELHVuSZcXSPfHYw8lujKrn38ggmQz3yRNs/B+oCEho7fyGrV5aar
 HR+He8mbRK0KcGRln1bDxK+q+O8FmCaSCuGfSPL7OZjxgTV3Hn6UJwYWjJBOuxPRrQW9zJM2Mqx
 DYCej24ICCtJioalqr7sJl/GwvUccw1SCUZP/CDcXv6wS3NRFrF6/INRpVydlLpkJDRUNjj/gg2
 JXaAALbnPVi8ZV80dM2tObh6vvoTaVRg94x71Q/bt+e9K33nPzqJNXnqcKg+xcKhfRt7RbV3UVZ
 R53SCQz59mn5uZ+eqjFPs4UFJNUGAKNz90M+NbWQNitdErPo0R1X4exd0l3Aetz0vlHmwGXZNJe
 pJE+086TZXM3E5Q9x6A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060090
X-Rspamd-Queue-Id: E4F9421E05C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271942-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add an ICE node to kodiak SoC description and enable it by adding a
phandle to the SDHC node.

Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index c2ccbb67f800..de01a6669522 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -1045,6 +1045,8 @@ sdhc_1: mmc@7c4000 {
 			qcom,dll-config = <0x0007642c>;
 			qcom,ddr-config = <0x80040868>;
 
+			qcom,ice = <&sdhc_ice>;
+
 			mmc-ddr-1_8v;
 			mmc-hs200-1_8v;
 			mmc-hs400-1_8v;
@@ -1071,6 +1073,13 @@ opp-384000000 {
 			};
 		};
 
+		sdhc_ice: crypto@7c8000 {
+			compatible = "qcom,sc7280-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0x0 0x007c8000 0x0 0x18000>;
+			clocks = <&gcc GCC_SDCC1_ICE_CORE_CLK>;
+		};
+
 		gpi_dma0: dma-controller@900000 {
 			#dma-cells = <3>;
 			compatible = "qcom,sc7280-gpi-dma", "qcom,sm6350-gpi-dma";
-- 
2.34.1



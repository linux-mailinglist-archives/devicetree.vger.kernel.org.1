Return-Path: <devicetree+bounces-234664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A741DC2FA4C
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 08:36:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1011C1886F9A
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 07:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F0530B50F;
	Tue,  4 Nov 2025 07:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TINRY+51";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c5+G9GpS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B3230ACFA
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 07:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762241777; cv=none; b=AybKOXmBj+lq1Us1su/m65Eib4puqAk9W+ca3JiSD93oS8+OP4ZDMdvkJcX9oyhjRe9Zt1u8+Lzg+Q5BFGoArrqKGmz7lJ/8s4cPojaWBEx/UewEhr6voajLK3wXAvlwt+mcTjA7cWlpvmKiTQrtOPNhYZRIGT6FtTb3mtF2r5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762241777; c=relaxed/simple;
	bh=5S7bewqa2P4aC46GNTPc3Wfn3h92qyoaFLzlTIsn9fM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SWU+Pq4+LqEDifv0mhQnl7W42sv+oSOTbAMJqvlaO7XwPEzpGjE+Et1LJfSrBZRUzednzwbHF4wSvovqAUNNiGCYWq7cOCfeAU63SWoc0wzoLRQtRKdKvV3qRClHcBjpq9hzAXtJP339a+sxx2mH9eEz5Qh93tV79tAZTidD43M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TINRY+51; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c5+G9GpS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A428mxj695120
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 07:36:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PFM8hA0K00Qfpbxy4GnLDAkU4MBb9gQY5AMWZmJe2JE=; b=TINRY+51DS8ZAnwZ
	JF6RQKbEZySryXEXzT2DjsgP1CViNFrQcOyK/MQrTWFua9MhAWkXsQetgT4wi7uF
	8pDKnnknniLxOJjOvuH8tz2hm59jykuCKZ7R1ABvo9Dp50MSDP8M0h4Qmqg/4x0K
	5pNJXdOsSRIASdqVSrNc3QvIjcSLR68olUsvN7rrRpJLgXIOiriIaV+2k2WfeC02
	znDKf0POfOLBCzpDlueJMdGbjE9b5GIa38uoLKAvHEGwOHRh1bH7vx3mbG4PW7qM
	fGTZ+v/ptgKwBIHnGjheqY5e425SrTFv1m6BAlLLlUy7vq8krbleG/rO2vXbEdEh
	8AaC6Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a78eqrspf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 07:36:14 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3307af9b55eso4595541a91.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 23:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762241774; x=1762846574; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PFM8hA0K00Qfpbxy4GnLDAkU4MBb9gQY5AMWZmJe2JE=;
        b=c5+G9GpSNC5uUsvbmfhgK9cIUnpmZ4W3bEktla7QNMDexRJHtQ8kSZoqxNr9YD/1E8
         9mED3SXGI5sWslH+mIdKxl9iNNj8ru5gT0dOPG/4PjCB6pAiBCDjzCVoSzJJ1udXyGk6
         wEZRE+9SZgPR5B3wdZOFzm+zwwNK+ypV60bybh2k+hr2UPP1zxAwJSCiIvEC3/V+qJNr
         UARO/IXdrINJoikzBdwmiujAdHGxQYfwAxksxqHHCTBcAMPqpskjy4p4HRkt1BIfLFzC
         gymspcSltHlv53VDgQk2bKcEvgvdXJZW1h0N4Cg1wXsxsPms42KcfQ+kUrzRl2+i265h
         6dzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762241774; x=1762846574;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PFM8hA0K00Qfpbxy4GnLDAkU4MBb9gQY5AMWZmJe2JE=;
        b=E8On5YleEJUl5k23fPunT/YFbgw1GsCYl3nSUNx9scjDWsHbGctQTYsMHT08qM9sXA
         1eQlhTt5EcvAMv+Tr1Co2AG0GfgC11hGiebealnO9SbEP7OFUBoo6w5wAWB6tM+9xxyE
         GwI9TzamrgxvVUoA+McWFV2ZxFjknEQ3Wpx+CcRN7WjQ/gJ5AZRnQvWpt2nxcEClYJ+N
         iWjgtGl1ayNI+miwsHTGtCmJdEmc/kdnyRkeop96auYU4D98wdMsnVSiDi2L5m1HYYOM
         wPPg2I3uO7k10Z3ek0y4ZgDHX4IFTdSjbdQ2hgMPltgHkVsk/ha+54TVeDaCyV4BpcaJ
         w7iw==
X-Forwarded-Encrypted: i=1; AJvYcCXquMZvj0uVlk5QQ/xBMH0nb34gr1efEpdsrSiC9VhgH6CW7CImcq69/zDYcVHqgxQJEwhVSaNVMbzL@vger.kernel.org
X-Gm-Message-State: AOJu0YwLloZ+gJmhHPF0dLcRt6OzMLTjCRHzYJS4U8tXgpgnIeRr57BC
	E55o8U34FLleO56RkfZ7o2EKLgJNB1GFOuxs6Lq7AnZApRG0jxfNULwH/r7hYwXZ7vHYcus39Nm
	2CxYm0OoJw8OmgICyqrwEnAP2KXJE9Ob0AoVdVmVpFpARIgUZ73VFrNv6Rtw9ljf3
X-Gm-Gg: ASbGnct/Zv8Ihz0fmen6raOq5Y38iVDdLXJDCny4dk+Fji4yShDqzOzUSSVr1JTQnpw
	F3IPGrNjlOkiBh5OfNrB44PKgGKp01Ic050kcnwwYHdM0wPi5yeHnOEse0+1FXX8C4gBVlYUv8I
	u6PyIdbC1vrwlNHSiMsUuXj74PIbNZ2Hus83z20XOrLMRmgOn2ZUf0GY9e6Ij9bB0QAAWGEr1ER
	dIpoCq+aGMa+Obm5JkbABeAsVhd/rYlZuEohTUlrdUbNU1PJ7tzqL3uj4kZXPxRXgkt9BwnKFi0
	V898vZpbty1MCyvDc6fxTCNrB2pq/whGUHVs4fPaIk1h1+04WOvU+6fm3MiFHwOmIfxa4+L/srj
	38GNY9slFqk6pnEZZ4CsGofXQTw==
X-Received: by 2002:a17:90b:4ece:b0:313:1c7b:fc62 with SMTP id 98e67ed59e1d1-3408307ea8fmr17567601a91.22.1762241773550;
        Mon, 03 Nov 2025 23:36:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEzBEHTkjPgdkIwUI7lWkEQRpIDa20jvrpWkfugq5bytrrXQmYVQgd0I7u9hQ6Go4ioLIm17A==
X-Received: by 2002:a17:90b:4ece:b0:313:1c7b:fc62 with SMTP id 98e67ed59e1d1-3408307ea8fmr17567555a91.22.1762241772931;
        Mon, 03 Nov 2025 23:36:12 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3415c8b5cfcsm3484367a91.19.2025.11.03.23.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 23:36:12 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Tue, 04 Nov 2025 13:05:41 +0530
Subject: [PATCH v6 01/14] dt-bindings: remoteproc: qcom,pas: Add iommus
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251104-kvm_rproc_v6-v6-1-7017b0adc24e@oss.qualcomm.com>
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
In-Reply-To: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762241765; l=1163;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=5S7bewqa2P4aC46GNTPc3Wfn3h92qyoaFLzlTIsn9fM=;
 b=xmcHbhegIJZig8VyD7U17RKCKojxbLdOTD7/frVeqLBpUy8FgnYDoeV+4fh8p9om1T1Yn8YMf
 oL0YwuEoYhVDiIFOe++KpSNVufWoimeI/nvKwW9tcFWOOeWyda5pp3S
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA2MSBTYWx0ZWRfX6224lprizDfQ
 ZnZBFdPr4BULxWXybFwyaRD1S3+wsXUzO/ju3oqEB3f5EhbIk9/s56VsAxTxcouIE9NMdLV37JX
 WrbMDySlEjoBCmJb21EenJZD5OSuQh7EXfw9uuU46aY4oex0ghFnWyAa24lVNYv7wULJAVVqowB
 /Bsjl2JXOi8N48beOEpag0QS8SYx45YrqXR/7y32/9rzHoA1fqW32I/24+hB1uWpdtvCsKJwA78
 yCPRXp2WBMWfj6ZEGx1jB9iAXm9RINIjUMIvDPABkMdhPs9uE0dqGbHxXA5HPfVI/ihPLGTka47
 Wo9QoVGSU6dD738J+cEkbr2ygSOh3ixf5VF6fawuldSlMKWygkvuMBXa5ExUdtJrIWt4bOi+YLF
 jETvSY1TabRTGoUf8yKHPovcqGTU+Q==
X-Authority-Analysis: v=2.4 cv=fofRpV4f c=1 sm=1 tr=0 ts=6909acee cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=vdhzk_XxDewY554Buq8A:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: zEvu3WG23IWfBJaLduWb72QPgablOheB
X-Proofpoint-GUID: zEvu3WG23IWfBJaLduWb72QPgablOheB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040061

Most Qualcomm platforms feature Gunyah hypervisor which handles IOMMU
configuration for remote processor and when it is not present, the
operating system must perform these configurations instead and for that
firmware stream should be presented to the operating system. Hence, add
iommus property as optional property for PAS supported devices.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
index 63a82e7a8bf8..68c17bf18987 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
@@ -44,6 +44,9 @@ properties:
       - const: stop-ack
       - const: shutdown-ack
 
+  iommus:
+    maxItems: 1
+
   power-domains:
     minItems: 1
     maxItems: 3

-- 
2.50.1



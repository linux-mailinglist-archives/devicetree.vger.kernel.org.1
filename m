Return-Path: <devicetree+bounces-259852-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOGCMb+leGnVrgEAu9opvQ
	(envelope-from <devicetree+bounces-259852-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:47:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E39693D90
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:47:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F2FB30890BF
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75952349B11;
	Tue, 27 Jan 2026 11:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gPMK3E0w";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IUnWBfXS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C044734A3C5
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769514269; cv=none; b=QopwIUtiNCiWcblsoLnFD+h0PiM1HiCgo7P+ef3GvN5zQoG3jURgcnvB7W5xW/+vke/skkcwbu3T4kTR0tXI72SHQkianfFudhL7qR1BixnSmi2racPb5iYBSmhIEN7kVNpNjk9sAkca9nTyOu91rnpIo+HSTvRE2VGGCOwU8vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769514269; c=relaxed/simple;
	bh=EG/h0NKEtW9o2PEPM2VksLqQusR11nWGJdHCLIV4svI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fLRd9/+g0OowPO0NBUPaxFNWs+T+J415menXwJYp1JpGtK0J3k39112U7PKBk+0vDR7lNwgK/M+67rgRsekhsrajwneYko2S29pSeJoowUJBJL+lhP1Vgi5tBKkI7CHB6oBrspaIjU6fytS0e2LOEIH1fHxN4c47OqhRePMtfPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gPMK3E0w; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IUnWBfXS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RA7paC1268748
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:44:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kvfNSeiLLPWF6jua0MIMCVKk76jIDvFdIJSgrqD1rcE=; b=gPMK3E0wF+BMb3E3
	naFf6pfn2OXrLBGAh7diNSE/CWdmZHdYC0+57ZGALS74EYlbpRiyMi66Zk7qisS5
	V7TWdXO0prd2f3RVoyNIMZBkiP3T/dSI7H6z84v6GmFkLcG+0xfXYPbb58/XARFD
	424mv1t/6DbAaq9F4CDm3zRyXBfEbVbqqtjY6l5DaNDG5aKuPyqjLeQI/xjkE1P7
	XEvyEajGCKKzxG2cqxdQ6yuVdf9PBkcoCZU51w+8smjgrpqy4HkCe7x47GgQGzrc
	9ZpK1Bmc0nItt4X4NhFahpN7LN1+10+tasp29VaEinpmH4NVQh6EsoAOuFYc4U1W
	+h0Vkg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxnyashfj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:44:26 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c93f0849dso5318792a91.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769514265; x=1770119065; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kvfNSeiLLPWF6jua0MIMCVKk76jIDvFdIJSgrqD1rcE=;
        b=IUnWBfXSeCYczxiCuGOXSdQZKaTvi/7ODXwBIcglHsTda/ZDcTJdklbchtUDGU7heA
         UmW99LrevyfCPXTylqtIjcj6LUnyf2x6ocJm9xkYqp9ogbNPxlx/Rd/bWv44Bs1xTgND
         lgthu10g9JUFS48iY20+42/+9HamnkHZTN2oHL6xlguvmS6xVpb9aOt0og61qOhCJtx+
         9sCy0RadJhHqBvXWM8Upeo7NmqLp/qPzXLMPLVIBJNIBF57RTK7CD7Pw9PU6GXU8EYv0
         DgbM+Diz7mbUF8Wqq2Hn5px/hd5BvIsdi/MOw5aKKF6bjbtAZjk8Mdf4AxTnPbqAo98g
         02sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769514265; x=1770119065;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kvfNSeiLLPWF6jua0MIMCVKk76jIDvFdIJSgrqD1rcE=;
        b=vpvjFj6jHN4aEg6uUEzanc/+l6gSJO4g0FJfvsmJkg/KjPYNeAbSaerZjNrhxmDToa
         Z8NT0J6rwPfe+hhk0lVWtrsTmqobUF88u6fmqYHR7laUFo2h11CYMQJzTLCdiF22izOh
         7lW5FTO64ge19hDnJot7B+B+bjlV4IkBSqaj31yIt1AJkkegtUCrt7EXUhVwbh/26iJl
         UNtt213XyTmAjpATU+uWhQeZp4ddYHCxgjbLe724BsKEzLfoUlFx9xD613Sevenl5X1Y
         sEjAN/lzZ6kspOQMVddDNOnEGCwcgtG4JCjG8HVolzGK3iNgKelMd8cnVSD76lvS4ahs
         +v4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVB0IQN/KBrEkRz08oITh9aV2VCn6oXdykAqvM6Is1ZRc9F4lQFTvsyP6BLhgHarOKJn5wgpsG+ggi6@vger.kernel.org
X-Gm-Message-State: AOJu0YzkZBwWcyWxQmvYSz7BpI7PWMdjIPgc1ljKexXy13qZQlfjnW8u
	NBzEYRoIVr1AuhXwbPyZD2ylT0CGRB6tVS0losRHoCzS3rxAqpz/rZZC1pgDikiInt4CZkgt4w6
	/cGh5cZAYhdbuzDnb40eXj3JHeWHQwMlQEwrUQ4lBCdnvUPsWKGzNf9y3JSPRWEoq
X-Gm-Gg: AZuq6aJANPyfH7IpV35JTk5knzF8JnJ8JU7tEMnvA8TxeTqYy9utHD4svYatnxXfEfj
	g+ZJ92iu/WEK5hfYRG0jIiZ5eeEwiPR717Ly4z7poIojJf7RVRXPXKvSyLZbXMtQ7gAo6wBSToG
	aqZc6u7JqbkEk7QT3Q0otzs4DMNRCeqN8sl/wJ6LVnRdZGOhMOHTPTYqewbYC6epV4BTIQwGipS
	8kiGz0yU6qzJfmWCUnWp06bFUhHcDApky5MkMDM5aZAj11f4/6CgF6PbcEFgd7tIPkQVRKIiSxP
	7d8BqG8yraowOZ6Fq2m7Avb8vHLdpmxjMx9+8K9vhVYkBE8MFkdbn05g2dC+kf/0W0qJyO1uh9n
	m7MU7ybkO7DgLIZGlHzp+ZSGXFyDrkmKYbj43
X-Received: by 2002:a17:90a:e705:b0:34c:2f01:2262 with SMTP id 98e67ed59e1d1-353ff8b3d60mr1194792a91.3.1769514265326;
        Tue, 27 Jan 2026 03:44:25 -0800 (PST)
X-Received: by 2002:a17:90a:e705:b0:34c:2f01:2262 with SMTP id 98e67ed59e1d1-353ff8b3d60mr1194774a91.3.1769514264766;
        Tue, 27 Jan 2026 03:44:24 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f6230d5dsm2392301a91.17.2026.01.27.03.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 03:44:24 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 17:13:50 +0530
Subject: [PATCH v2 3/3] arm64: dts: qcom: talos: Add EL2 overlay
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-talos-el2-overlay-v2-3-b6a2266532c4@oss.qualcomm.com>
References: <20260127-talos-el2-overlay-v2-0-b6a2266532c4@oss.qualcomm.com>
In-Reply-To: <20260127-talos-el2-overlay-v2-0-b6a2266532c4@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769514252; l=2352;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=EG/h0NKEtW9o2PEPM2VksLqQusR11nWGJdHCLIV4svI=;
 b=s4zMFY60940scorzTLpqTZ+730OFunSflNfKLuK6e54XCkUbdPsfZ55xuhVkk2co1/nq2Nx61
 hLUiQnZXB9+BTdZlTai2mEY2hrCOF4WIPMtyAc+D5OUkVLY0/4jrlIT
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-GUID: aYJgf13h4xpd6xAar5nq6ww4QoLkpRs3
X-Authority-Analysis: v=2.4 cv=JZqxbEKV c=1 sm=1 tr=0 ts=6978a51a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=0HEmIXWpzLlmP88VegAA:9
 a=QEXdDO2ut3YA:10 a=eSe6kog-UzkA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: aYJgf13h4xpd6xAar5nq6ww4QoLkpRs3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NiBTYWx0ZWRfX1SItrXIDaHH+
 qiCZRMLluSdW9e7i3vtZBtfqUz8e89ugtLkMY1SoVuS98F/TwXVo8fmHNHhIZst7gj+Qn9OcZAu
 e3yflQs7a1pXUynlNcGxDqAZA9guBYFxIY+vIM2V6R0MLIyX0Vj/a1vVcuWk9VOkg096RfFw6MD
 hbiDbb5LO6UFrkYNp9RYkHesZWyFoui3yTv1yFcoBtxK6dglC/3+dIlUd97o48iRtaH88zenVRZ
 9l1xq/phdvvUohd5ZmJDWXM5NvMTNfSpv9wjFDK7nNy8/SpYqDdH8FcaDQapUdH1dn/njUyzjWS
 tC5eiCPq/h9fU8UhRSWaIrLJilXm6hSiJI5uetBgDYrGeXf1DiMS5GghrFSIek8cFAG7RM0Lt67
 AbkBqw1NuXFRJzzIsJb22sxMmMqjdnYfdas9JqQZGx+FHn0eEOOJ7qNiTluvdBPe6XSM4a2bNrQ
 jttORWeORkFLdVbrdqQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 adultscore=0 clxscore=1015 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270096
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:url,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259852-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2E39693D90
X-Rspamd-Action: no action

All the existing variants Talos boards are using Gunyah hypervisor
which means that, so far, Linux-based OS could only boot in EL1 on
those devices.  However, it is possible for us to boot Linux at EL2
on these devices [1].

When running under Gunyah, the remote processor firmware IOMMU streams
are controlled by Gunyah. However, without Gunyah, the IOMMU is managed
by the consumer of this DeviceTree. Therefore, describe the firmware
streams for each remote processor.

Add a EL2-specific DT overlay and apply it to Talos IOT variant
devices to create -el2.dtb for each of them alongside "normal" dtb.

[1]
https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile       |  4 ++++
 arch/arm64/boot/dts/qcom/talos-el2.dtso | 25 +++++++++++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index cbf7d89e432c..48ecbea17a4e 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -141,6 +141,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-shift-otter.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-1000.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs615-ride.dtb
+
+qcs615-ride-el2-dtbs := qcs615-ride.dtb talos-el2.dtbo
+
+dtb-$(CONFIG_ARCH_QCOM)	+= qcs615-ride-el2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-radxa-dragon-q6a.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2.dtb
 
diff --git a/arch/arm64/boot/dts/qcom/talos-el2.dtso b/arch/arm64/boot/dts/qcom/talos-el2.dtso
new file mode 100644
index 000000000000..f6818c058d72
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/talos-el2.dtso
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+
+ * Talos specific modifications required to boot in EL2.
+ */
+
+/dts-v1/;
+/plugin/;
+
+&gpu_zap_shader {
+	status = "disabled";
+};
+
+&remoteproc_adsp {
+	iommus = <&apps_smmu 0x1720 0x0>;
+};
+
+&remoteproc_cdsp {
+	iommus = <&apps_smmu 0x1080 0x0>;
+};
+
+&venus {
+	status = "disabled";
+};

-- 
2.50.1



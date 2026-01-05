Return-Path: <devicetree+bounces-251518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA86CF3CC2
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:28:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B81C130BD0DD
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8474D33E35A;
	Mon,  5 Jan 2026 13:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HzM9zAqy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CvRebB7j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E0D33E36D
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619454; cv=none; b=OdhZsdSRWfmZxq/1yUV3H+wEHWzHE5gKT5GxfybKek2SSEmnVq6yqUwHcb74kq8a1tqcEa1g8gSfdiXTXmgGik9wlGe0trbybdi7zvEsF3OEOOO/FlwOqWu6HipPQAS0D6LaWn4Tfyv6OawpznhlcOsJMJkxDgB2PN2Zdv2Jz0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619454; c=relaxed/simple;
	bh=hVruzQlgdHdjQ5OuxF50jHVIPoW3+xPAjhmK2sqqKSU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RLTJOEJ7B26ERt4PRLkCcigavqNtqzK/B4S0QEK4L0DqwRECp331B/PFz3Q/iIK00MNTg8MMDhgmK/ZCQSptx9SZLpKx65S3s+D2m8jeBwct3qXuR1GYW++Xh8DFnCHN5DVmM9uwfqaWiDX/3xbAS9phN70pjcthBBfGqg6B4cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HzM9zAqy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CvRebB7j; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605A3bpB3542195
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:24:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UA93deZRnndDjRzALR0KX/sfEJyUyvlslIGZIsSaPvI=; b=HzM9zAqyZ/cFSRNm
	XmIsbzBjesB1mJ7Yqx3/bXd1Hd2ZCMJ2ptV5Fnp7AujiJ7I8VEvnEP06p8BBnDw5
	wsqcyWN2EAB6g3+2W9xBjoI5SjN4trPtZuXKmytYd6Ho7NBR2E2xdxQSTS+1sN/u
	hQaKQ5E9/9GeO72ndnbtpy0VPVxn99MJ+tz6GCZ77LbvoU4PJSyRGNTdMa3ZROS8
	nOVOVy74X0JTq5di6C2F97Z2uwIfHBs/9VWWssX18SoaDAZRv/qLzDjbZ/2cQ/p2
	9P4xcSj+3jj5/TRx3xR9b9iZe+K4NNv8rpRhxR5IeuuulpRUZV6HSslMNlurBx0I
	P5HaSg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg57shkh9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:24:11 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7d481452732so26438338b3a.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767619451; x=1768224251; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UA93deZRnndDjRzALR0KX/sfEJyUyvlslIGZIsSaPvI=;
        b=CvRebB7jWBGdf6Gp685VYGTNB9GQTa+wYDhU1vRI6z1REHekGfmqA998vdSPHDKeFt
         QQ9cnM8UachquK7wMMIYyAzgMDUDNdtLcxY3vwZ6005TWEfBepU4vTf7cF2EnlvsYo6Y
         Z7gTiS4BMVl7QJaCE4rhVxwujyaaQDoUIra03K1N6WVlskQZAKKe6NSCthSd1jKQuqys
         5tNfE8k4vcUZUM5rMCA7L55KSRROJQGJ96JChextRZzQsAOaaSAEoGtbeVcN2PHRXiUl
         V4YmEr177is9oEtdSy964c8t6exobLhrytuYbi4cYZpbv9J1jtOMglUmqOGoZ9r+JEbK
         OU4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767619451; x=1768224251;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UA93deZRnndDjRzALR0KX/sfEJyUyvlslIGZIsSaPvI=;
        b=LfxD7Xfi3eNCT9K8ACkKtK1WrR0KwXpHx23DTL99tEXNTrjfzxddNM1CvFZezHPxg9
         z7057zSuujV94jbDeUYGWYCK4PgptF/iMZv6JIzqWl4QrKRyOcI+iOLulRLj9JI8FnW6
         QO316izvSLRGR+fkneQyUXPZuPztk/SDl4ce63xsgQIRpd22oorNC8upT1LypHQWNWRu
         QBwdBj8ufj7TbA/061Hhsgmn1lW28HhAlv5PCaS2a+vReD4lyZf4mlZOAdf5rXcOeCLp
         Eig1LbMEMxmYhQZGqWeaZ7D+LQBnGgi6+CvcMpK5np16neqhfVwoJJ2YmR7JKrM93c9x
         daRA==
X-Forwarded-Encrypted: i=1; AJvYcCWD23/5ajobuFKWoUUBsddle0BitktGRNRGMxJxnBoMrTCJx/G7nz+lC6oIHo2Hd4rp7GOMvhyJWN4W@vger.kernel.org
X-Gm-Message-State: AOJu0YzfDvj7BtOFNMXLBrgYh8EdQP03uOS5r7IhvKm4mjPesKddw6ZM
	UqlvoYJlcs+6UYuk1Ybiudg3VOwEXehfCsMzSMO7LQ2Krf3wt7nvoywOwxoqyaEoEsep2d7fF00
	0GIYmcKpqOiy2BYvTNRPHAxr+aK8332Xdp4WYN0FBawySiGjK2ZV1BWs5XScAf3S6
X-Gm-Gg: AY/fxX7vdtNabWxEoGB5j/Duy4hqxveySiDraBJpwheF1LfFi1pl/Ow33UjADtyLQP2
	13BoMUXgIucDInb64KPu9ZMuMr0ieVuDQjiI3UYJfxk1rUjLZYUO0Y+7MBHLIzupY1vAURTzPWZ
	8R6KjoV5IAYnDEpx4fFZ41+YWjINZmVUInBJUx0I+JZI2PwVXX22EBgvkYkD283TjWV2lSgeEgz
	JPX8gVVJgm9o9gZMfFmETDVhagvSGhBK2Y3wCJ8AK9nDI7MmVKgkwOMVf6bOtbUo3sef3v64JcV
	rPTeMAFyz9Ze7e/vDWVzLfs+tudNEpG4n6mBa8wGHIA39p8fESUmnbb4071+YzrhRRdW2bITuqz
	K6tNR0/dC6DBQEeQw25BGPZwb+/wRDIo1nxcr
X-Received: by 2002:a05:6a00:9156:b0:7ff:8346:7357 with SMTP id d2e1a72fcca58-7ff834675d7mr36204602b3a.0.1767619450815;
        Mon, 05 Jan 2026 05:24:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE9JExeJ05vZzubae1xybrU3aOxwYJajTf1lt/sbnoAiVpbIVrbU8FxGMaTuoyMc7l6x46k1A==
X-Received: by 2002:a05:6a00:9156:b0:7ff:8346:7357 with SMTP id d2e1a72fcca58-7ff834675d7mr36204574b3a.0.1767619450240;
        Mon, 05 Jan 2026 05:24:10 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b127b00sm48426542b3a.21.2026.01.05.05.24.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 05:24:09 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Mon, 05 Jan 2026 18:53:02 +0530
Subject: [PATCH v10 14/14] arm64: dts: qcom: Add EL2 overlay for Lemans
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-kvmrprocv10-v10-14-022e96815380@oss.qualcomm.com>
References: <20260105-kvmrprocv10-v10-0-022e96815380@oss.qualcomm.com>
In-Reply-To: <20260105-kvmrprocv10-v10-0-022e96815380@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767619390; l=3099;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=hVruzQlgdHdjQ5OuxF50jHVIPoW3+xPAjhmK2sqqKSU=;
 b=eT8U2rJZOrf7bF5JddHHgc+6KF0cAGVdravLhiOm++r+7EL9qtiGTDVrHvjTrUCXQgjyFnp4n
 gG4r1kccBZmCrjKjbSxDtmo5cLV/The9uP39atLdTGYQuHZUi4g3cPA
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Authority-Analysis: v=2.4 cv=UJ/Q3Sfy c=1 sm=1 tr=0 ts=695bbb7b cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=OUqdy03oI2q1KQI58CwA:9
 a=QEXdDO2ut3YA:10 a=eSe6kog-UzkA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExNyBTYWx0ZWRfXwC8nmsOt4kGo
 cZgu+TNP4D8dOwrQbuGASFccR84E/52byW0lNsn+1uWl9TWYNFNatOGH7T4s7Tk2V9nO5VU6311
 K8+GhHd3gJJMD+0F6obZ52EEGSv8SChAlnxullCtZJn0krirSGVIQnxdAB99rYcSiirH/YpbC1R
 qHwUOJB0EFaRUE/KYSo8EatMSgZLTXOBosHMZdzweThN5PJzej2P0bsSHATjo6bVMDCHrccohXo
 1f886fTGegZ3QOG6qZaQVMzrkRXQFAK/bmdijsubldLWqmkjDwe6XXeB881OdHsT15n3fBRfi0m
 HM6wv4PU24TZsv5Mjf9ZlOuBd+WBIt4Wm/f6Z7mSsiF6/sJlFROvh0MXJebGwpQyq+ZCZjgeYk1
 CjehNidHWnDXA2JZLBlBl+fsbl1ojRRWDe1byCUQykDg2jVN8itmdygVAgq7zHNSddxft614bsK
 chIS4M9s+aE7N8uB7yA==
X-Proofpoint-ORIG-GUID: SsATh_8tGKaWxRjpNacOY42eJexVJmi8
X-Proofpoint-GUID: SsATh_8tGKaWxRjpNacOY42eJexVJmi8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050117

All the Lemans IOT variants boards are using Gunyah hypervisor which
means that, so far, Linux-based OS could only boot in EL1 on those
devices.  However, it is possible for us to boot Linux at EL2 on these
devices [1].

When running under Gunyah, the remote processor firmware IOMMU streams
are controlled by Gunyah. However, without Gunyah, the IOMMU is managed
by the consumer of this DeviceTree. Therefore, describe the firmware
streams for each remote processor.

Add a EL2-specific DT overlay and apply it to Lemans IOT variant
devices to create -el2.dtb for each of them alongside "normal" dtb.

[1]
https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile        | 10 +++++++++
 arch/arm64/boot/dts/qcom/lemans-el2.dtso | 35 ++++++++++++++++++++++++++++++++
 2 files changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 565e9b317a37..f9a2cfab5a8f 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -39,6 +39,10 @@ lemans-evk-camera-dtbs	:= lemans-evk.dtb lemans-evk-camera.dtbo
 
 dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-camera-csi1-imx577.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-camera.dtb
+
+lemans-evk-el2-dtbs := lemans-evk.dtb lemans-el2.dtbo
+
+dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-el2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
@@ -144,6 +148,12 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs8300-ride.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
+
+qcs9100-ride-el2-dtbs := qcs9100-ride.dtb lemans-el2.dtbo
+qcs9100-ride-r3-el2-dtbs := qcs9100-ride-r3.dtb lemans-el2.dtbo
+
+dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-el2.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3-el2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb4210-rb2.dtb
diff --git a/arch/arm64/boot/dts/qcom/lemans-el2.dtso b/arch/arm64/boot/dts/qcom/lemans-el2.dtso
new file mode 100644
index 000000000000..ed615dce6c78
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/lemans-el2.dtso
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/*
+ * Lemans specific modifications required to boot in EL2.
+ */
+
+/dts-v1/;
+/plugin/;
+
+&iris {
+	status = "disabled";
+};
+
+&remoteproc_adsp {
+	iommus = <&apps_smmu 0x3000 0x0>;
+};
+
+&remoteproc_cdsp0 {
+	iommus = <&apps_smmu 0x21c0 0x0400>;
+};
+
+&remoteproc_cdsp1 {
+	iommus = <&apps_smmu 0x29c0 0x0400>;
+};
+
+&remoteproc_gpdsp0 {
+       iommus = <&apps_smmu 0x38a0 0x0>;
+};
+
+&remoteproc_gpdsp1 {
+       iommus = <&apps_smmu 0x38c0 0x0>;
+};

-- 
2.50.1



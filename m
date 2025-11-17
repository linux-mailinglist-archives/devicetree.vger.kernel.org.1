Return-Path: <devicetree+bounces-239212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EFAC62AB1
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 08:10:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 96BBF4E6D0D
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 07:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68B2B30E82C;
	Mon, 17 Nov 2025 07:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LzeRygRQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Fs++9oYv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2F213A244
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 07:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763363320; cv=none; b=bjsk053YKTsqE5qi89Cf2goGFEqPT6AO3QaUB6j7WJdfkADBzODkboGyTnZPYwJdq8IPaOridYZ/NmDjPC0XBg8+tZz1kUyVzEcLMnve6kVj8hUDcdsJ2/xlRYUFCUgX4m8YcFvANzTppMbX5l1rYLxfhKXnfn+RkJgSXIDcZYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763363320; c=relaxed/simple;
	bh=9yzhMsdmHNEAMLyl3o/8IoYKmWn48BasPEhuo1x0OFM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iWkXZr3lnI46KxPA03J51G39iawcRfSvX0WRaADPk+8wiiU1yORIr4QvaNJKdlK2JdKJCbT6Xpa1M+L4mzXkwxq0jSf0symzZo1tRJewSTtwS3n+PwKu9zlUL6ZK0CmuX9KPInmyKGU8oiv4Oezyy2OIocYsF/Ho8VgWoLJz1uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LzeRygRQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Fs++9oYv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AH4nt1i3318407
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 07:08:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=SNuyEg3IIjw
	rppjj/r6RPtC6vcdKvicgfJNLFT3K30o=; b=LzeRygRQjPUW8Z+gRr1ecIbVOXm
	BLi/6+WyhUEln24XKziS6xmtFls77hVOpo2YXvTV5U/gpG4iHPwyKDrt1MuuzvND
	D4cluocRoe34qn2hWYdtMgvBRYbkRCd5iy9sJwsDEPRWxpguAjOK07Q+DQeAbKZZ
	glRUM5gXTe4u7LReGv3RsRMvXaVrQECgb1NVVmNRkFD4L5uqRGqbC12jbN8E1PVR
	wGZWrWZH7I3OXpRT/HCx4vNGRVqgJM5Ao4CK4k+xg2NI8GFGKFy7FE9mg+NPWoHX
	tmlJu01v+vOIaZjSVAf9CFGoRyTqiTj6I25v0r77R07eEln4kQcxUWVmklA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejm5bptv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 07:08:37 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297f8a2ba9eso109196525ad.3
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 23:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763363317; x=1763968117; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SNuyEg3IIjwrppjj/r6RPtC6vcdKvicgfJNLFT3K30o=;
        b=Fs++9oYvr2jB6PvLx+kL82bdJYai5EPYtgKPa9OWbeB4Nj2tqMomlnwhXObJ3AnLM4
         uCamKmEVBq4odHv/55LF5hJkdLYUKghxfn7SNTq+kaAlLJgBksrLCM92PGwFI9UaDhTg
         +1TIDcG1OD6SJV6SxH4ildmbiGIcChOh2EmKHQqYrzqL3LBzE6pl0JapR6glmiqkQegC
         llosR7DTJ1AHMsLf3s2VBVgSpvmMTE7g2HANyHlz5aOT5zcUiObmFSWL8W2SrVmXZT0I
         r3DcN+mp1sfR+HPGnOzaFMofNdTJrs9vfhabVYYO+G+ylI4rDjQ5cGxPDGK8qXy3U6gD
         ufHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763363317; x=1763968117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SNuyEg3IIjwrppjj/r6RPtC6vcdKvicgfJNLFT3K30o=;
        b=lzNvb7s3mfue19KH01Tqxb/dl0he+snr7Lwdmkytr+rXTRqa8gzYaszPNFICaQ9KXn
         ho1QfjCSNLOxerFc6Vdl0JdpaJsnnNw99253uA9Rw3dAa+1Us9HVVLNmY57l+uvPt6Xh
         3t+Eay8CZNoaSwUgImAenqVYj7t1WRYAoPISEA0NwupYkIrJ4flwCNOfAokfaH+AzaY4
         eNsVlSsOVeXXzcwhPoTTWtHvoSuwFhEYF3oLr+NLze3RKNmJQhPP8eDyYRnkoPUD5ru5
         hwCPxKX4JPEoH84XC1ufxIXBZj7026VF2yQ/TfyK90VocyN6u8gOUF3IzWBs4sLCS+D+
         t/Dw==
X-Forwarded-Encrypted: i=1; AJvYcCVzTGiEq5KmL/PUKpvjksS1TlZmU8vhgpGtcrocO4l2CUN3BFiyf/bZTKg8GDluWu4U8SkszWAUvVR6@vger.kernel.org
X-Gm-Message-State: AOJu0YyY1KhU3CzaC1AodtTYyPaeah3p0R/EOiJEjdLus0vpPSt7kqfs
	AhJuRAg+g2yX0QbDkhGnL61Y0Cx4kAjCBug3GWHXaB7+iozXrTww/7xifkGk8Xya7EyT317TlgN
	oCyMn3y7G8nJcRubo/QhToVZmBbxUZgax4X784Vc3YuJwYZZeEVX5QE/bQhxFi1/N
X-Gm-Gg: ASbGncsMWCmiGj7OfLD7V8AE2NYj6hpmaVYtFhMKmjGWBc3KA1gyVMHK5espZ6nRiuS
	azDgDhnHsCO9D6GCz9RbAsIY8QM+kfZmtYj9CwNH3oVFEilw0gWJInF//HHx/idux3blc3py8ex
	bWI6jYdVY0Nt30m/RTE7MRqoKpfdebbr7lYpG7RmQxivtgjMaR1nh4GRUR7CqZAOzOs+SQboBZg
	pMxr7SdGh4oYddekEwUXj4dn11m+3aK4sSBFw01UiKE5ZGQE83ziLPhsdfV3n+f0QvQzFLihyzq
	//TW7YvzkjkfUUvHeRKEC1MzeBbW1lx9JVAzi4GRv+Cfgxj9E3ch5mJT0l/eMePaD56nP4xvSoO
	MtgC06zy8IUlZB4hEG+k8odNXvPk4gkO8xbc9XQbrQ2RtrCDU1SbDM68HmYbhMguutOgDbrI0
X-Received: by 2002:a17:903:3503:b0:295:195:23b6 with SMTP id d9443c01a7336-2986a758e70mr122452185ad.55.1763363316769;
        Sun, 16 Nov 2025 23:08:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGIF3al7RXgokWw4h5Rk21Vm9aJL+v2sRjbfgw3jS5PEJoOHR2Qn6r4waH0z5WYhbRd5mFqkA==
X-Received: by 2002:a17:903:3503:b0:295:195:23b6 with SMTP id d9443c01a7336-2986a758e70mr122451975ad.55.1763363316354;
        Sun, 16 Nov 2025 23:08:36 -0800 (PST)
Received: from QCOM-SocCW5bzXR.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2346f3sm129027605ad.18.2025.11.16.23.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 23:08:36 -0800 (PST)
From: Jianping Li <jianping.li@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: Jianping Li <jianping.li@oss.qualcomm.com>, ekansh.gupta@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: qcom: kodiak: Add memory region for audiopd
Date: Mon, 17 Nov 2025 15:08:19 +0800
Message-Id: <20251117070819.492-1-jianping.li@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251114055639.1050-1-jianping.li@oss.qualcomm.com>
References: <20251114055639.1050-1-jianping.li@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDA1OCBTYWx0ZWRfX+QaNLW5yrM6u
 p/7yBp/6Z34Svs9dFFBXGcTbKYG2m9bA4WB/x7TxrKVwbN+2DqPRK5ASsVVBX2uKwZ6XI5RguXQ
 dw7lJ9DcCSVmDC9a3muKOIF7U3L1bSjouA5i0KlGIbEjMRmlsv5UraDKudRmiGH2p+3Zjz+yX2j
 e5Vwd1kmD9A/I2Vf0T0bEQZ6f4jkGelKZo8BNqJjdnVFB0N0X1VX7QiFYzu7L+jfmy8cZvAcnQh
 LfOSuapwj6x8ZTF0dfSGO1EvSPLEKQysHW3tpYkxhstlkCO15Tts4lLBB9pvcuQEBt3NzHZ4VIF
 lhUZGVGTFyyXi7Lf6vY2V7bWspeyksz0OJp9kueYmg9GfokCi1JyhlFjwcXngI5IN530Z4SWdrw
 /VYVJpBM4lmQefKimbl0FQCkIXPsOQ==
X-Proofpoint-GUID: rWdzwmv3LZjZKjaw8T9h1ND-0ZOe3re5
X-Proofpoint-ORIG-GUID: rWdzwmv3LZjZKjaw8T9h1ND-0ZOe3re5
X-Authority-Analysis: v=2.4 cv=Pb7yRyhd c=1 sm=1 tr=0 ts=691ac9f5 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=3y2iGwN1jkfzY8oq8JMA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170058

Add reserved memory region for audio PD dynamic loading and remote
heap requirement. Also add LPASS and ADSP_HEAP VMIDs.

Signed-off-by: Jianping Li <jianping.li@oss.qualcomm.com>
---
Patch v1: https://lore.kernel.org/all/20251114055639.1050-1-jianping.li@oss.qualcomm.com/
Changes in v2:
  - Fixed the alignment issue of the qcom,vmids properties, aligning
    the values in the second row with the first row.
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index 3ef61af2ed8a..7957a9151055 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -190,6 +190,11 @@ rmtfs_mem: rmtfs@9c900000 {
 			qcom,client-id = <1>;
 			qcom,vmid = <QCOM_SCM_VMID_MSS_MSA>;
 		};
+
+		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap@9cb80000 {
+			reg = <0x0 0x9cb80000 0x0 0x800000>;
+			no-map;
+		};
 	};
 
 	cpus {
@@ -4139,6 +4144,9 @@ fastrpc {
 					qcom,glink-channels = "fastrpcglink-apps-dsp";
 					label = "adsp";
 					qcom,non-secure-domain;
+					memory-region = <&adsp_rpc_remote_heap_mem>;
+					qcom,vmids = <QCOM_SCM_VMID_LPASS
+						      QCOM_SCM_VMID_ADSP_HEAP>;
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-- 
2.43.0



Return-Path: <devicetree+bounces-224751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4095BC786D
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 08:19:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E2623E5518
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 06:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9B1629ACD8;
	Thu,  9 Oct 2025 06:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ga/+tSM9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A1629993F
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 06:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759990761; cv=none; b=AICW217kfvF7Uvo9t6jyGe7lJi9voOaQ/xxIMfLpkSWuFuV4zeFXIt0NOHisRh9zGNJyfq63KcJevGL4ryNm6Qsin4c8bIP00HkvknE4T2LUMBHMlMM3dCjRqF1n9VhNUAJXaHUJYIuKAmFgr99xx3FUHkX/+VKipB8V9IKp3L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759990761; c=relaxed/simple;
	bh=mhm3iyRHbrd6C1T0gzq8dZ3Be4D6uDhl+Lr3IO84qiM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SD84J+UEF4ZLi9QcRWt7Xo7vfXcZu31csaKdBGtne9dbO2Qd3d1AnytyZgd2B/lTo7YM/cPvy8tPqfO+t5Jvj4h1VxeXhIbR/B7n5XOGHnvvIy2c8zEH6OZszGtKzdAzzCPrrOyfQAyaDi/YDDszRKCrKMyYsjkECLSblcmZqkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ga/+tSM9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EIt5028491
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 06:19:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ATUO9sxjCo5PUTMu4Z+g3kwu8CIesdgQ1LufySgyaP0=; b=Ga/+tSM9v0/LYuuH
	USW0Yiye6GxscVBv/DS8sLMt5yjAdBTAwmsordoas+3voS77lpWVXnEmUGDcyV9e
	ckJUuZj4j+T9TdFiPFW6kIibNrV3SvE6nb2fFA1B4tlTWxPNMQO9jmUEvagiWY1E
	L8f9gX5yhpOHw8j1JO66PE9T072HtyK0yMtkSDjxDvmhcSCIIgntkxCCoB8O8TmN
	M75RpwzO5K46RNhqI0KVBz0AT9ciw9SDThKdvo04uw4XZEZJE41S4FjSJ7vaqRf8
	PMM+HQC/onikNKcGUD94RZTgCvu4JN3GYZ45iDqTI8IcLKNFcXavzEuLyubah/zS
	lyIIZQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4ksnue-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:19:18 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32ee157b9c9so1244019a91.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 23:19:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759990758; x=1760595558;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ATUO9sxjCo5PUTMu4Z+g3kwu8CIesdgQ1LufySgyaP0=;
        b=FcW292ccbQ/gx4Qpv+5wXzZHCDNEDBA5AVSk6VqnADd0KJyPZR8CSHRCTomzWf6qqv
         1euzv7LSzZiTIIXIFIQZOxo75AbMDjlxvH5SaNPj4EemETy/zrKelQW6OgdOZuNBj4u3
         bhPzRlKuaNz4v1kPOXtjIKoFiO9H7YyVAh3Shio/dW9z5yUD6FZ3X8batcMbmjSWoulN
         k+NRbevGcg0fB3r3B8HUPEAkevuVS+KRXOn1n4v/uSzvlCZT6NslRVw+3vAxAlpDlpGi
         SQJjpBYvGN4epIcmw1y64KOkfkXJpiZWiU0XmGm+iw3t5JST2wqIVuT8UEoJC07SVfOA
         DjSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkdFJQYf6DLNhfDiCOXglXKkldlIyQJ7Il0DrJS1fzE9dZXvhWFJyP9xpf42m6CyuyYDjM/t2WWt8V@vger.kernel.org
X-Gm-Message-State: AOJu0YzNAUrbFd/qC9N3EozWVe/X1YYYL8m71NWE6IGtEs8W1AxZ5Evp
	kjO+mvGZbKO1hhzWNg13efVzs+fGo0sg2OBZjGqeJ8qj+uegESX2aFgzZqTKZWkE51fSlP9hNAH
	lJPwx34NBYTxKkl1Rjx/wCqz+eaPNbUd0x4CAloLNzOxz1kX0ObD5+sSgL7UMFTJ3
X-Gm-Gg: ASbGncsivuTn3fSb8cws9ifWkf+Un2Fq/by1r+aqmXaMPegRXMhVVkHa42C1XAvrhie
	H1O+Y9a1K9w3vofiRKmcJd/n+xRXPpnSwwBxDDsAnj6UnO8orBT0pyF1DvmL0dPyCvzu5cQ5Ng5
	M2TKqhlIiuzibSQua14gqkELszBucXM0k++HP/KPoqkoiERcqgEfZ02KhflYD7H0+d4IVVmAZLf
	mSNcCRzzz0IPNfw7epj9Odvuq5vpi6ldTGg13R4oRRwmoqH4WIWk4ptp7CgOvw/Z/S86Da3pj+G
	QnAvZBJl7fBvIts6FXNUVuw1P+pp5jTYg7wStlDE9XvMXXhURVLhHlkjAQpCBgIoMrTkWLJJNEE
	8hpJiM/w=
X-Received: by 2002:a17:90b:33c9:b0:32e:e18a:3691 with SMTP id 98e67ed59e1d1-33b513ebbc0mr8788420a91.35.1759990757578;
        Wed, 08 Oct 2025 23:19:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGFAqILhWyE/XzKX2WhRN71ULW8L8fSTk+2psqr5ZcNytsqF57WijfbGOqYcU3wUDR0qZ960g==
X-Received: by 2002:a17:90b:33c9:b0:32e:e18a:3691 with SMTP id 98e67ed59e1d1-33b513ebbc0mr8788392a91.35.1759990757080;
        Wed, 08 Oct 2025 23:19:17 -0700 (PDT)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099adbcbesm19239671a12.4.2025.10.08.23.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 23:19:16 -0700 (PDT)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Date: Thu, 09 Oct 2025 11:48:51 +0530
Subject: [PATCH 1/5] dt-bindings: mmc: add qcom,ice phandle to mmc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-1-2a34d8d03c72@oss.qualcomm.com>
References: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-0-2a34d8d03c72@oss.qualcomm.com>
In-Reply-To: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-0-2a34d8d03c72@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>
Cc: linux-arm-msm@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXyfkufOGMZ1+W
 7scV/uPTt4qDFw1NKAOPblX55B+jB33GIMxIM4JjoYlvgyxQVNyjdYuhWdKJdToayGMm0KYzzt8
 hFd1hJAQiQ+Rl/HRMm1mPoA3dht1baFJMvuNfZSAZfs8aZDBeV/XlrAz/FlIHTX4cVfpIfYi/Sd
 h/71i4Od/HDRfExHWZ2I5OsmqhNg0Lcq6QrN3ZHCYskmviZMuBYN91V5T4MIukl+7A/yH5LcVrF
 Yfa/edSqqWxi/BsCLjkHFIKG351RvrX72zrcamRXOCgeAVTYG6it8OEbkglQoMcOAgQPckz7sG0
 JqWu181OdO97yi6SXr2LiZX2POvnFPbliUHzAXHwsqNuXLpnyiix89KKFuglcWwKMkslaVMRFKL
 xfWYs52P+VRBW2unzEHzPqxtHkOKLQ==
X-Proofpoint-GUID: hd8mHlspbxUDU7eooVLO3wFK8jxT0Jjt
X-Proofpoint-ORIG-GUID: hd8mHlspbxUDU7eooVLO3wFK8jxT0Jjt
X-Authority-Analysis: v=2.4 cv=SJxPlevH c=1 sm=1 tr=0 ts=68e753e6 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=bQkk_NDItiJHBMw_kacA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0
 clxscore=1011 bulkscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

Add the 'qcom,ice' phandle to the MMC device tree binding to support
reference to an Inline Crypto Engine (ICE) device node.

ICE hardware is now represented as a separate device node, and its
clock and frequency configuration are managed independently by
the ICE driver.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 594bd174ff211e1bb262ad8d8c7fe1c77f1e7170..9d6be27b43cdfb349a1dc96a6687b5863af844d7 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -138,6 +138,10 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: platform specific settings for DLL_CONFIG reg.
 
+  qcom,ice:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: phandle to the Inline Crypto Engine node
+
   iommus:
     minItems: 1
     maxItems: 8

-- 
2.34.1



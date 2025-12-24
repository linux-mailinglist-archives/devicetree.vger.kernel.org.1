Return-Path: <devicetree+bounces-249431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DEECDBC44
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:12:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48C7E30C916E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6623330B09;
	Wed, 24 Dec 2025 09:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OSrDd3j4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UF9rzksN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD3A33030D
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766567263; cv=none; b=oVv4IXII81OBBhpojv2eAB5e6rnrSa7FsWM/V1uNg2fLBDq9oRw7COtY3GjV1+VWSBVXEi4DAhVLCKoROgDU4HxbiAhjH1gihzMVX0BFdImFnrOsD/z70pYVELkZOMH3nr9O7QJIofQT5gua2+CD8VnUV2GGK1PyE8dUtlHmPDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766567263; c=relaxed/simple;
	bh=U3SBm8Q4F2Lqg46nftP77Qbyf63TqJWnGptxyfW3r6I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DxxQfR4N37zmuKFxg1V/CseguSeCKX2z+glexLKJcTiKrDJCn8NhDrLwc7HE1QzPSEuxZ7rlAuG8i0xt8NjqswTr/Ptdna0NNB8L/YL+W/jWio3V5hInx5lHFi+MVjpoyQPmCAmlbw2zDHA/06q42H3RkI4Ahr+2d1ZaPljTrnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OSrDd3j4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UF9rzksN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO3wKxs3796520
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:07:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2hUWnOSTgpb39HiN4iScZAjggx5kZGetEG2O1nLvCqo=; b=OSrDd3j4D1M6iMRF
	drhYNwsm6BxjHnc+2o8SZUOKM5dsoq5nJTuZqu7/MfOnu7IH/UP268Gp7nNZln6u
	MrAFzOnChYi9gbtCN5XJFgDIhKX42mGMGxonm3UxGDlguhOpobY9dpSNwzTQ+3KM
	AYFAdPpA8V2Jgoypqd0rhj/pM/X/7u5vB1y9YAJSiPnWVHknrS6zGJ97OUB6Gsvj
	E5G3cyqHeVC1vch3h06Va54tlGpwo9GXHdI2q/9WVg5q2cXRvj23UxKl6lpLFps2
	92qkss3LHeZvO3nDdpMcB5KregO43FtA25alfaTD4PUciRf33s/S9qNrDTkbxH5A
	YrRUlQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b88r68qf8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:07:40 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0bae9acd4so54585185ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766567260; x=1767172060; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2hUWnOSTgpb39HiN4iScZAjggx5kZGetEG2O1nLvCqo=;
        b=UF9rzksNeFTUwS3itGbPR8HoFssSWYwpKWD7TNWhSvwXOzvYNRb+QJAqc+MlU42HGG
         rzfRUjHVTu9UyUHbxUgX3Thrb5D9TtMKetLf7wPxk8hfaN6KN9exNd9VlINZdg5Roauc
         HSfgEbcLPbM22hHP87d8BdzsTztQIlUxOgv2h6mIrKcY2D8dPJiorq9ZEouZJMLsLq/l
         AB37qmlv0XWi/YxR5w6dolDrJALSIIKKu7TfLulfHhKEzgv8xIm9sNsHm+8ABpK+AgoP
         RcStMjS/HCcANc/Mjb7CABF2uh5BfZ0F43CnhXcoulndd6L3SPctsLky0eVWm6CqHd8B
         jHRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766567260; x=1767172060;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2hUWnOSTgpb39HiN4iScZAjggx5kZGetEG2O1nLvCqo=;
        b=YcfW7mUrLiElslfEjeGacD7fbpmRwugKs+/jmTOKdQHGR+iCmDjM+4Djg19US1S/zn
         AckiNKDBgKKurHOGLyWrJ0TJi1Uk7PajT8B5L4xyKb+LI8+5W1BorT1MKURPYaKv6zUi
         Z/cw1EiqfBNbgNc/cyAPZStYvvDGrF9OmdX1tI2g1Mm4Q5v0N37cM9G5i3piNc0gh/A9
         blc2bSaP7lud0jKyCwsfA4CdOoteAIi47/e2EMDVpDmVNbS7XiOs8H76rtDs3rX6MYdw
         4sf1LjCYKEgzpDxDkSsTlTBeG9QQsx7ydKTOTLj/ktE8wkjfwOGuDGJiLZV1z2DrgOLL
         DiKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUtLbuiZpeG7d4OCQj4EnZiL92KHQU1lj38p3CEbDb522qo/sK1lkWZyByM0yairWHNd0tFWZMIhAI@vger.kernel.org
X-Gm-Message-State: AOJu0YwLmBQOsL9Mv18mqFHNEIjfVVDKuyyAcY+x/64ImU3OL4ArsN27
	KJfNeQ9u5jQi8b6XrMOzEPbAwpQVWblYVlw7fYpwusdYKgIcASEEPyHvZ/aOhKGM8vyARSNMpuR
	cELML+luU+cgNRDSrAm7RaJ5SpXwH6+OONsqSCME9N3OcAtRhm9CTQqCYUFFEXP/Y
X-Gm-Gg: AY/fxX6gjQSgUAA/fLKU9QITAhA9mqERlfR9w3z2uAVZEFgMXr0YhTKqNmr9K1BjCIZ
	M8+MGW9IM1cP8bialnzZ5FlGAVS1SnwDSj+OZEMFLaQW9pFvDIxdwPLyq7outDIPtw3W5AQeN2k
	IVCDQRKiw5lTtxUqAFW4H4ZUl6vcwhTP+Oe7PBwM189wE6euKItyWiyeu5Ksbf08R5SJ6CQPClt
	7h4vbULapdRKF14tIA/8soz1qMXLjJqoPwskQfOnIXcld8AAQKrn57lwUGMmYfm+11NdqwOku4z
	OSw5QgvbdGtD2eq27SJmCHWsr2JCouBx+qhUqmUCR9XUmc7t7XvRbpfVpS7Ky39ysh3lFFdntWB
	GpLo3XwvtpsStcV/QtX5qzJrkHU43AtlnUw/0spPUj9mFupcyrfEFcAtHEy6+ADpB8GmtgxjE
X-Received: by 2002:a17:903:240f:b0:298:4ee3:c21a with SMTP id d9443c01a7336-2a2f220d4ebmr190382305ad.2.1766567260057;
        Wed, 24 Dec 2025 01:07:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFfndQQFrwSQmYqTWg9bPiFI4xmA7WAVtvf5bj4/YDmimFXEhX/VKCH/nn9DarFxK9sBxj5Hw==
X-Received: by 2002:a17:903:240f:b0:298:4ee3:c21a with SMTP id d9443c01a7336-2a2f220d4ebmr190382015ad.2.1766567259590;
        Wed, 24 Dec 2025 01:07:39 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c666d5sm148418095ad.21.2025.12.24.01.07.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 01:07:39 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 17:06:18 +0800
Subject: [PATCH v9 8/8] arm64: dts: qcom: lemans: add interrupts to CTCU
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251224-enable-byte-cntr-for-ctcu-v9-8-886c4496fed4@oss.qualcomm.com>
References: <20251224-enable-byte-cntr-for-ctcu-v9-0-886c4496fed4@oss.qualcomm.com>
In-Reply-To: <20251224-enable-byte-cntr-for-ctcu-v9-0-886c4496fed4@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766567216; l=769;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=U3SBm8Q4F2Lqg46nftP77Qbyf63TqJWnGptxyfW3r6I=;
 b=/7WMljk2g9bMwcAUVum+/8ImzjtIdqkJ6u3LAw/S1RhZMZQVJ9HIbk3/Y9i5dVhdvInLNMczD
 oObxP7p5avFCgtwV7858IVS3H6cwDqA8doPNQaq74IT4n106PqSnj5E
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-GUID: I2-7AEgdg-UbY-iC4l0lF4XnOi6eF6c9
X-Proofpoint-ORIG-GUID: I2-7AEgdg-UbY-iC4l0lF4XnOi6eF6c9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA3OCBTYWx0ZWRfX4n697kEqn7PF
 cXjbMoy/jCA8SnYfyub7pqVv5WAGwimqpU4bMjO7CYC/mVtyQFqyv+cJ0kAklhP5q+NsMEdUn6F
 9ZRFWa16JvlfHcfgjX1dq7LZm3Saakn9Y9mlAO3NJjXY9fex5dfy33WoJnc7Jairmd73UHzEid8
 YuopoCxiVG3H33zWm+kIZM/F5lFiq2Kc1gDCLI92cJlIRM1yeuCN+WZYzIcAF+ylRya6yDhxIYs
 NtnZrR02oT2fNvJDizu/urL9LG8QzywvcFitnMCG9G19JAaCRojm6C9XPScQ+luvjUhZczHGYCe
 GbdI9og7W5YyGEVYqL0239OozePhMeyALy+bhZoapaUKGoSWTeSTELS254MIpoHIqmdsUFRMKDQ
 MYKnQwkDl9DYlz+Ez8vuI4oOFLUQqwMhMq477mSNMeas7T6RhHbAkp7O5jkrCT64HnDam6i8nS/
 pzJq3vxGIDLQtg00SMg==
X-Authority-Analysis: v=2.4 cv=Qahrf8bv c=1 sm=1 tr=0 ts=694bad5c cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gBkj9RZkAcI1HbXH1KoA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240078

Add interrupts to enable byte-cntr function for TMC ETR devices.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 0b154d57ba24..75a468ddbf53 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -2776,6 +2776,9 @@ ctcu@4001000 {
 			clocks = <&aoss_qmp>;
 			clock-names = "apb";
 
+			interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+
 			in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;

-- 
2.34.1



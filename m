Return-Path: <devicetree+bounces-244049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7411DC9F59D
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 15:50:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sto.lore.kernel.org (Postfix) with ESMTPS id A16D3300A712
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 14:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69F5B303A11;
	Wed,  3 Dec 2025 14:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TWaaqajh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RaY74vBN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EE830276C
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 14:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764773358; cv=none; b=fI3ClxOHUROJ1bsPcsCTdpa3ZRL0jo/PFJ/2+iwFe1Q1uYeaWMPeh1vlv/JwK0hkTOR3IyCpvDeZtNjszQ1vG2J1cRcIxjOKpULtVswiJrD2WJ9CJo3lFqHf3H2/pZHEM65R8nGGYH/DS+FsXEB4MoUGF0Hcdq4xM2H1TyPqZAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764773358; c=relaxed/simple;
	bh=F/D4lFfA1WQQtOrKqXPgIFysrbIbb9rjcQ+cW7BUISs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=L1Bdw/QImvSF/kxkgsleTlf1305FQhawl8BJ8OZeKuVXSXEdZcIrmIDWqYEKGgoDnuvlnfFa0pPXtVeZLxBVwNUainKu6w6rTdlsXZ9uCtbzVxhuIi7yhvnuTfs85ykyEKYf6K4bijRwnIT1kBNBTFC8GzWy3BbJFuzOUZGWRnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TWaaqajh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RaY74vBN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3DeJDd404967
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 14:49:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=gy1xT8j7X4g
	zk3YYagt60EtlfymffLgJOUngUb8LQpE=; b=TWaaqajhm1ADkWUOipCrl/J/MbF
	o9f/SDvrz7e1TuVzB16agX7PhExXOSWsvbr+ulFZO7glC3gEIhYfInTyUE/D2TLM
	6VN/qB/B0g95mooCSKm/zfzPySNOWrTnUh6l4tq6m753tLKD9LhYwPFisGHOx9he
	6OaQANTmvJ/HKhecVSxKQRlKZbbCGq5kImnPLJ54ZCKwpvicVbB2WjZBvWfnFRSq
	lhQDzOJM13wi7uma6D3evo9oeE7UilU9EChgRBKmZFEHgvDHa/l1e0aQjaH8/MW0
	NHkuABIQqF9zZ7MJxMJqL6315E61Hj01nAsQ76OabBJyGG+Uw1Nw5A38TDA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at9fcak65-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 14:49:15 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7d5564057d0so7746845b3a.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 06:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764773355; x=1765378155; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gy1xT8j7X4gzk3YYagt60EtlfymffLgJOUngUb8LQpE=;
        b=RaY74vBN8HdQwWDIUFlyyEV9kzckrbItBR94h2wQuWDrIpZrIKpbrdfzFxhKSZDm24
         lQ3wxQ1WxjHmnhpsrox1xWL+y96qchHLgUhzOd1ZcWPJY3U8zhd9ivI81V7LCirrrX8Z
         RdtSV6XPIVNDdjRPMOv1QDXo24e8dghthClrdZbicABNYf0eVVlwINkN7tFayaJEmwO7
         GK9lhASsOitzG9K1bFIfOYSu8szlyWwbRgARy0Ou/3ovF/Zrc04fj7PQcCZJ5upuksUX
         94BQTmPNcL24VhgekzWqBGxFOnEjZISV74nNmLt0evxZkSAtRJ07gYuGNXcxYNrJ8hnm
         GuNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764773355; x=1765378155;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gy1xT8j7X4gzk3YYagt60EtlfymffLgJOUngUb8LQpE=;
        b=sJiaWCTvhlzCAg1tEQusl0azHVjyCpxTLTRLNhjGTKn522xKYWecMGKXyGqI82b0sP
         EyWkw3kzk7o1Kp2mAvRN+utXvML6F4z8mUl/w7Q6Jd5lROtLsmtbM+O35LaIt0dCd+Ty
         Q/GY3jdiwXrOLP9F/02dKhm73lDd2x6A1cNgfEq1Miidnwk1kUa5qs3TICL81cBXf9o0
         Tb2r8aE/ZymcFeeSvH6M/gj8uvTBY/wPAb+3Ptb4Dn+LX9qFdq4fX3jlmkZr0E35V/sP
         hiXU6qmYkBrmbcYyn3966HmDlqYIQQQ/YzGw8dHZEa/RATZYUPP4cRZn1tMDgDtxbCS1
         H8FA==
X-Forwarded-Encrypted: i=1; AJvYcCX8iEOU/tVV0ORnax8zUet32C4FReOLLcqbgcypK9Nqh9aN2DutQXemtsqbtmTWZbFoeeQbBYSo/IJY@vger.kernel.org
X-Gm-Message-State: AOJu0YxLso6+owxE3pl3MLq9tm0BVwxXWtW9psKSmAcWkaukEUBw9Hfa
	6twxkb3YqL9SmPxzTaUzjlAYksi8xLQV+oXb3SOXgXycCR54vFb/LZX+D4fPApIkIA908+VYvr4
	uaVUkcktVu+Dodso48+R8G6expCXKzVmBksw5GN1hGdOJBWC0VDY2hg/T/2y9nX6Q
X-Gm-Gg: ASbGncsIBL8BB1hiMBbZYnXBqIKj7Z8fBF1qliKCuEpI550P15cvLXJIyNgA79VOZtU
	3jnCWsUeeTonJMRhuiGUeIRdWCk8RzdX1XQtDr/GSev0EgwNmNJV0bldv5xP5SsHqSJpHqeyQ0E
	UY9+cblrUk+lzuW7W3mibTgB4SKJ7uJzMG//SYatpcSVNnp1luaYFN1NqikOrqAiYwyByoplsH1
	Ues04nukWUNp7ZXm+P4WTpsM9Hwy+8DMBO3ZGb8xVQRnKRVD8gde19mHApCpwvM51pQf+YUySh4
	r9AXsum9/Foi9YMtpmCOE9AbzWOEe9VEVSkS62+OpgjHV7KyE1tvJi2UMXuXuen7ppEI1EF2YSC
	K/KZmOxtJ1Vui1iDYxxK35/9W+s2ELxe3YGuY7vNcS9VTLUs=
X-Received: by 2002:a05:6a21:9986:b0:34f:c83b:b3f6 with SMTP id adf61e73a8af0-363f5e79777mr3228324637.43.1764773354621;
        Wed, 03 Dec 2025 06:49:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEJoL9tyhcR+PBC/3kuY/Brlh63FoGfTNh9CxLfKRlIaQaI8V4lkzWBTzhrTAo44CaY4TQ5mQ==
X-Received: by 2002:a05:6a21:9986:b0:34f:c83b:b3f6 with SMTP id adf61e73a8af0-363f5e79777mr3228291637.43.1764773354165;
        Wed, 03 Dec 2025 06:49:14 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7d151eb5bd9sm20719683b3a.27.2025.12.03.06.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 06:49:13 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 2/2] arm64: dts: qcom: sm8650: Fix compile warnings in USB controller node
Date: Wed,  3 Dec 2025 20:18:56 +0530
Message-Id: <20251203144856.2711440-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251203144856.2711440-1-krishna.kurapati@oss.qualcomm.com>
References: <20251203144856.2711440-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDExNyBTYWx0ZWRfX4sxT+CHr0upv
 sNyinXcCJcILrP1R4soGfSE4RGJLKxbTbA+zSrnx+NWDJ2qAXcQ5IwooMwvyeKLDr65RPNXa/Wo
 ZlBf2kTvlFo9b9+fhswybAj9KroEaZIHCOMULq/n+aUqX1C/FsLZKpLV+dcxY+dKQzpCx5dyGQ1
 7HpV0UrsBtIhqX1dRqiUBBJAkPxmXCLFShB431j8hp+INaQjDLcSNO0TmxTKESiObcP/pKg+hE7
 gRQGrS3pcCswhXEIib3YydrHoTjS39XbJQXRQxfXEygrHFPCNJ13IU3DTKa4AgnuLlKyH96pVEr
 G8CEHQWnnor+USFPdXEqWUoeSyJorQjFWjwi8S8BEwwdNGjZMesP6y4mj4FPd1hcu2fyLyzZkiE
 D0vfmj8Xjl2c/vU1XEvQE33sQZjmBg==
X-Authority-Analysis: v=2.4 cv=Qblrf8bv c=1 sm=1 tr=0 ts=69304deb cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=W_W4GMoGrKgtJPV1LKUA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: Zmuj7mYwK78yKG3SxXUgk_9qqedRP2FV
X-Proofpoint-ORIG-GUID: Zmuj7mYwK78yKG3SxXUgk_9qqedRP2FV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-03_02,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 adultscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030117

With W=1, the following error comes up:

Warning (avoid_unnecessary_addr_size): /soc@0/usb@a600000: unnecessary #address-cells/#size-cells without "ranges", "dma-ranges" or child "reg" or "ranges" property

This is because the child node being removed during flattening and moving
to latest bindings.

Fixes: 77e1f16b9302 ("arm64: dts: qcom: sm8650: Flatten the USB nodes")
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 07ae74851621..f8e1950a74ac 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5150,9 +5150,6 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 
 			dma-coherent;
 
-			#address-cells = <1>;
-			#size-cells = <0>;
-
 			status = "disabled";
 
 			ports {
-- 
2.34.1



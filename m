Return-Path: <devicetree+bounces-244193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD13CA2574
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 05:47:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF34E3050360
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 04:47:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F35C41F181F;
	Thu,  4 Dec 2025 04:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M5urEgjm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cMDJ8GZE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A86D3594F
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 04:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764823619; cv=none; b=OMm3tRDc2ud9y3NA6tZ9kDw+I9bjsu42qIuBw9zlyWgk2TA1TeikGE9kloNOzY7uUSzW/Q0NdMcUhnu2VFI1TsOpxsmR9tLkSwVq1/zGJk5vIZY0wCaRTJ55pKL/SQ7Z9eT6/yngngUXNxsehKJZ9O+bmd6Dbm8LlnM9/lHqiMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764823619; c=relaxed/simple;
	bh=0GUSfiG3cvzFvtjoAnBmgDn1KbVZiMVpHPtFZWlUalc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=G4wYoSwg8eh/H8LWOrbzQRUPZ1XKBC4MK0oXaRn0VsqDbPQ142CtO909QmHyHMP5g9cpzCpUw25yZ1d6WVI4XgGag9Pn763XRbDUaMxljaW8k3jlVcr8lCHOhBueSiAMJJa95FibVACS4HSeZLhwhCWCTeWgDEEk6CQEeNRgyGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M5urEgjm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cMDJ8GZE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3J809v3123615
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 04:46:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=fRASef2ssEdNjfEjozIetUr10fm7LhWC/Id
	/kXGp8Sc=; b=M5urEgjm/cPngHOMzRAcQZCRQi99xz8c2Px2D0cYQhKcKHJYX9P
	GWQF51jtKY+VjeE342xerr9Q1KPj/YSAMaxcbeWbpydrfzZ0888fxQP+aeJ6l6sF
	qshr0fMlZflt2BU6V7i6s7F81C5UpEaDqszdrwwJ+dMxTfUK6YbWfJ0DXruule8D
	A2XGHk6giKQ6v9deu5x5KDx51VLbp7xSWKjCx/0eZYWylIDyLTh8D+UL/lMjYQPE
	bHYYIumHDVrvJz1fL8IWP/GrBGnk1/a+kzVb5hmYEtLXqmLTAjkXSjzHfY440f+e
	PQ6xOPQwB2/t84bIt/kpKpAyigP7kZXeIeg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atu3h1dda-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 04:46:57 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29b760316a8so7766935ad.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 20:46:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764823617; x=1765428417; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fRASef2ssEdNjfEjozIetUr10fm7LhWC/Id/kXGp8Sc=;
        b=cMDJ8GZEFFWvyYTJ0np11FShd7xHYkwajUfVh5uXvBkvFsSXZreHMPCVy986ECcTd4
         BtG6H6HGFWsGD6pxxDzTehrpgNO1/6Pu+ceTY41uFR2ATmXa6Xcvw+78YeDulRG6p8hO
         tWBsnnvIg9OFOaSGWgFdwKVtfcFkZKTrs4Bg4I889ceU4fK1rxlq8EU9pJuzId+8kiOt
         KhkQQp6KMeWBbkWUWA0Hz7QnUdEA3qYeEkN1luvO6P9ZDQzGNm9fApQHSM2CR78sjsQA
         E1bot/cEho68ZoXd3umDoA+ccrYw0+4X8UN2JpJXNxc2mKzE6XW0J7Rh9OkHDVkyOVwN
         RGuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764823617; x=1765428417;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fRASef2ssEdNjfEjozIetUr10fm7LhWC/Id/kXGp8Sc=;
        b=UPXLgLMovX1BpBPpWR6VDDPOMMEdVEbLyRWQyfmm3Jr2lvxZVwaH4SVYJ9VHVszKl1
         jt3+r5EDEaXyZOtFpXN9TxQdcZ5NjLirzpRNFZGo5vESO1oMLireKttsBManj3EPaRN+
         3T77KxFOa1J3eNWNG+c5CcVV7CC0wcGi8gAjYj9FtT6z7epaOOBhMX0lypI6P8gt6SBU
         50i43i5Ch+2+3nNReGvU1hQ3ObmEaGDIYWO9uiMTV51lEIclDBivGNmmHiXd6Qk2kukD
         2i0BtO0slmdKrdkxnrQ5PadyQPuxD0rkCghYGX2rls7Jyw61o7k3pj3mJhcnFfqPXYtW
         093w==
X-Forwarded-Encrypted: i=1; AJvYcCU5eG9Ln9X8d8OidnDC/vjB+C1oBz+Wmv4QnvRDD3PSpXqMMDCj5g5QeMHxoubwCPV2KFZc+yCENBx4@vger.kernel.org
X-Gm-Message-State: AOJu0YwqqDy78z1bV+CWPVBEgZoEK2PcTLGzJ6mTQc2wR04Pq8zw3k/6
	sx9Y7/WR3+3bEoc5mIS2diww04ATS0FCPWqRLg0MpG+4InTBBZi2+lEXGDhyP3DhBVLe4P/4xsf
	3n00nbhr2yoR0//jf0B37GpopQD2vqvmjDVv+ZEqSVg7KYcDVAzhSDwnGfg0m2tZL
X-Gm-Gg: ASbGnct9P6jnzLfBU+GQGtbjo9FBfV/tqVRrpWF7wurBRF8ly9Rpl1jFZ/7NTgb5Mc0
	dvmCTG4kvzjE7/tIrevSD6VAv6Y3oi+jmD0g2K0KdQHcbhW9X9Id4lIHtWPmVWepuwaQ74MMaI2
	uF0vf7IeDxt2r/FW3GjK8SrDuBUhVs84Hukpcw1/TG1IEe6IXbEcSpyZHkWtdwtPVcM8THHsV3k
	sbeHpR5R7ZfV06lQ191RKC26Idj4ESCGOlLpCDHoiRpUKQAdqvt70Fr6SnZv+ePBEFL9SGvErK4
	GEZw6d9YsWQaD7MB2yAinTsADwwilMlDP5hysq0/X6M9xiOeQtUCow5uMr6FLOAIJWfc7pOfwgQ
	OSUDtmTyfQ3E388oZf9X2Z/hPkLq5XbYL6LgJS0uwQXHDf/4=
X-Received: by 2002:a17:902:da48:b0:297:ddb6:ef81 with SMTP id d9443c01a7336-29d683454c9mr55254605ad.16.1764823616999;
        Wed, 03 Dec 2025 20:46:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFUshjjSgC/IdoRAZPEirOCKbfhASGTUkq4M6XbT1En4gA+2D7+OJKrKrqsdWN3zSjhjoZYSQ==
X-Received: by 2002:a17:902:da48:b0:297:ddb6:ef81 with SMTP id d9443c01a7336-29d683454c9mr55254265ad.16.1764823616532;
        Wed, 03 Dec 2025 20:46:56 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf97fsm5217995ad.25.2025.12.03.20.46.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 20:46:55 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 0/3] Add eusb2 repeater squelch detect parameter override
Date: Thu,  4 Dec 2025 10:16:41 +0530
Message-Id: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDAzNiBTYWx0ZWRfX3c/qlz2wdS+s
 j+1F1vp0KP9WfTgGGEsW1bt52WZlVlrVZYyu9SAtJx1Fh36uknGP4i4O6UJSQqnCOMcGpYOqyEI
 Uct393WIeEpBynHVsIFcwAtTjMopDJRirkHfRk1br95BDuhXy+RwdndqJ63TegqtEJ4fpiEHlfp
 wE/Uc/yMnzPsjaTJ1l9G+/gynn6Qs3gstMxhnpPObYUd6UmvpTl2QHjnkphozOUifYom1ZbLx2S
 XAHR1Ym+6cS0pifxP4/ZtGSXoe/lp7WNgzf2VPiQKi7Qq/ELyeuyjnx/G3FtfqToaQ4/d8vIHQa
 Dv6eMHIruS8f+iRwWpOfnyd6AFo+yWY+GeNyFGXu9q9KcerUddaLf3b8jKeKtaEoZGwfDpUTjZ1
 mZ4Aw0bexPCSMdfUWfleJYNiQ9YHCQ==
X-Proofpoint-GUID: jTkAiToR3ogK8BS7TlLq9QzaDCf-rOzz
X-Authority-Analysis: v=2.4 cv=KJxXzVFo c=1 sm=1 tr=0 ts=69311241 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=vgYOIwM3FMrG93tDnggA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: jTkAiToR3ogK8BS7TlLq9QzaDCf-rOzz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_01,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040036

Add support for eusb2 repeater squelch detect parameter override via DT.

Squelch detect parameter adjusts the voltage level for the threshold used
to detect valid high-speed data.

Changes in v2:
- Modified logic to write to squelch related register in driver code
- Added multipleOf property in bindings to reflect values can be multiple
  of 1000.

Link to v1:
https://lore.kernel.org/all/20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com/

Krishna Kurapati (3):
  dt-bindings: phy: qcom,snps-eusb2-repeater: Add squelch param update
  phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch detect param
    update
  arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater tuning parameters

 .../phy/qcom,snps-eusb2-repeater.yaml         |  8 +++++++
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts       |  4 ++++
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 22 +++++++++++++++++++
 3 files changed, 34 insertions(+)

-- 
2.34.1



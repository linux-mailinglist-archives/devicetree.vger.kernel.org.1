Return-Path: <devicetree+bounces-204111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 09615B241B2
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 08:39:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 505DB7A8E7E
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 06:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAB382D372E;
	Wed, 13 Aug 2025 06:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VDVPCiKh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F492D29BF
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 06:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755067137; cv=none; b=VX2pQVX7lF1Ff8K3wS5/VqhFfc1V7Ji15PKoi/bmsD+EOn5fdXOGtOMwGdjAqgmcrADXIlTbKrn14lEzItiJ3n/inWYapxTxKo0zE9LxKCBhsmXosa1lD65LgemG3Y9CFNq4C1+VNUIaShBFoC81ufYS/TECRtvBaPajePR72hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755067137; c=relaxed/simple;
	bh=rXp5CgpdfOwq6IvtQTfJNHezSgRGwP7XgoOkdM34CAs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=S0BwV95XmfFdI4aZ3r0w4b/PJRxBZ0ePgQZxRMMyl+W/Bu/+jD24wS3v7bcukZflZ/6EKEQAXJF8Bjj+aIDHMeGFfe541GdoZIFEXPVw/zH7uHbPfwJsxdyeu53LyOT6nsoaHd7Px3bQYvjm3IUHb4R5+g8d3EhDg4uIh0vP8ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VDVPCiKh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D644qZ006968
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 06:38:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=X18+UHg7svFJzutDLuLGcKihBz8fvMq6lXl
	9O85SJg8=; b=VDVPCiKhd7wqr8qb45I2gzPhX8OXurZrITlNVdC8eGcu/MrElrg
	pCFEw22LxaVcjfYhm6dOjEE+V737aWYCb2MknciswHkVJ28RYA6tnm2eALeZzhNF
	hrrVIS7BlN5flqYyx9o+6OzbfDBxJpw+aWVp5SB9qy8RHqHx9C5p4vRDlw9nKlpp
	I2tOpJjnYG75nPPpDvE7fjq2uXobuVRMELA7ZOVx7atMuncNZB8JWzmAp4Sw/L+j
	FosgZHrrSYRSkzitDPojVOayr9sai8PSf/RtPul2SbSq3kYOLFDOGkHej75QQ12u
	2pxtbt+UsWkbGa2YHQapL48kPD4C3GJYGVw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3gar75-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 06:38:55 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2403e4c82ddso53152935ad.1
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 23:38:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755067135; x=1755671935;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X18+UHg7svFJzutDLuLGcKihBz8fvMq6lXl9O85SJg8=;
        b=aPn1DeEV/7XqkKOSXb1RhGg9dTP+ocA4YjmjC7U2NoYSiR0XMGYvps45LxDMs00OZ5
         oD7lYX28jnwsIprrgQwiWgnx4dA8MBVtPJ1L4YudxdSb8iF8jta31a7b5TetlhKetKTE
         9fQd1hRLezk5e7tb/p0C15lrnMOwmGHBNgwyJTFchr5fKL3CK82J7iykz8BAU9he2DCi
         RbX6xywdU9A5+9i8csYRAkT+A8A5URyniRwYClyNosm4q6suXHV/EJJJBTUyC2nBoGYZ
         1AwKNRI/Z7mivzggxULDyk1hkBFTns+4lmcehFC08pSpYq8PrUcs9sEftGeUr7LuaWDI
         SfCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqU4qVvXtpcY2i461AR5nCiWHB/ZxmVJsXjmZCfcQV6wOuq7J+MRwebD1uoAhm2ajkIcCRvNlMUKyi@vger.kernel.org
X-Gm-Message-State: AOJu0YzICmvGS7e19waoLpk7+rKR7qH0ODRmgCRhHlvjQjwn159Y24Ee
	qji/EtZfp3d93J5SVrrY+IlvkR4rul2umlSOeXaWODRI4F5aF7XgUXdvOTbrjJDt+XGsVLOzQLQ
	0hSqR+NPUwnrFZBUNR055tP9HKdXyhdgR0uH/HE6nXAWvfg0GA9TW/44M8Ia/NlR3
X-Gm-Gg: ASbGnct8Nc/4HIe/J20SvF/jlBYHbUu78xy5eYeWzssIvy2in9HwarPG9nByDGqppXw
	aeuGa0VpDinxe3NJqBnStxM40/HFOF18cmQOseqohWJM6pauNKMmHXWUrI73vhR6FFWoEG+z7Bw
	CrPO+p2dH70/RZ4AlxZq08Tr4m8TmIMziJy9LjPZ3uxA+lN5wWBhqwK/qxoAPFf62OKCk9tSbC5
	wC9qzOY/q6qdC3nIKjeBORCvrnuRJ4pCXZcEsOvi6Cn/6I0T8rtrssfRvlbcEwUY6OVHjwg1zQk
	p0NctMIzYjSAec9b1SkdAugVLgh3uS/yC2k74+qMNZ3Ni/dOHCl/aE7UEsWM+EfbuhD0Jojd24b
	uaQ==
X-Received: by 2002:a17:903:3c2c:b0:235:f143:9b16 with SMTP id d9443c01a7336-2430d1e30c0mr26615765ad.41.1755067134616;
        Tue, 12 Aug 2025 23:38:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2uBR3ZPiiG7SAkxHbGW8wZNiVA+HlrNvkHKaxz/Lc8LMbuYKlIhTOF22do5XE5gFKhmT0Kg==
X-Received: by 2002:a17:903:3c2c:b0:235:f143:9b16 with SMTP id d9443c01a7336-2430d1e30c0mr26615445ad.41.1755067134156;
        Tue, 12 Aug 2025 23:38:54 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24309a18411sm21766305ad.146.2025.08.12.23.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 23:38:53 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        stable@vger.kernel.org, kernel test robot <lkp@intel.com>
Subject: [PATCH] arm64: dts: qcom: sm8450: Fix address for usb controller node
Date: Wed, 13 Aug 2025 12:08:40 +0530
Message-Id: <20250813063840.2158792-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=689c32ff cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8
 a=1MfqABlD--IGNdjwxagA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfX+1tBX0TXBXaz
 pT7NmZq5eoO9cahJc4ah+z8Z41M15D6Cb/ZjwxhzcnB+bKbHwsTS1UnzTAl32NvHqBCLYmiMpSB
 q3vOmk9ASR9iawKuOBnXUW1tYKnu4D9SOs0Fs7P5bD9Sh5+Q+bbCNTeeEj+pb/3ar771Weds94o
 X/h69/E37Z7iK9Wcn5mtDuc8MOtyLCLMqKDl2Vv9GkPKzylj9yCqndYLaItoGRmwif+pNa4YzBe
 foLJ25JjxgvY7oUR4ySLC/kUsgCBC6LiLO77lnZvlqWMXEfWM9Kdz3UGAT82y8fZf3hgegHz/SR
 D29s5vwtfayvmBhrL/iOH2mzu2C7Wfm3ITi+kDMwcL+jAyly7GPyrKtt7kvX2l2PiHcLf+E3COi
 uNVkhQ5h
X-Proofpoint-GUID: Ds7xVQ-jPPq7hgr4JjeFSdGDRDfo_mnj
X-Proofpoint-ORIG-GUID: Ds7xVQ-jPPq7hgr4JjeFSdGDRDfo_mnj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031

Correct the address in usb controller node to fix the following warning:

Warning (simple_bus_reg): /soc@0/usb@a6f8800: simple-bus unit address
format error, expected "a600000"

Fixes: c015f76c23ac ("arm64: dts: qcom: sm8450: Fix address for usb controller node")
Cc: stable@vger.kernel.org
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202508121834.953Mvah2-lkp@intel.com/
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 2baef6869ed7..38c91c3ec787 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -5417,7 +5417,7 @@ opp-202000000 {
 			};
 		};
 
-		usb_1: usb@a6f8800 {
+		usb_1: usb@a600000 {
 			compatible = "qcom,sm8450-dwc3", "qcom,snps-dwc3";
 			reg = <0 0x0a600000 0 0xfc100>;
 			status = "disabled";
-- 
2.34.1



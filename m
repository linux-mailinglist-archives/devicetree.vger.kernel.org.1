Return-Path: <devicetree+bounces-238460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE2FC5B7D3
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 07:16:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5F0694E8432
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 06:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D9892EA17D;
	Fri, 14 Nov 2025 06:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZsqMMu9M";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QqK6k52g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D972D8371
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763100971; cv=none; b=fqVq6I+MmZtGB3qNCD+GNsHBeylq8KqjgAzeo46DN0IW4Y71ApDcU4Ynd4UvOS1un2/TmL+AtKvb4xWY3RDfC7DHCxVnZYddWQ7mHBapPOG2veWBWgfUNdniyWb7phOpHD3OgqkC2eJkRdUcBkxK2pWItng6Gfb0/2rmIhxP8PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763100971; c=relaxed/simple;
	bh=lzspXziTdgn0Cea7T9rmiH89Fok0gPV6BgJmXu/xh2s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=HFnOeX00/knwgIZctYcJHmtti1rU352EwxjlA3qR6hgds5isZ2ZIe6flIjrSQqvEz9iD87wn1m6OYVkOYYk4M+S0UuHonLdDTO2aVnYn3rwbfkNXbtWTOYTFvre7B6CzdiEptmcFaXwjmSq868ja3ght/+ZnSDSt7up48bKc5hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZsqMMu9M; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QqK6k52g; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADMauLE1699619
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:16:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=uRl+utPI2ESTxiGrMAr9/9e8pl+qGMmrPdv
	jRrG1rrk=; b=ZsqMMu9MmCP42JwAmIWi90wPMLQ3sd046ThmXYJ5SoeSSSfWAOW
	MHfXfn3aR5i2kqnEMVnIVtv/py6S0bAm4GZnZjnjH2bJMUVqYdM40LKxv/LyaxmZ
	JJNeQdqMpU8RifM29DKYupK7ZYonnQI+6ZUzEVzRYyguCHu2L1CTQx2S3TniLTrp
	Mrx/0Ct/IK3MAEVTUKAQ+ZVLl0xwh6Lw9UlTuy3+ycYdKW5ALjV6Wlnk/8pmyVx0
	wxheoajKKBNsTI2CKJA3TCsh678MigaK3F5PXT5Gv+bnzr1EHAvi58xoW3NjtvuY
	WJ4xwzI300Z8Ew5+2ZbIZYAENzduYEtvg6g==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9e12rv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:16:07 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b8973c4608so4253355b3a.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 22:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763100967; x=1763705767; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uRl+utPI2ESTxiGrMAr9/9e8pl+qGMmrPdvjRrG1rrk=;
        b=QqK6k52gkGUQ61E5hTR/VeZ/IyboEdMBHZR4mr3MiQMCIUW9rlIn8xa+GTRIsThdsc
         QxShfk015dzu++uJjQZqztZMm5syu8e6JXil01lsKdB/fkaiWEVNHjJa2+P3Xi0QCbNM
         imR+NBN+8UyEtVuvG4MTpwLkVOLSQp/u097mn0oiVrfK2xLf89hxe0RdfLfn2Xa+xiyM
         nE5yrHLOLlGYdf3wYgeivkC4CcFQ0WGLKPKI7IC9sZuZqmMdeyPXGvPE0VGqB+2DIjcM
         NUcaXMU4YFAioxUXBJP4Tl+J4a9fI7T1e1lPrO6cjHTkqnjr0JGvOQOY+jCLkYVnCVY+
         ey+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763100967; x=1763705767;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uRl+utPI2ESTxiGrMAr9/9e8pl+qGMmrPdvjRrG1rrk=;
        b=Dri165FAA134MZUbIFxrEtAzlSTr0hsb/KQeXmbn1CyEmiEy0BXOWEOXxhN2QxlyZL
         4TYR2cuwEWueASzu2oYXh74hKsF7WPNZPjvtcSolmCSY0O4JHzejrURluL6snYvoeN4Q
         nv5eQBPf8gWxLFhauy+hZ25Sfh0UagqYPBRngk3nKlHw0PIH9h3QPACAoNr2ZfDzt0Pf
         tnYQ3uUBxMkOIR0jxYN5766xH4VJpMDbBArnQstj5EEnKv31lK+7y/6aWdl88opg9vXD
         HsVow3eo9U3/JQ8X0uGmmS4MR2taKAtkMYVPj0u991VMkvBHjFeJTMcziovum9AuXUoL
         roFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVv4OJzJuMKJXOd/k3lI/CuiEGFC+pUNO6iC3AMC0KtVo+A0XtoGIDfWN5pttGGKmyiAM6FkHN6SOnE@vger.kernel.org
X-Gm-Message-State: AOJu0YyZHWNnw4zgDAgTBlKCxbjoUKoeVEHa+ep4unlAtcndzNCfPVr8
	TN7Qwzbu/lg2f3YdKtTAqjewKKqHEdkE/+8cH5sngCc9fh/s2jg9O1NhHyA0J9OqnfsUPGinBlQ
	syZ+UJSZpvEIV695qBEujQbXWVPytXSBH4dSBNiAn6CVqliHxEwoSOCC5e/jUq96s
X-Gm-Gg: ASbGncvCm9U+rbIqXoOMZ7ch4NLtt99hCxAi+js/CaTjZ+S9a3g9L5yxM7eOvQa9Fck
	vZW7Qq2yilSkZVSYOL4WQl+3Ac9ktg6r0SiIsdUS+J5MqnNbugTi3yOmU9htTlz4CmC3ZLZiMae
	gJsakiQGfqqCGa6hdvJ1bvmNZEjSBAH/bkFosit26BNMG+ZXSLl1bwG6iYyv0F0JXJGQRY3L+4d
	q1CzGKoJc6zShiLjGmDPQGjqTltbimvqqC0u6rV14PJX0HewdkVHGFv9C5p5mjp/DzJSlnX1pqQ
	b9sX7icj7Wf638HyUW3McowCav331hjo2npxMpmPjsACoq+mu0yDdVRw+FK1nXWZpejfk/bUD9I
	LLGyoCKDoGh6HAkdnU0Q6Mn6DmQ2Goz6tRZ/R
X-Received: by 2002:a05:6a00:951b:b0:7b9:420:cc0f with SMTP id d2e1a72fcca58-7ba39ed0d05mr2756711b3a.14.1763100966792;
        Thu, 13 Nov 2025 22:16:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHrT/nGcZ58o1kgCsm1SepnexOkvgACqlLnHH+9G4cbqiQIrgxRP9E8s3+O28v0YEFKkRzDyg==
X-Received: by 2002:a05:6a00:951b:b0:7b9:420:cc0f with SMTP id d2e1a72fcca58-7ba39ed0d05mr2756676b3a.14.1763100966318;
        Thu, 13 Nov 2025 22:16:06 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b927c22b1bsm4021223b3a.66.2025.11.13.22.16.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 22:16:05 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Flatten usb controller node on SDX75
Date: Fri, 14 Nov 2025 11:45:51 +0530
Message-Id: <20251114061553.512441-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Tk1kSX7HIGtQkofAZjFzEoLGoeGIWg51
X-Authority-Analysis: v=2.4 cv=SvidKfO0 c=1 sm=1 tr=0 ts=6916c927 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=PrDDkZ7J-wqMaueNrtgA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: Tk1kSX7HIGtQkofAZjFzEoLGoeGIWg51
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA0NyBTYWx0ZWRfX31oU1kKui1JI
 bU9cZBv6JnTGSLKM/FrscH+1D6Q1L1dv+Rs2LAP74Zwa1nggRF+j4gKY/R4QV0m3Gw6HiWyTIak
 bvuwSP+QwtaqHdioZZ4cQSBPxr6iuVZ6f2MJD8g3yDPip84eDuepx3n0sIrzgBTnPv/juCGZOMm
 af6shrjLFvPgE1cZ4ooNLt8Gt2d6jpJKQ4nLym15DWHS0oZDhXTxS6XlCFcr7GSYvvAxQy2bFG4
 Jg8ypP5NNhsM0j3vBNV/cUM2s5uOxCqpxA6XH0LZD+rqYF0K8ZodbFEs12dhbjd5Q6usaD5R7tL
 ruOd6mfLCbJ0RWVXsBUwfUEFjGtVcegU413GZHyt6931721K7VQJibxPtM0o+JHK+ekWDmQkRDD
 KndigPWTuRK2CKvlPHIsP3xzCptd0A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_01,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 malwarescore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140047

Flatten usb controller node and update to using latest bindings and
flattened driver approach. While at it, add the usb-role-switch property
to usb controller node.

---
Changes in v2:
Split v1 patch into two parts. One for flattening and one to add missing
usb-rlole-switch property.

Link to v1:
https://lore.kernel.org/all/20251113084608.3837064-1-krishna.kurapati@oss.qualcomm.com/

Krishna Kurapati (2):
  arm64: dts: qcom: sdx75: Flatten usb controller node
  arm64: dts: qcom: sdx75: Add missing usb-role-switch property

 arch/arm64/boot/dts/qcom/sdx75-idp.dts |  6 +--
 arch/arm64/boot/dts/qcom/sdx75.dtsi    | 67 ++++++++++++--------------
 2 files changed, 34 insertions(+), 39 deletions(-)

-- 
2.34.1



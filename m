Return-Path: <devicetree+bounces-166937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 215B6A89011
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 01:22:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1D51E7A9163
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 23:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 843EF1FF1BE;
	Mon, 14 Apr 2025 23:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XheUTK7/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE1E1F4163
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 23:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744672939; cv=none; b=P4HoaQ671EjaE3mGpK8exQEQmANmNzb+YtvtsKqfVny3Zr/M6QnNaUtrasBfw3SL/KETtMPQuLUt7hxDGjnAMQ+O2UJA3vaPu6b3cW/RLvFavKMqjFN+hlkl3eRsAsYc2rQ7KDgGfDxMGP7WppEgsM0AmpFLVz0yE5thUxAU/qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744672939; c=relaxed/simple;
	bh=iVXmk+6PlFCRAwYWJHcWgZJRCI46HfqbqwSKFjMQVkk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TamhZRN8eljqDh6CsduDYDDk0GUZU5PkUiLIp/0NIWRsHCTaBrvuNpyf3UbB+ytNT/b6G23suLqFBQ1bNwhi+4Z7DOOuQRE2iAptmnn5PE2ghpZKzT+8G8tqew4LIeHF4V/fbwaWnK1Tou4HGz+8G9MyhZWzBz8H/AlolC8Zr0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XheUTK7/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53EKdhZe030027
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 23:22:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7gubxlw2eh9/E7VsvX3yb5YKpoQUbGbeurpx1mvSfWw=; b=XheUTK7/y2G9YEi+
	3DsG5+WxFCpRsNXgdOQEbMxZ5SyZ946WalYziChn5TLl9SGENYvs7xHiRNzLDPQW
	pwbCvI7tcBrA2d1UESyzD98OQN1ylnmwUSNhn3c5oaWdEkpdIHR0IdNnQsQeyyFj
	uc8kXMsVn8r3qs8R5gCY5NAcr31KxAJwxE42aBLxxj3JqhPoihoQsNBHzOKUtXr/
	PB+/CGNdEz+V54tDuP1XKnw9hSwKZZgy/l0G6/9+/YukBvUMc00DrsNEfmCuoFvt
	0yS2wpxQoktCX3W6qorQNEuuBIphvEdz5ON/yqLhz6PvZUSJ6kyisFn/dkPLO+eD
	r8h/6Q==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yhbpnvj7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 23:22:16 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7395d07a3dcso3510504b3a.3
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 16:22:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744672935; x=1745277735;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7gubxlw2eh9/E7VsvX3yb5YKpoQUbGbeurpx1mvSfWw=;
        b=two5LWjSC7OhJTugFbJLPHBnxV/U8BH2zLYoD2fouh3Nj2sCK3sawuvZ4cndtKBCJg
         ahJN6InvEOYXl6UMks6x5jSifE7Bok6zVHntmwWt9Jp6/LKTYsZ6mHIgO2Fn4s/34VLG
         02F9icMBuCx6wuWrTnjLOdGVoxos/QQWmAjLLrseDDKd4npCvjq56owOVf1mNDiVlFpc
         4NnZhUV8M6Klp9i3zB7VZWhKOLAXFiq22HjD63ZG3DsqGqyZxzI+dRpZRtVxsYNM/vDU
         3kg4ZXoT3QIctbYstM53W+m3HEWvNHvBXVTxqEvLOuDTGkiN/Lw9X4it78SzS6SeTgDW
         xG0A==
X-Forwarded-Encrypted: i=1; AJvYcCUxFVthcusWkBC/ai9yMoiWd47pRQwGiXL0dDMeWCMRE/QKlTfwsehNR6t8pG6K9+QzJF6pXGfAdvfU@vger.kernel.org
X-Gm-Message-State: AOJu0YwkbpDuCNnveQAZAOTM9F7mMze96/dA4AyzTC/XXaN/M0Vj5Rag
	mSfckqTgKvvi8Zipye8GQ0oSPeHOo8PoYFFtot3PrhCVcaIo8As3VlH6apl6hOIQhsgndcpmJwL
	cn5OsPRqx5IFZB/kMpCZa+GhFGVpfgEZqihkjNT4a4GxPDl6Bb1FwlKCAs0bpkMJoFRbI
X-Gm-Gg: ASbGncuF7GP4BwSqr9LW9Rr3IxTqgMQyxRO7apcVhszLSjRqHSPJBrO0m9Yw0bfmCih
	ieyzBcOKR3q9KhBwjJsibiGhZFgyvmIT+HI76FV5fJvthPbyOyjny7y8FBC7+qgqHqNoSfgoTvh
	v9h7D5MhzSxre9rhw557Ok+N3OvOviK/0qSEDax1cN26Z4BR0eqWD1MWqAqNtbSCYDMTn5+l6sr
	VgV7IIOx3uSL50b4e9rQH7fhgSCPQZqTa7cWYmP364WoUG7vihD1Dz4gF8WYiTP30ZD1QWpzWtO
	JkOaHD2SraLdlWe5Oqf3koI+Q8bC8r9SHSrpZaaK1tZs4GV6PwIz/e/T8gxEYjjPUvM=
X-Received: by 2002:a05:6a21:8cc1:b0:1f5:60fb:8d9 with SMTP id adf61e73a8af0-201799645afmr17990659637.33.1744672935155;
        Mon, 14 Apr 2025 16:22:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQotE4IJwFSf60/yRceyEHCN9NT8RU1Xq2jQoJx1KNuVZ1qE9F0fk4YZq5Qc+GudEIp1XXbQ==
X-Received: by 2002:a05:6a21:8cc1:b0:1f5:60fb:8d9 with SMTP id adf61e73a8af0-201799645afmr17990626637.33.1744672934710;
        Mon, 14 Apr 2025 16:22:14 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b02a3221c7bsm9746298a12.71.2025.04.14.16.22.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 16:22:14 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 16:21:50 -0700
Subject: [PATCH v4 1/4] dt-bindings: cache: qcom,llcc: Document SM8750 LLCC
 block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250414-sm8750_llcc_master-v4-1-e007f035380c@oss.qualcomm.com>
References: <20250414-sm8750_llcc_master-v4-0-e007f035380c@oss.qualcomm.com>
In-Reply-To: <20250414-sm8750_llcc_master-v4-0-e007f035380c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744672932; l=1020;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=iVXmk+6PlFCRAwYWJHcWgZJRCI46HfqbqwSKFjMQVkk=;
 b=QMIU6b5l+kB49usMjdLtstOn6pSMTMnLpx2p/yocj5YNe/oym1GeCeLXZRpkrY828+UlmJekZ
 gJv6Uk0wqc/BMvrrUM9korbwpebMFZIQ5WzznXjACViEZE+SX5Qh3BL
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-ORIG-GUID: IolMZHTH5tJjilhvsfdwWbKwb-jY9OQQ
X-Proofpoint-GUID: IolMZHTH5tJjilhvsfdwWbKwb-jY9OQQ
X-Authority-Analysis: v=2.4 cv=I+plRMgg c=1 sm=1 tr=0 ts=67fd98a8 cx=c_pps a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=XYAwZIGsAAAA:8 a=sCV_76e64iQtlowYmxsA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=E8ToXWR_bxluHZ7gmE-Z:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_08,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=713 clxscore=1015 impostorscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140168

Add documentation for the SM8750 LLCC.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/cache/qcom,llcc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
index e5effbb4a606b1ba2d9507b6ca72cd1bdff51344..37e3ebd554874f0fbbb8956a718dcb717ee82155 100644
--- a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
@@ -40,6 +40,7 @@ properties:
       - qcom,sm8450-llcc
       - qcom,sm8550-llcc
       - qcom,sm8650-llcc
+      - qcom,sm8750-llcc
       - qcom,x1e80100-llcc
 
   reg:
@@ -274,6 +275,7 @@ allOf:
               - qcom,sm8450-llcc
               - qcom,sm8550-llcc
               - qcom,sm8650-llcc
+              - qcom,sm8750-llcc
     then:
       properties:
         reg:

-- 
2.48.1



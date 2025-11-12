Return-Path: <devicetree+bounces-237695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5D5C53693
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 17:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 436A7501793
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 14:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AFD9351FB9;
	Wed, 12 Nov 2025 14:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JB97MKGv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LlaL2ZGq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BFD0351FA2
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762958917; cv=none; b=W+1Z0gyJNLMZbZFqoyfWvUnyx+a/YAIxb4k0eiB5tGgPOYc0m23Y57IJQxE/iLwTO5WS8C2BGBifHSJ8jzKNdEhOfBqt/QDD1TcwxKbD3hDY7fjtKJcnpBV2dOsdgRMK13/vQFc4o+HiCuToK3YYz01XMPktZeDEnruyxFmKCjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762958917; c=relaxed/simple;
	bh=Qs4er2hr/+T56uOBc6ouWcD8kx6jWka+YYpKp1dnXMs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HC7jhb2bXznyqmI0kJII3acnLRUINqmFgzm5ugND2tA8s+6qZeCyA/pHtlxBrMo8a46iYJpk8NvENrcLDaWwCtss1ZGT6Y0RXvTTL8WJFvTqrNSWhDdN7dAnmddSeWJ+T41pQiORO+qyaa8MyQTcZY5n07AN+lCRoMNCZawVADc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JB97MKGv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LlaL2ZGq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9D9X0511165
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:48:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+NRoHwCSxaMf980uG4MgVlLpp2Qeo3tytVe/hv/KALI=; b=JB97MKGvC0iOpBBD
	3ILVda37QLgeEc6+sV97Uak7qRVY2bo72Nvh1+9GDnHSaObX6o/d0inkq28MAi2H
	m3eVfYbVKrroCGVMhbc+vvlZUlYsbU2IpvZA2Y9Jl7njidv7Q91/cuowkU+iTGI7
	1nmc7W7QiLjqAGyEy1ExS+M4zot2OowRvoY6OMM4DoFbviTXgY7V1ODwZuffQPRH
	3DCyjWAjORGBpo7UwfKSxRLCXkKDAim9Ye/UpI1FYRJzbfbXiGNKaYky5/K5ORp8
	o6FokVr0TH8dv+W1S2Bkl5VPq/VHwazDtTo4FX2woQJWS/57L+h16jULebn+kLox
	egQlFQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqdgh2y0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:48:35 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b89c1ce9cfso172175b3a.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 06:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762958915; x=1763563715; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+NRoHwCSxaMf980uG4MgVlLpp2Qeo3tytVe/hv/KALI=;
        b=LlaL2ZGqbCBpC+TucFv5Aickalg8LH7q7i1RFG+K3CiAMMxReiHuFMH1ORwoae6qM6
         CaLz7HAura6+VM3WrwilQRyw1mWdlYe4V+iFvW83PJym/Igqj9T9SdtiS9PqNNJIzbsb
         bnakHP4HGdGjnx/HyXNIgjpM7ei3+dKdFrct/3eBLroTU0dHxlXC9Kw8HVKirUwkb77o
         ZZS4OD2xTSFILSpAS29I5nebvrOhlv9qzbNqu9CFU/bXroe7qqwqOAXqWxMXTeqK8xQB
         1uGbNWemPnBIjq5UujGxhSNmDchAAIz/aHClMA+JV3sPNNV01mtmMvrnvCA684jCn12s
         o05g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762958915; x=1763563715;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+NRoHwCSxaMf980uG4MgVlLpp2Qeo3tytVe/hv/KALI=;
        b=TZB2Hd4/Xe+OXTo9Q6G45X4tqNhTZEURTCD//roQkZZ2zGQX+FT8TqPUQpfqeo37ZJ
         7VZ3VmfL5O+sowRXORk/IH1FCokdf+aOdbf446hKd36SDO/Cz98MStwa6WXOZMbD8acf
         QOzFfDyQA7s1vor5wlnxJzWlRneZmsnjwY6KdZcoJ2Q9EtakkHCqha2jhdH31y6wG5vF
         RSg7wqIw2m3vtZgKdqy5AeV52axh5M3dZK0v41aWhRevEDNif7z8AIGNVZdWgsMUo5ew
         WomZoh0vn7EpMbNiubkUcbEER1aSbFr4t2fALm34VlL0jKuiMT+aNWNbBJihUNnhc3TQ
         7odw==
X-Forwarded-Encrypted: i=1; AJvYcCXy4Kc+GemN6HSIWxv4uJiPUgONyP1DXiS8Apl+DYw+z8d80rgTw2gVjfWDh5QMz1G5LI8rjKHV1xkO@vger.kernel.org
X-Gm-Message-State: AOJu0YxxzmaWHHYKD6zuiKYjjO3L1/Lr4taDPna0qI7X4P5vBLafBS2p
	fvSe4CHnGmby0U+thv/UrmNBoCuFk//tDSMFYzUVcDxKGMzeui70JG9SaoawwztkhsbKWXIiqDE
	qOebGU4PRY6JPSV2rqAUa6p+3aYb+4Iwu8ZKfGsSeh1Io8oGbVCNU2tcTkJoXvmjNxVTD5dwu
X-Gm-Gg: ASbGnct1Dbdo06BArY7nq7PQbReXFMRn9w8yljzjdBzLg5bLpmJ5OZHIzTdORC46fu5
	ckbwsYEk3x6EnhjUvhjs7socIgf+snHsdr+C8NmRPF8iTbRXn/2j/WpnemYVMIuYksSv0MYN4Fv
	GzANFfV6xZDd9AJRIm1zdh32i9ADDeWk7dicm9rbsB2ljRt4aIpyY5yL90UwyrptcMXA/n87pJO
	84yKrra1yp3EEH+4mvaQxgAM7X+tQ1McI39vzAVSQzeC2dp2ukoRcKiRAEazIXm1fTTAnXjpgNe
	mjGaOclRmUBB1RRhLSV3Jp4pOSy1av8Y1i1RHIRCmlcTqwdg74aAGKK9bHNMnZpT1ZX2AONmvOD
	cBrKVH0rAuZIVdTWwwFYjByFxHvwVQGhJ6Q7B2WA=
X-Received: by 2002:a05:6a00:1acb:b0:772:3b9d:70fb with SMTP id d2e1a72fcca58-7b7a55b730fmr3983199b3a.31.1762958914737;
        Wed, 12 Nov 2025 06:48:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHsQcNoH8/Bz9doC4REuyQm72O0ucf8zwpssH1d3yrMPbsIFu0id9YEE/3pxyTUQrIJDttbiQ==
X-Received: by 2002:a05:6a00:1acb:b0:772:3b9d:70fb with SMTP id d2e1a72fcca58-7b7a55b730fmr3983150b3a.31.1762958914219;
        Wed, 12 Nov 2025 06:48:34 -0800 (PST)
Received: from hu-botlagun-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0cc17b0c4sm19098234b3a.48.2025.11.12.06.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 06:48:33 -0800 (PST)
From: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 20:18:12 +0530
Subject: [PATCH 2/2] arm64: configs: Update defconfig for DSI-LVDS bridge
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v1-2-6eab844ec3ac@oss.qualcomm.com>
References: <20251112-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v1-0-6eab844ec3ac@oss.qualcomm.com>
In-Reply-To: <20251112-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v1-0-6eab844ec3ac@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>,
        venkata.valluru@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        Yi Zhang <zhanyi@qti.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762958903; l=686;
 i=venkata.botlagunta@oss.qualcomm.com; s=20251110; h=from:subject:message-id;
 bh=Qs4er2hr/+T56uOBc6ouWcD8kx6jWka+YYpKp1dnXMs=;
 b=aTdkTjo5QskKOjMfq1dM452l2jeNPiuGe0xeEWvCVwTSXwYvFKzW+TFpbO19OpUOc9NkFOXC8
 0mXQXfuxYPZADWOiyl8uYspS+af95+CZrpSMKKN/7mKbX2p/qzPWbHR
X-Developer-Key: i=venkata.botlagunta@oss.qualcomm.com; a=ed25519;
 pk=/SnYBwlkTzDCLnHFgEY0qFwPgKIV+aQWRbc3naiLzrk=
X-Authority-Analysis: v=2.4 cv=dtrWylg4 c=1 sm=1 tr=0 ts=69149e43 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=75P26NDa4d-1MZpC9DUA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: 9vwuzTvtIK9bl-XpwLcoQwA2nVdu94oM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDExOSBTYWx0ZWRfX4+H5omygrMg6
 3/HhpaX483Ze0k6Y/Fby/GLoCKpjYou1H4Ac8u/4d6cz/747uJLLxiGblsTQemvPOX82iej6IUH
 qE+PxUTjpKexVqkLocGsDT19p0FV0fLBoyKcqmvrkXI+iYOaTvuC5bTbS7Ze/xPr7RfI5yTj2rS
 SXgjV4sc/RUPvrc9MftjpuYsbziALhAvwHL3ugPQ3bl5QuVCJzGwnwuQOxf5zP3AyA3VyMqBBt9
 riz2Sh3vky3ztu9bByqbxSIuBLvnlmsyZwdyi8VX8rC4/j+6g8h6kjUxk87Jr/u0oyfKI4eSija
 2LZDCuUzC+4Rmh/DONZyN09uIeg2zrZi6MX/79L7LeAhENBdm7Rfn0mve5fgCv2Ed1oZairG+0O
 +cPQoN3jJew70c+FZe8Iu89VuiXAjQ==
X-Proofpoint-ORIG-GUID: 9vwuzTvtIK9bl-XpwLcoQwA2nVdu94oM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_04,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 clxscore=1015 adultscore=0
 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120119

Enable LT9211c bridge driver.

Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>
Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 00d15233a72b..1d35af618159 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -959,6 +959,7 @@ CONFIG_DRM_DISPLAY_CONNECTOR=m
 CONFIG_DRM_FSL_LDB=m
 CONFIG_DRM_ITE_IT6263=m
 CONFIG_DRM_LONTIUM_LT8912B=m
+CONFIG_DRM_LONTIUM_LT9211C=m
 CONFIG_DRM_LONTIUM_LT9611=m
 CONFIG_DRM_LONTIUM_LT9611UXC=m
 CONFIG_DRM_ITE_IT66121=m

-- 
2.34.1



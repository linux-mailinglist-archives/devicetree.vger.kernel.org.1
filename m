Return-Path: <devicetree+bounces-126123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A1ED69E07E6
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:05:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF720B45807
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2F2F204F67;
	Mon,  2 Dec 2024 14:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VquWEe1R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACA02940F
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733149830; cv=none; b=Pxxn5QmH/c/D1dUtuuTs9T3mYrDwOpvglWLAsBaAC9zsnYdv/aMoB+jKHfYo6APRSTPZwTZvtYfqJqoa4iP3iXx9vBBBNB/DNhQw85rVfkccWghwtG+lNL+XiddwOJVvchz0V7OETxM908zKksIYME562QYzwiOLB5DQrhvd0LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733149830; c=relaxed/simple;
	bh=JKudxHQZAMvenvuQlThpOxs+MgeFGbhhq/9B/KOCpcA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KEWdSZD8hgYpZ9ZZj/RLi1Z6jUzIiBfqB5E8upiZwNu99J828utiTHacs//4aF0NQdJrFBAjfeYy91z82mX6AhR20wPZUjIbtKEaNGejigPL0QbmWP0uoFadshLFgBfx3/amG6wivWIW0R3x4qXJUgLrWwvdO//LJ7NAzz5jGKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VquWEe1R; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B28khr1029794
	for <devicetree@vger.kernel.org>; Mon, 2 Dec 2024 14:30:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	opJ/u7aIb+6rMXmWGckJvu/bfCwMl33RWOEqNCV31vY=; b=VquWEe1RLGrvadi4
	+COaUnJRyGGhjYHqZppe4bZ3jhOGa3g7ml2a8SJItS7czFte2OnVMCgqstXlugDQ
	K8WV6oj9zg+8cnX6uEe8vYyd+v7XVpD0WeoM86U6l0z+KdpnLwE1PdwwRxyIpIWz
	2lb4jTivnzC/L6WtEc0a0cnM4V4B92QHYZPnsPfwv1dk9Tm1P0CxLAGxT+LVsocC
	43qFwMOpKUhuA46lS57Tk675247+Gwl778zVT+96U94uOpqV4wW5cdUvZZLzESf+
	w3/ci0PcUmLJgijw5td2xAteFTUmsZQhTHTVhj2riitEMatjxOL3eNnho5rc7odE
	Yu2jrA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437ta2w27a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 14:30:28 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-46699075dd4so9588711cf.3
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:30:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733149827; x=1733754627;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=opJ/u7aIb+6rMXmWGckJvu/bfCwMl33RWOEqNCV31vY=;
        b=KN5LlU67xN4lTkRBj2Z5CExafkk73cWUKNGFgZ/qsCQGBzXiKRHpj57EfMBLCUHfxu
         x1jRgR1cKe600VTXBFSPShsqfTGs15Tm0Axo+U5wSialIulxHlUFcYdSqps3WO83GYku
         Kkg1wOlfPUN3X0av4NBoZgFeozWS0ZKOlG3dRzoXSzX0LIZhbiiH+Wbrp0Y6VcynD/DI
         caTLkVbtV6sxjdZCSeG04GOE+r79JN44i/rqeE7KssFKmuchL4JDslChzq9jG2wmivU0
         6uTu1DGiMYlyfyPhuKTCJ3R0p2zzMsjesm4m+rmgeuDkC7FZJjaadn408LQy3W9ztO+c
         kE2w==
X-Forwarded-Encrypted: i=1; AJvYcCXtL/2IcZ7doI4iyc8E+nPqvk6v7BTOFtRGzw9mbEqsdqFg6ji1ziDIZ10qq0jBHlOniNvDW4/A77Qg@vger.kernel.org
X-Gm-Message-State: AOJu0YzeaBYH7yZ9Rshimbth4jHjsALkSZ2sbGNHwHMEDzqynCXZKN8g
	DL2IN1ArojvyOZUihtikaKRw/CsoiWoQTANeturij9dvxgDJq56XJsdBEpockiFslXxdgrxk3x2
	N+SfZFxjiYlmN3MWQWyMQPm+OMSsG6qsTEZwxixJpTS/AN1f/QvOSnxCPA+Kx
X-Gm-Gg: ASbGncs538io6Yp45hONSx393b/1AnwJEMmxV/fLbhYv7Z48/bmxp1M5fgK8+K3MgCm
	ze0IouM6KqBFNWHtFlxYtx88XGrRpMAqEGDBBwcMD7uZUREaTHeDGYuQhGnL1Bj1fGVWqkKUylH
	YrovSGCZY6NN0ZBKTTeO3msBtedJtMbFMPEzrGmuY8zc8q24xZ8nghNE9UIYKOEzXujnlHawUV1
	Ru3fGHCoQ/kowT71SfNUxAfTWmCMZNVTfSBkSn9zUwvPcQEUOF7H09BNTpTijQpyG6BbNx3R5Tz
	uoaGlRf5QVEJA4+vYtILduDLwXDX+xg=
X-Received: by 2002:a05:622a:1a13:b0:460:62a1:70be with SMTP id d75a77b69052e-466b36737d2mr150946411cf.13.1733149827261;
        Mon, 02 Dec 2024 06:30:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHyWUKeBXhhoq1965fOPrse19lfgFS9Hoi0RqhL/1OBQ3mXf5NYh73GoEjiIReak/2sYFLgpQ==
X-Received: by 2002:a05:622a:1a13:b0:460:62a1:70be with SMTP id d75a77b69052e-466b36737d2mr150945211cf.13.1733149824157;
        Mon, 02 Dec 2024 06:30:24 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d0c04ac64dsm3519962a12.68.2024.12.02.06.30.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 06:30:23 -0800 (PST)
Message-ID: <7ae4bed8-c170-411c-8ece-d685271aeeab@oss.qualcomm.com>
Date: Mon, 2 Dec 2024 15:30:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: qcs615: add the APPS SMMU node
To: Qingqing Zhou <quic_qqzhou@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, robimarko@gmail.com, will@kernel.org,
        robin.murphy@arm.com, joro@8bytes.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev
References: <20241105032107.9552-1-quic_qqzhou@quicinc.com>
 <20241105032107.9552-4-quic_qqzhou@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241105032107.9552-4-quic_qqzhou@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: JIIKZW_VPVnb_jIp13DvLZfJqVtEl-8q
X-Proofpoint-GUID: JIIKZW_VPVnb_jIp13DvLZfJqVtEl-8q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 impostorscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=848
 phishscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412020124

On 5.11.2024 4:21 AM, Qingqing Zhou wrote:
> Add the APPS SMMU node for QCS615 platform. Add the dma-ranges
> to limit DMA address range to 36bit width to align with system
> architecture.
> 
> Signed-off-by: Qingqing Zhou <quic_qqzhou@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


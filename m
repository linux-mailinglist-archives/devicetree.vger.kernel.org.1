Return-Path: <devicetree+bounces-250969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5263ECED498
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 20:03:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 860643007620
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 19:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A10AE231845;
	Thu,  1 Jan 2026 19:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DVk5OCmg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="grW9bqdk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218E01DE4DC
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 19:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767294187; cv=none; b=p7MQJdPvvvxcUDCUPP/yE9QLgzGCiKluhMggWPUmrFpzYkUxUhC9dmad5wFDPVXuXbfqhkX96nIwTtGec4BPH7aBvjorsNQzTLK5BUeOdxwlBlHK24rTD74JjFltC+oaTGZ7OqXyS39lgkVU+Ekmm8vI78JYbIihI/u/EWNzWng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767294187; c=relaxed/simple;
	bh=OUWnoWTNPdGbUGux2s2BxAMRUnlVB6mcFngLAWpA/PU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AiixTPkOND/hQ19VqZDchLofjb7g/nm45aOz8VittCNE4Wz9ypRFbJ9MF9CPf8K9MEFbkq3l2Gu2+D6+TqaqKrvSs0DeOaBlvQnMzCJywSOC6CaSs8V/E3kExjg7M88SMMTITBb6slFXhmFWsJsFTKW0KdP56ubvuPSFAuPBmhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DVk5OCmg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=grW9bqdk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 601Go4uW2553780
	for <devicetree@vger.kernel.org>; Thu, 1 Jan 2026 19:03:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+QMKwEVC7Suor+bYorU6lSsj
	bvDGk1qiJYr7KsqFwEQ=; b=DVk5OCmgh6we/gApUU0oj6gT4khXU52t75L5AuaW
	zGZIQptxgfMCq6VDx/pC4ailine5HN19W3s7r0i+Ou+C7rIw4/thOoTJ4uKFEJ9N
	gyRxHVG+WtkXI8gcBy9FqyYLrw2kbCl3ESUIiKhhp8PvYuU6pCXUE9Mab39TU2zd
	N7dAtKeLfLaLvQ9cHNQEo3N+zXb+/tYSbrFciu2nwm3k7V4iggRR9xSxLxymbhwI
	jOynhDD3Zy1p0qVdw/IP4dWX81sKWEdcrwbCZrj6M49Wh14nlcti43tDLGSxAjm8
	Xbum5Seu7LOxu/hJZMlAfx3J3WyeGljVOrz5CP0e43HJbA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcy6aju90-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 19:03:04 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f1b39d7ed2so253719441cf.2
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 11:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767294184; x=1767898984; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+QMKwEVC7Suor+bYorU6lSsjbvDGk1qiJYr7KsqFwEQ=;
        b=grW9bqdkNeMxDEAUaB+5uZf8vUpgfybNZYDnES+dU2ZBUwxr+hEXrCbmO8e2Yt3WLx
         xHz2yqqstwKYuGx0u/dNgpD5aAQtb0QimYUskqJ568sox7je3aqJugZHSYgp8dyohByy
         m1P8Jg9WkEBLzJlp4GOqANbAa48Dp2SCmQoP3+qVEinzrcnut3rQv3N10sz+ezff9JHj
         XM2Oh7Gw4bFlpVzww/wPVaptjaj3DCS88EE3yJE9X/1hGpFrTd8NJVjcKtqWRJ1RHCd8
         2PKfJKnW6D+EjWyMs4vk4DSZvI9gl2KHSPKRLSoagnvWMfuw1GH+u8AKQAbHVMJ56ZiP
         yBuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767294184; x=1767898984;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+QMKwEVC7Suor+bYorU6lSsjbvDGk1qiJYr7KsqFwEQ=;
        b=j5KxhAd8N9zrFDeYGw3JXQGcqdwPIYd/bcWZR+ciSyblY3tq3U4rA2mhD3+kGvoHAY
         yCZHcW+Zs7VcTSdCVAx2GvkuF99q/NCAwJSZffAodo4eGGqs6c0DLJa7EzdMIRqkWygJ
         bLPHXXgnxGAe24tCXXfUrOnewuJjoBLvSv7EHc28Dg87FSrS12q9STqEnkJcxEaumhpq
         LqyM8eCmVzgnYHBhNKnH4ix3VRMwEmH7FFn63HG7N4m4Vcnbhq3abfXvnm50zGL6NVC9
         2Uv/JsdQMEoajjjcMWOzhI6hVMbUVVLvYg8wu/oeAasI/RKNFQfDtOnf1aDRqm99qV2V
         ZRlw==
X-Forwarded-Encrypted: i=1; AJvYcCVl1r98ENlRaCq46IWYl5M+6l+mQAVTa8lFSBB/b0WlK7BpV/AuaMXmsRsyalEbugyw6d16tKx41iQN@vger.kernel.org
X-Gm-Message-State: AOJu0YxODTqbHeHiHirVAhS8fhVecbfz5v6fywcU2ZVExwN7X0XLnzN6
	//3P+AXhDXEZT3CbgvxNEP+6eUTJvYmO+G9Fvq4MuMGGgIsa1tnqP/ED900Mc7SXX5Ztod1asmu
	C/g18vUKJ7z113RboUALkUTZ7Y7mWOcZkfo5OuhEXbaLi/ia5JeymcfFL0oyJU/+3
X-Gm-Gg: AY/fxX7pYfi3bnOEebR0SmJS44HOSxAPWheYfsAusetmICE4cD4u9FBC+sBMrf9v4X0
	HIy/IfzenUNNwWKoxl28VcZtlZkqUNrFRBvovNx/urAIa1k+EwqfTjGvKkqfj2y218lfgyh75JD
	RMuqn7z0dUhErGPNUgrgSlsKA2qOc1IHsppKg5oGi6UXSNVd40TJyCv4I3aiTqzj8ucAzqa6z9t
	zS85i63GHnIi+UFNhybCD7biRcJ5ywSN2i7ZsIn0DPZF25hpPWQlOHG3XonbS9wM8D68wncp3WD
	h4Fuy+ld3hyLYgEHNuJxyqC1SLuicpw8cXmWKF/kaTDmcerbB3Z5LENdfFphQtDGoEATtiErwXY
	TrxIlMah+JojXczx0GtzW
X-Received: by 2002:a05:622a:1b29:b0:4ee:18dd:1a1a with SMTP id d75a77b69052e-4f4abccee92mr592914621cf.13.1767294184269;
        Thu, 01 Jan 2026 11:03:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEbz8D62YVcxQdedAk3k/DyH+ejsCG9KzvNP6zqm8qsDsaBqLCPblpAAvfwL/lYPOD5YCY0jA==
X-Received: by 2002:a05:622a:1b29:b0:4ee:18dd:1a1a with SMTP id d75a77b69052e-4f4abccee92mr592914251cf.13.1767294183805;
        Thu, 01 Jan 2026 11:03:03 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.10])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f18575sm4226918866b.54.2026.01.01.11.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 11:03:03 -0800 (PST)
Date: Thu, 1 Jan 2026 21:03:01 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V2 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
Message-ID: <gq6twkddeshvonzuyl4jcp2bsy6wzsveed3figx4sxeatrr7qb@ulv3d7dust4j>
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: isj4Ka7fqan9Jl4wh1mGFanblDG2J-WQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAxMDE3MiBTYWx0ZWRfXxNrd2ZNDW0Yv
 DTzw2HSEVMgGvMT+2CVbs51jzb7l4WqeuluSN2HDCJtwvFobPn6R2ECqAQes1Ik7HUe3cGmcs/b
 21cyWlrG8D7BNxkJN5yKVfaWlCkGacbR1lZA/furZRfx2Hy82eWWMCi6kLUYxy0tkkpXXVF1emG
 ozvZixaEi6q1iFsneEIVaHqyfDC9jLte4taBgIoxJ9RqSx2bHf6LdUzR1gNpfw5aAtGl+sOZUpa
 0dAOogMpGWSX7OjrBgqHp1ZYu6KQvxH8zA69IdsigKcbJmB6Pwm3xeZzzTUdR00GufxD8qIKoXx
 yQoBJu0HOfGmmBl7WF8L9HMOcxsruAcIol52Zoi0/VIvZOg6DY5cXLnOkMDyEWvplK0Jieux/ST
 iQUgsmLCGgNjavEhVyDYnFTo1/PodM/JuBNX7Q62to36Qg3YJdcTBaMm6l4GY+0R1bZxqHmGEoJ
 q4jwHb9WcAYrs1HLCyw==
X-Proofpoint-GUID: isj4Ka7fqan9Jl4wh1mGFanblDG2J-WQ
X-Authority-Analysis: v=2.4 cv=J9GnLQnS c=1 sm=1 tr=0 ts=6956c4e8 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=hZ5Vz02otkLiOpJ15TJmsQ==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=P1SvqDdPwG-YsO9EcX4A:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-01_07,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0 spamscore=0
 suspectscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601010172

On 25-12-31 15:49:50, Pradeep P V K wrote:
> Add UFS host controller and PHY nodes for x1e80100 SoC.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>


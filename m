Return-Path: <devicetree+bounces-242188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C73CC87B49
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 02:36:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 99608352AFB
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 01:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDEC126E6E8;
	Wed, 26 Nov 2025 01:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b1m1kcoR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F/NDR2Sa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6099E1D5CEA
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 01:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764120985; cv=none; b=JV9vV95TMDe3Mj35t1yF3FTmEWc5xlYTDGOCYWbkzBVUiZ9Cd5K02+9VWgSdnBneKSlML2iN7prVYPvvyFSz9jXGKCMwTVqf/ldEpuZ4GyXpzKU6dj5uemreRsbx3Z5JcDQtAq5l+Mn8F+Rfwl/oTD7mlpgLeSGTPL8Stl7bc4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764120985; c=relaxed/simple;
	bh=5nxFjc0sHR8+o/Crg4to4Kyd3oL6uwnMXC49BEMnnzk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y3FBCaWVj506yQJPPd3dFs4QXCecyz5BuXbSCi0GgDwm7f7mJQZHVaa4C4VWM16kSmsuFfcrhomxmMEXdHe5v51juLIuDnuD/vPkXZgSAxcVAiPJWKzJ3oaIe7OoCeMfup6Yx2UZ8VpzSBCN/0csjHTxBkgM7xzRpTl4xMIDPL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b1m1kcoR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F/NDR2Sa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APLVaL53667836
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 01:36:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JR8co6q7+nFf+m5fF38AXna1
	AqxUc5bFRHQ6sjd97l4=; b=b1m1kcoRr7gBpPUEfpf2MUJZ4Fa4mz4BABevyi4V
	08G0XMdNdchhves9ujEWecsxzWYzPXfnj3coRv2v9kMnV+iOxJ2GP4RlqmrRUFyJ
	333uILLO2jrB0yEe+sZtHU8jrRiYKW0riWj2pCnYlxokdX42xIVPJWZzUrQ84GNb
	6fXOwXyU3yDFBae3eq7Cwk5+wEuWz6GnlH7eZNRBE2Ji7CdBXfH/MQ8gNLieGmbi
	MQ/Sz3HB9VTe6BTsoxM+t6fKM+JlrujXrpGMoBWmZqY2pITl9pvgPiEBXHnyE2Ba
	I4jDoLp0osSQDbzi3iN1Qj1yUaHfXtndc4mXZ2Fv31e5Cw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4anmemre9n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 01:36:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2dbf4d6a4so540388485a.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 17:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764120982; x=1764725782; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JR8co6q7+nFf+m5fF38AXna1AqxUc5bFRHQ6sjd97l4=;
        b=F/NDR2SaKRL1x2ZAZK9zfAyXJ9yMecjHF/0NCRfU7tqqtI/qLLEmxAO5zcZ+/mc8NP
         xKYICLv9IUbVF27pluuBiXXHKaaqDB0pJlBrNTJTeWK0PoU/3+ezWBZ++XLHdr1dJk8E
         TOGczsF0gG7rsEaTLX/mgpI6wILQA8Sydb8HAneJMHpS9PKA4uQdoHFDHRKCMYZiBCeC
         tsm3qN2miXp1NmIzG/HnzsRDO4VT9msOPLg57XMl8khPFvoZdkuF5OFkZRpc9Q4EotUK
         bIv1KmAvvd4SejKe6DCrqZGrXobuXkyfFjlJGf0QVwiUzhUoYxiwp+b4iwxHCqdpI241
         EyGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764120982; x=1764725782;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JR8co6q7+nFf+m5fF38AXna1AqxUc5bFRHQ6sjd97l4=;
        b=a/eiLFUhGR0HC7flPJBVOQcT8osf6GQ94EdXfrWSU6bFrEN2wVuCQL8/GogM0FoVgl
         0HbJ2pVh4rk92jqsHwD768QjxWF0uwKXUiHwlSavk0Yiabz7BXOiswlZgfRaP6EzMflT
         q6dLuPeAqReglognLjwj0uVeUGRNHbPdym7XWi+52t7XwVEns5YyB9vbp32mfFf7qWJA
         6IluIdYUcuFvU/+GfDOqZ1wikB52F/wdr6C7wwJMfCp8hTqSsIOOI2L9Fd202AnRh0kg
         vYI8OAK+22AdBlS3oUxk8uP17rMrrsN0B4msidxs/6zd02d8FjCjAMKJ/IIPmxNJJF+J
         cnmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcquh430Y/EEXXllhas05bSHB1y8G9yjUYUcbCOZXH5/clapKh+SUIRBnu6WZqeWaBY4Xaprh7mESY@vger.kernel.org
X-Gm-Message-State: AOJu0YxJVvihr4EdSDy0M4cGU6kCxGmkN1dx28RSjAO/ZAxi3AAJhI0c
	mtB6kVF75FoxEgaezYSLUn9oLfPvls8ia+Yx1PxmF5xt/XNn1EvSKppOf/JEZ40ZTm0hq0dHZT+
	IpJ8i2wJL7kId8JxiIizmKQTQO+wx8x7u9Smvt6VLWYPsbChJcJyzUm2TESEPXdeE
X-Gm-Gg: ASbGncteSw2BcRg7D8lN4WlRJ4wyUnY28UX0SzAy3bqfYRhySz214cLUiH6QcXxtx7j
	z4I5wJXBzkF67Xzq1TF7W9AnQndi+IKqsftIbXCo6XhD8fxKMRGv3pPtmg4Dpi+EHH76Z4h0SCx
	NUYvf7dfHEi88t06ZU8UUhTZA674j/tsat0sIzZkcd/n08A06UUUYja5VmtdBjN1q9hiv6AFzds
	8sRvfDBe99OeWoTxY+DTn/thbuoqhvrUVXGkPMtZnr1mmR0mHuT/5niIFb4qYRUiLRYg7TGcSQb
	t92MDG8lBMVCPlZFZvwDC1hSyxWQnsH3qKbdhS93eHd3+J5debxpeu7JdeAtr8aN9ooRp4tBDP5
	U+7kQ4+UmaD40DPOnKkfWFWD3BtwY8LPJB9r8B1SKN39VWmoyQDRZJHJXX9Z80Jiwvn4euqJv2M
	+gElQlraCTzasK5WvwoU9H5FY=
X-Received: by 2002:a05:620a:3f85:b0:8b3:19dd:46ea with SMTP id af79cd13be357-8b4ebdbebb6mr675906685a.72.1764120982602;
        Tue, 25 Nov 2025 17:36:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZqMmHNCGd63AwXsQLn7Ik0qDiC/u/CEwulFZwrLtXGsLoqnKqjaj/y7rHroR9hMGl3FhDIw==
X-Received: by 2002:a05:620a:3f85:b0:8b3:19dd:46ea with SMTP id af79cd13be357-8b4ebdbebb6mr675903585a.72.1764120982186;
        Tue, 25 Nov 2025 17:36:22 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37cc6b59744sm40049251fa.11.2025.11.25.17.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 17:36:20 -0800 (PST)
Date: Wed, 26 Nov 2025 03:36:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Harshal Dev <harshal.dev@oss.qualcomm.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100: add TRNG node
Message-ID: <ygpjsoxhpigj4t7bcphzhrkjljqermm7rte5gyxtcjelgtete2@65mzcqwakgcp>
References: <20251124-trng_dt_binding_x1e80100-v1-0-b4eafa0f1077@oss.qualcomm.com>
 <20251124-trng_dt_binding_x1e80100-v1-2-b4eafa0f1077@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251124-trng_dt_binding_x1e80100-v1-2-b4eafa0f1077@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Z1leDgaLr0AvlUUy2KzXWBaDZZ3bShoi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDAxMSBTYWx0ZWRfX64YppV9WkOyt
 ePIhsISefdLgQ+osfjrW9p2kOSYSXiU/ivG/B8QrL+H9XPZZcHG+j+Mb+U6D7tXVrw4ifeo1he3
 VlOFSNn+D7LOYvDej8Z4krnk5gLUXv7rulPfxO79I8lGFcgYym/iElq9DGMPhYXj10wf3+79DJf
 EbZH88gcD4i9miUQ6J7rvRXIxxVB5+cZ8Mf29IwbbxbnWKbGtg1kHV0PkTUxJ6qaF3TaxpmNZcD
 ZWnjjaQUaGGpjEnw49ECwIxbiGeErNqG5hjntPILX3fnW5TgusmNk1l+oOuGkezl7rVV0pgRHBW
 v+PwZjqSmFyHOV7IQDbg5CTFFH6Cit0GLfpHq6yRSObKw9NzqNm0PToz9z9W3okoAY2mfu6E9Xt
 miFmZ1kawfXlVXTLoGI1frmK3KwjCA==
X-Proofpoint-GUID: Z1leDgaLr0AvlUUy2KzXWBaDZZ3bShoi
X-Authority-Analysis: v=2.4 cv=bZBmkePB c=1 sm=1 tr=0 ts=69265997 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=WmeePSlto-DxRHfBUH0A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511260011

On Mon, Nov 24, 2025 at 10:38:50PM +0530, Harshal Dev wrote:
> The x1e80100 SoC has a True Random Number Generator, add the node with
> the correct compatible set.
> 
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


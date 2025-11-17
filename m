Return-Path: <devicetree+bounces-239509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BFCC65927
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 18:43:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6FF9F363137
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53338309F0A;
	Mon, 17 Nov 2025 17:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IiFnFGQi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cc3B/9+J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705AC305063
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 17:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763400854; cv=none; b=EmJAR6XCJg7nrHgB9ehEIpO/u4foIpULNxvowMtA3ulDUu2r67rMj72gFRn1pnrXP4YSrRlauMdjjt6ooVE/FEf0EhpkVG2mkG3fW4YXIQCiPYqWoBSCcJsIF4GU17O1vfz8JYVZTQb0U3Ao8mhAYQ57Q033ye7f8LqKLrxDH2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763400854; c=relaxed/simple;
	bh=8yj2NWFfiUq9ClohcuciNWOuCOUl6JST1j0gXENO/AE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p2W77TkmslVwoFW09n2dKESAS3EaffxotgTfZ3VE8HX+tlOQo2DJrVuKIwGTw/JWd/t3aMc/WZ8edID0pUE6XHFB3+OsDNQKeltlaiKGIRe7hhnblq1/oLAGLCXT5ZxmiGqt9SqAW3SjPWl6gfc+iZ5tdNQgrNIjPseEWLy77gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IiFnFGQi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cc3B/9+J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHECYQZ4166688
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 17:34:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MXNAWs0veNCMpMF1G9AV8di1rEToHqTDD5YFdaqlwMY=; b=IiFnFGQiywBZpVzs
	cA4sjNYEfFHU1KqqTSyEeg4BX6I2X+BjALicNIdF0IQMPTIc6eLzW/m9lgFbs4iT
	FFNNBGHlsGq5i1yD/8/PrP6T7o5toASfVM7OmXet2GTofzxmDuWs7A41KaAo+x2w
	QuuztsEizKzPj2W1TNAXMzmn8WXUWEN1ljG1gAgl56BgWveuCaKaxtRiQ3Mc2qao
	N2pR1Ev171k5VKcG91kh/Ljshw31hQU4f6/WOa/84sLeQKJYG74J8XCBQYjrOw9J
	vY7dLlsZvyLoWPPAT6D4heRd76onfKj5FAI14ovpPyTJbsNo4qzuszfX7/6BOv/z
	JTlzTw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag593rktc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 17:34:10 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed7591799eso135792991cf.0
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763400850; x=1764005650; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MXNAWs0veNCMpMF1G9AV8di1rEToHqTDD5YFdaqlwMY=;
        b=cc3B/9+JZkTSLVIXe588q+WSmEvUI/hMBROXGcjMEr7lml1O3XRXtTb8tjsl2fy43W
         3a6VNl20LX1ZUWW/C9JCtB4ocK3AuNJf9XQz/fET0wYSonyiaBHEAj1kVh/eroaBgtsK
         kx/U1L/7R9vbuuXbGznnMKiUF1yvKGkg11kjR1ruETyZpJkD1JgnyqpDDvg1ERtL4K27
         m4h+GiZzqb+th8YHodOtxupZZOwGzw2tNR5zMqLPfRFycLpKkql6SZfmXjF+083RSRNC
         ZRI2AEnv3eYp8U7v0FVSWCdrmr3AJ8cHtJ/DyFy/wmiQsxwzo4Tyo639a25dGY4qPi9n
         dGWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763400850; x=1764005650;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MXNAWs0veNCMpMF1G9AV8di1rEToHqTDD5YFdaqlwMY=;
        b=LfRy9PgsU3m+Se87iCfFqlCrdYjuLq72CBpQr6rfnRHVXNHwDXXIx/tXp0NBZgEl6c
         LqU0YmijTlDAOlzrfoW+wtv7pR/sRe/EW01Wf9rj5KFVup9Q4ck5B+Zgicyh73HcxNvL
         fHi1ZKfmtZ6VDTEojpu0YkSUzmiTLhXnQ4sTwvz54S1QAshpRpsRHoDZz/6+lS3b4eo/
         j/mBDh+tBWIZwEs1C8nvsnvtPGwgi3ewjJQiILIPtyG4qcwUVvh55TRLmOiYfptfGXTu
         VQnkRMB7Rxk6uW+kg/edjxk15AQNVkn42TLjgXU0sNQJ33tumf75g+hPyPOU8Mf0RH+U
         0FlA==
X-Forwarded-Encrypted: i=1; AJvYcCVT/5rXbFVVh5N2a+eU1YUXFeKXfJDc6l5yOjJ1dq7tpIqsZfQylshDcaQqLcxJwglWN7HBiUSvBkaf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3UYmq4+JyHJ03nQLT/g7VASTHM9k8Ls57PBwydyW0p2NXRQcU
	qzS0ioHCZmtYz3aC7F80YBm9gsQ4AIcHxgbe4q4F7GCw79YgP2fjdJXIsCiCDq6EJycgGdp+ybD
	0x5Bhnh81i24osCGl52uxjv9S6rXlqyZ3ife6xM+eDX9dIiTb9+KQRsBubddoLQmT
X-Gm-Gg: ASbGncszYgb52yCWP9czf/1/FWN7FVirX/6YxfJivu8oCe8mgjOlz7PFMKBU+yfYHlP
	CHahNrB1R0PK8qHJjeF/km2DySXARwc946J6lu8eF1eewkCKEENu3eKgEascAq/RlZiT4EUldqr
	S00qy4YyhuBJesQy0mIbgLZHkH4waxl1USSJ5Jn1e0Fyn6XN6YDVDbjwhY7xDUjWJDqwmKv6XsC
	E18QSXXSMNjg546U+PgRFkFoX9tlgtCYzRqKcDKTw3tAqFD12hCPQPwJpBnc2AlTWELzeQ2WeQl
	mxQTQFFjV54HD0iA4VpYiLGiH8nsnMbS0iS2jEyQO6WthJ2SawxZqOvtMfVf1NMU5i22Q+nr9wP
	rdy0yGzzFBjmFPrpGWiL5Bk26LFlb8V1vEsYdDy/k1JPHUsqvX2lUjPwFTHap8TlEp4zxZj6/QI
	+cxiuHrWR39+pj
X-Received: by 2002:ac8:5884:0:b0:4ec:f940:4e55 with SMTP id d75a77b69052e-4edf20ecbc0mr167999081cf.47.1763400849483;
        Mon, 17 Nov 2025 09:34:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHAKWaXR45cO/WcFecwUT8UxBmAFO4iHiLPBdjSKS6vZP63OaUJSPm9KsbV7g1BpJVj8ciMxg==
X-Received: by 2002:ac8:5884:0:b0:4ec:f940:4e55 with SMTP id d75a77b69052e-4edf20ecbc0mr167998641cf.47.1763400848951;
        Mon, 17 Nov 2025 09:34:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5958040595csm3307252e87.94.2025.11.17.09.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 09:34:08 -0800 (PST)
Date: Mon, 17 Nov 2025 19:34:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: msm8917: add reset for display
 subsystem
Message-ID: <h6lfgajogriesxnthxgz5ofikgwpkd4mh3aakxuzq52spgvxtx@t7d6hyujvxia>
References: <20251117-mdss-resets-msm8917-msm8937-v2-0-a7e9bbdaac96@mainlining.org>
 <20251117-mdss-resets-msm8917-msm8937-v2-3-a7e9bbdaac96@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251117-mdss-resets-msm8917-msm8937-v2-3-a7e9bbdaac96@mainlining.org>
X-Authority-Analysis: v=2.4 cv=AKSYvs3t c=1 sm=1 tr=0 ts=691b5c92 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=OuZLqq7tAAAA:8 a=4nVcwanjD9Et_E7zVfYA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDE0OSBTYWx0ZWRfX6YENgE2S99ZQ
 NFx3CcTWdiSe/LJBDNibqQgsBBxNMW4njz2kwsNqj9/tU2mQXjHE16rzTF49tEPzzh85aiuKMI7
 m3XMoqKzu6SjJ3FeM3G3028R8LHXi1eN4t2iNu6syA7Bs9/u12VHzBJQEiAaUwsoXeaX4H69TJQ
 IhA0lX1U/0qVabJvnG7vRRDXqym1Qs7BelFfF7PpjDmU64CNUisfcfIa9uA52uGcf30e1VmM0L1
 PNhMN2YM0k4ldPnuvHqDhbadgmf6EhvNQhbI43BmJ12zY4ANqC37TF7BKTO93r6zPz8MHXBECzv
 pkD+RdoXr2qjEhfrt5ILoO1Ofwp0dOxN6lXKvhIZnTJuhcNcmopDeCjgo1Z/5f6wfL33rDOuV/w
 Admhn5Ez/6bSCLp7yKkPOZsIAIRYbw==
X-Proofpoint-ORIG-GUID: -2kaS341ocg7HPte3OhtJ7TI9j3wruQb
X-Proofpoint-GUID: -2kaS341ocg7HPte3OhtJ7TI9j3wruQb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 bulkscore=0 spamscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511170149

On Mon, Nov 17, 2025 at 06:17:54PM +0100, Barnabás Czémán wrote:
> Add reset for display subsystem.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8917.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


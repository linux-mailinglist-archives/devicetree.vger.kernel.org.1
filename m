Return-Path: <devicetree+bounces-244891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DFACDCAA04D
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 05:03:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB49030AE99E
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 04:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AE9929D289;
	Sat,  6 Dec 2025 04:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UWJ2TEud";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JwNn4fy5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01AE6299924
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 04:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764993672; cv=none; b=IcDhvTDBfqVWyVztTmsFoqm5UH732htxklTk50PyVAL4y5gfC1513u4flhyt4Jw+AD+1jtpN5ztHEnW5TT9ulNh4WPbZ1sHi+QoOfiQ2/vRvLm2aOnnUq4nsJKVcXuTOjNiqvKEl6WWwHmtiNGU5qnJ8La188JI25x4GXbeIVQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764993672; c=relaxed/simple;
	bh=6KE/O90SuvMEo4enrrTUYpc+vNL6ePAtPO5q7GMZVZ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bqY8ZsCM6GRxXf+xIki6kB6xItu2rXLEJQbxWxXVBUR5coOVgraGJMGd+O1QHxReqURLRNgKzjSz+ORdXM/VD9yGnLMQzst4ewNBMsN3IG91efZVFR+3Z55Y4JswQlJn/gbITqsblNtip8nSJJUpm+VXMpoCVmedgV5BSYVPtcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UWJ2TEud; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JwNn4fy5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B62CQ7e2703147
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 04:01:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rnE18AvkCRDZgapU1S48szRj
	b8G/8DtuMY0zt/3Ql5w=; b=UWJ2TEud9kTNLd5rQQ+6BYwKvX2jDDU1H6Ot4tMB
	8re50pBra/Ve/nIxdTDmTLPh1JAljv9bGWO6bLl+2D5xCQDEyl5/X68EagAbabjq
	SQA9N9T/mCjysIRR3kS2uQYSbqP/ZZwU1RmXt0KLKQ1IVDh/RoiWVCNzIaOLGHPf
	98s2xmqKsdp//k9+JHf0wmgsCRfhOnwzkiR2dztqsONq05vnzHYg8UngzdXA6eyA
	67LugwUDW6N4xXeARup70TN4lWyumfpWXIFWothalplVBEw+KhAAkqLe1ggPObu3
	Yp/dPnYgmX+L1+SmLKdWLcDyeF3muOhz4rK29qdEMFUaqw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4avbga04vx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 04:01:08 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b26bc4984bso973598985a.1
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 20:01:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764993668; x=1765598468; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rnE18AvkCRDZgapU1S48szRjb8G/8DtuMY0zt/3Ql5w=;
        b=JwNn4fy5ojKJRiKD5ByN6JiCyBLko47HoaZliFZKLi3YI6fQjZeza1epghybXbC7Jm
         hPFtGGIFiF8TH8pOnHcXVKTGUQccjf6PzgZzCIFqwWf9elmfrLpQ45JYJfNJRIDcAAuR
         U8ikFOfjprshxCvzoHfWkeYdxiqebKrFPGYrixTwqzcI1xrF0AE+K+tFU0wE0tAzcqAU
         Kppi0hYtVUIL6lnvw6d6lGBM8dBMvVPTEiKnY6UbWfSIMoX99jbuJgUQdg/yKyaYSFmt
         +m2AxhyOt4RRLBpb9eSGQXSxRGljAm/7QAENoOLUjRVK0SE0+4j4lIwHX7feXG2Qb17k
         +QNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764993668; x=1765598468;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rnE18AvkCRDZgapU1S48szRjb8G/8DtuMY0zt/3Ql5w=;
        b=m3LkBIVbfJZ8vfGMgWUVCit8p/WEF8ni3g6cRGh38t6gftJHG91I1uZV3AiWiJwxkB
         ANn8gyvrr2zyLbRBpqVCQafsCQbPENc3xJPvnHZUDm31EmoVfK9ZKvk1ZnFQ/JBSmixl
         KDRABswFWeYRtysqc7pZiw8v27TWf2gcMICZrTImb491Lm/xnc7sJWpXJo0wFr+BhMAd
         D2802b4azp3uhVAlx08AIje1dYlcFozybepZE4ixtk7mpm5l8RowjipMDp+NNbtfVEsY
         0/ARDvN3hYXzKBr3NiXy1eG3PKKwAxcoL9F190M4Ss2HD2a45bmT71lvZuZQ3agPP4dL
         f3oA==
X-Forwarded-Encrypted: i=1; AJvYcCUruF1YkrNVxY5CitFFHnBOtXvhNtNQsaucg29qmeD72gJ/8A/FhLxsM/jvfNZA/6idVT4rZq8BpDud@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/jyXlXhtqisIkuHaXlIpIajYRIkfOjepZzHJdUo5wdFCpNjmv
	YRjv9uUabZvdOibuF4NDZP1IrBCyVtTwlDFkzkT+nLBkj9qI80IATTqcKaPMpdKbJfnKgp8C3vn
	5X58cso0jOkXISQ+bNfXvJPAsDQuT7bRNxQ68nJo7tqm91ygbwuq8pdedq2rdbNI9
X-Gm-Gg: ASbGncvvvaK+a8+QiKrsg70Q5XGbs8C+04z73QiLu9zwwiBfjzcr5tAYaFcHGIy7P1K
	DZBGDAbPABbL77JduDdoygQARhb2HUUXatBoTuiP0d32meMZwJ0HtxbDJbUQQoiNHgZA8NqbVRx
	xe+k/mgmz3OwO9X5zdEKi8aVUohdTgaMklzwMllXzxQTOziyw9KE3c8lHDq73GUVSeALuZ5U2Um
	xlldeuFtrmfU6ZJiXmo7scFjqv70nU4YKwT2XBboqJ1RJIntQFcNZSgd3WAW1i9dfKsEub+YvHI
	ZdrpwjY455PJwtE3E52viGGyaOE20kENht+Mvm0odlN8ojCVDeVNEO6njME81Fy3CNQMUzm/oJ8
	wTYhmiWhUbjn04/QP7+dTerPWobiQ9zgT1WLpLfKy0VY9L+aHk2xffdxkULQPV4vlGRaSmB/PZG
	xSeupsjOPkr/vNB8BRwr+0vNg=
X-Received: by 2002:a05:620a:4152:b0:8ab:8037:509c with SMTP id af79cd13be357-8b6a23fbd91mr199735085a.12.1764993667887;
        Fri, 05 Dec 2025 20:01:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSd26GRbO1OTykOL0YBkWeamtUf5O//EDyVfvnZE8aE6rUiAapf96pBDWYEQbO8JcAOCZDBA==
X-Received: by 2002:a05:620a:4152:b0:8ab:8037:509c with SMTP id af79cd13be357-8b6a23fbd91mr199731985a.12.1764993667386;
        Fri, 05 Dec 2025 20:01:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e706634cdsm20105801fa.48.2025.12.05.20.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 20:01:06 -0800 (PST)
Date: Sat, 6 Dec 2025 06:01:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Fix compile warnings for SM8550 and SM8650
Message-ID: <bafwqulppesamj2y5ogpd2shtdzt2e73zoo6stw2qypnb3gawl@6757lsim4adv>
References: <20251203144856.2711440-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251203144856.2711440-1-krishna.kurapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=d4z4CBjE c=1 sm=1 tr=0 ts=6933aa84 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=W_W4GMoGrKgtJPV1LKUA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: JaYAWLbKocRmzhl2jUN8szUK1BR1fmGo
X-Proofpoint-ORIG-GUID: JaYAWLbKocRmzhl2jUN8szUK1BR1fmGo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDAyOSBTYWx0ZWRfX7SQd0pEBiAjL
 1PFmK4nqDoAcQoGRAVCznzv0qwNRn/Spi5BGL71ssyM6HgbLGIHInCnoXpmZjnMNpfVkq7XYmQo
 FOIQFoOk/exv5dA9kqXTxheKKTKXyYAUXzLNDUQPI9meQF6C2/J3K/bbZHTuNedQe3dBTxTBowl
 T0ISzw7mughZ6Ee/mCSV1+4P4XbsedJxbCUK5YQCPM5W3PJSPAgYtXM8dqF0Z5x9n7065IyuEfT
 184/Lr9jK9cdUSUbLifEFkdyW44po4s2OaXNKSgNNsk3Qsz8AahOwg2DoBQa5oUrY7LsMIzeA+i
 nollQmYxKQIlqQi4PlZTcQIg8ipqjv4AqYxPMtywoDA4XVh0QWVWBH1c2MFZF1x3s4TcF+iWo8R
 7jsf+SM5h3BPALqxy67/FcraLwVo4w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_09,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 phishscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512060029

On Wed, Dec 03, 2025 at 08:18:54PM +0530, Krishna Kurapati wrote:
> arch/arm64/boot/dts/qcom/sm8550.dtsi:4133.22-4223.5: Warning (avoid_unnecessary_addr_size): /soc@0/usb@a600000: unnecessary #address-cells/#size-cells without "ranges", "dma-ranges" or child "reg" or "ranges" property
> 
> arch/arm64/boot/dts/qcom/sm8650.dtsi:5086.22-5177.5: Warning (avoid_unnecessary_addr_size): /soc@0/usb@a600000: unnecessary #address-cells/#size-cells without "ranges", "dma-ranges" or child "reg" or "ranges" property
> 
> Fix them up accordingly.
> 
> This series has only been compile tested.
> 
> Krishna Kurapati (2):
>   arm64: dts: qcom: sm8550: Fix compile warnings in USB controller node
>   arm64: dts: qcom: sm8650: Fix compile warnings in USB controller node
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


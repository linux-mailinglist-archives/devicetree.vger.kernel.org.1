Return-Path: <devicetree+bounces-230723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A0BC05340
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:57:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C18B427DDF
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33BB03093CA;
	Fri, 24 Oct 2025 08:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N7EkyC3V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9DC3093D8
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761295205; cv=none; b=mzBWCoeFy0acy54bQHd1GhmF/Se+QxCyjiFrHNpfdtzo9rDx9JIBdiosyJAgQCQxMsDefWEp7ahz8PewixYToGQWymYN8olyUHHYxULkqqfh2Ejri4o9TA+1i9r0PDb4sSWNCewBW6qxW8Iq+NcH1bmBtSL8b0SEawUmGzDfOYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761295205; c=relaxed/simple;
	bh=JYG+1M6PiT/mD78iOJ1agyaZE8yQPk6FhGZI0XIiWLU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ACGceBoOvFtlnZ8QPFUprOZjNvl57A4a7EnhBqs2fB5RuVTNd1M47pLs4rtuMrb1XVMhLWnFnyOSzEISqudMlD0ZoqmwAHiZ/hVZUPIIrAUh2+de8PUPawC02Ty4UWPgBYt3vgSoIQ8r/1BJkXPU2ofnMO+5UucWG5DNiPG0vCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N7EkyC3V; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FkBF003749
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:40:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1JOLmma9bqlEv6mHUzEz+JGLukJKbebhm4RprQi7te4=; b=N7EkyC3V4jno2qqu
	cri/U0CCVWsxtL80RgQTiqAAbi5Io/FErEVEqOQkhu4irHFPgpoas8cci/k1AldD
	bPVxwZIKQyfcuBVTYnF51Ifdgl0VjsNwLtno5vixKyubJSwxj7CsIez3sFgG5tmP
	5it57gNgFEDRDweHrXOBh4gWPdbcRQKIIYCDHP1ztfx/cSSjbmGNE0o3u6wNPcPO
	OjHIdGcPPTR5fxYnfR5Wsz/I1Neh4ZM3N0OMJGvxsO3GrIERWVoCSvBcbD56xkH/
	Z4dQotg9mBZXeo97jkhhtYHYqmy8RRlMFktz/aFkAepg0II8g9sgFp76kDNc93S4
	exhcYA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27jb9sq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:40:02 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-87df3a8cab8so4829536d6.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:40:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761295201; x=1761900001;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1JOLmma9bqlEv6mHUzEz+JGLukJKbebhm4RprQi7te4=;
        b=MvSr2s51B1d78QA0C+yQeLUY/ajdInNgW42XQN6AaAoXovkUOcZpvfw0QC55JkLQ1w
         krPMxthcHSaeGISroJn6IWHuFmIyfSe6qsH1DqW0tw19rp9mcXI/9Z24mAFZiHhzdfUy
         wENdgDvjDTjQ00BRKgBDWY6STtlQMBIrkY3JNqCQ+/LcDFJRLEjGai0w7mmsResU894I
         835f0uHpHU1RE9fs+8v7+3Yp616NdaisDi0BZeIOWM9JUFJDk4Da+jRQy2d7HGRMwFPD
         sNQXkEAsrOBBEe/elwKAPzuSWfCdqs7zZcqMtanGlvTS6rSw8tf4JboxmxDzXxPh5STk
         n7Gw==
X-Forwarded-Encrypted: i=1; AJvYcCV/P8AXETIGK3qt5LbwvD9ObmOfjxqDS34HnhbX2/3zZl14tV1wjILbic14s+6RGKXPkb1/pJYYSeB3@vger.kernel.org
X-Gm-Message-State: AOJu0YwF9nefbrR6xuA+PTpuV5t1oBwcADFGkB5CF0kCezjp0wthhH9s
	REpOfSQ6/n04WOpE5TWMnTnjlUiRAINKkPsLT6E9+5pBYGFOCUvdU5I+69+u5on1Mw7kmZ90C31
	PKlVl3qJHeiTxidgQhL4F+7fT0y2JsYML5VjRQFBJ+r198T7peHIoMjYo1ZPf9qQx
X-Gm-Gg: ASbGncsLgHqu27hHoL2hJuu0p9KVXae0QWy6vb7+rOaWcRb7enqT+u02YyQQvN+0f9M
	GP81GvjopLWNwjGM9cs0OUE+H87cnt9CI+m5jvqMoARmHHKXnRLO+drot8AM9Hs4gcnD4wBgsu9
	eAHwVWnUewewS6U2p6YHdRvztcl5PMmk6O4wBsDMDRk+lhhgrI0Cji/QmmFh1RRo1kn0KE7oqW+
	c8bqZVXmenG/0Y4RTxX2oUIu/ofTDDjhm4bdje3V8qYntn/I9U5iB/SnIDQQP2mGdtBYurOqrGm
	e5/c4tsKat4CvgofTvGOYMpOSN1FOcKtJwxK7WQWq6LPnzFHm2cjwjOkUpkgr6Skgzkfdoj04N+
	mVxlHW9+HlNMevOxE6R6GzmF57uT2gejJLOa2qq+RspseP8lpk8aZEqoh
X-Received: by 2002:ac8:5f10:0:b0:4dc:cb40:706e with SMTP id d75a77b69052e-4ea117e0b30mr119093091cf.13.1761295201553;
        Fri, 24 Oct 2025 01:40:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHogEfnZCnfST81Rb3Ac0hj/uzXgJkTfe2vdk/f4ZOhJqmLDy0hT9TzZwbdfJg4861TgaON+A==
X-Received: by 2002:ac8:5f10:0:b0:4dc:cb40:706e with SMTP id d75a77b69052e-4ea117e0b30mr119092961cf.13.1761295201142;
        Fri, 24 Oct 2025 01:40:01 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d51471ef6sm444517466b.72.2025.10.24.01.39.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 01:40:00 -0700 (PDT)
Message-ID: <102d9042-49cb-4aff-8b93-a882ed8da27c@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 10:39:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] clk: qcom: ecpricc-qdu100: Add mem_enable_mask to
 the clock memory branch
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
References: <20251024-sm8750-videocc-v2-v3-0-6286bbda3c8e@oss.qualcomm.com>
 <20251024-sm8750-videocc-v2-v3-2-6286bbda3c8e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251024-sm8750-videocc-v2-v3-2-6286bbda3c8e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfXxnsOw+IJuMxk
 J3kp1L4/qdcIpxIg5r1SggaZNFGzlbbO4Al/8p06vtFEExkOGKHvNsSB89T8xy6QzMPnpUfvO9S
 mCIxIdskIA3etYPVu5oD43iDx8R5zDMPMXPmN4GQce9A22aL4teB9NJHz+enWpYWntxgIHGBgo1
 sK+7MLw20cdqU4k75gEOijkaAl2oiqathqPe7FW81foojVwFJup0wDZ9O5qgKPx5ECpKtbXkotI
 mSJYb5kAoiK1EPXf/462qRcSQNrcD60bFiSF5QkSAOIYJ8H6D1yi7R6NsLee6tSeS2wccb1lvD6
 gzPjhYYAYPl2RnY8+MY6DK9NDYPdJN8VZwKIG9ak+MBdl21/OJE80+fCQITUiRtdNtngE63947N
 yYj5fpbi64gSvpy6lR0cX8L+b99oLQ==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68fb3b62 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=FB20kyDvaZqv9jGj6gQA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: 7STqmveaRhf-5eo0LPioBUt4Y8XX1KLZ
X-Proofpoint-ORIG-GUID: 7STqmveaRhf-5eo0LPioBUt4Y8XX1KLZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018

On 10/24/25 6:24 AM, Taniya Das wrote:
> Add the newly introduced 'mem_enable_mask' to the memory control branch
> clocks of ECPRI clock controller to align to the new mem_ops handling.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

This probably fixes some ugly issue, could you please mention what
the impact/problem is?

Konrad


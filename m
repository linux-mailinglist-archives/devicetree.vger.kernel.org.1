Return-Path: <devicetree+bounces-239443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 188C9C64E66
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:37:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CA8B54E6702
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 434EE2701C3;
	Mon, 17 Nov 2025 15:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XMsuetOB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BfzWaEfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB8626F28A
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 15:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763393762; cv=none; b=fnBBdp0Z32JrRusre7AQDvuR7WZAWS/sPQy5QeZ8PZNTWtIvI6424X75nQlixk5l/AJwRh6cGgX/ADx6r7ErdIpMoYM6rNF/avSnze97QNHWQEpEQMxK+SguvwPXhHwUszBA5Jo0s61TefrfAGTB8wsK/9gU9pJmm/Ol1zPQPnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763393762; c=relaxed/simple;
	bh=F6BC7+PlCHzGuw2QFl5PT46BvsRC/SRL7UqvRjg1HQg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=khdOttC41FYvkpcydfV79a4/ZArOlN6NUz/zGmJls/TPlbnq2WPb4ipIRbSuBwv0luC5giTzNTEcIU4TgUjdVo/YhovaxkA9qqacQ6AW/rw4VIcCaaPK0CIEbw7aw0FTOKOv2+9VTCdfN/5XaYrsvMu8VQInAF0XYKy+jp4wkao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XMsuetOB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BfzWaEfy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHECeBX4166714
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 15:36:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IiXEW40QqYRYcgzUMb0Yc8i15orcZ89ClJbAmcNe1m0=; b=XMsuetOBcy0GkSkF
	USdYVFjgV2aWR/VSe6T+FMjJFDFePXY+h0uHQEsPMxb1fEJpetywHwvDDYEFCO8t
	k2iQZZT+riSZSvURJhpS2j7H0vnfI6dA2kN9pCS1MIX6nkbfWIYAEjB+wSko09wh
	cShAGwIwRS/3rmmcqyTgxoYBvBHnvbTuIS0Syzo/aQZwD7bP99zTNlo0BrAeS4VR
	m0T+zsBWUy7avGsQ+VE+vaW0JN8F1JH3LkTKtgsKDHXamIyOntYl+HSyYqw421aM
	9Lvb75bInj25NvQ1wkqZkyUYnxRoeEJ+2FzKIAuiZAQAHwssq1aG1EXARSjbZ+EF
	I//dmA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag593r80v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 15:35:59 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee24e1559aso1032991cf.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 07:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763393759; x=1763998559; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IiXEW40QqYRYcgzUMb0Yc8i15orcZ89ClJbAmcNe1m0=;
        b=BfzWaEfypM7dCQzl7sAR9DHe53VzkY6ZCiOsPNVqD2ewQPQHq4R3D3FoV4jrDj6TGi
         QLZTMXNuzd03F87y4CcRhPPPoNj832PxqaSEo0LzWgMmimymcGesyW4coVhvUKyn9Atw
         DUhetq6aVZq5IKsknCztohZ+DvLW3lPeHd2FZjOePvccvxl2MmkbXVKY9wCRCqv+ZTVL
         kiVVnqb+wb7IWQdjww7bpdMOrassY9Nt9HAVjYTwRt2ws0ijnTHolay9qpVzrF3c6CeX
         1g3+k4MJS1IzW/3w4XGtLpSHbFSQCSrC2mvYI6DpDk+d3xVS/3WvoYhMBcnzStPE6jdR
         uA/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763393759; x=1763998559;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IiXEW40QqYRYcgzUMb0Yc8i15orcZ89ClJbAmcNe1m0=;
        b=ladPFwCmDwiMd8LRt7RqDQhic/kNiyeOTYBrkIaWJYmsMAsnk6RKn+zzzU4e+RG8QG
         pcy68oG0jmW/lXzInO+5Q6Jf5+cNhT3Lp/HsBXtGf99oAymS9g518ye9pTGkFLCtQZME
         6Q9PBkBiSPGMwT8FxA15oETLJMiRO6lHE0ZjO5QBUeRND8maVXEjavL5vj2IHmwqKRIS
         E/g81HqR54PRmdfXWVD4T4du5fqME2pj+FSRwAbi2fXAmfkBG9qZ59eefMM+jNSCxenh
         NYZxfeCaetqFz8sA0X+8SQPhvhJxnxTnpR0bTMelSTNhDNNkqfI5INBEg/W7sPfTxUvH
         k+Tw==
X-Forwarded-Encrypted: i=1; AJvYcCWGgpNdwye09G+rbHTj7hwZ39Iy0v9S+fp9F1AnZ+AA1QVQNKpEQzHrOvH1kN6DWUoW1G7QXvhv1Jmf@vger.kernel.org
X-Gm-Message-State: AOJu0YywAq1VKodvoYvzEfITaZ5Nzugy0e5qQXucihzQPLWqa94Epfo1
	/bD3dP9OTmoqSclku+2lpOs2OegYBzYMBrpInmW0WbPfvJf4c7pmyX2tyWIG5c/TejnbTck99tS
	qWS8tieJ98BQY688PFliGzq+caujRzDh0qeAKq8Ompu6YYiLY8aew3oeUjoiM0Af0
X-Gm-Gg: ASbGnct9GVn3Ru8pU1XdE65IYQCJ5YrCj5Uq62+r7ud9T122gh34dnu67EY2qdZl35h
	Kf/392RyUOeeF3g6YQ8XDF+taO/h1QbJ2bQ+eqG3kpyiEKugKbvg0LLvHuXmPmFxQLJom8j8ihY
	H2dZB7KzAEuInnOi4+XE4QxPg2JLZ/renGPBJzb06pc4Xs+PJFhEJW09OuU0RTFT18eDAo3X+hb
	2+hbC+YHauZBWsCaV3l8iLGe9X7f905M4eOfwH9XLzSjREh5vgIgIO3F7ebP2h2eGpgHbubGdzp
	X2Q2Bo49+dDbBe1lrmdTrQBwQG+k6tuEpzduIAyln1Y9Li0/N8n4FtEHbnQjFb+ZCi72KHnJ2DV
	yFxcr4TpP9qB5HDNMN29yQX7vW2v0ZyQS5U4JU95jJYcsB6Ob7bu/4iGL
X-Received: by 2002:a05:622a:4f8d:b0:4ee:87e:dee0 with SMTP id d75a77b69052e-4ee087ee233mr57007311cf.9.1763393758573;
        Mon, 17 Nov 2025 07:35:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCN8jMJkEs+s0FLri2omua4ZtiwgB/8YL6gNFMA7kDIuSsbIEkAvPGPFWPcHppT1bdBnJwIA==
X-Received: by 2002:a05:622a:4f8d:b0:4ee:87e:dee0 with SMTP id d75a77b69052e-4ee087ee233mr57006931cf.9.1763393757939;
        Mon, 17 Nov 2025 07:35:57 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fd80a5dsm1091952966b.36.2025.11.17.07.35.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 07:35:56 -0800 (PST)
Message-ID: <ff773af3-d843-42ff-b4dc-e5a9d85c2285@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 16:35:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: x1e80100-vivobook-s15: add
 charge limit nvmem
To: Maud Spierings <maud_spierings@hotmail.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20251116-asus_usbc_dp-v2-0-cc8f51136c9f@hotmail.com>
 <20251116-asus_usbc_dp-v2-5-cc8f51136c9f@hotmail.com>
 <378c611b-f8c6-4f89-a3b3-6d8c22445e83@oss.qualcomm.com>
 <PR3P189MB1020E7393F72B285173137A2E3C9A@PR3P189MB1020.EURP189.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <PR3P189MB1020E7393F72B285173137A2E3C9A@PR3P189MB1020.EURP189.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AKSYvs3t c=1 sm=1 tr=0 ts=691b40df cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=69EAbJreAAAA:8 a=NI52xOD4TGehLKbkATUA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDEzMiBTYWx0ZWRfX1Hqp7Sz0+cxY
 vBJ0dOtQnkTQjR4dS8N2vl6bh2PWmt3Yl3DxaIC89uPHu56KUljFDEfxxedXVQsTNbPgp95zZD+
 2JRWpsHWiujoMNIhgR7uM2pP1nsq7lvV/IF1c1ttCY1v5BrVD9sNxVEsohYWTAXkcWPbuSRqQdh
 mnFb2M0wIyOJaiP1yDStNFOCuVjljq75nMKiWw4skSiC1gC/PbTo4HkFcxKkIT4udQHntl0vqZm
 18FDvHAo9hk+BrLCBEyUO6e8FSqkKcu9ozQ8YLo0F+fukm0tyKevck7eUS5GRaTI2J+jKLLmvD/
 m7YB8F15uvDUaQa7CiBZjccsPhqR3NHeyDZrcjuQv0UqvojHCPasdhKw/Ad58bImEvEkVZuiiYp
 Ma/AmOEIg6kxC/lVysqHWO2iHed/Qg==
X-Proofpoint-ORIG-GUID: 1yZFsS2PMPY7r51k4LpoHfCUSrlFPLlL
X-Proofpoint-GUID: 1yZFsS2PMPY7r51k4LpoHfCUSrlFPLlL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 bulkscore=0 spamscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511170132

On 11/17/25 3:13 PM, Maud Spierings wrote:
> Hi Konrad,
> 
> On 11/17/25 13:59, Konrad Dybcio wrote:
>> On 11/16/25 11:52 AM, Maud Spierings via B4 Relay wrote:
>>> From: Maud Spierings <maud_spierings@hotmail.com>
>>>
>>> Add nvmem cells for getting charge control thresholds if they have
>>> been set previously.
>>>
>>> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
>>> ---
>>
>> Have you verified that e.g.
>>
>> connecting the charger
>> setting the charge threshold
>> rebooting to windows
>> rebooting to windows once more for good measure
>> rebooting to linux
>>
>> still has the settings persist?
> 
> Hmm I have tried several things but I can't seem to get the values to stick. I the spmi-sdam driver is compiled in, I am not quite sure if I might be missing something.

Hm, I wonder if Windows/UEFI overwrites these values or whether they're
used by something else..

Can you set a threshold in windows and see if Linux can read back that
data?

Konrad


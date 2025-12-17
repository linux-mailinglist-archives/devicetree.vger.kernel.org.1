Return-Path: <devicetree+bounces-247359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCE7CC74CC
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:19:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C40131B16EA
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2622B336EEE;
	Wed, 17 Dec 2025 11:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nmDOEgOl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jDZepw5n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6243E338927
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765969925; cv=none; b=tQVthYDpxfcWPFgfX7RWzMx1Af9YBFKEBNSj5YibKprzhnGfgo6TczP68gGFee7VKX8jXOxk6VMaovqj9+LKlekh8Lg+lR8xnimwXGLtyvvnrVosmyv2vHQ+Jkxec1hdXOi3DGWVyvQTmOlHVPxDkRakpvlMoAr40mUlIzGHYAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765969925; c=relaxed/simple;
	bh=LlLV/28sCuOmANe66iWLGqjRd1+cBIwqNMnc0KOSZzU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yci1iumWzeW2B4os6Yo/4nUZIhX1y0Ik9UPsBt5TslFWm/8nwVUUMKVU84mQcD/M3v8BTp/C5ZfCD7uwIPcQGP2TVGBdkDukBo0WwpPafvWHqBQ+RsKWwxxV9QwszdskV61qGzg6xx3o6e1r/LNMS70kJQg2y1FmRy/6cm5aRbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nmDOEgOl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jDZepw5n; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHAWs3j1903871
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:12:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ExQR+krKvze2GEv0/P9bT8ECaGN87QaML9Aoy0DR1u0=; b=nmDOEgOlGPMbrxcc
	NhejsmTGCT9ztEuXfHGXWzLPbIOzuNdD1YsjE59l0biRvC9gmCBGJOpadhjfqsx0
	87MQFZVpqYTm35ypycjxjggQa/F7x+1Ui8CWSXee+7Wa9FdIFyCiDQ9WwSgiDmfi
	oNvDDBcSI9PEBTh92YGWrtYJkeTroGPVGfgzMbmD2cXdOz95c1x47uQA/Cd9v+Qx
	qtZUxBGWpGgys/bvlvRHTIxTUxULW6N/D0qgv5ZB6x1i2ikPgmhCnT3l8IIp1VN1
	fSdv0Ihr/b2EQD0SsWBRUomiT1UOPWijjn5fY+1GzezncZMJ6DPcCyym3ZWMAAH7
	q2VXHQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3n331bj0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:12:02 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b9fb4c55f0so104703185a.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 03:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765969922; x=1766574722; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ExQR+krKvze2GEv0/P9bT8ECaGN87QaML9Aoy0DR1u0=;
        b=jDZepw5nBzp8v863LSGyPzfS+GqC3av+sN4pZaPZHui/dw2LZo/iNiuPFRk8+TW3e2
         nAhnOxHXzIBk8bz0dZY0hP/0Q6Veok/bVvSy4DgTDucZ6HiGgtTMvYJqaTtRp8QPmw6b
         5RldjVwW7c+6rPmZLjTc5rHmShvCz4U1qK0F+15mfKikF/YUbUp7xouKbbXV51+bzyXC
         h4/P0M9v5zAccm2jynx3FSZCfcCY3fP8XMcjv20JscCMRVkwagNw7VF/G+c4AvsCWwbl
         KbLpsLkH0WmMhimyitrcCL9aKq83gO1nVdIcpDnEhB2GD5h39OOLAkAFUDQuWzy9qhgS
         pBiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765969922; x=1766574722;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ExQR+krKvze2GEv0/P9bT8ECaGN87QaML9Aoy0DR1u0=;
        b=HGbDvRp/ePDsIF5pF6S0vOdSUnwrXyhiPtRSTW5oVjOBABlZ8ZtSNC+IqDgHzZ9BDy
         1IEmm20MjktJ03B0d99Lu4i6ftpM1WZj9lq5I2csMjRUVT3dyAbyQbRvtDdCotin/2T/
         P87kL2dRnav5bnnY0+iYdc3EGY5vZgajU+7Oj+bUW2uFToVMPs6PZg5jxNmVUtQAX85k
         kO8xX3GPNQKwloY0ZRODEzihSLLM88/HMMqv89iKjsC3tNxiUDR6mdnSQGfByI0dSpWp
         j4RsLf65but+zqFVz6xWUzT6EJniHzWkQFIab0gHzUNIxKHOcRYb9xWTR0CEAtPCxlxB
         +6ag==
X-Forwarded-Encrypted: i=1; AJvYcCVD0bKIIrBpSjL3i5bXmBLr+msQN+3zHPbPnmB5c5CvfH87nQuYuKBAKJAHG1mba3utnuis01eLJ3Mg@vger.kernel.org
X-Gm-Message-State: AOJu0YxjFcZjbzpCDT1bOYVXzMdR1SIIsKsUpMmN6hYTxHwDRrEWv6Bf
	7kC2T48vRSD5nKa4tEytJ2B1d4gxNTr2xhvtstuZ+/4A2Qc73vHMr8SuPicFJtJoS1uPAKWGlGq
	YV8bIwcwpFxYeO5729adOfvzIbh1HnCDbjoDCFRZ+1aZcXNW9COw+mu+c+YH0etwE
X-Gm-Gg: AY/fxX4bCbvoH2sxGX5pJWX7kmDYacJjR/quyiTy0mrz+mDKwHdeCHqHK0GOcVxa1yl
	yVdbxTESL3ExVbsiq4DiRffZwEjMeMx7118NZBOt5wicPt0wl9TCdZAXG0oFzS2dMaSRf3THsEP
	8aKpKzNNK6juon96fAPjW6xdZsIV+5O26oWmQCBKNKTZygVnBJjd/hba6nrzTu0sEMgTZulLmOP
	MTkAXoxNNSiXO1Y/ba3maPE4RTDGOs+hAFfD4qKBbYb4dH3d3oYkm84+DKmspHg6rlV/3ZbW++t
	AfzjX+iZRV37/by9v+7AKmM9PmZJASPtCI97+UbV6x9kf0Y7yt+09pM11HApbzE8n5T3G9DjVpQ
	SJiO97H/ZaisYFFnNk1ovElGkZxhj4BBorJ3O135Um5Q+WBK7WJDCpzmRsGHk+vLdWQ==
X-Received: by 2002:a05:622a:102:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4f1d04e6df9mr189186391cf.3.1765969921753;
        Wed, 17 Dec 2025 03:12:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGcEboJ4RWIQ5i7FJOk17RlbPNdYOC1Mx5pq5R91V+jM8OWrxAZUta37GzEFS30iRcgXnxB2g==
X-Received: by 2002:a05:622a:102:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4f1d04e6df9mr189185991cf.3.1765969921320;
        Wed, 17 Dec 2025 03:12:01 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa570174sm1901860566b.55.2025.12.17.03.11.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 03:12:00 -0800 (PST)
Message-ID: <d87d69a9-ad52-46ed-a47a-ddc74bc3d4d6@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 12:11:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: qcom: sdm845: Introduce camera master clock
 pinctrl
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251213-sdm845-mclk-v1-0-197bc947d4c6@ixit.cz>
 <20251213-sdm845-mclk-v1-1-197bc947d4c6@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251213-sdm845-mclk-v1-1-197bc947d4c6@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA4OSBTYWx0ZWRfX6nV1KsXnQOgl
 Zp3csn5QH9AJ5C34pgeMRnvgf9l5eP8JBdCUWr52pMsZeLm9vaKHzHcVcswdksJPK3BZDf7h9hH
 aE+I508pGViqaGYTXmHPp+I5gfqH5HE4hV62CCGwm6SlEALaLyaL3Gt0ol2aSXyhIxuwytODrQA
 NjfDCCeWxCYFf3zSLOVQ65xstV93cn1p86vF1pcd0zB2VQknxrKb0YzEqLQjrHroEl+cZKkjKPT
 r4/o8LcxyG+KINU97tkHoX9EXUJ20Jx8+/d2YmicywpKv8wCGPRRYaJQl9X6MSQrd1pbwEcdPmS
 uGN/5ujt3PLg/f+El1i++3jyyEXYo30RmnNCWtzMLis7KBQNmEn8f7nWyJ4OU/v5sZXy7Y4Gprf
 0hqCb4P17rYfQvz1f4xbr5f+5katyw==
X-Proofpoint-GUID: US2W1QqMe3o9mks5HOlvmPxe8yUIiOXs
X-Proofpoint-ORIG-GUID: US2W1QqMe3o9mks5HOlvmPxe8yUIiOXs
X-Authority-Analysis: v=2.4 cv=U82fzOru c=1 sm=1 tr=0 ts=69429002 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=r4GYhBLE_ilKjY4j7I4A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170089

On 12/13/25 1:00 PM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> There are shared for the whole architecture, so let's define these in
> proper place.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

In addition to Vlad's comments, please add the missing "dts: " to
the commit title

Konrad


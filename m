Return-Path: <devicetree+bounces-247388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C90CCC7686
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:45:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 41FDC30821F5
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:43:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C5D1328B6C;
	Wed, 17 Dec 2025 11:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vdhf1FWP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I0fVkXwd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF39326937
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765971834; cv=none; b=rqiC2dQh/7I26x5vzK+39/21aWfwzYuwx+0F3ea2quf/26l2X7r2Yg6GwYh23F/9/y2ylsddJrUuigHI18KW0rokWgsy0TJDswmOUsS74rK0oucA3Q8wubY6cGAmVZBids4ylnQvpjvGrKrLXYN9tVec2TF9+I2Idq5PPDWZamc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765971834; c=relaxed/simple;
	bh=AOLk/fdBiFe7VPddTQoahAL+GlZhzF/mifTE/7Ua7fk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HIoMB3GUTlRyBTotnpRD4lfE5wRxpAnWg9HMrLVk/SmM7k3VfbtRCH8HAGF1b1fPD2h3Scero9JigbYEU3RsUua2O2lxME2QFp2ocQ1zvSLexrU8jT3c75OntLsnOL2sIa3B65oEuf4GDMY9ih94OqqXadBmt++0Na7YTmKq6vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vdhf1FWP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I0fVkXwd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHALSL61872023
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:43:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ihQcqrukQ/c9+YuZ0oNpyvOSwvxDJPxiaGKm80UrkQU=; b=Vdhf1FWP88mUbqhF
	2X9T/LZgXIcTZrNqQAkOQgRgVNCMyTyyvPUG8dCmdFui3rrh890TGEOBSlLUQp1e
	TW2gLy3R0xEpLtZQlBZ0QCxPmrYreFWT5f1gk+p2cu4mFwK419AWEt5TI/r/D/2Q
	EaDFLpgIyk6JgIs5IcpBbq4aMEaq4qb6qgVgJP5G3w4ZsovZUsqzxfk4DYfYFpk9
	hmFSIv5FgUMEZySIYfCiSiNUk2zUJxySfiSKMQgzSDQgE7boQs2RrvtZXINo+W1A
	ME0sNCAHizLfz1BeiMA/C7FJ7vm/R0f29B85rrJdlStZ3svwzMetIYHiQJlmJhsx
	NTbVIQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3jgq9t4q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:43:51 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88882c9b4d0so22586366d6.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 03:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765971831; x=1766576631; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ihQcqrukQ/c9+YuZ0oNpyvOSwvxDJPxiaGKm80UrkQU=;
        b=I0fVkXwdYwp+lgctL0pG6JgL8rEIGIO+YmEG+3zaMiar3gvxCBVm/y4uMDQRUG2olH
         e/SYWCPJBg339JtgbXXFqndXT2osa06njU2u+lxSjAakRYOZbVRksUhwdhqKryvV+ny7
         0PNEhVrn1mQ7cZPrPr5M1JgN0NZELfZFMNUiW30ZIb05UISl5NFydeZdZUqdbNIjwq+j
         8dFaBcRJwUQMIW2+FiYu4o2F7Qi5EkJqz4EpEzRQLpgGQM9m/OxSKFBzAgmkIAUvRym3
         X0jSo9Qs8qTkQsmQj2//7OswwICmwaLHHQ3yazyiN/eYrrk0+wH3u9I0tQ9OgmOIVIL9
         RJYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765971831; x=1766576631;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ihQcqrukQ/c9+YuZ0oNpyvOSwvxDJPxiaGKm80UrkQU=;
        b=knScQZ38YT0GMIg5TvLhu90hb5pCh5sAn3uZ9j/9oYC6/QqvyKb056zpmMigAdpFGj
         6dNdw5NHmmyVkz4JioJhLgkfvT7RzK7OwxOxxucrDAILrd9h4u7aB3Q1TRYV358+sft/
         Vp9HQILzkcwwvAO9bNxb8anWokPOV5lcigCN8BbaUdJQDJmvuTUgburhDtz2t5ApFoLK
         1acbCSW0Roo9zboLXx4LeEZ1K24NtGtIaT4QJEbontI5apX0LBWdtzHRmYBbQSELO4Ux
         HtMcconRdI/n27Vwiy4+MVQ6OmclRPKmgZGC2QhCylMAPnoGjz9m12wFgz7IBrTLCvGy
         AaSQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+CtLnGMXR4sTHaFm12UC1zmoQRQUd83DOs4vxXWep14Vv4q9Y/3XohSwB1hU2lY4z6qzDPY8N0I7c@vger.kernel.org
X-Gm-Message-State: AOJu0YxmwarEzf95ggzUAJZgIDhlE9LoK79Cnexp8bbm0oaDV3ljg7DQ
	M4zH+D6Y2KiKiO5i4TEMs0d1azF94Bg7IxpfQBtnzvOLgSeq/mblQxRMbJZ9yZrTlxoqRp3JWR2
	jd+OY1czpVNLDhtoiRH7iBeRqOiGITHere6rucL0WwPwCLaMHGg6oiFPZIMSqERVp6Zd6l7Py
X-Gm-Gg: AY/fxX6FTbMW7osZuI8DOcp9cQ+k2ZOOlEXpUMutn6uUUzDNfOH8GkDRRGmgFDGZ8B/
	VGUjYrWjlk4tWRianFYbxU4GOFbMsA4hVkcRGhLZd0CDCx8PkXMx48APR+0l6cFtF/EVIZusVGk
	E2FwW4gFwuFs012Zr6l3NEvUx6tzoXL8LV/6d/tpiEdYkpzAvuFgxeHIzq9cInM0kIqcG+bf548
	yU9mh70jPXfMqiokRQaJ0wLihOCBXyZFyueG0xey2RYVKqPe7CWifGauVoyR0XV9/TpvpF82OXZ
	xs9wLrd8/55K+fEJY4iUlbn5R7UYRQgqm5EdbxyoQaoMraj1hiff82Qd+fcx/WQOA6whVGbf6Wf
	DKsqhoVeE5IAjFLDyTXlphquR++91Kf3JF22GMmL1QpSaS5cS8AkFvypiGlW5J+o8hw==
X-Received: by 2002:ac8:73d9:0:b0:4ef:be12:7b28 with SMTP id d75a77b69052e-4f1d0672490mr128131661cf.9.1765971830717;
        Wed, 17 Dec 2025 03:43:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHAgKwfKGGZDctaZIOos+XWywvYp44BmYdAOut+z3apzNeFOakzV6Yya5sv5OGB2G0AmUYl3g==
X-Received: by 2002:ac8:73d9:0:b0:4ef:be12:7b28 with SMTP id d75a77b69052e-4f1d0672490mr128131511cf.9.1765971830268;
        Wed, 17 Dec 2025 03:43:50 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa2e817csm1939729866b.19.2025.12.17.03.43.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 03:43:49 -0800 (PST)
Message-ID: <c3e6664e-5de3-4423-9953-fd0a5cbc45e8@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 12:43:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sdm845: Introduce camera master
 clock pinctrl
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251217-sdm845-mclk-v2-0-7028c2d09145@ixit.cz>
 <20251217-sdm845-mclk-v2-1-7028c2d09145@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251217-sdm845-mclk-v2-1-7028c2d09145@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=VLjQXtPX c=1 sm=1 tr=0 ts=69429777 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Xu5O6cxXq1gntZcgiy0A:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA5MiBTYWx0ZWRfX32IXULt5foHh
 VcvnJ3jbR64SU+Zs2AX+nl3HjbcqzqJ5GZS7Py0znVkc3szC1UTaLMMOaHCEXZMh2KB6jYrU7+g
 X+1fYcw2wPXZ+diNeZv/OTqKMTXUFy2wNMLl/9gHmaj91Xes4+ph5DgB5XE9oXISy09VJa038Lg
 VYPPn9n5nhdJ8oC15rZAqU29+FLKkTx7P2/mOXWKtp71nBt9wh8gvyJL+xnZO9DkhsS+AKjdjmV
 00fR53zPvxLUM3NDxI/YyeDAVUX97NMxaMkcxt7kMmgXQ9d58TzAJxQ+qcCj0mf3k/XLWiVoM28
 CfhKfRVDcSUfi/dEfjIIIWojXS6QNYj/qyrUs0MQYPrvvnAwiDBn9F3LMAF9wNLdayVHq0w5f3P
 JkF+Pr1ATJ38XHs1CDRssxpXTvfcDw==
X-Proofpoint-ORIG-GUID: NCdRJs4f-ZBw8P29vgbG5fVRgErCgJdT
X-Proofpoint-GUID: NCdRJs4f-ZBw8P29vgbG5fVRgErCgJdT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170092

On 12/17/25 12:39 PM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Put clock pins configuration for camera master clock into the dtsi.
> 
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


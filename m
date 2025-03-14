Return-Path: <devicetree+bounces-157718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B46FA61FBB
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 23:03:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 182BE18999E9
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 22:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB2EE1A317D;
	Fri, 14 Mar 2025 22:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mMrfETTR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4A415696E
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 22:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741989805; cv=none; b=b2wB2Tx5SOdZkG4VaLShLzZ3eGp+0d/01YABCgzMDYMtLuzE/eVEkxqD+/kU7YPhe/i/BtIpKdFE4Ed4oUPYvIdzTZiSO/s4WpxK4AiNzh+jpsPysviW/SN/WhZ/oYKO4M0V8cXG5cRtuyvYiCx8CgI/MzsXYjqnx9D7ysgJZOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741989805; c=relaxed/simple;
	bh=YPYAgaNXP2IIPLWgofpyQneMOCtNp97g1EQ3HHk81m4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=leJ/N07/2SYcFgegbKX4Wi+DIA/swmmzma/V6qT2jD2NBHdHIf7pI1Qoy+gv4mcwb2dUw1lErSsGd2h92p+guv4qGEw7UOBASIbH4KSdhOpM+ggliaU81SaII5iHTR2lTR0CHWHc8Y6xOzwEO/4a0n9N7cbTlD6lym3i8gklT+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mMrfETTR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52EL0SSl023969
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 22:03:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Dnm2t5CfeS/52MGOLwOHFsVRcUbMcJKyNFgAPRvdxfA=; b=mMrfETTRYc1MtFbr
	cegihmZQto1dlyr23SbC7wUzzyfgoNOJ0Gs8mQhzGWxWCGXeJla7XfXJ/j5VmjAq
	JMaLBwc7iJeHklYpZHFVZKe76u93ZgMr2/YzGE9gR7JoueYH3XS67FjUhYk7QRBx
	yaTN9mHUV766P/2LuAfFM/KUJp7xUyjH8hHHEGKHfLuXvaF13xsjTkh6KvJdjX2F
	5otqNdogdoLixYBmeKfxC4pdVQD3vqALdzmWaLfY1O/9sMh5JeKIafDQ0B+qVG3E
	VXiDZKSgkVShwTsj25dNcnd62oHLbZZuR8YkcHPbkXRsKLnnA2ZByySVEKyGqU/E
	53ltcA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45cjc59v0u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 22:03:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c54734292aso34157585a.2
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 15:03:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741989802; x=1742594602;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dnm2t5CfeS/52MGOLwOHFsVRcUbMcJKyNFgAPRvdxfA=;
        b=fDY4u91RXeRnVArYAeiPeqtGhS3geCK9Swbj/QAb9QB75MzUBeoIfddTBtGtn4axRY
         AC4R8Vuj7GHuVJrWrL3Ub+K71JbTGadvHMok2RvMfLyABZ2tSh6upOnbGj3redbAa7Gz
         MFblr+Ne/PgvW0drke4wob1+5lwuNljOZFC7lOnz9h9vXkqBhRlaYfgWilsG31hX0wRG
         yiHjUBZzY2zsVMoErFtoFOrM3crUPlImqMASL9Two3D1+J7T4jfMQVlo9zlxNu59oav7
         AG2PF6s3KAlJ3quydtJB4zupDz92E/fVu10M3K6VCjf0NZFrDsewvDa/2RerpnYpJ7VF
         kcZQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+huyb3UxHya3OkzywPqE2ANqR2c+plDPl3WI/uVBabj9rfWBRnSjEtZGC5asb6u6vhQMU6Wc0Vn48@vger.kernel.org
X-Gm-Message-State: AOJu0YwMuhzsuaRqYg2mvtmb87+1jFSqjE74oyUqksxCJWX0jn72o69X
	hvPvL1ka2y9GE3hvKdNxhcKeP0klR4OHAbpAcMcQB3vV8wnLYAAa8V2QqEoZdaMsgckK3AMh6sW
	s7QdvCtk19kJ2DXe07GKMkhqDII9LOehlnTfGzD997ImwmdK3KudawdFJIx4Q
X-Gm-Gg: ASbGncsL/kkwrGDdj90ycfMFel1Un/aLWpmezLwj3m8ZYrsFVBWW9NGYE03RzbOH03C
	ZO1pjIf9SfcyI0EnFhuGFOvXbsNQKvjlvYdMzcp6vvk5aBwRgxgkEOqVZnzeNAc42RMF+769GdR
	YEt8kLnLScgg898q+1KLt5gKuPiQQEP4yVxQJIcyRbkqtsJJPuQQxbPS5LV3nT9K6dWBlY6qjn+
	wqACETxZCGqiSrZ2jUSFnXTovJyhf4+Nf2NAWkM3V13vEpysfXSccFP06nDqMWhtqhmkQCXpjwj
	id+ep7V/QnSaWpBn242747qqJPccJfz0+weTbIIPb623Y0xygRzERtO/VLzsH1Jr1hodlA==
X-Received: by 2002:a05:620a:31a4:b0:7c3:c814:591d with SMTP id af79cd13be357-7c57c795580mr190183285a.1.1741989802141;
        Fri, 14 Mar 2025 15:03:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGTEH8+2F/jBXZWadtElmUZ1siIaSDospZBCxTdVcPZR8v0O64Ck/1fxS27sV0REmM7K0WJA==
X-Received: by 2002:a05:620a:31a4:b0:7c3:c814:591d with SMTP id af79cd13be357-7c57c795580mr190181285a.1.1741989801750;
        Fri, 14 Mar 2025 15:03:21 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e816afdfdbsm2397154a12.74.2025.03.14.15.03.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Mar 2025 15:03:21 -0700 (PDT)
Message-ID: <948b3f2d-3834-479b-b165-7191778dc5c3@oss.qualcomm.com>
Date: Fri, 14 Mar 2025 23:03:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sm6350: Fix wrong order of
 freq-table-hz for UFS
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com>
 <20250314-sm6350-ufs-things-v1-1-3600362cc52c@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250314-sm6350-ufs-things-v1-1-3600362cc52c@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: X9tn8IicbRNHK3QyKei_q9OBtiMbQnAQ
X-Proofpoint-GUID: X9tn8IicbRNHK3QyKei_q9OBtiMbQnAQ
X-Authority-Analysis: v=2.4 cv=G/kcE8k5 c=1 sm=1 tr=0 ts=67d4a7ab cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=08tnehPgh3LRQT3fcTIA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_09,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 bulkscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 impostorscore=0 mlxlogscore=999 mlxscore=0 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140170

On 3/14/25 10:17 AM, Luca Weiss wrote:
> During upstreaming the order of clocks was adjusted to match the
> upstream sort order, but mistakently freq-table-hz wasn't re-ordered
> with the new order.
> 
> Fix that by moving the entry for the ICE clk to the last place.
> 
> Fixes: 5a814af5fc22 ("arm64: dts: qcom: sm6350: Add UFS nodes")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


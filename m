Return-Path: <devicetree+bounces-259420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iN2EFQQ8d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:03:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9940686620
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:03:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5971E30416F5
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E87832E724;
	Mon, 26 Jan 2026 10:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lTWOiv6a";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QhJCOs5d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F3632E68D
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769421663; cv=none; b=IAJktTixZVug/QZAurjYEtSKvHugafqvv1Y0ubey4p8esIXItOM/FG4g2+dQpkCq9TrEb50StQZaEjLI5cwYBewFr2kVGDf0AtRxxsNyAxLqAOdirtO01CcDjCSVYp8HZmk4GJLDbr3m+xDegfPiiLb/f+3jDNPM3HzBYNZywfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769421663; c=relaxed/simple;
	bh=4INoMT12qCpUTzQTBUPlvSvYHfUKbJXNy1mYhl0sSuM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E+hzYVBc0+1m7IZDVu8BmXmOjfc5nvryNwX2jLi4FYR3v4QdwCNRo2R+uBShtCDg+AsGI7qvL3NAkufNQaIujTmdsL5cP7dEWWFivnVyIAglt6aHjTmQXq9iygDKcTeZ++aQgcHnmqNu3y5IdykX0zUPZRHaH77bB2hUdY5cytQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lTWOiv6a; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QhJCOs5d; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q7UA8C3345973
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:01:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WMXl0QzKP9j0LJ98mSsU1E0C2JaD5zFoamcYF6chags=; b=lTWOiv6azH5Ji2ue
	GDtKJ4MJLRRJz9+io1/sHDcke1/OUj8lcpoJDu/pGkYbPTuyIimqKjswHY+okO4t
	lbQ0j6Vb0jD/3RdQiz75lFLtCPSAJFlo8hKFeh8ffgrgLImFu7cYr1QbeJLDVp1I
	N9Y2GBOafWPWQSFIH+hmx8DvYW365kWqqWoQkif30l0FplJAzJxbj79DlpOG/GWV
	cuNJrYKLnihlHE8xfZl9aunEpnjGLGabXjD68bHhnzi6O1rTBg3T7maTVi5a0jD+
	C3ZTD6T7CGPVLFEZ4OOJbJpmKRZuxSgdFH3PoZvaQQNH0mLy85nhkvHJQsGwJ4yf
	4oR4KQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq24m4qx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:01:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a182d4e1so91908885a.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769421660; x=1770026460; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WMXl0QzKP9j0LJ98mSsU1E0C2JaD5zFoamcYF6chags=;
        b=QhJCOs5d9Dc5/NJda2WrlZfZtPiKjBQyAeD7o+RGL/6ArNHr4Z2pxUv19ME5F5qJ0U
         utEZNG5OtSdTv3cDmyafIK4ABnjrHVvvl30cOKrXr4Mf1sYvu1JZGJZImZFGUUtrWPDG
         cdcJ0Spp+e3SWWt4TqiTYlkqO2zILhS3xqLyG/Cot2DV/ANsB+I4Z81gGyj+UdMAmu0N
         GVI5uhHyOlKQuUgY5zDqAh0XBnm+Js7z1yg/t1VJqj3dCtBcP7NJdVIsDq/0TWhs+qv0
         VO4ROmNFb8LxGyl9vO2mrfQayfxhR5ZP9ZjDsjHDrvnn1dHAdC+qvUn22S2kx/v7Zfs9
         sZ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769421660; x=1770026460;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WMXl0QzKP9j0LJ98mSsU1E0C2JaD5zFoamcYF6chags=;
        b=s/8m5Patue9rbU2lzJ2oRXDz3gElH/4yFR5KbDWbd3qp0RvBwfNiGH3flNzkGGbE00
         tifcEsjLWO5i9n/NnpGL57GVp55mKX1XSImYg79Z3r6Rqo9w+8T7CVEpc5WLdSE0RUeT
         eaHteJctmHuBDcrG7+KqO6JiSOA+fRGGMMzF0dD1QSKcSQkcotst2awmWluii6xUPrWK
         M98qbmdY0gALsTVeD3JDqC3ABYZAjKuX48Jd6wWvocpCcoSiI/Q0Al3mN8rqG/m09K4y
         v+7DjLpDdG2RkD6sf6x+zcEQJsQEPqLeQgjdDQ0Q1PRe58rPD7xMKweOC6VjYPQ9lJT8
         HRHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrlJsMDQ7wDsDAYN1pS7isYSa+z9sqKcIeK83pnuCd4epSALZncwUyCyHHTVGsBynZCm3RMCZHYEDd@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj2k8t3h698Dd0dN+dzYM8dG41rUOvVfFyMgpEgCorjEADgbBs
	6a3Azvpjs0+vMe6Hi9oUBUMOJxxFffORxcuJNwFtiKQe0CbNyfHu7mrBGJ6o7aWm7zkQHlCLiTv
	eS4yMuKm4ei4ptEkdYxXxbxuu/YQwFwAu2FLFlRGCkilzyTgPCvaqRP4XXTjlEH1t
X-Gm-Gg: AZuq6aKspmS0MdnVjTIzUeFMAQzU2NyMqi+A5OUQyVuNqL3z8YKSCLvfmcpkCNrXE9j
	msbwEOdLg8w+vCLwqNU4ybgdfVmZxih/S+Lcep1DjipJRiB2Eo1VJqvamtsSsGEfF9MsNHWxeYt
	5FPJlNIT7SA2Eq3/wENRVVYVGgRgDJJv/6v5N2nIcK1fpeQQAGzzqpMQ4PJob7aU12RSNb72IZX
	GwgfuP5O9zaLJfd/+uSuj94axQf/U6HEB0TCO59ZT/2fWCb6bCGCKHa0AyVNmTknQDxY8F6PNJ0
	KrpdE/AgEzpkP5OFUarEJCFnq7BZHgu4t8NGMRaf4AMSGthKyDPM1xaEOR5wBYYzkHBWiMKAV3B
	ewnQQATFJv+91d5uoyb8ccdH0R3PREpD7pdLH4UWUc85feFKKmVEPO3Qc1zJQVOt7lXI=
X-Received: by 2002:a05:620a:17aa:b0:8c6:ab77:f95e with SMTP id af79cd13be357-8c6f967f625mr317965085a.11.1769421659820;
        Mon, 26 Jan 2026 02:00:59 -0800 (PST)
X-Received: by 2002:a05:620a:17aa:b0:8c6:ab77:f95e with SMTP id af79cd13be357-8c6f967f625mr317960585a.11.1769421659378;
        Mon, 26 Jan 2026 02:00:59 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b7baf62sm613558566b.64.2026.01.26.02.00.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 02:00:58 -0800 (PST)
Message-ID: <7127f32a-0db5-4f30-b1b4-cf72fc117fd3@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 11:00:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/7] media: dt-bindings: Document SC8280XP/SM8350 Venus
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
 <20260125-iris-sc8280xp-v3-1-d21861a9ea33@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v3-1-d21861a9ea33@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA4NSBTYWx0ZWRfX8OVLwkb+OmU6
 gNZK4HCbXkDfzOOAYMtyiJyPUr55tEgijHwgYc/Fs5zLdCrWq74Eo4lFkIxGnDYOTLyCnMgOnt7
 JViIPE4nuIKSDQQ66SR11Bb2X4LKGBsO2cKd+4VbXXv2FTGS2DKfSLOoVnf1/JFxcU1y4QiiadJ
 g7fhled/A6INtyVaiv80XjS07+uQWQr5oEnCADPrjJROHWZ1lhhUslLjc6owByzKDyDl9uAdQU0
 NMnDR/Q47NUBPrlyPVTTsMCPzjjamsa8YHOOrmNSP5edVK2fRlhVAGGGL3B+kTbJ4zOzHRpXnty
 fRDnA7PyTfvV9ZouVwfaQ031DcvmkyaWBLoxsJpA+NoPIK0ZwEza06MwIc8E9bTEkBrbkWKavZn
 OX7nmnM64GBGTE1EFAqRnSRGhx9A/shuHDflbDPM0UiJ0geklrjZuxglUc7tLT2BFLQf0okqrQZ
 jJYgMMZy5H+aB5nZAew==
X-Authority-Analysis: v=2.4 cv=EsXfbCcA c=1 sm=1 tr=0 ts=69773b5c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=I1pO_mbCalW5hTs4aOcA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: liDDEk9fLiOrrlM651kSnJF_-VzRHad6
X-Proofpoint-ORIG-GUID: liDDEk9fLiOrrlM651kSnJF_-VzRHad6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 adultscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260085
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-259420-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9940686620
X-Rspamd-Action: no action

On 1/25/26 4:32 PM, Dmitry Baryshkov wrote:
> From: Konrad Dybcio <konradybcio@kernel.org>
> 
> Both of these SoCs implement an IRIS2 block, with SC8280XP being able
> to clock it a bit higher and  with SM8350 having 4 VPP pipes, while
> SC8280XP having just 2.
> 
> Document Iris2 cores found on these SoCs.
> 
> Signed-off-by: Konrad Dybcio <konradybcio@kernel.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> [ bod: dropped dts video-encoder/video-decoder ]
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> [db: dropped status, dropped extra LLCC interconnect]
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> +description: |
> +  The Venus Iris2 IP is a video encode and decode accelerator present
> +  on Qualcomm platforms
> +
> +allOf:
> +  - $ref: qcom,venus-common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,sc8280xp-venus
> +      - qcom,sm8350-venus

FYI the hardware is actually named "Iris" starting with 8150/8180

Konrad


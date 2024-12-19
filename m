Return-Path: <devicetree+bounces-132820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C519F83A5
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 19:59:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C627167702
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 676131A76DE;
	Thu, 19 Dec 2024 18:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CipT6zSe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B191A2632
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 18:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734634724; cv=none; b=CrvV80RypTRa8AwjaOrMzQ/52II6B7Jro8Grw2+0Ve9cS15762Eq+NnHyn0x01TF7wzF07NOgkXZqiYiPL69SRP0vF9w5WoG5pSGq1j2y/UaH7x4TLZP69qtyw6xp7kU5hKEQ6ewPfid83UWcGZIoKate6MFO19w6I+2rl32HS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734634724; c=relaxed/simple;
	bh=axLo119heLWBFxUBcctlRiBbYg4ax5uAH6d+A3wUUck=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DJh+Nup1rn3abb1uIw6d+PsgVb2DpKGfN053ZtaI0JxFK249ZV9ZrrawNzrtaJEgArBdVUxDoXjkmaPZhIAh6ZkQ0wO+A5Qs6qY0Fs5MXs17gpp6r+CtrLD0cQPQxjbmCmTvAnhW7sTPHlpWevmTpQM6NM/LYpWOaWXAcwlMAgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CipT6zSe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJGeYOL003979
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 18:58:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GRJcBe0xIsl1ZdSMYuFgDKPdn3YkUJjMbpcCSrMDWyA=; b=CipT6zSeE2ztyUXk
	N/+Q+mRHSlbCTqZCrnslcWLy6EMdRQxbgt4X2sTR2JMSTPKcVhUzmGJgY7mihzOg
	/xNxqgxr8ceatP9d2PTdBdkWt0zBI52htLDGDQ9bOB0NXRb7fIj/lfFkvvk3quaA
	7NJMNduH1vqr7YqFrgo+r1y/cqnCG/DlbqEq8um8g4Z0tN5o7M7fI431vT0mrQ3i
	/ik+Tu9MjaCLmO08kOLaDvA821NdxirNfbhup6ShB/6xNNKOE4iWPYpfT4ZFKnyf
	jUFnrJptUxaxmDXhJA2Tb/NJTWOjOFEvaAJPEjx/92LBt6wUdhfiG7kMx3jYUbfK
	trcg+A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mq7frb8y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 18:58:40 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8eda4d80aso1518326d6.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 10:58:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734634720; x=1735239520;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GRJcBe0xIsl1ZdSMYuFgDKPdn3YkUJjMbpcCSrMDWyA=;
        b=YBwDn6WxSMO2nXzPiUqexOjs8Tw/R2dpD0RqC3NY7jhcw5gMREE6FK+NIOadIR0O/q
         j7cZeGU0y1z2KTVtKjk7QUZinXxbYQwWEPILOX+g5KbW/cibe8biX51BJi/b+zBqY91W
         xZHqgVxpu0unOm2+ZBSylK17q8M0eTTfDs7EvlB4gIIFseMWakfIP2o+6sQ1agl19MNu
         xih4Xa68XbXp1RUkfHrRmlXvVJ4rbaOSs/LDqvv8WPYwyIjGMwi3DW8m7+VWdWdsB0uf
         LDbDHtMnVq0LXAE/B4SGX8qh+vPjrOqYMaD4e6nqxG3ev+Y0T0uAVZ2IbVUIEsR5UcRs
         sx6A==
X-Forwarded-Encrypted: i=1; AJvYcCWuJZLq5F68c4R7SrgdRkHc3iVWaWfWGfl4JPExKpkAjSVO92rp6ghTwjcdRR4jFsp1DG2BNOhgx9oP@vger.kernel.org
X-Gm-Message-State: AOJu0YzCIK27Jji2kGNkI4tuXWk9pSURzXbp3DrGxeUPejgwXsyqLzFb
	IV0QdgivE3eWZdgQafcbYL7p3dRVrnr0RFKZrlRYAehwHdAWLYgmM3uhQ+H80RG6j2bw5KytIxS
	SxltVCCSPSFOtBka+kDNVZRVKOUemOx9xEQPZhpAfA9DL49q6cC4LmH6q8+0y
X-Gm-Gg: ASbGncsO0xXf3W8RFumUXBj+dGtiisUnKHPyOEXHpPHBpk+OnfH2TTdyKDhg0TMuhNN
	0/qjtk+6rwAE3AzjHuhEiBtN1r57luvyNuMGJZtu09nyPwdDnetGXFFOTKMtAHsp/eaYeI66Ojk
	0XYbO5gkmuPC0dKfMJ740MGujBYMAYmwiuZNJ9p9jNnMH710lx2Xu0P6awh/nkXgUNUKMtnnooT
	CcVRHzVo9YzIFRedQWNC73tp+odsDqi+RZ6XgtfttMka4iWB73qhx5evogpRVxg3HdX/2Dj4pOJ
	Nh6k7eCUweCDPHEMfyGhgG3vOEgudTHpfVQ=
X-Received: by 2002:a05:6214:5f06:b0:6d8:adb8:eb92 with SMTP id 6a1803df08f44-6dd23307518mr184786d6.1.1734634720149;
        Thu, 19 Dec 2024 10:58:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHF0bfXtB/SET13HIUhyCCHUDpUyYn35muJnRdXNK+Wqw/rveCyZHBP0Mj6iB9Ojx/5IaTZsA==
X-Received: by 2002:a05:6214:5f06:b0:6d8:adb8:eb92 with SMTP id 6a1803df08f44-6dd23307518mr184536d6.1.1734634719692;
        Thu, 19 Dec 2024 10:58:39 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0661b3sm94320666b.180.2024.12.19.10.58.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 10:58:39 -0800 (PST)
Message-ID: <15653310-5f73-477c-9ebb-8872dda64310@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 19:58:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: correct gpio-ranges for QCS615
To: Lijuan Gao <quic_lijuang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jingyi Wang <quic_jingyw@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20241219-correct_gpio_ranges-v2-0-19af8588dbd0@quicinc.com>
 <20241219-correct_gpio_ranges-v2-5-19af8588dbd0@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241219-correct_gpio_ranges-v2-5-19af8588dbd0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: P2_Kooji3dy4T47R94yE6FucSPeG_cl1
X-Proofpoint-ORIG-GUID: P2_Kooji3dy4T47R94yE6FucSPeG_cl1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 spamscore=0 suspectscore=0 mlxlogscore=788 mlxscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190150

On 19.12.2024 8:59 AM, Lijuan Gao wrote:
> Correct the gpio-ranges for the QCS615 TLMM pin controller to include
> GPIOs 0-122 and the UFS_RESET pin for primary UFS memory reset.
> 
> Fixes: 8e266654a2fe ("arm64: dts: qcom: add QCS615 platform")
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


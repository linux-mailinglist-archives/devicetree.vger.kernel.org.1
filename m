Return-Path: <devicetree+bounces-239797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A06C695E5
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E67F03626B7
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 12:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AAAA355047;
	Tue, 18 Nov 2025 12:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pb6ntRGz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WVoNXVdN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85A73345CB9
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763468784; cv=none; b=pI9bfuGnMIu+xK280/viCmbnlZmysmeqxwHVRebZfecRvOZlbESR1jdUAaUxq650f3cowrJnhGS8pOgzWtCj0Mt8O+IR1xNs3Avo5GUople+JOZo2EvHwKNdUrBfyAilZu1sPLKWHvT/XSEOBfxNkOaqTGxd/vwnzUBe0fe1GbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763468784; c=relaxed/simple;
	bh=HrGWm7oeoNEd046m+Q1qSWUolEVDXHODQ9Iap81nseU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EAbmb7AS8B9c9ovC43LykiaIUD45qJBjAH4eowI7X7ga4M4eiZAD686sqlgrNloz77IRQ537J4n/Zz+KzYlL94v5X9b6LeS2yd9G99FtUv9L/6xLKMr2btOfHCvtR6xVG8zgr3U/pGIAtQgGwGt0eJpxQia1spmq91NeDCskku4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pb6ntRGz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WVoNXVdN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6fbDp2343506
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:26:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1RzHfJxK941Lte2QLyQF83Qyl/mWY9DXFB/1pNq8fgM=; b=pb6ntRGzpTwbf1Zf
	2gSk9IUpzqIlQf9kPXniWWDZ33IQdMT8F9QkE57FVQJLbR+SUGOiUxacY2vAYVvc
	tAaYVJxvR8iVPWuQqCvc1OMcl3p1x88HVjo2yWMLsljUpR/yuidduarYuRMsBxhh
	GTwWgmJ1PVjcwMnWAyATrgRogvDu4NYnsG6jPvBFtBNeEgqrRMWVukXoUhakiUI3
	DdJwooBBbQjDFNbnOqOAJofByboA65Khea9QUQwkt0oAc/4pOdrYjSTY2sTVDXqR
	1sYv/JEJuc2Hx+XHxy2aUGYF9nrfI05doeurYh1lNby+FXzF6OBU3O/zAsMBbV7x
	yCAQEg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agkrn107x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:26:21 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edde056714so6774241cf.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763468781; x=1764073581; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1RzHfJxK941Lte2QLyQF83Qyl/mWY9DXFB/1pNq8fgM=;
        b=WVoNXVdN6ZthVdEMpvSDTezIXTu0lt0YAfgOhwbprirTycvasx/CpOKSAsEOUDGyA+
         mJPOBD0H+MK5rMTBs234NLwRtpZ7yE6ma8IkkYqG7EpCcT4t7ngtOcnPM8PsQNpgFZGk
         uHM3ZRdQzKNrmTICPT0iF0Pzrjp/fAQHd8ifqMTkycA7/zRzSNJFqWwjltUvZCiXpXlO
         wLr/0UYwVUkpmu9tiPB2Cl7PCSe56KeAUjhY0aQjfTw+x9OyTCy/WwF2pBgv0umlptjv
         cOw0DvYrrrkL04ZZLzpimXEk94pyBNxql+9lMv6KAwm/X3NGJ3WER4kJh3Ho88YsSDJ6
         a3mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763468781; x=1764073581;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1RzHfJxK941Lte2QLyQF83Qyl/mWY9DXFB/1pNq8fgM=;
        b=WOFxkw/BynADgDmoXfa/UI5ctreg3xBu2aR3o5qA0vipODi6jUgO79LCS9TagVIF3/
         DlX3Zpi2/zncl5Ym4KuGGg142b5h651KyANwHsJVWL0QfUIMbrtX9MvFKuTzyOxljalW
         WWxKBzwc3pb1Tp8Bl0MWQSc8QgRbU1Sy7B1sl2Y3pSTZfH8gHoJfUe1pWwl0LXdujQFF
         RQyU+Kir6xkfmwpOsdnLvYdWCg5TZg8LP2vGTj5mL5z3OFCmfVgj6x+jaJeMbQ/hPEBz
         N9LjL9Qj8WSbC/AjxL5O2PoIIRK67WReBjlPltd0IDBPchnm3iivelaXx0GgwV5xsCio
         Awdg==
X-Forwarded-Encrypted: i=1; AJvYcCVxRW3to80UNqX2G6qoOmldar/GOY8hnlRofLOQSVWXapTHf/Wpappv7cdYSi7smtcKHWcjfNzyvr2+@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ+85wjM1KViUGja78CXtrgQEhWPZuZ91JyyEf9T4cOOzqVwyJ
	OnmsflnJJ3BtdkYnhVx+YDr2VWcrYoppr09IyfckzkRqU7+mrbAaQAA2GO671lI9xNJl04EYEQf
	8tcgthg6Xa9mU56n8OZR4TunadOfqoFKJpLIQIDD1eMntW/DJGltgivXDPtBK82+y
X-Gm-Gg: ASbGnctaN06OnS0YeyNRjjc5amiSJnz4vHn+fzWl2HKaDHs6amj9si5aFUsiVrakUFn
	Rzob/8T97R//iIIzbzN0OKXjHrSyfPQvNTQMGp8w3Wj0209BP30hQ6lUGPJJJY/PIG2NXXR9VzF
	ad/92zZeA+fav3QcWKlVyf92H/uxDTz4NWw+wcUD97QNnS6jWu8iyEwAzT5CXAo6ps47FUAmVU7
	ZpxwSiBmd1rnHzk3K+h4BWRSrNcEbwIbg3bKHticS9xTM8Biu6j8Q2YH8Th4QVJfLgYed8g/JHK
	lR6UnA9SgyRmVU1lvi2asq2LhMT7DJzR9q3jx1jVLZxzV2C025KBeucPkusd+aVLYmGfXLolCic
	TwDzs0qn4HO8zP8mIx6qmItdN1SAsRCZKc5Pqmcty2uhoP6pcKz0KXHrdAAexbVdsobI=
X-Received: by 2002:a05:622a:311:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4ee329aeed8mr18312471cf.4.1763468780814;
        Tue, 18 Nov 2025 04:26:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGPAlnJ39MpBP0f/ehEDPeRAXxIz5YDdo+oVlVFc3XOfIpWDtF2PNC43h144DUacSA6EJL52w==
X-Received: by 2002:a05:622a:311:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4ee329aeed8mr18312211cf.4.1763468780306;
        Tue, 18 Nov 2025 04:26:20 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fb12c87sm1327055666b.31.2025.11.18.04.26.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 04:26:19 -0800 (PST)
Message-ID: <5c1948b7-aa3b-4c60-acf7-64a138450d57@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 13:26:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC] arm64: dts: qcom: sdm845: add framebuffer reserved
 memory
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Casey Connolly <casey.connolly@linaro.org>
References: <20251117-commonize-framebuffer-v1-1-e4c099b383c9@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251117-commonize-framebuffer-v1-1-e4c099b383c9@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Gf3J6nVi7zMimX5T9N4Jz5rwRhAPzJD0
X-Proofpoint-ORIG-GUID: Gf3J6nVi7zMimX5T9N4Jz5rwRhAPzJD0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA5OSBTYWx0ZWRfX37KyKsm6F/mS
 sCTmxbLlU79RIStBImLy0eIfiJ4gPBhlbL74pwG06FHoNNOmvLb3Rpr2Psupk8JN1mUpIFfRkMY
 B+8HDeJhfY2i/bR57rL89cMJVLakscDgktXfkJIYlpo4G/42l1EF2Q98Tzj4syuJ6EC94jKrEjM
 sGOWkM039m/P6/V3k8Jcbl3PidiqUzgCuAWZMri+kcT3j1LfuqsEt4Y/taNy8XCHT8FFTwNJO+B
 HrqzQHyqMA96UE26xsjKrGcyc8NinhyLk8kDJaE4F9nCjrKRqUdEdkjCJ3wRDeDGaG7PsyC4hUc
 QPRC91Xq2365xRb2a6ufFRjc96pGwSSHDMB+2zzu7AAORWM3n5i4sNo7Tlm5Kpj2O+r0mqC3+9F
 7oVEwOPlf9tQJTwxjrgMiCpLM+j41Q==
X-Authority-Analysis: v=2.4 cv=L+kQguT8 c=1 sm=1 tr=0 ts=691c65ed cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=bYlG0dqZ5eHFlp2z8s0A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 adultscore=0 spamscore=0 phishscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180099

On 11/17/25 1:27 PM, David Heidelberg via B4 Relay wrote:
> From: Casey Connolly <casey.connolly@linaro.org>
> 
> Stick it with the other default reserved regions, all sdm845 devices
> use this address except for cheza.
> 
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> What do you think about this proposed change?
> 
> I assume QCOM recommends or by default use the default memory region,
> but as can be seen on cheza or sdm850, it seems that vendor can customize
> the region, thus it's not guranteed to have it always on the same address.
> 
> There are two approaches I see:
> 1. keep as is defined in each device-tree frambuffer node
> 2. commonize frambuffer node to sdm845.dtsi and in case of exception
>    remove the node and definite it in device-tree.

Generally this carveout is useful only if you use the bootloader-
initiated framebuffer. Post that, drm/msm allocates its own

Konrad


Return-Path: <devicetree+bounces-223864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFA7BBE676
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 16:52:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BA64C4E2338
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 14:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A9BA2D6E4F;
	Mon,  6 Oct 2025 14:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gZH/dAeA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282CB2D662D
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 14:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759762321; cv=none; b=ReIBe+t20i88cT/QtnOcQEBA0g0RJn5Lp4bxMy4Du5CGX9VszJluqCoB9A5xFm+qa8p2hg2oMy3hlnauMrdAS4K7QCIBMf1sQpuDPXhLZ1sCRBugdnIFQHJBn+0ctiiT0LKOeQwGK64SRXSCbRBTBJ+wBzL7AaYgO1U33dPkO9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759762321; c=relaxed/simple;
	bh=10PEtw6twoEMwTGl0F8JEVM35Pm4DuZVOVadFVAmEhE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qh8AkzEbR1pwITiPsmAhhcAImsVHJGZsC6jXW26K0qIDH2L0nXUAKBv0IppV2wQG3ymx9atXL3qYGnA8vzikvkknZ4cGSbd3Y8rUzV1d9/e+x2c/qmJMzMNc6bN8AquQHwyUosNRJXJz/8QWjcoyoBaOvYw/JQyyYydN0/opjuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gZH/dAeA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596EmAOI017282
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 14:51:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uykABRp9hc8kRbSBpNRtLJa1EeJ+2rYcJ3127irL/TA=; b=gZH/dAeAjED6Djdw
	l2qx377PkuBGVZiofC9iJ1qxudZMCcOp7IH2VV7sJjAQ8KIcXHChf4cukIHDXK33
	MhJyXCjS4F9Xy9aEMukTffYsbc6KadkyJ3TKrDohhJfFyJ6D89DSVIarjO5D/Vfw
	GnVXkemJ+22pRDFPjKnZEL8fALTgx31mjK21z/5JJA6FItTRPp5f9EYxKQ5d3gHE
	/GESbJ+6AYpak1NZKFiuWL/UlhOXM5nMAU7RfkTtOtzFPgBmQCLQpgrLhNeawmFR
	md1hgwKbG1yGqIjeCEUw7QhcgFLuExUn3zszvpRHYjru8olWjh10HKdK88T1hEDy
	9w1lXw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jthpv9kp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 14:51:59 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7958a07a5fdso17835946d6.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 07:51:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759762318; x=1760367118;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uykABRp9hc8kRbSBpNRtLJa1EeJ+2rYcJ3127irL/TA=;
        b=APIuc2nssN2aU+kbm7taDcajtRM2XOVIOz8htBHUfJK/NNSyHD7PtbT5sg3kHqSDBm
         Kgk5m2wjZV4faoIdjIM1qeMh4cxg7CaAZiR9SmDvzgIKg8TMyKk+F/jjWVzBNiPZgHxt
         5mj7ArtFqMYoVQxk2QjNs7+bwE8Z5jfsurgLhWQCSbwb+SUbLM9z6wikCo9iHTKxrHXk
         iYFvijX1ZyJxvlCVGupf0ZQp2FZeQ6TC3hLfSrhiZvMsuzuA6XMq0cB5NBuqFB/nVDCT
         y4cBMR5CbmC9Xnmv8vhChUtqw0IwKFeWiLWH77gAD1xYewzD3q6uX9SXAiRQ6P7yExIj
         z/JA==
X-Forwarded-Encrypted: i=1; AJvYcCUYvb5YSTVibSn3G9xJobp6LYXplWXj3dgAygoeL0iCrVgclfkoSNds4SIOyTrW+q3sxUi8z4gSJYq9@vger.kernel.org
X-Gm-Message-State: AOJu0YyIFjWf1SdRz9ugSJRCg/PVr+nVOquKZ+xVpZXIPX2xuF9vxLHE
	pQSvTFBQh8p0zGEjqoqrQqXPaxo3VVbqcoiNcPgJb06GzOjjNpvdxcoKW0fZFaOjdFbY+iJKaHq
	8P7tQVoU+AIDmwo5uyuHiDVOcHmXDH1qMbsbJxB3IFDmPGC6+pV+g5rnbQrw4GoGu
X-Gm-Gg: ASbGncsseE1HWwoJIpVo+jev2R00L93yd/aYTuupHoPzYAgty2zV2zDtKpKWR5d9FeB
	TjOHrzD1MnM2+aHumYjPVtVMVLdvKFrdTPBYga7x+uBFg9eKC1tBjecerBoaH2H4C7HHXtrg/o4
	PMhaQN7Et/ukkVcT8i7MjVb/zSJL7xDnM9Gj32mU58eIMTQyDhlCnXChFeR8qNGHDX+A5JRvXJu
	zdwK0UViUeztWlWwKD/CFvhmJxej3kG7eP5ih4OguS4cRnmXZa3Vo+5Y6rDTUxrYS8Bdbhnxj0G
	DYRTL+0OMhmcR+DLxPxwUqtMTVvdb+JGWQ8BYAex2ACOcv/hl2xGs09mK/dhDIhpRexBNyRUv8h
	Nj0+iznJce1/lWHFzpCO8V4TwprI=
X-Received: by 2002:ac8:7f08:0:b0:4db:1bd:c21c with SMTP id d75a77b69052e-4e576ac746amr103555491cf.12.1759762317651;
        Mon, 06 Oct 2025 07:51:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNQFQNaOw+YDqi93+F/z85X3qTNZ4A1Fy6bJXByTp8nf40QE5W21EnEc61g5O03NMlZ9vJFw==
X-Received: by 2002:ac8:7f08:0:b0:4db:1bd:c21c with SMTP id d75a77b69052e-4e576ac746amr103555261cf.12.1759762317030;
        Mon, 06 Oct 2025 07:51:57 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4c855585d1sm441287466b.67.2025.10.06.07.51.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 07:51:56 -0700 (PDT)
Message-ID: <9d503228-2a54-40f3-ad6d-500144e14b2a@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 16:51:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-oneplus: Correct gpio used for
 slider
To: David Heidelberg <david@ixit.cz>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Gergo Koteles <soyer@irl.hu>
References: <20250927-slider-correct-v1-1-fb8cc7fdcedf@ixit.cz>
 <babe2e5e-87a4-4871-a836-ddbd9cc8d868@oss.qualcomm.com>
 <8a21a653-4dcf-4418-9bb7-76e940ddcab2@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8a21a653-4dcf-4418-9bb7-76e940ddcab2@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 9ITZJ8bjMGvJh1_8z7E5Gxn0OeizpbMX
X-Authority-Analysis: v=2.4 cv=N5gk1m9B c=1 sm=1 tr=0 ts=68e3d78f cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=L94DSdHg0uYc9iSAjtcA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNiBTYWx0ZWRfX9iDA4r3/l3Ii
 vkiyPEP6dQIlomqMEHhMHgqlgqIV0z7i8ztWI9BZ2fCCNUyUutRyhVcdKapqKkg7I08E3i3G/Fm
 HhDjbOVi5wzH5GWCCOykIFvVWNy8/sUBpAcw79ZMioyfnZvzfGk6C+AF6aOaMKjF7GV8ktldaQJ
 dtgg61LjlQEaewfND5taVH7TZIB6kPBGf9qwkHZGSAgcAEosOLQHmlHNpCL9WT96hgTN+vUjEyH
 O59nzz20eNlUE23NfYRZryw+77N5VLW2+jh/IYXnjQWV4sQk+LoS5q6mbeSoeLZrjsLpzv+lLre
 w8CyvmHWfUSF/UJ7/33sOfRJS3I7KRkd8is1NDN7pkG0GJG4yO42FoeXXJIgkWXwuF66g00Xpv5
 EcneWWfhwfjBu3SAnNVS/h2T5DuDjA==
X-Proofpoint-ORIG-GUID: 9ITZJ8bjMGvJh1_8z7E5Gxn0OeizpbMX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 clxscore=1015 suspectscore=0 adultscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040016

On 10/6/25 4:32 PM, David Heidelberg wrote:
> On 06/10/2025 16:15, Konrad Dybcio wrote:
>> On 9/27/25 1:20 PM, David Heidelberg via B4 Relay wrote:
>>> From: Gergo Koteles <soyer@irl.hu>
>>>
>>> The previous GPIO numbers were wrong. Update them to the correct
>>> ones and fix the label.
>>>
>>> Fixes: 288ef8a42612 ("arm64: dts: sdm845: add oneplus6/6t devices")
>>> Signed-off-by: Gergo Koteles <soyer@irl.hu>
>>> Signed-off-by: David Heidelberg <david@ixit.cz>
>>> ---
>>
>> This is currently unused, can you bundle (or squash?) this with the
>> "add slider" series instead?
> 
> The seriess didn't received any attention or reviews, so I hoped in least fixing the upstream device-tree before someone will have time to look at the whole.
> 
> Would you recommend sending the "Add support for sound profile switching and leverage for OnePlus 6 slider" again, just with this small split improvement now?

It's been a good 2 months, so it wouldn't hurt.. perhaps wait
one more week for -rc1 to come out, in case anyone you depend on
is *that* pedantic..

Konrad


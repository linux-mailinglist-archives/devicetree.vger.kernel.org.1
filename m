Return-Path: <devicetree+bounces-181330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 54996AC6EA4
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 19:00:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AED643ABB1B
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 16:59:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0282B28DF03;
	Wed, 28 May 2025 16:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i9A7msKs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F8428C869
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 16:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748451560; cv=none; b=hrTshiKsUkc+RaX7Tek0o0MdNewBCGlfonH0+7m+3Yka6KuwFhTwpq69vVxlo5NqnrxScPNi84vqyW9VOpnCxhLUf07ssG8s1GCjHwTq10my3nxmDyPNv5hjtot7KaNC2BFAE+jqATgIejVZmgj227kNAQATvVBMbiR9car7waE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748451560; c=relaxed/simple;
	bh=bbz83AfdKHYzzOPGEeednRwLoLYcbCnR8BtMwWBiaqQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c9sg+JIynVfMREhHXS3QOFvKQpDkanwmwlg0q2kT+BxZlP4Y5irZqm1mU5Yzd8wZusAB1Q3tzEPWD4Nb6vBONtDE7veHsobTIWYBbTCBPWy88ZAtffv+XtJtw66FsMSnZA1GGfJKdQ7U+2KMwq5YF8A+8ClxvBUiVGiNeXvpbKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i9A7msKs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S9GXs2018926
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 16:59:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OZ/GIA0WSr9eJOkPJDxd+ZEymhaMmc/jbzotcFP/Tp0=; b=i9A7msKs9T4m7sQ7
	9TD0U0CZGjMVxxWKsjjZmpIQsmp7adNbwlUWZXuzAZKzX5KDDt1EoS4kEuZhEYr/
	IiAeunODH+51QL6PYly/6Y1PXn5EtynYXcqJWvcXzgfPa3TVHq8eFVNcltF/FXdO
	TpitkVRaBXjkrp8FcuuaQDqCYGOmHvdNBX33NKDPpctYR5KWk64UG/6Njg1fmw2Y
	0KzcgDVF2XdtNG4pLKnpDb7TSUfM6QFM1Pr+lpV4iyRepkMNFoVvgIyVImeWqCZL
	rW+Jkzhwvdif3WtjI3WJnY9WIwAlVRtKvESEtEz66/fHq6y5wkL4NPDdc2FHSpak
	am3X3Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46vmgcyd2f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 16:59:18 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-476783cbdb8so8353321cf.1
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 09:59:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748451557; x=1749056357;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OZ/GIA0WSr9eJOkPJDxd+ZEymhaMmc/jbzotcFP/Tp0=;
        b=EsmdcifyGIHY+vCGJMfoaDIJsD1M31AVZuPwTYoI7Sz3gdcJI7WTWIx1R337MYM4UY
         C0Cl9PKLhszHiB5BkhdaUXTcpBH8FIHW5A/0UdNWUBeZ30ADIEY/E/GflUFSbaLTJ62D
         D1DKx8kIrwgLzotjn48HZwB2opOBycMG9nDRo5hdxcKdWSTdxiJTkhcmdWC9JB4CeuA2
         c1NR8tZ3AEyjBYue1IeemE4c9Q87qxGuKQ/uCaTyghv456GOzlC/DN7/O3KQEzFbtodg
         UyQgNoYOpV4qtKu6l/1T+K9nXDv0mupC3jGKqOyCuiNpWaK2ujv+rMlXHl3n5evBiF1x
         XBCw==
X-Forwarded-Encrypted: i=1; AJvYcCXWmSnuFU0Uhooq7NbgnYhHvy1N66aWrjCvo3pXeuacKwLxZldzxF1nkqPBnCnOo9N0wMignH2RmPtv@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9m97/SaZf8wp3y4Dol1JrgTcrh1TITo/5nBminmcgdAzYOT0P
	MaobF38pvzhHrHYp3QdjnK3OHURnstybo/xp1U59UKCUW4qhLJsneqsLzyVC9l4toDxUeNSWOaZ
	EwH9nz9gU8+aPURRr9bYKWQPUbwDrLf7xwm4YypTWKqdeA2HFCRGa4Z7VRG1A9KCA
X-Gm-Gg: ASbGncvLRCAOid0Vg4mygSpoEkY/nL2tlzb6sWgMwChWWkbDEnZ7Tbhle3sLH8sfYRx
	M2n+615sig9Mz2wkguPn4BTvmMQVrM9crJMw4Q/kwqxN2qLmJb/0iKKoET3XgFA108OFrcZmXC/
	yT45NVwDfJBvKnGqs3okQIwyz9m5u3Lm0DcEhynFq1tR+L3phJ+gfK4FqNt6sfSm5V3aNUX3YF8
	g8v+uNuLHlqUHnlG0Iujt47pUO7eqPXLCuI3oL78KuYxE/yONQesit+nniLdAtd37LH431Yhn6y
	L2+O1oKKzdaeXsE+u68q4VtAv3eVfrE0Z/62TIyO7dtKTgbFMhBNlEhMnEYtF7nHnA==
X-Received: by 2002:a05:620a:40cd:b0:7c7:5384:fa53 with SMTP id af79cd13be357-7ceecbf4af7mr968130585a.6.1748451557383;
        Wed, 28 May 2025 09:59:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAL+YqMQeWpvXAQsu9NOtyQO1XUv8gfuWwheXdpWcfFgbiPN1ZK8NrIvSTpLX2pyw7cfpnQw==
X-Received: by 2002:a05:620a:40cd:b0:7c7:5384:fa53 with SMTP id af79cd13be357-7ceecbf4af7mr968128385a.6.1748451556936;
        Wed, 28 May 2025 09:59:16 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8a1b29351sm136692966b.98.2025.05.28.09.59.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 May 2025 09:59:16 -0700 (PDT)
Message-ID: <a669eb4a-8e4d-4bdf-8bf0-7699d9a99e63@oss.qualcomm.com>
Date: Wed, 28 May 2025 18:59:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: Add Lenovo ThinkBook 16 G7 QOY
 device tree
To: Rob Clark <robdclark@gmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>,
        linux-usb@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20250524-tb16-dt-v4-0-2c1e6018d3f0@oldschoolsolutions.biz>
 <20250524-tb16-dt-v4-5-2c1e6018d3f0@oldschoolsolutions.biz>
 <g7vlyqma6ow6tdsaqt2rfwvblxqwbqlwmoueio7i4vqvjy76kw@5bz4g33pq4t7>
 <CAMcHhXoYkQru_0n5siMGGkTcHu8yWRZWfT4ByiD8D0ieZHF+wQ@mail.gmail.com>
 <vwoixgdyjjzcjlv4muwrzv7wztnqyidtj7ghacgkjg6hgkkyl7@ji53bhiltaef>
 <CAMcHhXqDFuo+x99KOK0pQFj-FyTdQoZS_JvehNE2AC_JSoQ2gQ@mail.gmail.com>
 <rvyfkow43atquc64p6slck6lpfsot67v47ngvfnuhxqo222h6k@kdvbsmf3fwsr>
 <CAF6AEGvr_foMVwaE_VSVWLT50cbGi8i3UGwo2e=rORD-1JmTmA@mail.gmail.com>
 <152f5150-30b0-400c-9816-13e4710a4156@oss.qualcomm.com>
 <kbmqr7gjkd72hgorbhbwb7ttvmecfbb6pg72st7zwt5ogxju6p@itycxk6vriy5>
 <CAF6AEGsTtEA=So1CDhvg8H5+Z-RJ9OnhgSzDoa+zkWSPO3cvnA@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAF6AEGsTtEA=So1CDhvg8H5+Z-RJ9OnhgSzDoa+zkWSPO3cvnA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Jb0fQifyfTsysQxWAm3EDgcHMLWBzwXC
X-Proofpoint-GUID: Jb0fQifyfTsysQxWAm3EDgcHMLWBzwXC
X-Authority-Analysis: v=2.4 cv=Ws4rMcfv c=1 sm=1 tr=0 ts=683740e6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=fSamKcmLYGn2YG_ZD4IA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDE0NyBTYWx0ZWRfX27zFHvFdl1zd
 sRXABkBp1DdDCVLMwQQp4zrewxlhjrUtSYqvIz6gwf+T6yA+eQatTwSStVM8qa7Q1ktOOGY1Ldb
 LgLzr+I8c+3KmelfL8speLl6NY5EHAmGuhppgnW8llEpOyJb52W/KRCuhYU6LPjVCmnuWTO3ZXJ
 iwpim636jenJKY8Ta8m00KUM/+kUn2VgKRHjlF7aDd/x6MYoEVMZxuOfzsNpVOaw2rUXyCvrd6n
 cqUvZbi69kMy514+telucuuFjog8XOZKF3AIjND0S3oeTKN4ofpgbfGoah7TzYRnX06my7RTq+k
 HkoW0HUQ8XMuAL8GYlpGizH0TBpUevfgkIplzyf/JFnAIhqTmbOBxofSrcs/C16RgREfCs8Bg9r
 2C8z8WOtsezwIyXumkHj0Tt/4z7shlSqP8gqaRJkfBOjH5QhKWfi1ExYz78KgzJr2sCx/t7z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_08,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 mlxlogscore=999 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505280147

On 5/28/25 6:50 PM, Rob Clark wrote:
> On Tue, May 27, 2025 at 11:18 AM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>
>> On Tue, May 27, 2025 at 12:55:06PM +0200, Konrad Dybcio wrote:
>>> On 5/26/25 5:28 PM, Rob Clark wrote:
>>>> On Mon, May 26, 2025 at 1:36 AM Dmitry Baryshkov
>>>> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>>>>
>>>>> On Sun, May 25, 2025 at 09:43:36PM +0200, Aleksandrs Vinarskis wrote:
>>>>>> On Sun, 25 May 2025 at 15:33, Dmitry Baryshkov
>>>>>> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>>>>>>
>>>
>>> [...]
>>>
>>>>> Yes, please. Don't set okay status for the GPU until it gets enabled.
>>>>
>>>> Drive-by: Shouldn't the dtb describe the hw and not the state of the
>>>> linux kernel's support for the hw?  Ie. if bad things happen if we
>>>> describe hw which is missing driver support, shouldn't we fix that in
>>>> the driver.
>>>>
>>>> (In the case of the GPU there is the slight wrinkle that we don't have
>>>> a gpu-id yet so there is no compatible in the dtb yet.)
>>>
>>> My two cents are that it's okay to enable it, at least in this case..
>>
>> That would most likely make display unavailable as DPU driver uses GPU
>> as one of the components.
> 
> Hmm, perhaps we should allow the gpu to probe, but just fail to create
> priv->gpu, similarly to how we handle missing firmware?

Yes, let's stop killing the entire combo-stack in all scenarios..

Konrad


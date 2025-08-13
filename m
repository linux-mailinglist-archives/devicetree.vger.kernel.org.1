Return-Path: <devicetree+bounces-204235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BFBB24925
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 14:07:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E1F2627850
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 12:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51F4D2FE585;
	Wed, 13 Aug 2025 12:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oK7BQKZC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BD927602D
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 12:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755086842; cv=none; b=ciIxQdlTYfOhhDbI6/mLGXllffezd7bQw7ZC7LIrKdGBfswlSeaqGF1+S06zHRxolY6FcxL7tH0Sb9bnBP5XvZ4XVo7GaS3KaZKv+fqlYEQ3GAWtN5wI7Xd4VZCwsCpFnA4A69Vld7UTIAbRIfxNXSqTOejzA8WIl95ENmjC5Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755086842; c=relaxed/simple;
	bh=9qGcsLi3E1UFO4Ta3jTChcqEtx0TcY4Yl7Ij76foFms=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rttZkaecldOvCOegBzyP+Z56fk0gQv52N1/MRzpezPc0lbHLlHJPmbK/e7Z/nEn074VJfHQ9eEbvAI4JIzXrXAAWPZy6B42mjaL/HXCPU0PG7o/01EQbGEJcY1KBT1RD70vNiMmSFR6R6NTPrysJ6mATsQrLOnT0yyNU6llbxmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oK7BQKZC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DBLjkl027100
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 12:07:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cpMBrmFukhU4y6bCKMTKHpHZgNaPXxJRJsX95Y0wvlM=; b=oK7BQKZCKX+/NDhf
	Hb1HOr8MuTn1j7LRuc2YfW+CSOtw/441t6C9VDYNYRpDAONHxCLalD0V2LDM8KY7
	X3MBSEM2Vz3+YDZ1eNnTsFH5H4KTW/UZI0e4aU2kslBnFTUKkQszKbXkg07OW5+N
	u7o7ss87Kv51zhOsuNse5CNFUhcLa9XCYkliJw/I+ML4rSQiy/jLnJN34nfxKB3v
	q6QYKwZb8ab7ASLcKj4a1WH34yLsJTRnnWTxW5VWjwz7JoLdaSGeZqetfIcnU1YR
	E1QdW4QTVnDoY6obToK5RpMGp2ZJ2tsNKR2plS8608R9L/v9zQHoc8tPDvZyB1su
	O/WmjA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffhjqgyc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 12:07:19 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b0dfcd82ebso6501041cf.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 05:07:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755086839; x=1755691639;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cpMBrmFukhU4y6bCKMTKHpHZgNaPXxJRJsX95Y0wvlM=;
        b=JGXuUifdIjxmqga2NDMBMQjgAuJuoqUu7B4D/SV19M+JTowhcrz/J85cr1H6BavL9g
         MINK5eyo+5JAiAF2VwI/I+B02XR3qga2jP9qORxZXqfV2/lHZFLdrRuIgtWKelKN8hUi
         K+eBuQZ45XTvJl9xJpDHX9mJKz0d+dMwRpuev7jH4BC+AiDhsCsAL8B1MbbzcsNbnsF/
         cGqst7NYOUXx7EHuRvflgEgTAFoUR738wmiHtmmFVBfjW7dpgUe2jLL3SDMvhYaJ+LRr
         OYNCdtm2CKBGpmQ7U3h8A+7EqXYeIZ19s9XLpljovVtGJBmvevxlqICKT5zC56yzjvsM
         E4tA==
X-Forwarded-Encrypted: i=1; AJvYcCUZq9+qKEkochcIvLTQzwG4E0VqT+Ik9QMT8CsZBBiwUM8XOVBEbDvtY+550lSpEUswXkWjf0s26Dr6@vger.kernel.org
X-Gm-Message-State: AOJu0YwyvO9xwk0JNlNGKttGaWRkcv+ALq7OxmqnUzYRrEGUuvizWhhM
	VeTt0VBoZftX0d3P8kWK7CinOEtznWdWQRjDEz6IXj3CAAop2ouE4dgDpGXmAYKxdFjq0Pkig1E
	B+hg9c5dKkI47vwD1l8H/56DO4gBPh/xkPoXPkI+sHUVPIZpv7Z6I+Wtex/ncmDuO
X-Gm-Gg: ASbGncuPOnmBedTMtzgxB/9OlbpvcT/cwsKB/JvZLl2DKv8KpA3FCbLFYml7DGDp4s6
	6l/Z2SJdsnhfxm32JTghyIJCTIMlSWaR9+MRPTZp/DKMbiOd8dN0L6zUHaf74uRVhFWl/LWGjNu
	QetocMumUAkcCzwPIJWffjtbmzu38NcJNmqlX3Iw98fD/HDrRwXvxdE7TeBuABPRyeH0gb7Fvrm
	jKN5E0dqOK6G6OSL1VJLHdqSfhPP2aY3tt8vbAWbFLUjwg2KMOnJoO8nwDNW8n02rfDSYIFEYef
	5HLzQq8sf7VM8aN4KUWv3J4Y139H8wY4OL3BytSypWI+mmofXzL/USj47bvDZZzNjOjIq/a7N1M
	YhfkH+q0j/9Cy5aR8kQ==
X-Received: by 2002:a05:622a:11c9:b0:4a5:aaeb:dce2 with SMTP id d75a77b69052e-4b0fc7bd280mr17927411cf.10.1755086838378;
        Wed, 13 Aug 2025 05:07:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZpdI3hsMO67WfmjVMZeVxcjGlR3cg/Z3J/5n/B10NtxW+duZ0gzDzWCXUZ//zNILeSnGbFw==
X-Received: by 2002:a05:622a:11c9:b0:4a5:aaeb:dce2 with SMTP id d75a77b69052e-4b0fc7bd280mr17927091cf.10.1755086837804;
        Wed, 13 Aug 2025 05:07:17 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6187d96a320sm385968a12.4.2025.08.13.05.07.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 05:07:17 -0700 (PDT)
Message-ID: <f2f13082-20d6-4f22-8dfb-f11b01cd6706@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 14:07:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 4/4] arm64: dts: qcom: sm8550: Remove SDR104/SDR50
 broken capabilities
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Sarthak Garg <quic_sartgarg@quicinc.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_cang@quicinc.com, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com
References: <20250801084518.2259767-1-quic_sartgarg@quicinc.com>
 <20250801084518.2259767-5-quic_sartgarg@quicinc.com>
 <69f2807c-9a28-4b31-97cc-2756f0ab9fd4@kernel.org>
 <c7e36755-9255-4209-9d53-20077bd1d3ba@quicinc.com>
 <8b023e56-435b-43df-8b15-c562a494e06f@kernel.org>
 <ab5d3811-9fbf-4749-9463-4457fbf50023@quicinc.com>
 <4091c488-996c-4318-82ad-c054a9ef5a22@oss.qualcomm.com>
 <a93fb5bf-1fd5-4e00-8338-b8608a9ba8fa@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a93fb5bf-1fd5-4e00-8338-b8608a9ba8fa@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NCBTYWx0ZWRfX/oCEo1/t3PSE
 eYVnfqW3Tsw4yfTlcyYk17kAm13bAjMZ6kqhLGBwfihOksmv3FJCzWRdB4NESne13Aee63ztEll
 mBsYoNr7tiwwOhGIY15k8k3C2fBF8jH/0hKN2ytFwnRvQK3Jp5/pHKTZha8UHLjMcsGk3MHNll7
 HJCYkfMjDHhIsIdLa2tl0eN6iSGl2GzX2JGcDQgQRvl5wAoSMhId6uB2kHuSGGYv3jaTcdB2VaZ
 LywohxNcneT4MWchhdeMnqQfJREv2ElHo4qDCqOD3DqksISZzGMScKAERRFK5q2tOle86FEfplb
 oZvdQ/v7d+DYB0vhLBLmuK10SQOV2PDRHixZagHE2nFcyeolIaqspZsGNvFYd10PBle7vOwbn4i
 ySm2RLQn
X-Proofpoint-GUID: DpVPfXA3PQABUI-qc6BNuPIHKly5iKOQ
X-Authority-Analysis: v=2.4 cv=TJFFS0la c=1 sm=1 tr=0 ts=689c7ff7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=RWzb36qre9bUkXLxNJYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: DpVPfXA3PQABUI-qc6BNuPIHKly5iKOQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 clxscore=1015 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110074

On 8/13/25 1:56 PM, Krzysztof Kozlowski wrote:
> On 13/08/2025 13:21, Konrad Dybcio wrote:
>> On 8/13/25 1:08 PM, Sarthak Garg wrote:
>>>
>>>
>>> On 8/5/2025 2:55 PM, Krzysztof Kozlowski wrote:
>>>> On 05/08/2025 11:19, Sarthak Garg wrote:
>>>>>
>>>>>
>>>>> On 8/1/2025 2:32 PM, Krzysztof Kozlowski wrote:
>>>>>> On 01/08/2025 10:45, Sarthak Garg wrote:
>>>>>>> The kernel now handles level shifter limitations affecting SD card
>>>>>>> modes, making it unnecessary to explicitly disable SDR104 and SDR50
>>>>>>> capabilities in the device tree.
>>>>>>>
>>>>>>> However, due to board-specific hardware constraints particularly related
>>>>>>> to level shifter in this case the maximum frequency for SD High-Speed
>>>>>>> (HS) mode must be limited to 37.5 MHz to ensure reliable operation of SD
>>>>>>> card in HS mode. This is achieved using the max-sd-hs-frequency property
>>>>>>> in the board DTS.
>>>>>>>
>>>>>>> Signed-off-by: Sarthak Garg <quic_sartgarg@quicinc.com>
>>>>>>> ---
>>>>>>>    arch/arm64/boot/dts/qcom/sm8550-hdk.dts                     | 1 +
>>>>>>>    arch/arm64/boot/dts/qcom/sm8550-mtp.dts                     | 1 +
>>>>>>>    arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts | 1 +
>>>>>>>    arch/arm64/boot/dts/qcom/sm8550.dtsi                        | 3 ---
>>>>>>>    4 files changed, 3 insertions(+), 3 deletions(-)
>>>>>>>
>>>>>>
>>>>>> This will break MMC for all of the users and nothing in commit msg or
>>>>>> cover letter explains that or mentions merging strategy.
>>>>>>
>>>>>> Exactly this case is covered by your internal guideline, no? Please read it.
>>>>>>
>>>>>> Best regards,
>>>>>> Krzysztof
>>>>>
>>>>> Just to make sure I’m addressing the right concern — are you primarily
>>>>> worried about the introduction of the max-sd-hs-frequency property in
>>>>> the board DTS files, or about the removal of the sdhci-caps-mask
>>>>> from the common sm8550.dtsi?
>>>>
>>>>
>>>> Apply this patch and test MMC. Does it work? No. Was it working? Yes.
>>>>
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>
>>>
>>> You're absolutely right to raise the concern about potential breakage.
>>> After conducting additional testing across multiple boards, I’ve confirmed that the removal of SDR104/SDR50 broken capabilities does indeed affect V1 SM8550 devices.
>>
>> v1 is a prototype revision, please forget it exists, we most definitely
>> do not support it upstream
> 
> 
> You should double check. SM8450 (not v1!) needed it, so either it was
> copied to SM8550 (v2!) by mistake or was also needed.

I believe that the speed capabilities are indeed restricted on 8550-final
and that's why this patchset exists in the first place

Konrad


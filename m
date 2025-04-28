Return-Path: <devicetree+bounces-171677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 051EBA9FC05
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 23:14:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 138B07A2F30
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 21:13:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB0521E3DD3;
	Mon, 28 Apr 2025 21:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NAr8lVeM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388852701A6
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745874865; cv=none; b=MqeCnZeQOsR7lQFlXcxAKGt46rLmvVNJK1ZTiTDraHkW23eSleh4esU1SedwaafRbEvZxamjdkRX56c7wzHZ6E4eXqHujlXRCEkczQpC+dF68RzRh31W6GGFBGMYXFgMcC1j1YnuMougAychmHNfjcgybP7X5qWCEDq96Jp7byQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745874865; c=relaxed/simple;
	bh=2sZ0l2epjf6MF3DPRfQE0LScLiTss8LpevA2DSjfUJI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NIVZOFkv0+Ei4LeuTZjTdLowH0KEJjF7HKcOqGi9enHLotATrvR5dcdwAXRUx0R70Av9ZXdYyUE5Z6KJsbFMa7Mi0VzqoIuRLI3G7vDCjbkQ/n3mPRYrAAu6U5ZMLNM1Kv8dsnGLF7C5GN5QvxP0j8KwjBrO2vLn2bhEqVMbxwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NAr8lVeM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53SF9urs001261
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:14:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	41b+xfMaRsDIskp9rRi/qfONBM7yClOqcLLJmKg0FHk=; b=NAr8lVeMHAFKELYz
	lpKB2cjyUAw2GTSn6UW5nirmAu3KViAu0+ev4zeLSBxzoYE2chCThdN7Neq7Lngn
	PNFCZ3M6E4GLLhMkYl0vVcsX4foADclJXr7dRn2NiqLEU7HIFFdDHpu0cnt2KgNV
	rGnL8eACYBS0HIUWybrruA3XfQxW6r7tKmfAC/HHOrPn76ke5ueYgxNTIxZeX4yN
	KWssrHBS2ycjT1OfrfVyoTO1nM7v5W2nEKO/+jFOrCk5Uo7d9MFrlc5yqQj//sIX
	535agH9TzPwxQ+o5/2X1v3VuoCSYHqPRGzQr/7p2Lrh2D6PpSd8toIWL6HzRRZzk
	Qh8Bew==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468qq5hj86-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:14:23 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-476a4a83106so6754591cf.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 14:14:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745874862; x=1746479662;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=41b+xfMaRsDIskp9rRi/qfONBM7yClOqcLLJmKg0FHk=;
        b=Ma7ulRNxQhZdh8CI3X4MV8OHh/+O1kCDdPTsK4QyNSY7sFBHQH54PNgugENzDf8gYw
         UL5+rn2o/2HQ+4lLgdvVSvzEIxPGtMvGi8oS81GuPbRYMeckuTNs/p6RNTiwUJ3N632l
         3sin8//f+1qv4VnCnE4i3ID943oHH23viH76pHfp5GN4+XRjRiLXD0vMnjI3u8JOa/Yb
         OKZ2gJ1jNpc1KAcR7f6YSkYUTAj3w1b45VMsa+rxk5fZibtnQbT62KVH7aOjtebO04N9
         WU02O8ulP91mLiU0ESB8GNntwmLeA8ZQH9LMZydXy6+ijII+hQA4mlemieAGwR0L2DYH
         Ds2Q==
X-Forwarded-Encrypted: i=1; AJvYcCU50eDgtdLQXgO5p9Uwp4eBnXcuAD4F8BE3nYJNr7H/vDTEgJZiM55m+E3UBEWkh0wByuPJRAdhS2v3@vger.kernel.org
X-Gm-Message-State: AOJu0YzZfrFABzYlQZpRyFtKIdm2b7KWOX6HdkKUIbFiTX0qfTO8PG9S
	6xiGLqU3MurhZGBs9jJov2IVwxNcXmDWRSPpiARuS/ADMk6NXLdrs/Xq47k0JxiY0H/3/znhnaW
	ta0FaU5d5fc8Y/GMH7mVeMKLiEOo7ExKQJTBOLqWTzllCbueBectqOO3+Wl63
X-Gm-Gg: ASbGnct21TqY9Hnht2/SdyV0HMtdJbQRqCHENlAi2azuYuap59hccZ3MEO/26Cupryo
	jlShOW4SlcitqzhUWtUzdURJuVwwTgH4OaSAR5zgXmi2XGVWf1i/TWqVHT4zZjQgbe+8ZfXNJ6C
	BH7RC7eTHTc1jivN4Y0kJvOo8JNEclagNZElvi/kzKsC+qXj2EBAw08qlkVcCZV4EuC8ajSZM5v
	ZUgzJw5D1ivbM+UYnPFGqiyAh0lCKM1r9Hf2Wx1etAuwNmQ4DuV6yuSWFVVxJiXlP8xE2YpxeK/
	BQJFWcsu8FsLVSvrMjMtWExe6zRbQ3CQJeFne5W//uQgmkGntc2/lv+IsZtOfSSxhw==
X-Received: by 2002:a05:622a:118a:b0:474:f369:8dd4 with SMTP id d75a77b69052e-4801c98432fmr71421771cf.4.1745874861843;
        Mon, 28 Apr 2025 14:14:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjVrwoi/1hN99BLmpA5LGNolwBBr0IyLdtWYTa+BQm9ViRdogKeta990R2IFmjcH1MIGSZfw==
X-Received: by 2002:a05:622a:118a:b0:474:f369:8dd4 with SMTP id d75a77b69052e-4801c98432fmr71421511cf.4.1745874861325;
        Mon, 28 Apr 2025 14:14:21 -0700 (PDT)
Received: from [192.168.65.47] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7016f5acdsm6378559a12.38.2025.04.28.14.14.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 14:14:20 -0700 (PDT)
Message-ID: <d79790e5-52c9-4135-8f3c-af797145fa2d@oss.qualcomm.com>
Date: Mon, 28 Apr 2025 23:14:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8650: add iris DT node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        neil.armstrong@linaro.org
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250424-topic-sm8x50-upstream-iris-8650-dt-v2-1-dd9108bf587f@linaro.org>
 <3498cfda-a738-449d-9d9f-754bbc8125c2@oss.qualcomm.com>
 <db91a526-e2f8-48f8-a071-f3fcc75235be@linaro.org>
 <CAO9ioeWaPKXHgNGPx5q34+RP59PMLD+EVK5fQsN89KC9A1ca-Q@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAO9ioeWaPKXHgNGPx5q34+RP59PMLD+EVK5fQsN89KC9A1ca-Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: _7zNHcQV4XJewxZWSF9GIFcpMJ3VG_mK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI4MDE3MCBTYWx0ZWRfX6qOsanQLIErI ffOWS4C/w5lPDlogLIcceuQHy0tpaKofKbxeoy2DVQ9g25Fu/MXx7AL4q37gA1fKHfvv4NwYHaV YdG5xKDZUMVgnf4dKBTopM3Rx1LjNUzlp1zfWDTdH8SoDejbPEnVrcnFs262bWMBwkOTYfeU6Op
 h6QnAp9ozlHv6MvAWCvObziURoD+SUGPErH1Q2kup+5FIWttRMpYHnD/lnOLql64ObQQh0a9xxv x0i7h0a3WWlI++WCyrIHYx+CvgxRP9XPBTHKSSand9GVZP+g1gl9g5ZyHWE9chX/MzGcBFOTj/+ norP9z9X8FumZH3VRG4Nfgp/fnOM2qZNxgx5JbWZ/EeHzi7SSAad6I+oe6TyfHMEhf8GoJ9MgvY
 +6mhdvPT0e/Nat9DlqjUD/wuyt7pRDdC74/+7p9YrrlPjmcKfLom6HfcU54sKL5Hdi52vyzQ
X-Authority-Analysis: v=2.4 cv=QP1oRhLL c=1 sm=1 tr=0 ts=680fefaf cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=BJ3RCuW7w23lwjs21eMA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: _7zNHcQV4XJewxZWSF9GIFcpMJ3VG_mK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-28_08,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 adultscore=0 mlxscore=0
 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504280170

On 4/28/25 12:48 PM, Dmitry Baryshkov wrote:
> On Mon, 28 Apr 2025 at 11:18, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>
>> Hi,
>>
>> On 25/04/2025 23:49, Konrad Dybcio wrote:
>>> On 4/24/25 6:32 PM, Neil Armstrong wrote:
>>>> Add DT entries for the sm8650 iris decoder.
>>>>
>>>> Since the firmware is required to be signed, only enable
>>>> on Qualcomm development boards where the firmware is
>>>> available.
>>>>
>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>> Changes in v2:
>>>> - removed useless firmware-name
>>>> - Link to v1: https://lore.kernel.org/r/20250418-topic-sm8x50-upstream-iris-8650-dt-v1-1-80a6ae50bf10@linaro.org
>>>> ---
>>>
>>> [...]
>>>
>>>> +            iris: video-codec@aa00000 {
>>>> +                    compatible = "qcom,sm8650-iris";
>>>> +                    reg = <0 0x0aa00000 0 0xf0000>;
>>>> +
>>>> +                    interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH 0>;
>>>> +
>>>> +                    power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
>>>> +                                    <&videocc VIDEO_CC_MVS0_GDSC>,
>>>> +                                    <&rpmhpd RPMHPD_MXC>,
>>>> +                                    <&rpmhpd RPMHPD_MMCX>;
>>>> +                    power-domain-names = "venus",
>>>> +                                         "vcodec0",
>>>> +                                         "mxc",
>>>> +                                         "mmcx";
>>>> +
>>>> +                    operating-points-v2 = <&iris_opp_table>;
>>>> +
>>>> +                    clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
>>>> +                             <&videocc VIDEO_CC_MVS0C_CLK>,
>>>> +                             <&videocc VIDEO_CC_MVS0_CLK>;
>>>> +                    clock-names = "iface",
>>>> +                                  "core",
>>>> +                                  "vcodec0_core";
>>>> +
>>>> +                    interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
>>>> +                                     &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
>>>> +                                    <&mmss_noc MASTER_VIDEO QCOM_ICC_TAG_ALWAYS
>>>> +                                     &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
>>>> +                    interconnect-names = "cpu-cfg",
>>>> +                                         "video-mem";
>>>> +
>>>> +                    /* FW load region */
>>>
>>> I don't think this comment brings value
>>
>> Right
>>
>>>
>>>> +                    memory-region = <&video_mem>;
>>>> +
>>>> +                    resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
>>>> +                             <&videocc VIDEO_CC_XO_CLK_ARES>,
>>>> +                             <&videocc VIDEO_CC_MVS0C_CLK_ARES>;
>>>> +                    reset-names = "bus",
>>>> +                                  "xo",
>>>> +                                  "core";
>>>> +
>>>> +                    iommus = <&apps_smmu 0x1940 0>,
>>>> +                             <&apps_smmu 0x1947 0>;
>>>
>>> I think you may also need 0x1942 0x0 (please also make the second value / SMR
>>> mask hex)> +
>>
>> I don't see 0x1942 in the downstream DT, and which mask should I set ? 0x1 ?

I saw it in docs only, maybe Vikash or Dikshita can chime in whether it's
necessary. It would have mask 0x0 if so.

>>
>>>> +                    dma-coherent;
>>>> +
>>>> +                    /*
>>>> +                     * IRIS firmware is signed by vendors, only
>>>> +                     * enable in boards where the proper signed firmware
>>>> +                     * is available.
>>>> +                     */
>>>
>>> Here's to another angry media article :(
>>>
>>> Please keep Iris enabled.. Vikash reassured me this is not an
>>> issue until the user attempts to use the decoder [1], and reading
>>> the code myself I come to the same conclusion (though I haven't given
>>> it a smoke test - please do that yourself, as you seem to have a better
>>> set up with these platforms).
>>>
>>> If the userland is sane, it should throw an error and defer to CPU
>>> decoding.
>>>
>>> This is >>unlike venus<< which if lacking firmware at probe (i.e. boot)
>>> would prevent .sync_state
>>
>> Well sync with Bjorn who asked me to only enable on board with available firmware ;-)
> 
> I'd second him here: if there is no firmware, don't enable the device.
> It's better than the users having cryptic messages in the dmesg,
> trying to understand why the driver errors out.

I don't agree.. the firmware may appear later at boot (e.g. user installs a
small rootfs and manually pulls in linux-firmware). Plus without the firmware,
we can still power on and off the IP block, particularly achieve sync_state
regardless of it

Konrad


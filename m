Return-Path: <devicetree+bounces-137235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3911A08419
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 01:38:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A215D188C730
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 00:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DCC522094;
	Fri, 10 Jan 2025 00:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CjZB72gN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE61E1EEE6
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 00:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736469510; cv=none; b=M9Xu1HI4+ezvB+jy9oGKBMQZtd96jykcyQsLPZDrJode8FCJlIa25jv6pGmgDQD8DgkjPjUXO48nELAiEFEqa+Cya7mGFqOkXW9K/ywc4tx94Aj+jviM6K5W+OkAqXYnt6LtjeZWl6OPCiAf9b7juWxQCskQFswVWjwWeLDG23o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736469510; c=relaxed/simple;
	bh=qWIZclo97O3t4XnMAadZI3RzDyG5vkOhisR5QJgFLj8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SucJbAMjNtweqgYMUKjr4pXDfEbnxtVcNXWjYNd27dwgfdnySv89pxkqYnnCb6L8bJzs7yM2pgNVj8ya35hovRSQ0CoUXvNKtKsMEznrNEWx4BEEBzIQUteXEpRoyurrgmpMYlwbQQ2AqSpi1aaQg34Nj+LLPE40a5dkr0gD3OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CjZB72gN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50A0Xcn0028349
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 00:38:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kmF+DuU3JzVjgbd8y0t7kRkzSWdwvKPVstxc9QQq5H8=; b=CjZB72gNpfcFbn1B
	NMtx1dBmxieUB+UHEUnzOXGirMST0xzBwKWxxgG3xBILREr+mc1RPNM8glJs6TJ4
	7UrMfj3kRL1NjeeBg6JBBFhTKN6ZlVkHpqPEKrTOvI9HWGCprJ4n5iE189MEVeZ5
	QjCH0O/4ewSbG46ZR6neWfAZrsDoNwUUvOoYSZjatdD27+qMX4RthaCpPCgBovNd
	idsp2wD9VM3gLx5UMwrCbqXtGRW2q64UDUixwM4lASCDJKznwMB2P14Wyzb2qicy
	o7XXauBGAL8H49QJxBM93wClU5tc75LHT1br0BAoO2Dzw53TcYynueU7whoyHWDg
	JzaN6Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442s450089-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 00:38:27 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6da2abe1720so3579586d6.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 16:38:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736469506; x=1737074306;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kmF+DuU3JzVjgbd8y0t7kRkzSWdwvKPVstxc9QQq5H8=;
        b=fRkxVeglagFhq3qXXmnMB6jv4MUB/nxyie0UVnImcEsArkBnCz6R7dmuYVIGDDNVPS
         yxZ6usa/6k4DCbBUEwJ8NqLOb3x5T3Ju+IP2/lhr3XJ4F4hDk5d2iyrrf1uTHVBkgybQ
         mbWapdNeUiLLaFNdk5z4qz5+tUEx2uhCeZkqg4Qk4oScPcWTHOOFdh2T5M/QH6AqPR0i
         qN+Q8nZG0Ztft5/RycpIeUUW5l+2bSC1/b1e8gpm/KkwsDf9arl6tQ68xkmCLSXMwgK5
         lnfzu1+BGbq4/TD82tRkE0fGTIaLoDCwAHcBgl6HTsgXP8e2Bejx1agLZRqHDB6hC4+a
         DCVw==
X-Forwarded-Encrypted: i=1; AJvYcCUKULXatFkunzJ83DI/6uLIY1FIHTYu36LqzRfgYl4ckgxuDh+4psu0kUJyCvtTkOyl8FTn0dJNsMLO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw51wJWVvEvDHrWxFxCxB4lIYWAvurLL5m9dHEAoBf5cFRxNFkz
	D23yARZhDUvkyfUK44CX8WP3sJCupWaBD0jidfW2cFKCIuqRtDRqXJ92WvsNOv/uRy7fJua3tYD
	ljEm+aJ0+phiVX99VjGLiDGheNATy0+ORRt/iI/vcUFFb4+aECxik6bMj0s1T
X-Gm-Gg: ASbGncslnq/BphJaT8ho3tiVGQtSW7lmkHcHwUEurHB6CRvOFz/gfvwPtJB9aLeoy81
	/ump9AzLiDqDkEYKOLrHPJL2PXhpECilevDRRpT5B18U9G3rmYpHMjqGlWahKqh+3FPjU5694BI
	lgBibsIt1CukpgCHbcM5XVbnvYxufnYAsaKjh1sMwoUzwZsBXXNJvAr4xnU3GgIl/LW+eAmAMur
	8K29Tm8K8eJYiDrWqUgwzw9PvyAqHcLfIxmxotiKrxONiozdaqhnC2XX6S4eNXjmsFCej/agYYu
	elUF+Eh9Ka7nq5e/Uua4CR2FriAVGRQ0Sj8=
X-Received: by 2002:a05:622a:180c:b0:467:5d7f:c684 with SMTP id d75a77b69052e-46c710e105bmr55517901cf.12.1736469506235;
        Thu, 09 Jan 2025 16:38:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFozTpKFg1C/Y/ohAM2r+YfB4QhoW6K8Hsfv6wtkptViZjHIU9D6x8pLZdO9xilbQsJvyLgGg==
X-Received: by 2002:a05:622a:180c:b0:467:5d7f:c684 with SMTP id d75a77b69052e-46c710e105bmr55517771cf.12.1736469505858;
        Thu, 09 Jan 2025 16:38:25 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c95648e7sm117905366b.95.2025.01.09.16.38.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 16:38:24 -0800 (PST)
Message-ID: <53657ae6-71a7-4800-8107-a08d47a17cb5@oss.qualcomm.com>
Date: Fri, 10 Jan 2025 01:38:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 6/6] arm64: dts: qcom: sc7180: Add SoC specific
 compatible to soc node
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-kernel@vger.kernel.org,
        patches@lists.linux.dev, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@google.com>,
        =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
References: <20250108012846.3275443-1-swboyd@chromium.org>
 <20250108012846.3275443-7-swboyd@chromium.org>
 <n3fn5mnrrinrgrvadqgymv3cx355qpx5kk27nlrz2emoxfmjyt@ymwpfxf7lv4r>
 <0ab00013-0265-4336-bc30-f49492e96424@oss.qualcomm.com>
 <x6smfgtq2ojzl774jd6d6fsilxj5dte4jbfypbvxvdmaqd7pem@nnpcnyzz4l4i>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <x6smfgtq2ojzl774jd6d6fsilxj5dte4jbfypbvxvdmaqd7pem@nnpcnyzz4l4i>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Q2_cJryNy8PSNIVWwLm374RBn56Ep5lo
X-Proofpoint-GUID: Q2_cJryNy8PSNIVWwLm374RBn56Ep5lo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 bulkscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 suspectscore=0 mlxscore=0 impostorscore=0 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501100002

On 10.01.2025 12:45 AM, Dmitry Baryshkov wrote:
> On Thu, Jan 09, 2025 at 03:10:33PM +0100, Konrad Dybcio wrote:
>> On 8.01.2025 2:02 PM, Dmitry Baryshkov wrote:
>>> On Tue, Jan 07, 2025 at 05:28:43PM -0800, Stephen Boyd wrote:
>>>> Allow an SoC driver to probe for these devices. Add the SoC specific
>>>> compatible to the soc node. Leave the original simple-bus compatible in
>>>> place so that everything keeps working.
>>>>
>>>> Cc: Rob Herring <robh@kernel.org>
>>>> Cc: Bjorn Andersson <andersson@kernel.org>
>>>> Cc: Konrad Dybcio <konradybcio@kernel.org>
>>>> Cc: <linux-arm-msm@vger.kernel.org>
>>>> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
>>>> index 76fe314d2ad5..257890a193e6 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
>>>> @@ -782,7 +782,7 @@ soc: soc@0 {
>>>>  		#size-cells = <2>;
>>>>  		ranges = <0 0 0 0 0x10 0>;
>>>>  		dma-ranges = <0 0 0 0 0x10 0>;
>>>> -		compatible = "simple-bus";
>>>> +		compatible = "qcom,soc-sc7180", "simple-bus";
>>>
>>> If the new driver requires this compatible, it will break compatibility
>>> with older DT files (and it should be avoided).
>>
>> IIUC the intent here is to provide backwards compatibility through checking
>> for sth like IS_SOCPM_MANAGED(), sorta like HAS_ACPI_COMPANION(). In that
>> case, power sequencing would be done by the socpm driver, whereas if it
>> doesn't hold, the resources would be toggled by the device driver
> 
> I think that this way we end up having PM code both in the device driver
> and in the socpm. Ideally in my opinion we should be able to migrate all
> pm code to socpm, keeping compat with old DT files. In the end, if this
> is the only change to the SoC.dtsi, then we should be able to live
> without this compat change.

We should be able to do that with a dynamic overlay, I suppose.. which we
could drop after some time (probably a rather large amount of time)

Konrad


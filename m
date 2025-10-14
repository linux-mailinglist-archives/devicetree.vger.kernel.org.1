Return-Path: <devicetree+bounces-226373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1E9BD78A0
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 08:10:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC9EB3A307C
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 06:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08779304982;
	Tue, 14 Oct 2025 06:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NXpeSrU9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FEF2C0F91
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 06:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760422220; cv=none; b=Vujus+HMLBg/CyhGDs3hmn4sAPDcxcMFn9aRoIf4LZCM6ngZSxCsaUp5QRnFe0rkPwtvZ5E2Y4Hz0+UJkMRpEES9HLeLfE/+aU8JD0uxIu0eaGfVIAiZQpmYSCzX5KCYoMAiVxoY3fw+qcDKuo5QaMUt13+/v83mzIBWb47a8wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760422220; c=relaxed/simple;
	bh=RrMh6EceA+IZXkyJtzJ6Z5Nnd55rQF8L/NpXsDl+vQE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uxYnq1QDVpqW9unvCK2VKp5qfJoN/N1Q/AguRQRwSONdHPhPHQCdRrGCOVr5JdscN92AC7iECFyck518OAXPAAsW57Eblhs6Q1fno8BM41iuzQJCwi0exENuxqnAVvgnjx8B2J9lTmG0Mmv0OyqU59VFRwmkQdR9DK05v3sN2Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NXpeSrU9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHD8kw005568
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 06:10:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cQe/hortG1AVh+iKzOyeYHqZ08OioSOVDKN8xwwnjRc=; b=NXpeSrU9Wbfft9qS
	3ibmEX3IA6cn18d6nHRu1IYeA9oFEDKxaGqTt9mac4YblxX/NDu5G8rHQ/n3XKYW
	Zxw3OXXZPAwA55zQACTzOA1JT9E8ZI8aOUL0qhdzvTzbDdBY7V2r5cB8C8XJpTnL
	w0/ImuN1tgaDuXTwrjUr9DE7JCwjxtACKP9naOYTOEWlt7WlImWeNSCHJmvbNQrK
	/L1jMIYI8klRj9735lgSJfvsiqxlfsvnvdLAqoNcGKt81RK+fDTdKUDuQEMzBBlG
	KdIee14twKuBrpWuowFMO7M8pGzgzMCOOB2EUDzdb+TxTxFhwjNYsspUdcPLK7qN
	5e5Kwg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa87bw5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 06:10:07 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-792722e4ebeso8236156b3a.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 23:10:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760422206; x=1761027006;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cQe/hortG1AVh+iKzOyeYHqZ08OioSOVDKN8xwwnjRc=;
        b=Iyj2DoAGxnPSAD7+U7SF/zgD0Obs6yYGgeQfKOhMvnqNsl4tsVCQBlx3V3gcjVNNPn
         /ESnZ0L3FW5EQJD790f6gmtHwDLg1nlde4le5y3IQPvvjHfnDe16oNWXE00uL8pNuU7X
         6CO35efh6xbtLL6PYmxbbWVcrSrNGEEIjGax+2PQqN5rM0kfIjPRovdiuOgaAyhAW2bR
         TAhyyABd51ana84F3oiywgUn430Z3WGIlQxvDbdQv+jRCs++hd2aDgHWExzipXGY2xet
         BedD1A/rkLfdQPvGGJI53f5yzI3s711KRH1IQglBmNNJcRQaq6Hvsp3L0SnqdXNEDaRu
         YOxg==
X-Forwarded-Encrypted: i=1; AJvYcCV93RNP1JXtvwewaSB9v+cvQhiW7MqmprG1eDbciq4zAYdP6dP9CPXtEbG3HGKECPcQTZiIfCvHmkOR@vger.kernel.org
X-Gm-Message-State: AOJu0YxNLpjvFoDPP/yx5wi57etQpoOuh8eo5O4wiEtvvQTkWzD6/vYy
	bxN3SpMGFWedh9b4hfjGfZCHLPpKcYsLu1D/Oz+IOGvxW4xu69jzN+VqklhWjrmPAcO6LIlki3S
	kACiKzIWk11JfLWsErGhstBfRlRTPgXs/yiVD0Vr9JHpmtCUkqlLJqS9QSt1dxWYN
X-Gm-Gg: ASbGncvAFg233yvzMJZXsPXPFLyNuvsj0JsOTEmKAqVXa/nG/xsmAMMz+iMyrd6Msfb
	GxFkxVAKoeEPH33fG7OoJnwkltmkUNxvDeWeqOvxha8lSLWuy/lJhUzAFtojevtA4iVfS5fDeQm
	VPErhrG46vwHqHWUMcZ7CwU7e3hBflDMQ1r00rFhHQzX4GXp0fDhmjfv0tgWnYeJ69a/zXFJxVP
	OnHHXYx4QNp3k1jUknKGGKQ3AzSHP3cNgqO0ygR85OKUFjgR+W/LeHZslFsQ2PPYseoQTviG0Iy
	MVdAAG6nbCNuO9IrW5KIukWNm+hJPDhzRC6Gu4x3iti+Ko5ighiNCwjqVmvMfpe72ONIchCT3AT
	fCbZSUzzHgBy/T+VKv4GHJbHYVJaeTaSNfbw=
X-Received: by 2002:a05:6a00:ccd:b0:781:1562:1f92 with SMTP id d2e1a72fcca58-79387a287dbmr26586190b3a.26.1760422206214;
        Mon, 13 Oct 2025 23:10:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhHTyJWB4YiMHSllLtBh6JbpspmbfHJRdXqdqU9mb6OJKHj/GnOAh41yDTXsWvUAMwfFvNCw==
X-Received: by 2002:a05:6a00:ccd:b0:781:1562:1f92 with SMTP id d2e1a72fcca58-79387a287dbmr26586079b3a.26.1760422204263;
        Mon, 13 Oct 2025 23:10:04 -0700 (PDT)
Received: from [10.133.33.138] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992b060962sm13979020b3a.1.2025.10.13.23.09.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 23:10:03 -0700 (PDT)
Message-ID: <5adde3cd-8609-491e-8b85-8a3316f6e0fa@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 14:09:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/20] arm64: dts: qcom: Introduce Kaanapali platform
 device tree
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manish Pandey <manish.pandey@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <DD6BOLBXKBYP.2NVXRXGJ9W3IG@linaro.org>
 <58a69bdd-f26e-4cc2-bbe2-6e9d5bb69aa0@oss.qualcomm.com>
 <DD8U00VMC4P1.1P4RGHGOLO92J@linaro.org>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <DD8U00VMC4P1.1P4RGHGOLO92J@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: meWqzEt52ooR8fBJemzsTQrXqpTTYEtW
X-Proofpoint-ORIG-GUID: meWqzEt52ooR8fBJemzsTQrXqpTTYEtW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfX0aW/BiNHBg3G
 ubtngi9NTcpllxd4kKxDicxlRQhpP4AjEn8uq+Y0gEEw/Vpiji5wP6d/4ubYxsdU4+Gsy+e0++P
 N+sRU7g3f2FfgWN5gkxlQtxDVZHD+sPdiql+O9oJEslc39UHg4ioC1ebz08t3N3qzE/WmXlVfjt
 qiWBT0qT3qj5ih62zfN7NjCVClLisGtKnIMAUgUH1hMuskZOPlwyYR9wWgs7AI8PfMQ8utP7RAc
 5m/b2rKYeg4EQ3ysehBQs78k7PPJ9IE+DyB2R9pM3EbdD1Rj0QjXjdZLyaud+DjzMhgRGX036Jq
 aQTOfax5jykXTaPZmpIfd3jDuQOKx4GxKlXzahpZ9ynyjfbOS2uwizoZ3MjGZbzTbl/G0Qcqlzt
 GHtz9zR1ruTO6oNI0VliBcT0FaWGkg==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68ede93f cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=k2UVWlRvf9iVtZTx9S8A:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017



On 10/4/2025 12:35 AM, Alexey Klimov wrote:
> On Fri Oct 3, 2025 at 10:09 AM BST, Prasad Kumpatla wrote:
>>
>> On 9/30/2025 11:18 PM, Alexey Klimov wrote:
>>> On Thu Sep 25, 2025 at 1:17 AM BST, Jingyi Wang wrote:
>>>> Introduce the Device Tree for the recently announced Snapdragon SoC from Qualcomm:
>>>> https://www.qualcomm.com/products/mobile/snapdragon/smartphones/snapdragon-8-series-mobile-platforms/snapdragon-8-elite-gen-5
>>>>
>>>> Bindings and base Device Tree for the Kaanapali SoC, MTP (Mobile Test Platform)
>>>> and QRD (Qualcommm Reference Device) are splited in three:
>>>>
>>>> - 1-3: MTP board boot-to-shell with basic function.
>>>> - 4-16: More feature including PCIE, sdcard, usb, DSPs, PMIC related, tsense, bus, crypto etc. Add QRD board support.
>>>> - 17-20: Multimedia features including audio, video and camss.
>>>>
>>>> Features added and enabled:
>>>> - CPUs with PSCI idle states and cpufreq
>>>> - Interrupt-controller with PDC wakeup support
>>>> - Timers, TCSR Clock Controllers
>>>> - Reserved Shared memory
>>>> - GCC and RPMHCC
>>>> - TLMM
>>>> - Interconnect with CPU BWMONs
>>>> - QuP with uart
>>>> - SMMU
>>>> - RPMHPD and regulator
>>>> - UFS with inline crypto engine (ICE)
>>>> - LLCC
>>>> - Watchdog
>>>> - cDSP, aDSP with SMP2P and fastrpc
>>>> - BUS with I2C and SPI
>>>> - USB2/USB3
>>>> - Modem(see crash after bring up)
>>>> - SoCCP
>>>> - SDHCI
>>>> - random number generator (RNG) and Qcrypto
>>>> - tsens
>>>> - PCIE
>>>> - coresight
>>>> - Bluetooth
>>>> - WLAN
>>>> - Audio
>>> Were everything described as audio enabled and tested? As far as I was aware
>>> some devices required some soundwire rework to support soundwire microphones.
>>> Is it finished? I don't see this linked here, but you state that audio
>>> features "added and enabled".
>>>
>>> Do we understand this correctly that, I presume, everthing that is more-or-less compatible
>>> with previous platforms were added and enabled (with renames) but not _all_ ?
>>>
>>> Probably some rewording is required.
>>
>> No, As outlined in the commit message, validation was performed on the 
>> Kaanapali-MTP platform having
>> WSA8845 and On board Microphones(Mic Bias supply from WCD939x) , and 
>> there is no SoundWire
>> microphones support on this MTP platform.
> 
> No, the email here clearly says both MTP and QRD and then that audio
> is enabled. That's why is should be clarified otherwise it misleads
> that audio is enabled on all platforms/devices including missing
> features.
> 
> Best regards,
> Alexey

Will make the msg more clear in the cover letter for next version.

Thanks,
Jingyi



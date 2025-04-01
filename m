Return-Path: <devicetree+bounces-162402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE82DA783D9
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 23:15:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 656F67A3101
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 21:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7831B212FA7;
	Tue,  1 Apr 2025 21:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DhcFTgZb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 964A61D515A
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 21:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743542111; cv=none; b=o1CGIHRdMjYjmkompRoXXfsR6Ah466pMluFTmS/Kv/59JvrXg4GRZ1hUhLYjH5xjMEpCWndXiMbBe+M11fms/hpXOUOMoSLNDOeYq9dT5SOyNhJdExHFIwbuqbHIkbm7BjKJB1g9q8w6NsmTKOtPaJuhNUANdEwDbv+hW1eD2iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743542111; c=relaxed/simple;
	bh=sNONBw4/PNNwt/YIa046y6LeLCSrx+usans4vlmBAyU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G0g0V3gZ/GdPSz5qmFR8r6c4BNpoz8jWFEFQfxtDIXjxsbxAERrATvYubC777Att7wEjlB3G9iuIr5IZCsw2eG093ntHv855EOKttkpqCg+crkGwIDaG8MkSBHjWADqjrX2US1ewFEh6HGZvSMCaMx1WfCgUSV7RAxHqC9ESX1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DhcFTgZb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531CVKoC024920
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 21:15:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NMnAt2UThfBBBt/ppQ8i5QLrlFciBRkGk3NzYYx0XCY=; b=DhcFTgZbhD8/VQio
	JYNuftNcciP09F4IAbojJ56nULp9W5SFrZY3+aV0WQfYTX7Kr28qV/raTjWO9sLM
	BoMjBR8xYX44KKONmCJX3pMyKFCW9bt6uLpndqUw2dMB6qojAZ4p2T01oSp48gOF
	K5V3Q8pxWJ1QqwJbbUmGN+igIFJWbAm1ImQWcvEbiu8Q+ofGs/CMm8jFJii+YJJA
	xhfmixABlPd5rvd0oTYFz+ymiy0cn/PodB9QqGkBpeVZ0qh+TdK95B6gO29jrr90
	7RmRi7fFXwDcBPO7Td1hnxhe1ZLser+B6Wudk4TLWVNZTF4N22A9YLecGvLesQmd
	NfxQvA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p86ksdfr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 21:15:08 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c53d5f85c9so163264485a.1
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 14:15:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743542107; x=1744146907;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NMnAt2UThfBBBt/ppQ8i5QLrlFciBRkGk3NzYYx0XCY=;
        b=LEwKherLGtaW1tuTqKBhNAV74CiqddhS6I+YWCnPf20nVOHx37IqE0StS17VSbCVt5
         1pozMV+ONgrj0fScbO/kr+jzE5QBPT3SCe+JVyKwAE1xXyx3HM7g7zMBCMVffkGDfWvS
         mWmwJDLylnpffM7szylat8ieOK/g5W1bUTBEydJkHvu6z3K/KU0qxgZL0soeII2aT/ru
         QhjHLxaGw2+EofU1eMu5FD7yPMkVmtDRMOmkzZl7RcMXZqKvHalqNKQJBv0749lFmiL3
         8BgRRwf19yeRJg19sNxFqgq6Mh70IeZvZHDPX0+j+hRu8PREgYi50dbiHQLFL56C3F/3
         VMnA==
X-Forwarded-Encrypted: i=1; AJvYcCWHVqGl91AIexc0RpIC9neM3uEgoi7s33znyj2TF8pEfHE4KQgSmqITQKxeNAXEMzWeox99Q3ggTKyR@vger.kernel.org
X-Gm-Message-State: AOJu0YwJIqtuaGE8j2i4XiZ4uE+Gyh7itAIm5I5UKLiYUAeEWB7zQVet
	qsfaX1JgwoZofklso0GpZ/h3NbEw/sImA5ElkIj3Pja3Dgz8DdpbNdZSpFL2td1W3YefFzUi1fT
	dsgfErcXunudWluQmT/P5VIVdhlqPK+3Fk8h6g+O0+NN12Ab/1tVj9qxG/tEv
X-Gm-Gg: ASbGncuQi3mHbhs/HZ4z/u6JXnSbFKwuL8PnUmfYA68qD5ZjybJjqmWgmotVaoJYcIo
	Vz7vejVBgaRWPTHMupu8AmL78sLP6Jq4sPChwUS/8fcwzNlhyV/xQR5B2Ss9Cn+p1iFguk2j/MX
	o0IY7dSysTKvteBHyKvgJ8lqWpFfR5FdEYOQ7rXk5VstmE6qx8WoagpwgC9zPIMiyao98kYN6hZ
	NQFc6ecOLeOeA5QVXAA9XwcJtvk9gK3p1oBtlcd74LplHDPgMjO/ArGg+bPhPryPGhweyVnlEt+
	MbDHJyNbLjwBVLiONbFZCF3YWvuNA5e7kFxZ/RwVZogBFw+TESSi0iDlUCH8IIQP1uByUw==
X-Received: by 2002:a05:620a:601c:b0:7c5:8f40:4d47 with SMTP id af79cd13be357-7c75cc18f4fmr211219885a.13.1743542107146;
        Tue, 01 Apr 2025 14:15:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5RS6V4yOPKtT8ogXKEe3zLDn3Q7NknxJyp3aSBFNP2PGcY0kUs6H5aJo4JOfupCr51LNo9Q==
X-Received: by 2002:a05:620a:601c:b0:7c5:8f40:4d47 with SMTP id af79cd13be357-7c75cc18f4fmr211217285a.13.1743542106566;
        Tue, 01 Apr 2025 14:15:06 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7196dc370sm807319866b.163.2025.04.01.14.15.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 14:15:06 -0700 (PDT)
Message-ID: <93f916d1-83b9-41c0-bb05-a785fb730088@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 23:15:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 6/6] arm64: dts: qcom: Add support for X1-based Asus
 Zenbook A14
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <20250331215720.19692-1-alex.vinarskis@gmail.com>
 <20250331215720.19692-7-alex.vinarskis@gmail.com>
 <ef783edb-c966-4ef7-b496-564420c1b852@oss.qualcomm.com>
 <CAMcHhXq8kjsbDGHBn=63JutD1TcD6=KVxCQtPHRoLOwE+FY-sA@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMcHhXq8kjsbDGHBn=63JutD1TcD6=KVxCQtPHRoLOwE+FY-sA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=W8g4VQWk c=1 sm=1 tr=0 ts=67ec575c cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=8G7MNcyp3xxXIpxjqwwA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: yNvTs50t42T5NIzVJnpoFMOHjEWRJENk
X-Proofpoint-ORIG-GUID: yNvTs50t42T5NIzVJnpoFMOHjEWRJENk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_09,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 clxscore=1015 malwarescore=0 adultscore=0
 phishscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504010130

On 4/1/25 8:05 PM, Aleksandrs Vinarskis wrote:
> On Tue, 1 Apr 2025 at 17:59, Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 3/31/25 11:53 PM, Aleksandrs Vinarskis wrote:
>>> Initial support for Asus Zenbook A14. Particular moddel exists
>>> in X1-26-100, X1P-42-100 (UX3407QA) and X1E-78-100 (UX3407RA).
>>>
>>> Mostly similar to other X1-based laptops. Notable differences are:
>>> * Wifi/Bluetooth combo being Qualcomm FastConnect 6900 on UX3407QA
>>>   and Qualcomm FastConnect 7800 on UX3407RA
>>> * USB Type-C retimers are Parade PS8833, appear to behave identical
>>>   to Parade PS8830
>>> * gpio90 is TZ protected
>>

[...]

>>
>>> +&spi10 {
>>> +     status = "disabled";
>>> +
>>> +     /* Unknown device */
>>> +};
>>
>> Does the device crash if you enable this bus? Keeping it 'okay' would
>> make it easier for folks to poke at it
> 
> It does boot just fine, but does not initialize:
> ```
> geni_spi a88000.spi: Invalid proto 9
> ...
> qnoc-x1e80100 interconnect-1: sync_state() pending due to a88000.spi
> ...
> ```
> 
> I only quickly checked that 9 is indeed invalid state, iirc should've
> been 2. But haven't looked deeper into it, so left it disabled. So I
> thought best to leave it off for now. Unless you prefer to drop it
> altogether?

That means this QUP is configured to work as a QSPI host, which is not yet 
supported upstream. I looked at the DSDT you submitted to aa64-laptops, but
there doesn't seem to be anything connected there, perhaps it's loaded at
runtime. Since your keyboard and touchpad work, maybe it's a touchscreen?


> 
>>
>>> +
>>> +&tlmm {
>>> +     gpio-reserved-ranges = <44 4>,  /* SPI11, TZ Protected */
>>> +                            <90 1>;  /* Unknown, TZ Protected */
>>> +
>>> +     bt_en_default: bt-en-sleep {
>>> +             pins = "gpio116";
>>> +             function = "gpio";
>>> +             output-low;
>>> +             bias-disable;
>>> +             qcom,drive-strength = <16>;
>>
>> drop "qcom," and please keep the order of:
>>
>> pins
>> function
>> drive-strength
>> bias
>> output/input
>>
>> as you did below
> 
> Will do.
> 
> Should I also drop 'qcom,' from the 'misc_3p3_reg_en' and adjust order
> the same way, or that one is somehow special?

Sort of. &tlmm and &pm8xxx_gpios use two different drivers, each one
of which has slightly different expectations about their subnodes.
 > 
>>
>>> +
>>> +/ {
>>> +     model = "ASUS Zenbook A14 UX3407RA";
>>
>> There's no strict policy, but variants usually go in braces
> 
> Parenthesis I guess, "ASUS Zenbook A14 (UX3407RA)" ?

Ugh, yes!

[...]

>>> +
>>> +&gpu_zap_shader {
>>> +     firmware-name = "qcom/x1p42100/ASUSTeK/zenbook-a14/qcdxkmsuc8380.mbn";
>>> +};
>>
>> This file is not going to work on this SoC, you can drop it
> 
> I guess it would need a different firmware name? If yes, can we
> already add the new name, such that once x1p42100 gains GPU support it
> will get enabled 'automatically'?

The filename is different indeed. You can add it, as currently this
property is not yet consumed by anything, anyway.

[...]

>>
>>> +
>>> +&remoteproc_adsp {
>>> +     firmware-name = "qcom/x1p42100/ASUSTeK/zenbook-a14/qcadsp8380.mbn",
>>> +                     "qcom/x1p42100/ASUSTeK/zenbook-a14/adsp_dtbs.elf";
>>> +
>>> +     status = "okay";
>>> +};
>>> +
>>> +&remoteproc_cdsp {
>>> +     firmware-name = "qcom/x1p42100/ASUSTeK/zenbook-a14/qccdsp8380.mbn",
>>> +                     "qcom/x1p42100/ASUSTeK/zenbook-a14/cdsp_dtbs.elf";
>>> +
>>> +     status = "okay";
>>
>> Are the DSP firmware files actually different between the two?
> 
> CDSP is the same. ADSP blobs to my surprise are different, both '.elf'
> and '.mbn'. But like I wrote in the cover letter, perhaps Asus just
> forgot to update adsp firmware? Though according to changelong on
> device pages [2],[4] both have "ADSP Driver : 2.0.4135.0200"
> 
> Compared by:
> * Downloading UX3407QA's drivers [1], from the device page [2] and
> UX3407RA'a drivers [3] from the device page [4]
> * Extract and flatten with `7z e filename.exe`
> * Compare via `md5sum *dsp*elf *dsp*mbn *dsp*jsn`
> 
> Though, even if the blobs would be/will be the same, I think it is
> still beneficial to define firmware path per model, as this makes
> firmware extraction from driver/Windows partition and placement much
> easier. Unfortunately, as it seems so far, most of the devices besides
> Lenovos are not having firmware upstreamed, so this is pretty
> relevant. Eg. Ubuntu already has 'firmware extracting tool' [5] (draft
> MR to include Zenbook as well), I'm guessing other distros have
> something similar, though I haven't followed up.
> 
> On the other hand, these tools could of course get path from device
> tree directly, eg. via `cat
> /sys/firmware/devicetree/base/soc@0/remoteproc@32300000/firmware-name`,
> then having all the blobs for the device in one location is less
> relevant...

More importantly, different blobs may (but don't necessarily have to) include
different, hardcoded expectations about the board (or platform) they run on.
So let's keep them separate.

Konrad


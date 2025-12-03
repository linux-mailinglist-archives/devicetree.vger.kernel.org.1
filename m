Return-Path: <devicetree+bounces-243963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D1EC9EB99
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 11:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ECE484E02CB
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 10:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 592E62EDD57;
	Wed,  3 Dec 2025 10:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KhlbqdVe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XfVtKHT7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A372E1EE0
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 10:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764758080; cv=none; b=OzATRDA8QM6exOkaz8Ltecr+SLVnk9Nt0LJPFvFm66bA1vukv1zScAL0qFJaL5DlUWt4j4nAmtHVRz1gV/Qda3WiqsQKoREVa7VAM7sRAfHEmJGqpcREg0oaneBNrPPnBjW9E4RVhuuV9nHGVRw/qwP+Hr2tstuD9jbDuRVMPKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764758080; c=relaxed/simple;
	bh=7CJ3yX3CnRRxuobku/BuXEsyBR3M7uOpZF9K8w5MlDw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fjREda3TML1k1ygcJBpGnMEV8eLubsYh827pGAW5atv/DFbXaAXtCpS2RPzc1uWNLtTGjzGlhATJR7HIesf2k7A7u3Em4OYOP080ntcstBp7Rj06MvuihXo8ZvmO5AkN71I6jDtCBuYRrXOCYPNXGcMP0rfAiwcJ43eOFhoPJfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KhlbqdVe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XfVtKHT7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B33T7tY3191623
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 10:34:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Sym5NuMt1fJdEars9u3MKnRNPUKEoFmXGHd8ORjXH1Q=; b=KhlbqdVehadK/fe9
	0QPKWg9eLWvnow8240O6ow4wS2xkULMk/M2ysmOn9qTCiIlgAllT7V7TzJlnszAl
	I/dWHTLKaxQJh28mCecUBt2t76wPM5HwwFQ8hc2xTt2qxNMkGcGL7JkwFBn1fSFT
	JLTLF/B3fDkD8VnjiigedbZNolHmPoXCbKIUbGjNyEDGBk+cUtOMaF6lRIvrvFKT
	fQffXxe34y3QZKxwMXTkgKEqSXcEz/PqZsM/WAGPE1yLKusF0hnUV8GXBLCep4rn
	dfCGcMzxkxZ/3MGnDv4Y/5G6XjExvlVC5TTuN8jgTJ/nGXxJNW9jOdX3xFkvKB8K
	zgml3w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at3qjk091-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 10:34:38 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88233ac98f7so16392186d6.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 02:34:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764758077; x=1765362877; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sym5NuMt1fJdEars9u3MKnRNPUKEoFmXGHd8ORjXH1Q=;
        b=XfVtKHT7k5mqCC2acFbpzTA22kw2+mCxlfWAJVTofQwggCtOjO4+l0hDl+/JYP25PF
         jHmgfYQcNTcxoHOdd81Gen865PsTq5DlCvbMQc8D0swHljUwvY3fcV9XiuyJnkkFI8+D
         qgGLJtx9VTDYs/wCTiXQ0dK479cX24aivNyQvOktxwK9XkjVozPvPyEvdr1NfmcNHssp
         th7L0r8oK/vaqUJVYqEiWRL9nmEgLL8+WtTMetrnblj49fwJfP6SaV2DA3eRSssPLdID
         WRulXpgxIgcncknP4GaTSC3DjgLQFtu6K1XymdR7H1G3oRiIECCgpf7i8wXVS5VFTO+5
         /P4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764758077; x=1765362877;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sym5NuMt1fJdEars9u3MKnRNPUKEoFmXGHd8ORjXH1Q=;
        b=DBssYlLEu/w+7pd8KPcstoOWSmeQqFXxKc3dg4/bNhpgInyFV9sbTOmBVsBmF2krYz
         Xlc3yrCtA06p9aQLPD6G6TLr2mmSB91d7BAsmvR1clpxOvWZ9IJgUcB8cnrLuap6SflA
         Yf66rrrR9kUsXyII3+P50QT3G6IyyRs23gLeu5KsI8dTP9N6DVumxhp9C2L0JvVQim2H
         3Vn6YaX6CNYm9NHJQjdSZFg9I2k7jIsEf04ILuVcBPc7sD3jxY41T92MNXtiWc5h3fRD
         IFgY9YCb1tODOanNOdMSJEskN8R+FoqlxWlnLoZlfClCMPm11dhjhZYj4BmXZnhiOzxu
         NVyQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1vlaSTjOXGLK+0iznEVINoJyhoyKUMhJ50cOqbGAp4zJweHqcyn5lR3GXI6DLKYU3uEoc8EGa15iu@vger.kernel.org
X-Gm-Message-State: AOJu0YyJnLrxBTCevTEfXakS0K2sYO1sySZwem9RQoFmNvdosU46gZgL
	/sJIRnhnNHQZDHbU0Z74WLoy8qk6ENI9Yr9v8UTyyY2Ktto100I8Mr0zjupZCnsQVEfmH9VHBKq
	SUSJybSjPIjEKoes/QEADIAeGY7uwKVo3GLtbwdNsxu8xeP3ZIX1Dmq7mRXoG4AOI
X-Gm-Gg: ASbGnct/XQXQ7coVeBx+tlMGBfmeNme/xCg06Td7OP7flE77HBPpQSBn9K8+qWVyKmb
	aF9ew5kHYUw/f24npeynlblsuBy6rhVddDDwjVwHCWXkpG6uE0kPIbldsj+AXbZEkbDjiJAlZDp
	GlTSEjkB0/2KfubAILtcpDvxvQ1HvxAW5z327iZ1zEyngDYSMaXLipYtRrlgw/q2sgnK1s3c6a4
	yvsjcBe+WDWSIQMXwQepJmPLMxET79Ho7cPXHXTU+BnXogPpjUrx9wLZC5I+ZeoXu4KJUmiQNbS
	WGEWnmKgz4evYBddLMDQvhkBR0ZS06eot2yx8BrhtYID8DM8rZ8QBdDk09gjOgGKbFyTLb6mkb3
	torv3DPSgYtWu9in0MqUY7c18gvJXk8ThbY+pzKQEjhPrBsgQVJ4irJpb2/Xw5d78pA==
X-Received: by 2002:ac8:5a06:0:b0:4ee:2bff:2d5b with SMTP id d75a77b69052e-4f01b14cf83mr7660621cf.5.1764758077034;
        Wed, 03 Dec 2025 02:34:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IENpiflN9JCRe9FxtsS/vwre8fkqxzpv0YXY76SduXtq0shkTKimYuoEr1ro/3t56pBEF8ujA==
X-Received: by 2002:ac8:5a06:0:b0:4ee:2bff:2d5b with SMTP id d75a77b69052e-4f01b14cf83mr7660391cf.5.1764758076470;
        Wed, 03 Dec 2025 02:34:36 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f5a4b757sm1742980466b.66.2025.12.03.02.34.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 02:34:35 -0800 (PST)
Message-ID: <5e0e1cfd-e4bc-46c6-9367-ea628e6db794@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 11:34:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/20] arm64: dts: qcom: Introduce Kaanapali platform
 device tree
To: Pavel Machek <pavel@ucw.cz>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manish Pandey <manish.pandey@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <aS8uJCnb0xOd6uby@duo.ucw.cz>
 <9dabc745-1464-48f2-8687-2b849a7fca95@oss.qualcomm.com>
 <aS9SeXazCemfDQP+@duo.ucw.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aS9SeXazCemfDQP+@duo.ucw.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA4MyBTYWx0ZWRfX5ULyLm8vKJnx
 F+CkQYfiwkORewFwnGdo808VXtAGSfX6Ahu/C2+Q4lYn86SC5W33vya46xcQSfx3BD0lEAHlLY2
 hDKRQP1qhBwgzZn3aIxGJgdnGs6Z9vHTP8vdITkIZp4+4hfTx/xcoXRFjd1TdwfCWH0+pLKasaY
 DtyB+7sOJv2TGme+Rq7y+SoxomXrHQEKuQLk3UigReHxyJZITNvy5HETXxTRlsyT+srrJr8eTDJ
 hfBc6NnsKaZ2QCKmlop86y3yeUxOqGvGILRxZ216GYkMN2Vk51lKEE9bPi1a3R33CDZNzUYdjkb
 l8k5kOcZkoD1Pr90nQ+5TE6qSGZUoi/i9Mo5aMT0EaqEw4tnY58G4auvSOC9Dae+JMKBVB8MZr1
 AKIos+he/Fp7Kn2SYf9G26vTIEK+1Q==
X-Proofpoint-ORIG-GUID: ie_e-RSmbKBKYfiREs8fqCy7ap0J6N5s
X-Authority-Analysis: v=2.4 cv=QohTHFyd c=1 sm=1 tr=0 ts=6930123e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=YcUv1FMTEA5i4QvbDvkA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: ie_e-RSmbKBKYfiREs8fqCy7ap0J6N5s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 adultscore=0 suspectscore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030083

On 12/2/25 9:56 PM, Pavel Machek wrote:
> On Tue 2025-12-02 19:33:03, Konrad Dybcio wrote:
>> On 12/2/25 7:21 PM, Pavel Machek wrote:
>>> Hi!
>>>
>>>> Introduce the Device Tree for the recently announced Snapdragon SoC from Qualcomm:
>>>> https://www.qualcomm.com/products/mobile/snapdragon/smartphones/snapdragon-8-series-mobile-platforms/snapdragon-8-elite-gen-5
>>>>
>>>> Bindings and base Device Tree for the Kaanapali SoC, MTP (Mobile Test Platform)
>>>> and QRD (Qualcommm Reference Device) are splited in three:
>>>>
>>>> - 1-3: MTP board boot-to-shell with basic function.
>>>> - 4-16: More feature including PCIE, sdcard, usb, DSPs, PMIC related, tsense, bus, crypto etc. Add QRD board support.
>>>> - 17-20: Multimedia features including audio, video and camss.
>>>
>>> Thanks for doing this. I assume there devices available with this are
>>> quite expensive/hard to get at this point?
>>
>> A number of them seem available at most shops now, but they just came out
>> recently and they're all flagship phones so understandably it'll probably
>> take some time before enthusiasts poke at them
> 
> Aha, that's actually good news, I was assuming only dev boards are
> available (MTP, QRD). So OnePlus 15, for example, would be suitable?
> (But I'd assume OnePlus 15 would still need separate dts, perhaps
> similar to MTP?).

There are always *some* bits that are common with the dev boards,
but it really varies. Depends on a specific device and how it was
designed.

Each device needs its own DTS, particularly since it encodes things
like voltage regulator settings, so the consequences may be dire if
there's a mismatch.

Konrad


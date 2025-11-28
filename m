Return-Path: <devicetree+bounces-242967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAB5C91BFB
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 12:04:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 869D63AC58B
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B86A630DEB8;
	Fri, 28 Nov 2025 11:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lpj3UCBg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EAriEkaq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB05307AC7
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764327862; cv=none; b=QGs5Pn9a4l0UEZXTQqP/74lZJafae6gkXr35pexyplm6RLZ9xh4UpQuEHdy/ciUlRA1vrNz/Tfbqc6VaPqoGoBUTc91sq8+lxmGgsEcaKN70Vk4lFxIRRM7jwHVcvA2ONgSR6bnDRfQXx/B66yRvrZjOJuBAQL/KI6sRINnKKBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764327862; c=relaxed/simple;
	bh=io2qTwYQTp6q1yk4V6dF1s16CO0Ve7WhukxEkDZ29Ck=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dQ76YvdBpnrnRTvf+T0I+gGZU+hsblMKfTQ7crWBatvFy8v65VtZ9R+c78ZOswF9SYxYe2S6pyhhUd0WR2SFvSDKEMhsbsbjZ2zaMm5XN0yrirkNgUXdwDZ9qWuqVH0QQKEkn6Mm9dro56+49EWZODAy8ZFHkGAkqGYmkKE3H74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lpj3UCBg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EAriEkaq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8OZuj3530973
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:04:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hkor8fAqAL5jcHpNVd/wYoQjdbh3Wm5P2F/U2e70reE=; b=lpj3UCBgfLKg1Wvu
	Ru0YjyBGSj4wjl2BRBkbnUPT42jhdxzUOi8/XO5CgaCrdMgfKV4IGT6P+YL4zeCK
	tAkbcF5tjc0g8kc8IBvhfGFUZ+Igxv+xjC//F2WROxKFR3gUecW0Xa6MLClhYwaM
	IuiGLEXBHhgv6TLtXm3JZN3aRna22UffUxwtgdR/9SZ8zLUGpiVLLpgGifoj/1Gq
	SV/PNf3cq1Xr81i9zUgiFaS3bwRRiCjfrtZzyL4KPUgboI3zPX5Gdb1nycvKJXFS
	c9Ue6m40QAdK4XMSNQiC9EyF4n4uCFk2AjrYUklsxXhOZCwXk2Hr66Mi/W+wFGLl
	aiXlUg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apm2ru9d8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:04:18 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5e1fde1f025so174284137.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 03:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764327857; x=1764932657; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hkor8fAqAL5jcHpNVd/wYoQjdbh3Wm5P2F/U2e70reE=;
        b=EAriEkaq8unNUAkEyNDc+W208ik7viDlB2VWjhiEEHZrfz8Ll0SlOBfwIXljFa8R1T
         2HVEcrWaLxQuFTFvSwT8uVKMDaRVpl4bhPeKIzNaNzaMPzofcU9WRD17sl8DgpYhyRy/
         s/5gf2+llkSXtn27DXErZStWJ+q60OrDsVcnsU2BLHKElGToQEuVic5/HPvABvQs6ivH
         i2Ow5jfYPzZbLapq4Cj2YvO4q2dzABFrF5cvZX+gp5BO7yZgRulPHEwqpdRWNuetv2w6
         532mZ0O4lFfsynZeBe8OMFUWKf59WyrDkpqXS287nRpF/MVm2sEz+HwaUJEPwr4FVfus
         DM/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764327857; x=1764932657;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hkor8fAqAL5jcHpNVd/wYoQjdbh3Wm5P2F/U2e70reE=;
        b=dxtUza4YCaW5hluPf6iEo9CoDwrB3dyIquxN6KUpU+o7daWajdl2ybxbRJrWdO4D7H
         /Jq2HoDO997aJO1dpWy3AvxwuTZ+jwOfHmU1Jg3KmvthWdghmFniZFL13Bs+UGIlVDh8
         K8FwosdrnohVAB5t2uymfby6ItvQR9v44A4nLPjxdCWAZqPi/rrFjPw0CWanq4T50ZAg
         1+mVol3VTV0YtL0dqWcTYoXmzwk6P2c//BECagupJyw+khs2dtgVleZJ0FHihKul3q8U
         naqBVvHN3db9WcdkZb3oQ8pGG/st2k/QZiNqBDt85CFmLqvMK+IGnm8S35CZPjjuz2bo
         CEhg==
X-Forwarded-Encrypted: i=1; AJvYcCVxV0m5vav2B3FcVkJfWtcsMIpmstd3Eq6cLbgxzE6BUm3W8MgbXlPkUDCalwwb/a76OQ/cIYUux65H@vger.kernel.org
X-Gm-Message-State: AOJu0YwBQIH6NxYPzmRsUtCLm8F7J5G0BkQTRhkt6QhIkkSrkXj5FetN
	vZaGq5M5VDkBNPDBrTrtjMARSCwuhWeZvaIivDmqUSEZJL2faj+l4Ih2h0A5uE6UTCW1Zz5q66j
	gQpslZZCJhPfQm+18eJacFp3Mu8HEOvn1zQswaS4QLIRjlqZkbkPQeN7JNj+5MKS3RoLMG3Xl
X-Gm-Gg: ASbGncvX4/VB+b/Pkf3Ebf52ymCM/zyP29xtn79I3XOFHKM6F7q43/qWcGD3Gcuf0no
	Y6ZfAJ3uRSBAbDGw8NGa5vbazqD0sEcNCsu7JR391+oBxLZybQtU4cljrvd3p74QpgR64yskhCs
	mFlSILMk9Xl4MK3324FvSbIx+RjFsXm/RDgV1CY4MnJQvK8NeA5L+d5wo3HJFrisHLSS/OlIUrz
	fKAOvnVApRhbVZ4vWl129Z2ZtwQSNsal1oXoQq3OleJYKIe1/22e5oQsBW3L7sBDkJlvvhuWiHY
	i+BP9gZo+FBEG0j2oPdGJNXtF42iU08PdtDU8hGDDaCtju71iDJqvryoFd/De1o2tUrf6vlUg55
	kOKviXL3foQlvubJHq0JDFzNgoP7LtKbRZEd7XbNAEYRgB+Vc7UZNDNJippxCPsjpJLg=
X-Received: by 2002:a05:6102:5e84:b0:5db:36c1:17bd with SMTP id ada2fe7eead31-5e1de56cb5emr4715592137.7.1764327856845;
        Fri, 28 Nov 2025 03:04:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFoeuS0Wic0v+kDByv3hBDuYERXOu+EYGDY/250dogexYk1Ma2jd9eWsvwx6B/onkqhQDAIYw==
X-Received: by 2002:a05:6102:5e84:b0:5db:36c1:17bd with SMTP id ada2fe7eead31-5e1de56cb5emr4715543137.7.1764327856395;
        Fri, 28 Nov 2025 03:04:16 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f5162093sm429910166b.2.2025.11.28.03.04.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 03:04:15 -0800 (PST)
Message-ID: <d4f58ebd-631f-4ccd-a36b-ac562be7bc68@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 12:04:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8550: Enable UHS-I SDR50 and
 SDR104 SD card modes
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Sarthak Garg <sarthak.garg@oss.qualcomm.com>
References: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
 <20251126012043.3764567-3-vladimir.zapolskiy@linaro.org>
 <b07b88ed-83a3-46d6-8b97-e8661e2cfaa3@oss.qualcomm.com>
 <d3cccdf4-8c50-4b6c-a29b-5b1388ce2249@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d3cccdf4-8c50-4b6c-a29b-5b1388ce2249@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA4MCBTYWx0ZWRfX70BS9tZbXsyo
 1exLONRoIv4MXowFcvgDc9TMC3z92Ryah2xP8tA+NtnkLeKSrTScojCGrq5OJPcwhqRfwjTdqgw
 X9BTUaxaHnzeWrO1+UyI3RTwRjpSHTLVMh7/V6ayDj/L4YvddAdaKl2AwwwnOmt9vr9EK8GPGoj
 5kEGMEI/gaFmcqB7dw145GGx8kRsz/J8Qp8IvLg0HHAD+2LGBrOWTytGVWzxlUKbBAiuL57JIfV
 QRKtvZAEgIFcGe7sd4TdFV1UNWezlUsvILePihoGqDYa8J6ERaIFgMxVo0rR+60suf7KJmRD7j6
 idn5xQVj8m7p4bmpDyyemuLf5pWPPbPjq06JAErwn6BWe2UsRT7M3bRFp8WVLIEW9F0bKkjVdPb
 vara7E6BbDI1cGXppvw+fIYPDQIbrQ==
X-Proofpoint-ORIG-GUID: vYNfpQt0JY85Y5uI2QRophTV-8hGhVyy
X-Authority-Analysis: v=2.4 cv=W941lBWk c=1 sm=1 tr=0 ts=692981b2 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=BRLZTvTzQiK5oUZ-ObUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: vYNfpQt0JY85Y5uI2QRophTV-8hGhVyy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 malwarescore=0 phishscore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511280080

On 11/27/25 3:27 PM, Vladimir Zapolskiy wrote:
> Hi Konrad.
> 
> On 11/27/25 15:40, Konrad Dybcio wrote:
>> On 11/26/25 2:20 AM, Vladimir Zapolskiy wrote:
>>> The restriction on UHS-I speed modes was added to all SM8550 platforms
>>> by copying it from SM8450 dtsi file, and due to the overclocking of SD
>>> cards it was an actually reproducible problem. Since the latter issue
>>> has been fixed, UHS-I speed modes are working fine on SM8550 boards,
>>> below is the test performed on SM8550-HDK:
>>>
>>> SDR50 speed mode:
>>>
>>>      mmc0: new UHS-I speed SDR50 SDHC card at address 0001
>>>      mmcblk0: mmc0:0001 00000 14.6 GiB
>>>       mmcblk0: p1
>>>
>>>      % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
>>>      1024+0 records in
>>>      1024+0 records out
>>>      1073741824 bytes (1.1 GB, 1.0 GiB) copied, 23.5468 s, 45.6 MB/s
>>>
>>> SDR104 speed mode:
>>>
>>>      mmc0: new UHS-I speed SDR104 SDHC card at address 59b4
>>>      mmcblk0: mmc0:59b4 USDU1 28.3 GiB
>>>       mmcblk0: p1
>>>
>>>      % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
>>>      1024+0 records in
>>>      1024+0 records out
>>>      1073741824 bytes (1.1 GB, 1.0 GiB) copied, 11.9819 s, 89.6 MB/s
>>>
>>> Unset the UHS-I speed mode restrictions from the SM8550 platform dtsi
>>> file, there is no indication that the SDHC controller is broken.
>>>
>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>> ---
>>
>> 8550 has additional limitations. One was addressed recently with
>> max-sd-hs-hz (HS mode can only run at 37.5 MHz), but when in SDR104,
>> the frequency must also be capped to 148 MHz. I don't know whether
>> the driver respects that today.
>>
> 
> This frequency cap tuning for SDR104 speed mode is not done. If I
> remember the story properly, the frequency cap for HS speed mode was
> implemented in dts instead of being a pure Qualcomm SDHC specific
> quirk, because it's possible to workaround the limitation by slightly
> changing a board PCB layout. Then should this new SDR104 quirk be
> considered due to a property in the dtb as well?

I think so.

> FWIW, comparing register dumps SD host controllers on SM8550 and SM8650
> SoCs are identical, should HS and SDR104 quirks be ported to SM8650 also?

A document says that in 8650 and 8750 (and hamoa) and newer, these issues
are not present, however the original author added the same limitation to
sm8750:

https://lore.kernel.org/linux-arm-msm/20251026111746.3195861-3-sarthak.garg@oss.qualcomm.com/

+Sarthak could you please remind us why it'd be necessary on !8550?

Konrad


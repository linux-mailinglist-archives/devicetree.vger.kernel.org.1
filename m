Return-Path: <devicetree+bounces-244962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB88CAA9D1
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 17:12:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B89083009F05
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 16:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C5DD2FFDE1;
	Sat,  6 Dec 2025 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SWXYd1bt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z4CL9zvQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAAB2FFDC2
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 16:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765037543; cv=none; b=onQ27hJUArk+wsCsvQcpZp8YmAzAMozXkwXz3ruf3gTbZbwoDEuegiFzYpNgVbZBNHZRhL+YncADH2fv2UzD/4Rz4gdWIIj3ir4tUZaBYiqqkZ/zGqHRJd8S5SCTPcSeKQ/kpHbM5Vjf6qWKwvWUXZrcsWgMXXOdCedydCIQahM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765037543; c=relaxed/simple;
	bh=PSUb299D2dYUfFweRiNrtxHWpDEOy5t5wSnP8271FXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c17iI+kJW81OFlH45GjsdhKlHkDO7poHLpCOTatBv1XiTQuKHKWSqg3pyZqgrOqvobHBlsGQtgpOC/RJjWBiQNf6t2AdIbJ+bzPeuZuOpmzz5pSbTD/TF1pmHUq+gPMXnKBgXQHFrUAAl/7+i0p0VbG0ShA6wJ/gTDPWygaJ4BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SWXYd1bt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z4CL9zvQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B69qrV33521786
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 16:12:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OcVXm5JIAcyGqoJflm6whI5XkmDpNUJ6dOT69v0sFpE=; b=SWXYd1btFwoRiND6
	APXPBBWva/xapGbLe6jvCaQoqCg7rFIzguszDcjP5q/VXt+fryuAbBjZoXp/g9v2
	5EPOvmdq8St19MJEzKJ0iQYQygljJBcW2/nI3R/7oa1FKRTSOfKTCZ3zv4n9vgH+
	t3v06kbPSGqzWn2/hNgOmrfPffchqpORgTn2PlFxoiFqaUJKmToHQmiuhkyWffWz
	NfTDkS7/xcmSnoRg+Hv+9BgPw9T1XUWT6BC50xZwZJwNkTFsedX04R2gzjHEGVfT
	1Yrgv3iSVwPSYc3r0CLGlCqPy0C86nGsQGDVtDo2QNwr2kZcjSOupnxdu5x+4dGc
	AUqpng==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4avc2wh1rm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 16:12:20 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2958a134514so3969295ad.2
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 08:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765037539; x=1765642339; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OcVXm5JIAcyGqoJflm6whI5XkmDpNUJ6dOT69v0sFpE=;
        b=Z4CL9zvQL3TWViMItEjM+lSh+9ldKEQ33pi2ZqLw4XiyPWxEdaG/3X7F53wGykwzES
         Sb4a/rkwT1PDT7RQ5OiHAzBDPew70NcaIBb3kbps6fU2m3bliAW24gBoJxOqQfySJUAs
         40MsqRMoXY8UYVoWIkUJW9s+PXKzZ9kBBstYuGgLpgGUIA4EieNuJzuDL5X7V+LrMoF6
         ml1sEpqYmTTFAcit42woRm56VLZuq/jEDcKlkM2GwW7Wtgm58rhEbVo3xbICE+7t/vpx
         LnDwdMl2lmEiXTOuQDhSa2Ki1stI67ZFChqmfRigcg4iDLIiDYoX+SD3x79fVOZQBazu
         HU3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765037539; x=1765642339;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OcVXm5JIAcyGqoJflm6whI5XkmDpNUJ6dOT69v0sFpE=;
        b=LBJYG2oSFwJHs+1fZ8sj0BAI8aAU2FZi6TWMH6uYuny7AeGZPU4ul3QZAKt0EOSUCi
         9UYa1r1jDQY4xoSXg8ACZ9xN5YZurYPf/OHyARNq3n2bdFd1jB2eWutYQkskooYFMB8l
         58S1Lh+PcyOCCYuSzthd6p/VETGGpSOu2YHnXiCJmCVtwG4oh4FxDCATjtF6jIuHJN9n
         iRodHggMyRuYpt/V27gRCpcUpCCv8QRlzwlCd0otTsJyfsSJ7kNKZnItqXxCGs4ANfYh
         g9x/u38Y1PQs+QhYAYf1WoKFVQwzBbV/civw3YHiX2bG1nBmAmYHQIPSTnimHEkfvTIj
         XD5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUBKY1o8U1yd3QWxVnPBcBH7kjg5FhFGBp6BuQ0z+raIXSA4AXrySb3DIAa838LRVd7df5YjTnrEJM9@vger.kernel.org
X-Gm-Message-State: AOJu0YxHjC3JRilfvQLgxSqHj+BWfllAyvcxdPmsFVOq4tP6u17Ufz9d
	7o/RKeWaXO5jL86H+T9penXOwu7dOrNXv0JQ9V2mWNNYNAMc7FX9fCpPl1dWn4IHen7Uh0C4OW2
	bBNsuiXkQouI8nNhvcJ6bT6aTJJ74Uk0bNfjBVcXy0Jg0J6TXBOI80mYy33RXtDu+
X-Gm-Gg: ASbGncsspTQQwbIFI/VChL6HoIGBcGI0v1GhhafdFttOXQbjeE+djaxOPytEBt7qHhu
	DlgsWZTprLnVAU9KD3fytfkFK28yf9gbPOgJZxk66sn0vg1NC19URpxFgncx1EzxL3vac90q3Mr
	gNnBVydru68m44qAw9+dzJv0pUfkfxNMh8eIezUUpOc3ZjRFnj3yvzgVc24Ysrg/c0rzVAzgBpE
	0o+6Qxvup2Vpvg9ZAy23t+GuDpMTaOvOacI3cASF6rX1CAkBtNQvY2MrM/WZeKuGcdd97JwdLBk
	4EfuGtu1938MpK0chn+iHiUjdMVDv3R7fpi5/3tncqb+mG3TSJHmkLqC6RtV3KPmiw4vh2BLv7L
	GPfz/NPypoYuXxQWRUicL1ZiTXCM4iiUB+bjBoAG50sS47A==
X-Received: by 2002:a05:7022:f89:b0:119:e55a:9c04 with SMTP id a92af1059eb24-11e032ac37dmr2065782c88.32.1765037539112;
        Sat, 06 Dec 2025 08:12:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE6Q72hT1tfm6ehPxRu0e2geTtWEprk5QX5IDwHV/oq7L2zAoa9XsSYNu2EY3vjHRgUFdsabA==
X-Received: by 2002:a05:7022:f89:b0:119:e55a:9c04 with SMTP id a92af1059eb24-11e032ac37dmr2065761c88.32.1765037538505;
        Sat, 06 Dec 2025 08:12:18 -0800 (PST)
Received: from [192.168.1.3] ([122.177.243.159])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df7552211sm31523490c88.1.2025.12.06.08.12.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Dec 2025 08:12:18 -0800 (PST)
Message-ID: <b772d61e-ba75-4f45-946d-211a0bb755d0@oss.qualcomm.com>
Date: Sat, 6 Dec 2025 21:42:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add
 squelch detect param update
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-3-krishna.kurapati@oss.qualcomm.com>
 <755b7579-757f-4ced-b3c4-39c20e6b25a7@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <755b7579-757f-4ced-b3c4-39c20e6b25a7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: HyK01XZvfVf6m1H0GOlEjp_JDJgCx7LK
X-Proofpoint-ORIG-GUID: HyK01XZvfVf6m1H0GOlEjp_JDJgCx7LK
X-Authority-Analysis: v=2.4 cv=d774CBjE c=1 sm=1 tr=0 ts=693455e4 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=mGeNq4HQZpM0LKVKY7z1pw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7OXqrvXZNe0mwyzepZkA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDEzMiBTYWx0ZWRfX0R7CYfzLfsQg
 Pc5nNbiyYkvMs0VP+FmQiyxw67I/sMQiZNI9RDnl3coqybBgpV2YinnrTNji1xmZs4XNRHYFFHs
 ZrBCcbzG0/vTswhA57QTBzQxcQtGGJsyFRP2pMUmbRAr3MkNAetT/7m1JPW33pey7yfZSp716gR
 /gekD9gV884CqBySgOi5KhmfiY7BlC0RgQSvgZ2zAfz28SiHVeIHtiiuqdSxDAwtX/0XyzDiJXA
 Bqk1J1JX+6u31wiym4GO/88zIGDHJzOZ12I58YPBlrvkdJxCFXhTlOg85GAm9Da4b+PRo9yHRl6
 cb2rrd2RcVa3sSgPVEfSZeAHD92es1sHBRKzqZ38v3ZZoajNkNMDNp+db0gimsA0eqLI4cmBygs
 0Xz/CFZrMXsAr7wcSgGV3ZjXr0wutg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512060132



On 12/5/2025 7:01 PM, Konrad Dybcio wrote:
> On 12/4/25 5:46 AM, Krishna Kurapati wrote:
>> Add support for overriding Squelch Detect parameter.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 22 +++++++++++++++++++
>>   1 file changed, 22 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> index 651a12b59bc8..a75b37d4e16d 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> @@ -37,6 +37,17 @@
>>   #define EUSB2_TUNE_EUSB_EQU		0x5A
>>   #define EUSB2_TUNE_EUSB_HS_COMP_CUR	0x5B
>>   
>> +static const int squelch_detector[] = {
>> +	[0] = -6000,
>> +	[1] = -5000,
>> +	[2] = -4000,
>> +	[3] = -3000,
>> +	[4] = -2000,
>> +	[5] = -1000,
>> +	[6] = 0,
>> +	[7] = 1000,
>> +};
> 
> I forgot to ask, do these values apply to all of the supported repeaters?
> 

I checked smb2360/pmih010x_eusb2_repeater and pm8550b repeaters 
(SM8{5/6/7}50/ Kaanapali/ Hamoa). For all of them, the above table is same.

Regards,
Krishna,

> i.e.
> 
> PM8550B
> PMIV0104
> SMB2360
> 
> Konrad



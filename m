Return-Path: <devicetree+bounces-249335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A16BCDB1FE
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 03:03:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3F7F03024E6C
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 02:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6765C29BDB4;
	Wed, 24 Dec 2025 02:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZqMdG4ks";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CN5PY0yH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFED9296BD8
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766541816; cv=none; b=GkjarzqIhUcmzXxEVRCwqBbNFR8ow0CGhabUA3YWqqTD6jfv0Xg1AgqrtvHFS3hFc8ewLv2oHA85/dLTgMjqj9409SwQmyuLbSttE7C/93A09E4RPh/K7FmI1jhjQ03ZovzZuJnnZJ4Ljg1gSepLdkNtpiRR2ux6avqBWoU8K5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766541816; c=relaxed/simple;
	bh=2lgQhrd1omkZIwWvEB/uBBUReUDgxg3t5G+xH/WqZX0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sO+pQhJXuv/zjIdk0jtIBiNlCKHA6gXR30kaoFU0LaTCobqENjO0AEuDpskqFUBJCm3a7RCy7yIKoBUdJuccZi1LY85mBRf7TkKaDteEE248OEE4R2nGvlkd8REQ+IhyEfYXMzfQMzptoBJtgYxzBsiqMTaWOdeewMS3SYaDcZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZqMdG4ks; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CN5PY0yH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNGOGBi1018267
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:03:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xL3Tpp6pZbai4g7KclDDDOvNkJIOWjTjS3HevNO6yE4=; b=ZqMdG4ksHwpOdOkh
	KRA/fQDqsL18C1pDVwddSYLMKpHmAEKEiJUL2ZeJlu0Sq5VGYY2z88pJYEVXm2LT
	Ufv/zPR9qFeDVgWKH3CbdSBVd9CIC4VefyAEwsW+SYiuwaNkYbI5ADuyBNmJS4bI
	kvpfDAwfFzVjKinCno5S2vTDNnG1JeH7AU/v49WA2uCK93UNFhL6867mPw6t7M9o
	hA1uLiQFdkgCJqzZY45ScDa3BepPvkieHu3J2QnS/giPA4qQ3b/T2OBLLcaHjy38
	6AZFyLRYkgOg2kCAhZK1lAF5U5O6q9TO8/c8sa94XTwXsRhG3P45n+O7DhgxD/Fo
	6P+3xA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7xjs9ean-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:03:33 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f29ae883bso79052455ad.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 18:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766541813; x=1767146613; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xL3Tpp6pZbai4g7KclDDDOvNkJIOWjTjS3HevNO6yE4=;
        b=CN5PY0yHz4lZ4yUU86KaeBJ34gClxOY8ZWvwNdds3R0VOGdRxdqsQ0GsEMJn/kSLKe
         OSGVGeRoISlsQEpuWc9YcMPZnLkCM+BPpI2B3zJG3uItQEGaDKXBhFgfq4YAtZGn/uBF
         2wjIlMILDYQvVRM9lua2R3SgzRderWAHhiBd/qBJl8gx05MJwXizdZ0HoMsxqtRUowrg
         gJ0xSS7XkoXRVsbsMJKLtghlH4337RHIT8tcHZBJbZ3qFYxjgS3vQkq1qranu4DCzOVd
         qoKIOM3iaYYKvezIxhjGjW6Lu7yBtDHY/Jy1TiI1L/u8HSdU15Zt6ga39n1efPXbCR57
         W2xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766541813; x=1767146613;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xL3Tpp6pZbai4g7KclDDDOvNkJIOWjTjS3HevNO6yE4=;
        b=AH5lIXWr/SzlB0USMzzNrlmC2LK9rZVNQIEgP5PbVOVIfHL/y1CyeiSCjYVGCNomTl
         aqAtg/RP/B+tPp+9hx6T8rme21LSNfNd37c6ukc4afJ5vnIzcZuAd2Qgq6iOPiLFgNsr
         ut4gmaK0k66rfhlNcVEi3mZbJD52e9Is9QLe4FcBlu9rocnqXTjZGYY8elYhSc7x5j/m
         gE5tCh73pi9ykzsxkJpeo9kmBI8+XPVHUrKibuvMd0eOMeqYCMproDSJ4krzZnxfIOtQ
         pdNYN9XbCsJpsmOLQl6W86MThL7OAilZGhOwmZFZUEwZDH/WOpJ41FpV4q/fBRhGTxHH
         tlSA==
X-Forwarded-Encrypted: i=1; AJvYcCU4SRIjzbYpQI4XpvTtMZOg/VCE/lEoElRAN1YQ/cwemnmeoxc/gqDH5KU9JCFFoSneFsv0mBuE0ZKR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf4giKu4Uwntpd4eNHeWy0kwKHqGbL7fkYRATj4X4U4C53MmHH
	bi2ows8KaIqJgXYax5k5IqFEHEg8VSGETzRS3mrQH418gRZDyXiiHMZqZaKHrjGiWT6z2fqzJJ6
	JJBsG3QxyyDoN7reGp4rWI0ZuQzNyMnkVtxcSJpBrh0q1cCUJXtOR9bauvX4UfU9P
X-Gm-Gg: AY/fxX5CsuiT5B7V3VsdfQSjHjcmIOjADSFM1S8/jFfBbtnWKx1Rn0CERz6E2zgpxuC
	D1pwlm0fQcU+fYasFwIFY1HXNjeb4GhVToTg/buwxA7As3plgxecampjZ8Bn9y3EQyh48RmOua+
	zTG8tKwD7MH97oDwBoQwNnXKguD00BG4eVbtvL1/JsBJGc0vkLZD31whhw9oCk4ycKRRWq+Jf2l
	93oNQyB8X9LqJqTY7tkLBwJbr7ynErREonK3xrVm1O2lPZIIVeb2Iz99CcYUkofWuz26fcAifcg
	gKiVHFLphSmgJDg0JLza3iye2pmmw9dNig9HVntywZ/YA12yDjnenP0wX55nE6Lc2KPZX3YoH1L
	C3m0Yd7reAayE1vbBOW5/gJ25wJh9EQBsuF82o3dvYT1qUcKXTx00AEZ/4Hst/Vj2KGpefYuFoc
	LNsA==
X-Received: by 2002:a17:902:ec8b:b0:2a2:c1a3:63df with SMTP id d9443c01a7336-2a2f2830da5mr152283195ad.31.1766541812679;
        Tue, 23 Dec 2025 18:03:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTK1C6bMSBRfXGE8NlmYLuVksrS7gLbAJEAkCTMKhKFxyr/NDt/ruFY7Dh/ymmZypbwT94Gw==
X-Received: by 2002:a17:902:ec8b:b0:2a2:c1a3:63df with SMTP id d9443c01a7336-2a2f2830da5mr152282885ad.31.1766541812139;
        Tue, 23 Dec 2025 18:03:32 -0800 (PST)
Received: from [10.133.33.19] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4cb82sm140523475ad.52.2025.12.23.18.03.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 18:03:31 -0800 (PST)
Message-ID: <d38a785c-d4fa-4014-b0d5-3ce0fb0448bf@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 10:03:27 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Initial patch set for PURWA-IOT-EVK
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <dmdtwsdwl2bl7mn6j4d4xv76h6bo57van3ni4zt3iapq5bonsp@rxoqan4nahud>
 <d8642ba4-9a6f-4fb2-bd0c-419ead2630d3@oss.qualcomm.com>
 <0593cc2e-0114-404f-929a-0860d60afefb@oss.qualcomm.com>
 <febd6ziruli5qqk3vk5v44agpiorqb65miinsc53xomoqtynih@l4kk4xpmen4i>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <febd6ziruli5qqk3vk5v44agpiorqb65miinsc53xomoqtynih@l4kk4xpmen4i>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAxNSBTYWx0ZWRfX56hO51SO8ceZ
 h8qUzf+jcQ0W7rUz17fY1sXj2pDk1m9igh5Ui6Xo7iW5J4U5cUDSMhtFS56OE78whjgzvjEZsfw
 LHDi22lvBMhuLoJPx84/xUz8vsPYAIas17mE0Ygdf3KmT2q8ehXJd6bcCVNVi0uBEQv07fK9Fds
 n7/xzQa67SOBC1yqBwcNA3fgtbvcggH5m3Fy2l48LJkHIFMWwU30gH4m01qujiYUaiJ1/liObzs
 xoKO1VlSq+5IBv4bXUZRwV5c0bCJijlWX1Ff+bEBv/77p8Atip3lMJC4qyVTbhcU2stRG4xBZPt
 Rxs7fsN1VXtWomGpuDlvVAWl93RG0j/0fC3SwjMlW3WSfFU7jjwvnEdoTW9tx2gNhxWlG3EZ4vd
 fQ53Xcmi07FfO1XfdXj88nBQZqcAyehaHbnaOk379O2T6TF829WcWjXZ6l+xRpDtZN5GR0j3UAX
 dOujt5cTiwz5DhmEB7w==
X-Proofpoint-ORIG-GUID: NxSuTu2kOC7LspUdf8viMVhq_s9puq3k
X-Authority-Analysis: v=2.4 cv=YcqwJgRf c=1 sm=1 tr=0 ts=694b49f5 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=5dvyyB_Sgsdd-Qve2IUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: NxSuTu2kOC7LspUdf8viMVhq_s9puq3k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240015



On 12/24/2025 3:09 AM, Dmitry Baryshkov wrote:
> On Tue, Dec 23, 2025 at 06:27:05PM +0100, Konrad Dybcio wrote:
>> On 12/23/25 3:12 AM, Yijie Yang wrote:
>>>
>>>
>>> On 12/22/2025 5:18 PM, Dmitry Baryshkov wrote:
>>>> On Mon, Dec 22, 2025 at 02:03:25PM +0800, YijieYang wrote:
>>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>
>>>>> Introduce the device tree, DT bindings, and driver modifications required
>>>>> to bring up the PURWA-IOT-EVK evaluation board.
>>>>>
>>>>> Purwa and Hamoa are IoT variants of x1p42100 and x1e80100, both based on
>>>>> the IQ-X SoC series. Consequently, the two common files in this series are
>>>>> prefixed with 'iq-x-iot' to reflect this relationship.
>>>>>
>>>>> PURWA-IOT-EVK shares almost the same hardware design with HAMOA-IOT-EVK,
>>>>> except for differences in the BOM. As a result, most of the DTS can be
>>>>> shared between them.
>>>>>
>>>>> The changes focus on two key hardware components: the PURWA-IOT-SOM and
>>>>> the PURWA-IOT-EVK carrier board.
>>>>>
>>>>> Hardware delta between Hamoa and Purwa:
>>>>> - Display: Purwa’s display uses a different number of clocks, and its
>>>>>     frequency differs from Hamoa.
>>>>> - GPU: Purwa requires a separate firmware compared to Hamoa.
>>>>
>>>> Is it just a separate firmware, or does it use a different _GPU_?
>>>
>>> It uses a different GPU.
>>
>> I think it would be useful to call this paragraph "Hardware delta between
>> Hamoa-IoT-SoM/EVK and Purwa-IoT-whatever - because now Dmitry is asking
>> about differences between Hamoa-the-SoC and Purwa-the-SoC which we
>> expressed in purwa.dtsi
> 
> Nah, I pointed out that the letter is incorrect. It's not just a
> different firmware for the _same_ GPU. It's a different GPU revision.

I’ll update the description here.

> 

-- 
Best Regards,
Yijie



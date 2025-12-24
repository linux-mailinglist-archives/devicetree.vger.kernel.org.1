Return-Path: <devicetree+bounces-249334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEAACDB1F7
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 03:03:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB55D3025176
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 02:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D8F9299A8F;
	Wed, 24 Dec 2025 02:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y6zxDfae";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HBHvCplj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9B829993E
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766541777; cv=none; b=fl1AZjPmFcjeOZy9cSTa3Xx93+7qMuda+PKrO4KNQ92DMyeTk/s5dyDyr12od1YxPsUnoaZtotBoKqhOg9V+fa7ILzIbjL1IwcF/szBcJ/4/QRvXMZ/h0ca7wJmciaB+u+cwoDQb4b8aNwcDG4y9PMfDfEWTMRC85JDA7eAu6xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766541777; c=relaxed/simple;
	bh=s3RbOY+KJfp8gDMFFB/gXpA9Hr0lNFGtRYCB7dT0Eck=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DVBJe1iSZTHVwjhME3XHXtY+ij3RmYC+f1Jvtv5KfncOv8SxUy8ShxP77QgkWU0bvTi79mJyS0j9QIJLnowC42Ry4DA/RelPunse0Ty3W3T/Z1Hir74UaBFRHXkFu5YHpNg5GMd7/sZ2kQklfohYz4WAace4HmuwY4f9UQ7qnOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y6zxDfae; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HBHvCplj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO17Z6g1597843
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:02:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B7XMApf4M356H0/EMimSA2hX4YxArcmlpFCZhs7pdos=; b=Y6zxDfaeSoSUqkj3
	27ycm67l6qfZykQvJD1HBtgGc+TELLbegUjA+4FnVFbiPUqZVjDCs4gM2CPCbHBQ
	9+/H3BYRzGXhzQYUU5q3mGNFx5PimRerJ5Og29OQPb2LQNDwaETG6sMpmIbdKHk1
	qeW5/T470qi3bJoQtjJ1Q/v6rznsXRbf6ZZlBODgJ6pZ3U9yOpaigp4UOsvq5sfE
	GU/XJjG19FKgxNg32MhRAhN7yK6mlggJUOqqol+VzXseGN7IbCRUOaCwiSxp5LjM
	nV2Fr5jc4a1w+wwj+aRLBA0MA8BD/L4HC7sXEB2DTytcNe2w535Wz+oGPtdKwF/5
	DGbz4w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8683g3mf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:02:55 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b82c2c2ca2so10200709b3a.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 18:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766541774; x=1767146574; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B7XMApf4M356H0/EMimSA2hX4YxArcmlpFCZhs7pdos=;
        b=HBHvCpljyHwF7Ch/qv8e/zfSqthNVdOfBjhXBIsuyu53bjRyB5Vi9ztFtry3qzXmhT
         MDwbi2mxlJdZJjbtjDzsJpdziaeGdd/vDCOai/9/HC/930vU/YwT/IH10yTDvyUNXKjs
         bR+hFC/uw+6/SsiAjyh/bA/008KX2vzx3BTr7arZxwWVwxK9+PK95wz69NqhP57h1lWj
         6glLzhQ+V4PcG7raF0ZwNZbSWQgEquukLeILgd0IjQzYZ+kftSX3ainbx3fOj5HQXG1P
         bgKSDliiIo9yRlrtdQT66DLrQuGq8S/lbO+73hh2FWamYPF8HPxgfzRmKGA7Xw7Obnwy
         CLxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766541774; x=1767146574;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B7XMApf4M356H0/EMimSA2hX4YxArcmlpFCZhs7pdos=;
        b=kFh6S50llA0pN1xWkFclimkyE9875VYAwI8dzhmkrwOhh4clQ6zPtuqgamBUdoZ3vr
         k58nXzmytzUu5XgrgX9O3k73CvcgF+pBI7EeLivCGj42abEpkvSVocRofc65dHwjP18M
         cLpgcrCGvSMeDy8Yb7gG0BoXO7FfdjfAhfvX3va8PLYDt7fHpX4UdJcda4JXRmANc7j3
         +vGo58sE3QgB1DV/YBF4YkfZ8ZXkTM9XX2T7TWHPr1SwePWMd2igIQQ5G+69kyaAYiry
         3ce9HlS/KSIYXZikHQOCw+8PKQKUb8bfgUhe94dMAyeQwbYFFZz4WS+JMFl8v60lD2az
         nXsw==
X-Forwarded-Encrypted: i=1; AJvYcCWvJo/rOd3on8z7+Jv2iRV9kDP+uRSHli3SZbFUIxYH+ZmgZTDiU/xwJC/R69AUpZLwb33zA9mrJucV@vger.kernel.org
X-Gm-Message-State: AOJu0YxUou6ddT2t+z9sDuCwHU3KiqO/sR6sXj6ZMUTWPu0F2UgiO0L7
	tFSNbnvFDc/EzcQUnVMsjJVvYpw3db2xwitWCoqiSwEebA4OE2t/WQ5hhdluGDLn7pgcc7eE94S
	OJaG6tJ6uzKxNWzoBUphj+5keCxzFuE8GNAEKfXLP0hgeReXMSXqbl78GQ+FyALFP
X-Gm-Gg: AY/fxX4tVu8JhvX1f9r8fdsiLFIUp2kdmB5BSwLV6IyTd/hyy1k8gVGqvOAsJM2Quu4
	RYIUZ2nRYnuDamfKDSgL8iAqMp7IhG5jPav6a2FSRf5EVpWblJTyct9IEzczKjtxnFDn7ahi6gd
	xVxHP1zdPXo8C0VBXM0SgDZ5qwhC0LvZ5psKrp5eLCGgEEeOyh6yDdxYVQIBO5J0e95MUfs79vW
	u1jbXwOy5WHNpBLt9EKM0joUS6610IN8ULsybD+zmJu3GZwutTlD2sknxKdBK9uz03afKFeXiBB
	XATOr+Vuos6VoO7oX0bmBMZQJu49Imr7Ex96f8GKsBaXEYXNRThV9VehHDKEb8LdTtEt2eYFJEC
	c+u1wqhg9Wk5ZBb6iHx9BmVpA8ncF9yYGHT9CgbL4eA/76FcVfHgpQuIeSSLlahHeqLrQdI1uXy
	w+dw==
X-Received: by 2002:a05:6a00:368f:b0:7f7:1fcf:689c with SMTP id d2e1a72fcca58-7ff657a12aemr13269425b3a.9.1766541774411;
        Tue, 23 Dec 2025 18:02:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHwEfzFSH6knE5z3W4/0nmzVkPJDeqguLCnwd3faqIjKWRoWdccjf3i7D6d0TQHs6CZJXhCSg==
X-Received: by 2002:a05:6a00:368f:b0:7f7:1fcf:689c with SMTP id d2e1a72fcca58-7ff657a12aemr13269390b3a.9.1766541773839;
        Tue, 23 Dec 2025 18:02:53 -0800 (PST)
Received: from [10.133.33.19] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e48f3d7sm15071184b3a.51.2025.12.23.18.02.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 18:02:53 -0800 (PST)
Message-ID: <d15c68bf-1a34-4024-b508-dc3f2676cdea@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 10:02:47 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Initial patch set for PURWA-IOT-EVK
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <dmdtwsdwl2bl7mn6j4d4xv76h6bo57van3ni4zt3iapq5bonsp@rxoqan4nahud>
 <d8642ba4-9a6f-4fb2-bd0c-419ead2630d3@oss.qualcomm.com>
 <0593cc2e-0114-404f-929a-0860d60afefb@oss.qualcomm.com>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <0593cc2e-0114-404f-929a-0860d60afefb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: CzNCiSQAerJF7t70j1Pyxo61dvi7hzfl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAxNSBTYWx0ZWRfX8a29nMJxPs2N
 BSgd6Oz2Y0MymULvnzvy0FI6afYnX/ja6zn2XWSSkCnT5sYeeOOLPdJNttzCYfZQ4KJX661KeKe
 KiTJmjHtWn2n3TBBMcvEgZR/WzGzJbRdyat2vJHv1M8zBZxdydJ2BAzgu0+G2OrdINFVlziagXt
 I4Wn/Ytx8gLNy4VUwqzk/csKkMK2gg7DphCGhTcGJk6aw47IQXA+Ovxpxa3P5X6dyuSJEKN07LJ
 StbKMDCtavRJpGtxGMXKAfR9YmQjHFB+srV/u7posJ4XlLGrcjLTVtVhYMiI3Im2cBe7h0/Eecb
 fSXlsfnhhFYjKhF4uh873KLHk79XUz8dmz9DJ3fep0fztXi+wBaLJxEZ2IOlJrS2T40eu2a9Y0m
 9vfoWeyxrDssCWmL9e1kIyzXjC8AS3VzdN6oRR+kC/2CNn+dRmkVDcf9gC7Ir3NJCy3p/dVh6iE
 xLCkj1rzRY194Akl7ww==
X-Authority-Analysis: v=2.4 cv=HqV72kTS c=1 sm=1 tr=0 ts=694b49cf cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=OLCPRHAsNVESI9y_fZsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: CzNCiSQAerJF7t70j1Pyxo61dvi7hzfl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240015



On 12/24/2025 1:27 AM, Konrad Dybcio wrote:
> On 12/23/25 3:12 AM, Yijie Yang wrote:
>>
>>
>> On 12/22/2025 5:18 PM, Dmitry Baryshkov wrote:
>>> On Mon, Dec 22, 2025 at 02:03:25PM +0800, YijieYang wrote:
>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>
>>>> Introduce the device tree, DT bindings, and driver modifications required
>>>> to bring up the PURWA-IOT-EVK evaluation board.
>>>>
>>>> Purwa and Hamoa are IoT variants of x1p42100 and x1e80100, both based on
>>>> the IQ-X SoC series. Consequently, the two common files in this series are
>>>> prefixed with 'iq-x-iot' to reflect this relationship.
>>>>
>>>> PURWA-IOT-EVK shares almost the same hardware design with HAMOA-IOT-EVK,
>>>> except for differences in the BOM. As a result, most of the DTS can be
>>>> shared between them.
>>>>
>>>> The changes focus on two key hardware components: the PURWA-IOT-SOM and
>>>> the PURWA-IOT-EVK carrier board.
>>>>
>>>> Hardware delta between Hamoa and Purwa:
>>>> - Display: Purwa’s display uses a different number of clocks, and its
>>>>     frequency differs from Hamoa.
>>>> - GPU: Purwa requires a separate firmware compared to Hamoa.
>>>
>>> Is it just a separate firmware, or does it use a different _GPU_?
>>
>> It uses a different GPU.
> 
> I think it would be useful to call this paragraph "Hardware delta between
> Hamoa-IoT-SoM/EVK and Purwa-IoT-whatever - because now Dmitry is asking
> about differences between Hamoa-the-SoC and Purwa-the-SoC which we
> expressed in purwa.dtsi

I want to provide readers with a comprehensive comparison of the two 
boards, Hamoa-IoT-EVK and Purwa-IoT-EVK, covering all differences in 
both the SOM and the carrier board.

> 
> Konrad
> 
>>
>>>
>>>> - USB0: Purwa uses a PS8833 retimer, while Hamoa uses an FSUSB42 as the
>>>>     SBU switch.
>>>>
>>>
>>

-- 
Best Regards,
Yijie



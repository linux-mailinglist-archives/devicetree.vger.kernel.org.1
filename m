Return-Path: <devicetree+bounces-223771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9211BBBD65A
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 10:56:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 358853B88B0
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 08:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03B35262FFC;
	Mon,  6 Oct 2025 08:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NyuYs5Nj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C242262FD7
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 08:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759741004; cv=none; b=QLZOX1y9Xahj/2FcRhr2oHlUrTlaaQSIJauMiOKgAGsSVjZHQc97HPSi0LQifzk01N22x7O+aX30iO4sEjBvuUNxwDsFk7ZLqATgkkwMzS7M5NMEfelsOAAoSsr+7yE1xqiHZVVB5VnFEPP+6j8E+i0me0pRzKDNcypMFXdzhpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759741004; c=relaxed/simple;
	bh=C2omfl574gD2ono+lv2W/kKwtT21KCG21bqTSBm/BVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MzcUacciC4DiOgeCkPqp7V7qyXUymuQlxrXTu4+0/NAj61deweGTGC2/LQISsq8NnwK8+m9Bx2otBxRwGAulZIWXfsyJndsLc8uw4gPZZMlHwlVltndbZSRqfQE0df/XM1s82nlCr0+Uhzytg9ERs6s3Hdx4s9V7GjzXpNvRxbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NyuYs5Nj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5961TvuA017137
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 08:56:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Yjh2mJsH3wh8l1hz1Vv8zbtvWkAVhWXkLeApwLwy7zE=; b=NyuYs5NjvEepiQWm
	nZMOJJf2FCCimlJlK7Tm56vv4SJ7HeGblI2ANNaG3osV4ktVSFEjh4z7Vkg23vfQ
	1zJniOP7x6V8QhKbNbDRzVHl1ZRmTRpTEhlGBPhBcyrcfV1MZpUtJ8n6OHy79G++
	/hxwQVvehYMosbBQXX00Z+Z1GPl1bqAvOu3g0XKzklmYwBvjrsW0wZE9Fz+i0uyH
	nQWDXudsQLRiO+Mm3Ok4GPuZ57KkypDqtx15cClfvvJBdPStA06i8ReluFysriXL
	FgZVJAd8lQWN+NHJKes15aoJ+tcqijO0Qpu5p2uLsXxS+dwfB+PoSGGIfzTrg5h6
	BxFHXw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtk6ufcg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:56:42 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7abea94d621so10475936d6.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 01:56:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759741001; x=1760345801;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yjh2mJsH3wh8l1hz1Vv8zbtvWkAVhWXkLeApwLwy7zE=;
        b=DukAeYr0IcQsKSDiLBvRMDvDcTqVwFLErroRZl4SlFlVGiE2+x/3y5wQWjWE+DBl3V
         bdDe2Zqc0gLobOo50rM3eYnHfzJlMeiHA9W76b81rSZUtHptKIJfEASDrttDI2oMTpbc
         ZssX1srAZ5mXJtf33HfxEwK0ADLU0VpIbyF2/7rTuLBzbpt044+ap0Ey4m6AYgtU9trO
         LX6+SMxgJkz2raEHzHd6Xi8Yn+I/B8nJP1hYUUZsFaXTfVicwI457h4xgmtFDuiL7TRb
         9rGwl52vMTPDo5A+CVqwFeiLI6sYYLVa4Bs2nqYcmuNRJ+FWTs+US/SHrwGX4rdOFqwi
         uLdw==
X-Forwarded-Encrypted: i=1; AJvYcCVwxco02j2bMrZyvaVayuUBkU68RhXZz5w6GLQeUpniJGYbsuI88VKo0dh2ACtahwWECv6MSCp1ePk0@vger.kernel.org
X-Gm-Message-State: AOJu0YxsrngyMG4vBCNh2A8PElLsdPWihshd1bK2/Mkt1S2QhHtfLrzs
	+Mrxgt1Uz4FBVQ/a/EzZsvuEAOwHEVE9JworQUdS46YnohCLbPIePhkY+QlFJVzV4s3uJ0Sduz1
	7rvN5PemOm47lgMeASsZbuHEqpBReaquPs+kAasiHcAtKqMI7LA82ERVUJTvIqC9tmQFgsqGY
X-Gm-Gg: ASbGncutmgoCzLqkcRIvzZyYfyh6FYl5ICaPDzkb2iKaO7/U5NPc9esTiTMVamjq6ic
	BPA2DqlIEo3jnVPQkmKra2tIzb374d+KC5IAuTDb3J0FmymeCHV+t0rR/ktUNHDMOT+dW1H64KM
	kxkhI4DsnukcPCEN1yf0V0DGCPqBf8QrDWLo5/tEqUmplmPYZ4NThiiDAXnvksNisPLaLLtwZu4
	GteLqrsBsTRKw7V82U2/H2vJrsvdmP83Bv4mKn7XTAKZsLMlPTmShPtFAf+NiCeZaSAhWZsHHbP
	dBN1iF+CnYksvl3grnBnRkaKEAwQxyi0KQjNuN8HX5L0O4y2IyTQoEWx5+l5Zu+FC+exQ7ReoeZ
	gfDpOO7cy6dpv2y1rkTy2+Yq5HHA=
X-Received: by 2002:ad4:5c47:0:b0:798:f061:66bb with SMTP id 6a1803df08f44-879dc797715mr100210356d6.1.1759741001441;
        Mon, 06 Oct 2025 01:56:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0OQKFczpahw2O8L9QZwt7i0MonSjf+thtwOfz9wrUrSWSLA9gRN1ddmOoMuJB4neL7R5W4g==
X-Received: by 2002:ad4:5c47:0:b0:798:f061:66bb with SMTP id 6a1803df08f44-879dc797715mr100210196d6.1.1759741000877;
        Mon, 06 Oct 2025 01:56:40 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6376b3ad614sm9601450a12.1.2025.10.06.01.56.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 01:56:40 -0700 (PDT)
Message-ID: <72561ba0-88a8-479d-8f9c-767bb00c964d@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 10:56:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/24] arm64: boot: dts: glymur-crd: Add Volume down/up
 keys support
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-16-24b601bbecc0@oss.qualcomm.com>
 <cd91e7f2-72bf-48f2-891e-4e6cd36b1e24@oss.qualcomm.com>
 <CADhhZXau4EPEvf6Ngo+p4Jv=NPF6TYxcWtt2tV+MyrmOxp7OOQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CADhhZXau4EPEvf6Ngo+p4Jv=NPF6TYxcWtt2tV+MyrmOxp7OOQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNyBTYWx0ZWRfX+hH5V8pDcBrw
 AGm0YCbQ5xbcCSzeH2fIGzr5qmIAnmi6Q4Ew28gPzEl9YS7LRNhAs/CxNqicb+Rn2Nit0On4d+K
 xtcyhuuDKveitO1pkobZbqA0fV09ciJf8uDDM3xr2efXgnRUgZEEjKjeZMpgQ4mOblnXER0nTKk
 iKI+fExX58dY/xqVazmAo9AIx2sPNDfJviCTBEdAdejLwD5JXVrAzxLFDk18WN5uEgyxuarUmEL
 +jmLrAprjjEITz76WkKbHY3UWU/4wr/r/EKpplE2qeKgzVrVXnzlsztC9+aiXZBSzKAMzDx5v0t
 FTjSEf5lbEi4Ig/UxnOWPZfOw7bsvbmgrv6yqmBTDJytK7dh7PtdaVy96uMShqMfetQuHSTP4AK
 O9waM3BXaShkmDY+cn4JYcRYxCfw5w==
X-Authority-Analysis: v=2.4 cv=do3Wylg4 c=1 sm=1 tr=0 ts=68e3844a cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=ldoIggxhy9b6zNnRIFQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: wxuGmsYZwhudbQfLN9xxo0J2T-A1F-gb
X-Proofpoint-ORIG-GUID: wxuGmsYZwhudbQfLN9xxo0J2T-A1F-gb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040017

On 10/1/25 3:48 PM, Kamal Wadhwa wrote:
> Hi Konrad,
> 
> On Thu, Sep 25, 2025 at 4:46 PM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 9/25/25 8:32 AM, Pankaj Patil wrote:
>>> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>>>
>>> Add Volume Down/Up keys for Glymur CRD.
>>
>> Does the CRD have these physical keys, or are they routed to the
>> debug board?
> 
> Yes, it seems to be routed only over the debug board.
> The keyboard too has the vol+ key, but seems no direct key having
> vol+/gpio6 on CRD.
> (sorry should this patch be dropped then for this reason i guess?)

I think it's fine, but it would be nice to mention this

Konrad


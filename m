Return-Path: <devicetree+bounces-189947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3AEAE9F5F
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 15:50:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67A6D4A525C
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 13:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51FFD2E7189;
	Thu, 26 Jun 2025 13:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xn+dBHrN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D19B2E7198
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 13:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750945780; cv=none; b=ENzpLg5kuHW1MAhNk+snptOO7wCyZ2/RynSPlD534dH4/GeglIGdTCkf6zpVhCkc1nLdjqN+Rxhi2pCCqJcC2Tfuhre25WENkjEeby/0CeMUEQXwmsKUo4PZAalKnnS8AkJDx5zz8MY7/RGcKIgkvkd9cfPR+P4s995HzFCZ9Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750945780; c=relaxed/simple;
	bh=7soQAPGLWq1wxtwbCSjjPgm0cssslz7RgCt8zlMExqg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SbdmcGA0J4wixq48+v+HpwlO8mjrYcHw4pvaugkb5VZtaqEVSBektILTQsHql+fPSLlbE7vk8XiE6aIBgO8WeoW2pzCXY8IAoqLEK49VeoSH9xrUZ3C9e9LbeqFe9McMAZKpxfeHQMwBbxW4xSojP6Qkz2H4GnTIIGjhL25XdBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xn+dBHrN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55Q97vxT018842
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 13:49:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FKzdM9fMZXWLUOkRuS4r8lfC3OfMj540spQyqtt5veg=; b=Xn+dBHrN5VKvXc0D
	Uel7/VLxwftzvNcg9Eh+UXA2oDIDPpCMUrSFrToVuR/GTtxbE6cIaM6uB2Py1laP
	nxcMhFb9KNHBVokxxOa67AfuKG74utUlMGRlw4//o/kc5UvfBtYoezg6vpD1UoaB
	WqauyTTAPfuEVu9UMgd6nzlYj4/jq50NGJGxvyZI/UWnn05tJOh3E4cL4fvUsxCQ
	CXOaB+HaksjOHqBrFUZX16ZSs/oCBbfPgDQGmjyNKpOm23EajMWnHOahiUPXI+gF
	AbM4Vr0SAZMY+6UrVka8bOOBDDE9qxdoTJOwvYjPQh+z+HMyKEs4rRjgn9NnsPU7
	LL17ag==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g7tddebn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 13:49:37 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a5aeebad31so2679841cf.2
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 06:49:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750945776; x=1751550576;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FKzdM9fMZXWLUOkRuS4r8lfC3OfMj540spQyqtt5veg=;
        b=tZZOvNHSPVim/GbibdB8geRvpO1eLw3RINaTcLmVWjQtUOCnq8CWiX53sQsD+Q1H4j
         A/R/mbnYalG0iWUK5S8aOnlpmd/2huw9BSWKCX0O14mwUhxXUxUs2zhVrRVCnddGZNpa
         yofAe/NM/5FYhmqwEiwKKqle9BvmYWiqPKMvJgXx42mFsfIv1OGx5dDmNJyExpx3nqWV
         2li1lSOX+1NTb563jITlHDgpYS+W98GHE/J0Lw4pvUpXev7gloSypeGFNgFvOFT94zuf
         yG/MQnTqohHMQfqGnlNsP6uayvQUKHHu8G/RQUPdNpTUgWb82iXSajRWnUqU9TC0jYfh
         koGA==
X-Forwarded-Encrypted: i=1; AJvYcCVA05zKDKv1gS5DRXVdTDOiKYPfekth3f3xGCJZaJihoBSFHfliLrXmvzcT1iShHZzWWa7rBJH77WcP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9cu89M5RdbPykulGZGni7W6VfFYFINtFF412aSxnVC8L5MKmb
	+W5kqHaj0+WzesCDQvJKsP+mEIOk+dCKZdkndtfeowSlW4pVwwfikF/5m635BXWgJD3ad/pLbin
	nKtGYduvcjlwx72SLQ3y07sWr11HhLKCatSxe5NxRl+vZhUCfqfQHTBLgIXmZ5Xt1
X-Gm-Gg: ASbGnctx785XeW9f4OqK7G4c0xx+VX5LK7KrPJchC8Ui3rKygdZu3k69l6awnSUSNl2
	+o+m6QHS7fg7tPNx23q2HhAgxscO1fQ7wevBdGqK3bK/M+wRIDrGAnMpOTb9/1ht5tqB9VpMHPc
	5OQeSUCZN5Fid1aTlQpv5sS/vWp4WDOtB2JMD8mrt26dv8FtcaBG94xI09VLEHVUDlT41p7eEu+
	ev4JDLvxCVtKwj7/2RCQKaYAXl1xVXIMAo/mWAWLmT0T5jG2tXkrUOnYC1FdPY9Ma7UoUK3eKi7
	kBCJJGwKH/UeLQ9Yoyq32NBIpvJ9nrpba6Wpq4uLROGg7v8226hKF06ZvMlBoL8gyfhzvcJ2SJR
	XLwk=
X-Received: by 2002:ac8:5cd2:0:b0:4a6:f7dc:d0ba with SMTP id d75a77b69052e-4a7c08a54ddmr40139461cf.3.1750945776233;
        Thu, 26 Jun 2025 06:49:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEytgFicUwxVtuRipp+MGkdKAo/DZIZy/PYmxSSSPftdTFihChTHOMq2r7K5wZn4pDMiN9TDw==
X-Received: by 2002:ac8:5cd2:0:b0:4a6:f7dc:d0ba with SMTP id d75a77b69052e-4a7c08a54ddmr40139271cf.3.1750945775648;
        Thu, 26 Jun 2025 06:49:35 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae2143d8ee1sm2146366b.91.2025.06.26.06.49.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 06:49:35 -0700 (PDT)
Message-ID: <cae5bfbe-9537-4b9d-b026-170063054b35@oss.qualcomm.com>
Date: Thu, 26 Jun 2025 15:49:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] firmware: qcom: uefisecapp: add support for R/O
 UEFI vars
To: Johan Hovold <johan@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250621-more-qseecom-v2-0-6e8f635640c5@oss.qualcomm.com>
 <20250621-more-qseecom-v2-2-6e8f635640c5@oss.qualcomm.com>
 <aFloifxONXnQbVg6@hovoldconsulting.com>
 <aFlps9iUcD42vN4w@hovoldconsulting.com>
 <diarijcqernpm4v5s6u22jep3gzdrzy7o4dtw5wzmlec75og6y@wlbyjbtvnv3s>
 <aF0WGmnN_8rvI9n1@hovoldconsulting.com>
 <zufyvg4hoxxz4i45pynzta3gyglqvecrmeslnpphsgwmtujivl@t2zbdtejt3x4>
 <aF1Hhs0JAS747SVi@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aF1Hhs0JAS747SVi@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=CPYqXQrD c=1 sm=1 tr=0 ts=685d4ff1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=S-ZiAtxHWdWJY4AEpg4A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDExNiBTYWx0ZWRfX7HYqIVbxRhrM
 3cGPB/D3yEQ/f6bJA6pAFJzd1k18MNw4XDAL5TEEHMQdmBqQUH6LKeahSgcZ+HRVWw6YZ8Qm7Jc
 EIP17Ys2Hq03IkrcsaNtyq65BsLmw+MS22HMMpvemqkImqyF7JG+FbbBQ/10F2NEVx3GlJTNRbG
 1/x7AR1FyRyQgf6lT74D2hS5+2p2Ls6mkJKkkhgjjkCz/thuz21RMhaTNVVg1MvqVbauJCuqXML
 3KbGw4QLm8uNC2QuKqz02ZiHIjnCJQU7iCI5kSXnwcNaGn1XCyM+VZkQglxS0vMurdpcJSL7O58
 mbkJOmmkzhNb3cCsW840wA6q8YQZEOg6bOTJwSUcSVwdSU3T1VQcoIOpxKu2ymBQ1Cfc3Worxys
 8WP+jPSvbshOhL+WtDW9SGKtOiJX4ALPljZSIMYhSiWUT/vLObAQUyKonaiGp5tSplV0d6Uw
X-Proofpoint-GUID: W1ydQevfwXZ4_tIz1vjYg823bUxSYewP
X-Proofpoint-ORIG-GUID: W1ydQevfwXZ4_tIz1vjYg823bUxSYewP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_06,2025-06-26_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 mlxlogscore=994 lowpriorityscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506260116

On 6/26/25 3:13 PM, Johan Hovold wrote:
> On Thu, Jun 26, 2025 at 02:15:26PM +0300, Dmitry Baryshkov wrote:
>> On Thu, Jun 26, 2025 at 11:42:50AM +0200, Johan Hovold wrote:
>>> On Tue, Jun 24, 2025 at 04:13:34AM +0300, Dmitry Baryshkov wrote:
>>>> On Mon, Jun 23, 2025 at 04:50:27PM +0200, Johan Hovold wrote:
>>>>> On Mon, Jun 23, 2025 at 04:45:30PM +0200, Johan Hovold wrote:
>>>
>>>>>> Also not sure how useful it is to only be able to read variables,
>>>>>> including for the RTC where you'll end up with an RTC that's always
>>>>>> slightly off due to drift (even if you can set it when booting into
>>>>>> Windows or possibly from the UEFI setup).
>>>>>>
>>>>>> Don't you have any SDAM blocks in the PMICs that you can use instead for
>>>>>> a proper functioning RTC on these machines?
>>>>
>>>> I'd rather not poke into an SDAM, especially since we don't have docs
>>>> which SDAM blocks are used and which are not.
>>>
>>> You're with Qualcomm now so you should be able to dig up this
>>> information like we did for the X13s (even if I'm quite aware that it
>>> may still be easier said than done).
>>
>> I'd rather try to find information on how to update UEFI vars on the
>> storage.
> 
> You can do both, especially if it turns out you won't be able to have
> persistent variables on these machines.

The danger here is that we only know what Qualcomm uses these cells
for, not necessarily what the vendors with a similar idea could
have come up with.

This is especially important since (unfortunately without going into
detail), you *really* don't want to mess up some existing values in
there.

Konrad


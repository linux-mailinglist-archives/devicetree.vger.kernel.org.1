Return-Path: <devicetree+bounces-196265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 089EAB04D04
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 02:39:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E23D41886D65
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 00:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 617B519004A;
	Tue, 15 Jul 2025 00:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sg6YfY7c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D65361553A3
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752539941; cv=none; b=RaYoHdp1P2EsZWdYTeNomxXzFEZHe/g7LeBbz6aYkpDkY60ChHLzT/NKOcIJppJZubzvPOBztSty6RT2eJgvGyCykrdDrZG5BEjItstO9hdApXhsdXy5AIf2QOHKgG3pHKl0bSTy+cOBKRwc5IANdCdW93ry5S7L1ycyGpweYLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752539941; c=relaxed/simple;
	bh=c63CxCap64qcRtfZM2TY323KDbTANRLbCrd4PJ8AIN4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DsbRdYsFPJU4jLKoTQwTJ9ZhgnS3BaV0daIM6kuQkFgEoWEAKFOzPHmJPBtMOHJ3GW+qHXuCLgaNNU+ve+pRyi9MgwVDB4YxIj5t0EXyV85Zz05fB9L5x7VIKWO/HlCQu7ESi5XcBwrEqMon/XLT9rrOPUT0R68ylVruXdsO2q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sg6YfY7c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56EGbTUq006253
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:38:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U4J2fuae3WtqCQsD2Ch5uOcNOvcZ88vUrJULIKtoGLw=; b=Sg6YfY7cEcPwyjdY
	j7+HmzlNxRlH2VT+HNZGcOsEnDWajo425i72yFUI3zrbStmtdDAQ0BLpxfwSr/iV
	dbLxJeUOqYDL6JxjrUjeKHTjVobzSuZgDmWOS5xMqDwUC3e6NMaREdKpbdvf5RaP
	y53boJhuXuSKF6ZR8OJruUWD/n2KICnvyH9GiNjOqU1ll1f3EQKISmwFEMnG5sYT
	ezbLy8XHWKEAkNrWsKcf0de/Nzc5KPkuqLiOit4a66TOUt3Qwhx+dgOcXAfb2LOz
	tCIibojLKJPgcLgKQjs3jnoAy8GtG6vYx6LVCLqwMyxgmKGNMwOVpg9NlKWF5Uh2
	c95pew==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxaxbnn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:38:58 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3138e671316so4236949a91.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 17:38:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752539937; x=1753144737;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U4J2fuae3WtqCQsD2Ch5uOcNOvcZ88vUrJULIKtoGLw=;
        b=toS58ZedRi0F8U7T2tgF4x/h89V7Ckw1q2IM9Y1+osP/GZpE+PBGqdac3xcEUdOga0
         LzwoCUJLgPy/yicOcfArXuFAimRT0WYk1epYgLPeWTt6VDoXsEYZiPf9foZuTuOk3/uq
         NO6wWaWqtcozVfw25lK1urUQYmsV/OujqRNCc5pSp/Vtj9Y7qMALumFyZziG+UMmTdp4
         rTQl7BqglCoMgoYK2f/uYwOF1Jafi/SISXCb7XjuG8RojrddnxFseyZCoe59tKkaX1Ah
         5K531tXmyX1WSFsAa3a/+KffjfY4rEKQJuTjUSquyrTdg/q29F9iAdS03PH20lELhE7z
         g2sQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFUk+iZyunZsuE5NT1QccrCusqhqCBgZeDdf9MQ38ZMKC0eWp9rcRs5cOKdhPxyIAw+oAzHMZaCn0V@vger.kernel.org
X-Gm-Message-State: AOJu0YwCDUSLUJl7n0p3YxL5KlUveHhx9ps//7WUzwKiU7iYEVfIP6fW
	IyUmf5yZe/pemQHADSbDD6wUihJf6Wj8Bff1eGlu9EAnLZ4hhtfzJT7WaaVvcqMQ4G/sAx8unsb
	c2Kbv+vAaRYheFileYtHUpdz9fXje+AC5tKttYjlKBwgAsMPPe5nRbLkRcTpWf1am
X-Gm-Gg: ASbGnctXOjRp2BgblsUoKsP1TbulTsdnhFZ94n57bjHmBoITy42dtQJgWyzgdgAyWmj
	pKuBpBoTlPetrCSLxc8dImZDcUWWGbsDha4pMzNBfOHD98db7holHO2oNCE4Vsoyy9X6bh4f2O5
	B4vAvrvIpHqFGpf0DTk3y4fLgOq0EYZ2+q3mOzHM1C5jTR0zfBRxDw0/BzAh7LQBRU7ONfEfm/D
	nNn7guXD/H+XKKO/Ms7F8TaTpO1lDZ4EQuKcMka6gZVvzxlkZgAD/UEtPWAcLSqB08yl/IRsxAH
	bOaCnbHkE9A4/equU/csCbsRMhYPOF0Ue72K4pt4sevTSMrYu9IMsZPrYBp8E5BME51Pto4/Km+
	vzu1/C9Gb0bmwpIKuxJsnlHP/
X-Received: by 2002:a17:90b:3c8f:b0:30e:9b31:9495 with SMTP id 98e67ed59e1d1-31c8f9bab10mr1778274a91.9.1752539936791;
        Mon, 14 Jul 2025 17:38:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDza662yRgiFSwwfp7ca/WsrZ50+RlnfoSXKRcgI8DgPoMrM2ZRqD6pgfsoivNJPe+/C8jWA==
X-Received: by 2002:a17:90b:3c8f:b0:30e:9b31:9495 with SMTP id 98e67ed59e1d1-31c8f9bab10mr1778237a91.9.1752539936298;
        Mon, 14 Jul 2025 17:38:56 -0700 (PDT)
Received: from [10.133.33.236] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4322b22sm97642945ad.98.2025.07.14.17.38.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 17:38:55 -0700 (PDT)
Message-ID: <a2136746-a9fc-4bb2-a7af-7e7cde5068bc@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 08:38:51 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] Enable CTCU device for QCS8300
To: Krzysztof Kozlowski <krzk@kernel.org>, Jie Gan
 <jie.gan@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250624095905.7609-1-jie.gan@oss.qualcomm.com>
 <338a9ee1-10aa-4bd2-9b0a-5006ed571bb9@quicinc.com>
 <3551dba1-0c5f-4000-8b95-6a04cd81a027@kernel.org>
 <2e8366b3-c060-4bb8-9704-0a8f41901706@quicinc.com>
 <9c11bd92-ff2e-493f-8e71-fd8d3f8b32e6@kernel.org>
 <cbfb9159-1c80-4db4-b5d7-036980a1a44a@quicinc.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <cbfb9159-1c80-4db4-b5d7-036980a1a44a@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: IRzKk6bw_GERn-DsDhIiQax_AIiZTAYr
X-Proofpoint-ORIG-GUID: IRzKk6bw_GERn-DsDhIiQax_AIiZTAYr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDAwMyBTYWx0ZWRfX+StIwWf+HUAd
 UtbBqppZndN2Yn9Lyjs4B6oDyH54HtocYGGpDgxOzpVeCmjhMYV598cFkQFPTuZ29fQaxbQcpEq
 UWN3VoE+K72MKciYqgmmPNkIpQG4l3aTNDUaiRuH/Jy79x/tSj1gHRoZEBFY4Cipltv29WkW7g6
 aQfupETjfZ+kbMPAI6v7QuKrRhufIzLRs9ZY1pS5cVb0ijE3FGdNmy3Oky88FFeKwPs0FDMrbrP
 pT4AC9Zxd83cBO+c5H2qVp+xATZ0Lyvv0IWcy15Ic6w6v7IULSvb6N2/tQpDHcqBzMj1keaGrdT
 HsCX0aUsOaXjzla4QEstdpAdcctfzIT0L7zMbnwoFyQxBpcR42KdF9EZ7ZC7KOl0SyVO0WsOQ/K
 ah4E22h2tC5iR1bgPMgQFCxMGYtNYB0ow+/fBhleM67J2BFEuECgUnJPwv471Sb5sVtEcN9b
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=6875a322 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=jiYdY7Ay7elLp-qxoG0A:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=999
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150003



On 7/4/2025 4:14 PM, Jie Gan wrote:
> 
> 
> On 7/4/2025 4:10 PM, Krzysztof Kozlowski wrote:
>> On 04/07/2025 10:07, Jie Gan wrote:
>>>
>>>>
>>>>> offsets for the ATID and IRQ registers, because they integrate the 
>>>>> same
>>>>> version of the CTCU hardware.
>>>>>
>>>>> So I propose introducing a common compatible string,
>>>>> "coresight-ctcu-v2", to simplify the device tree configuration for 
>>>>> these
>>>>> platforms.
>>>>
>>>> This is explained in writing bindings.
>>>
>>> Yeah, explained in the code lines..
>> I meant explained in writing bindings document. Please read writing
>> bindings first.
> 
> OK, will check, sorry for the misunderstanding.

Hi Krzysztof

I checked previous comments and document.
Can you plz help to confirm that we prefer a board specific compatible 
instead of a generic compatible, am right?

Thanks,
Jie

> 
> Thanks,
> Jie
> 
>>
>> Best regards,
>> Krzysztof
> 
> 



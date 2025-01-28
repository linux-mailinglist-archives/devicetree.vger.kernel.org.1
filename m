Return-Path: <devicetree+bounces-141393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74477A209BD
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 12:32:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C0303A8DC0
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 11:32:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CB8219DF5B;
	Tue, 28 Jan 2025 11:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PJSTp6SA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73D819C57C
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738063968; cv=none; b=C1diA5aRMgeUTr9kd/cHXdJj9q7V2nC3W5PYOh4RB9aJfdRKQ6rUMn7VJA9MCSluawkTzaX0kajctAul8XN5GVL2r+DJHca2ixTLAaZ/iYmSrPJJmmvT2PPaLWIRT8dQZYtahXmZAzmgqytVgLTdrragGQ8TW4/S4jiaNK748d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738063968; c=relaxed/simple;
	bh=tgAIixO/4nuyfDuX1UOaehUTCA5QyWQsARvCfnwQ47o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kv1kBuVrq1o4x4eWupZauow4bqmcgkdVpGxh/pFty7EVx0IoNhwTdKB4cz1cLIfOR9FkAU0F0eYkTToUtgYXHWbtVaTv9639vl2KIzO4h+heuhPMysNkpq5yaFdVXJ4FrkfTgn2HSDcqiboscsT7s8CtbPP5DW3QGuN/pCIZ8F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PJSTp6SA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50SACkMB025292
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:32:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o5h+dUy85VIOzVmRi9wjM5b+yqDqTqFXtvnjNP45yaE=; b=PJSTp6SAsysXKGW7
	debaKkh9s2tBoGeX2+IJDOhGBRTwo9WZhADGFgimXVdt5bSAN6D4G6CHEKNQZezl
	fDuW/lIHCL6MqTgapbE5yAyMSV2YbklHzq3CJFtV9LlmPXkcvNI19ONTUA9JMUKU
	jv0NT3HMrcX2nClqvSDEEdJoS+o3jexm46/AEuhnY/qXg6If/faHmyr8M30y4pfD
	sveZtoEFpO7527zp+e1OK1Z5nDtpX+qSR9HTuG5I6993XuvK2H86T/vnoWKMw62y
	efATS+TbSZb7u1QmOIwbSy5BrsH97BFGviy2I4WQiplWXitF4JSqKBsLTjXlrlqJ
	nRjpLA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ew9n86pm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:32:45 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6e5c3a933so128063785a.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 03:32:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738063965; x=1738668765;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o5h+dUy85VIOzVmRi9wjM5b+yqDqTqFXtvnjNP45yaE=;
        b=UY7Bm47lzvGK8Il37M8XIWzOnbEaavUjG9Wx9duljUVQY3UQ99NvZEKBFbsf3qCe/f
         +tOkK7rPkJorNHXAtDmXE4LquUVodsYjcBd6cOYmtf8+2roYwPjbJ8B6E8luWxaR4/gB
         5PVOWv1HUM5AFEnqUBkf0RdrtLvjekO6N1VM+VkI2H/woQg1OwuLELTwak8YqWMZ9+lZ
         5eGeleInEbJr4ggqq+hjrAyDOb5F9nOtDhoZ3wLif5mcgcvRDdgsAcE7NvbXvtkXbfg/
         Kt262ih/yZPOo0WDovGr1XM3eyGTAP/tNlXwYd0QzCVtKIE83wmHJpNwfVM8ddMVH+Vt
         0iVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWoo25sZupwp099xsQjNFXsblgjfluZQl9n/P3BvPy7j/7ocMYKOMC3PWdUcWVCN+JXTMviVDI7BC1@vger.kernel.org
X-Gm-Message-State: AOJu0YzJqOvUGQaBfgK9jYsRESszcBfIoteB3CD1yZ57B85C1cjcYqjK
	Zry3MF0nYj2nmlDH9kgyocU81IlMwP8fXiIgYieQ4PLJ3M+2uayW/tRV2gwoWVrETzUDQQ5iWXZ
	RKkea5P/l4NlHncpbSYIr5GWPTA2Ph7ZsUPRFowhdny019X4Vf0/PRei8Xfq7
X-Gm-Gg: ASbGncvPU7kt5KUSZ55OpBgJMOsjOruPlFB34PtgtQJxDBjnNm0fZ7ybG3dJxoPuRmw
	DFRIX2xWXnfN4XuoEgtVwIOiQQfrPMuRqmmG4AFSz8ZU/4ZIH8mBKUcbeD7rtFJtacKDeN4rMHD
	gDndYRSqX9kng7JVQLfsse1YlZo7W+YUbvRb8DJ56iYedWCs3JfoH6hnzZ6K+kQa3tQU+jMB6qx
	+rBVgP6b2YEB01at64+Ds2UHzPMgnnrA32Tno67UwyndOv85rj2VlrSKDyZyuAFugUhr6AXG70p
	QD2z1V+8IAOxWdym7pYoTJqX5cGavoxyv2y73Lpw+0v60OY5qwZxNosJql8=
X-Received: by 2002:a05:620a:2586:b0:7b6:e61b:3e60 with SMTP id af79cd13be357-7be6320a38amr2178452785a.7.1738063964880;
        Tue, 28 Jan 2025 03:32:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFTczQ+orAkCUidNPLiFqqoARHbxxYwYnNYl2EHUFFhd4mwxYtz0hL2QEaqmLUPdTvLXTIoyQ==
X-Received: by 2002:a05:620a:2586:b0:7b6:e61b:3e60 with SMTP id af79cd13be357-7be6320a38amr2178451785a.7.1738063964561;
        Tue, 28 Jan 2025 03:32:44 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab675e12199sm762904966b.25.2025.01.28.03.32.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 03:32:44 -0800 (PST)
Message-ID: <fd55ba36-d90d-4507-9c52-912f667c4193@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 12:32:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: add wifi node for IPQ5332 based
 RDP441
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, ath12k@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250128091012.2574478-1-quic_rajkbhag@quicinc.com>
 <20250128091012.2574478-3-quic_rajkbhag@quicinc.com>
 <b3ff05c1-6424-4ace-a873-ddf1a0d3d07d@kernel.org>
 <a752a135-9cd0-402b-b0fb-967491cfdaee@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a752a135-9cd0-402b-b0fb-967491cfdaee@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: aTEF9_F5MWe9kqVuxChX6l9XdRCgjNDc
X-Proofpoint-ORIG-GUID: aTEF9_F5MWe9kqVuxChX6l9XdRCgjNDc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 mlxscore=0 priorityscore=1501
 mlxlogscore=999 adultscore=0 malwarescore=0 phishscore=0 suspectscore=0
 impostorscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501280089

On 28.01.2025 10:41 AM, Raj Kumar Bhagat wrote:
> On 1/28/2025 2:52 PM, Krzysztof Kozlowski wrote:
>> On 28/01/2025 10:10, Raj Kumar Bhagat wrote:
>>> +	/*                 Default Profile
>>> +	 * +============+==============+=====================+
>>> +	 * |            |              |                     |
>>> +	 * | Region     | Start Offset |       Size          |
>>> +	 * |            |              |                     |
>>> +	 * +------------+--------------+---------------------+
>>> +	 * |            |              |                     |
>>> +	 * |            |              |                     |
>>> +	 * |            |              |                     |
>>> +	 * | WLAN Q6    |  0x4A900000  |       43MB          |
>>> +	 * |            |              |                     |
>>> +	 * |            |              |                     |
>>> +	 * +------------+--------------+---------------------+
>>> +	 * | M3 Dump    |  0x4D400000  |       1MB           |
>>> +	 * +============+==============+=====================+
>>> +	 * |                                                 |
>>> +	 * |                                                 |
>>> +	 * |                                                 |
>>> +	 * |            Rest of memory for Linux             |
>>> +	 * |                                                 |
>>> +	 * |                                                 |
>>> +	 * |                                                 |
>>> +	 * +=================================================+
>>> +	 */
>>> +
>>> +	reserved-memory {
>>> +		#address-cells = <2>;
>>> +		#size-cells = <2>;
>>> +		ranges;
>>> +
>>> +		q6_region: wcss@4a900000 {
>>> +			reg = <0x0 0x4a900000 0x0 0x02b00000>;
>>> +			no-map;
>>> +		};
>>> +
>>> +		m3_dump: m3-dump@4d400000 {
>>
>> This fails with your wireless patchset.
>>
> 
> Yes, this will fail with v4 wireless patch.
> We have v5 (yet to be sent) to read the correct reserved memory. Since,
> in v4 I was asked to address and send DTS patch separately, The corresponding
> driver patches are yet to be sent.

I think the intention was to send them separately, but together time-wise, so
that the large set of net changes is somewhat shrunk, but the reviewers can
cross-reference both series if/as needed

> 
>>> +			reg = <0x0 0x4D400000 0x0 0x100000>;

Please use lowercase hex

Konrad


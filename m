Return-Path: <devicetree+bounces-204186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9706AB24633
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 11:55:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B2A28829F2
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 09:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 190A12F1FDF;
	Wed, 13 Aug 2025 09:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="npqVpoSu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91044212573
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755078498; cv=none; b=bP6D6FOpV5uZ8fIHisZnmFNAdUgvlcBjAVXHP+e8RnDXk0kAXRSsKTPyi+UohbS93qFKtj1gb4uk+ixjsnA9g1btTrzqoADQDBP8EZthRS5lKn/+uNE08l7Edf1feHzLy1bw6Np75INiw+8TgX+s7HvKtBUboZpYbC1n/S8I9rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755078498; c=relaxed/simple;
	bh=yprNOnxZZuuTMVw1H12F4Euaupw8Ojw88+nk0jQgJCE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H7UhP11iuLWG25pfP3Qr5XF1T+ykNPftTWywhPKhGJQ2fp0ZkWyNXhQFg3DsniYFi8EcgoWXYuyz9NF+u3bx2W/q0IEvT+zw1G7SRTO+j4G3xPFxV8q+w8vA30y6w6rtQNF1dOvMu7eoyQFfBjTHkSZ4F2isc9gsPLNaniy6e1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=npqVpoSu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D6mIHk030209
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 09:48:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yprNOnxZZuuTMVw1H12F4Euaupw8Ojw88+nk0jQgJCE=; b=npqVpoSuc3/mcQwb
	NxvamAK6aRMS3QzbpmZYoBmNRHNRfNb1Z6G8NqrtlonqqzVNmIvykXeq8h3i+xpK
	Jyw5RBAXxbRuIiO3SA3LYq6L/kOyC4ogSY19J4EfVozr0oXHIXNYA/6+FVOro0iR
	Fk4cI8dEym49x0nypFWxplNqPTU+kSJOvOQ7PdcPRcZryET53rDbo2KVswKIfw04
	l6XvLQ+BcqEfBhBNGZjnxW0RwpXkmGtkUYdCSpBnm4EOwB8N8fmyCOUPvM+wSHKV
	63inInnlI4AAUa0Bjvlp86v1XorQhAvZua3pEra75Xlc+ScQsxK7D47IVeYVyP8/
	Q+XRvA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g9q9tdjt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 09:48:15 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76be0be9ee1so6596820b3a.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 02:48:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755078494; x=1755683294;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yprNOnxZZuuTMVw1H12F4Euaupw8Ojw88+nk0jQgJCE=;
        b=ucIP2a2Jd50GI6dgaPlgnZAaqLsSfhwRoeugg5UwjUWfSWoNS0J/sONr5X6oIKeDfH
         wgjO3UBG1MA5uUjFrsPdTu91iTOrybrzEZe2yM9NRH6YoNY47118cIF6a35Y/lCgp0/V
         pfZMX6wso0UbxQtxufmuGFCjnsjt4yCLCiz8iMj1b1mleZ3MFZO7cDjcLrX1P43vAVDm
         loz+EJCrxbJOnG3u9VlHNJZFuuObJ6mF4CLGYwk756RSeLx/1hIRklssu0vIbxfSg9wh
         bakW0o5QhE2ztIbXIpJZTNHQbXmVUGVD8efGNmA/jihtMqHvlZ+k1rCEGrYsm3eBMRNS
         WfGA==
X-Forwarded-Encrypted: i=1; AJvYcCXZed9Bg0teGiUhrkpJzzxP7B6DKFpWO3ysCuovom63Zhb0jDrNok/dgb1EBB+ZseD1YYePTt7CG1c3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywugs6B+7OMPNyagaOvPlht3zQSstGAAYsWwRGPuDLEsQE2TobU
	G2oIg7VYxYvZe2gD3fzKnlZLcJyPHv6ov7Kyst6BV3DctWq9mybX786i5k0r5aXUg6jzQp/A0YG
	s2EZRbUO7NwSWeXXpe86srmK0ZGTaR0MxACCZvV4cT1+KPeKsBZ6meW1NUrG1VaC9WxEmCcqG
X-Gm-Gg: ASbGncvmy7GWe+utV8UxT5PHUIPisfalZ+QKsKNZChSuzGZhRX2RyIkflnfajI6lY93
	spB1RyJ5i9vjj2etlVxwNVwJmPYqBlCYRtlVFrE5WPeurbNAy5Xe6mzBM40YpefQTadCRgm+emQ
	D623ndYKr7lvnHfcPXnka7qx2GTFf++0HFfmSNFModTTpP9+IC1JINzZzIJ5z2oLPT0xGmb1N3n
	6xf33ZuVr1jVKBxYv641NNkFt6XmQDc6ziohFxMGw3lo1ROQfq7kU1VhLforUheo6r8qMtKMNST
	tPLHTorOX2CLVobKAtVLAXcWSkmho9TM5kH8uAIUwHMIn2J2qugjaJ2x7kEhk7bMiwpzypaxiZg
	YOKWsFY9VZF1GbTt01KmWLgYr31qjFhEd6rt2QZ4njcv6uxYFmJL86A==
X-Received: by 2002:a05:6a20:5483:b0:23f:ff7a:4d69 with SMTP id adf61e73a8af0-240a8b5e283mr4270079637.40.1755078494471;
        Wed, 13 Aug 2025 02:48:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQi28wBETX/FfzYkh9vYqVOP0sSfPKuwwUYnt2NYefL8rquOBU1sF704aafnQm7XBD0r47EA==
X-Received: by 2002:a05:6a20:5483:b0:23f:ff7a:4d69 with SMTP id adf61e73a8af0-240a8b5e283mr4270038637.40.1755078494038;
        Wed, 13 Aug 2025 02:48:14 -0700 (PDT)
Received: from [10.190.201.48] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b422bacbb74sm26978433a12.42.2025.08.13.02.48.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 02:48:13 -0700 (PDT)
Message-ID: <1c27e30d-9d99-4348-a92b-e9fe86d0c339@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 15:18:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] pinctrl: qcom: Introduce Pinctrl for Glymur
To: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, rajendra.nayak@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250813065533.3959018-1-pankaj.patil@oss.qualcomm.com>
 <17b90fbc-ccce-4eb1-b334-5fdef82c094c@kernel.org>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <17b90fbc-ccce-4eb1-b334-5fdef82c094c@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=CNMqXQrD c=1 sm=1 tr=0 ts=689c5f5f cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=DNT5GobofFhSdjKMTB0A:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: WDdkTALT_nebFyDKDCzgfY8F56BssOQt
X-Proofpoint-ORIG-GUID: WDdkTALT_nebFyDKDCzgfY8F56BssOQt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDE2NCBTYWx0ZWRfX/LGkr46RJXJm
 JVB052B5ff5umGFyWF1dvanhqht45JSqzpgNqju9uAzKwS5dS7yKWrCIOwJ6YVv1JWZS/AqB+d6
 vsB0HVA3jvZQ7CK+WynPum0k3l/2Q83CpN+1z3ep/NUlEiU6g9QxdvX5ZTo3eEZWpCvM2WbWbGH
 9l2K80QnQO8h5cMBIvBI1vf3uTnqffDtowq69SBQ55YWSZnzNwdrx5E1zC/Wm1fDGiSRYSwdjOB
 XeKV2oUjawBDU8Tx1bhjH6/r/Yx6Ry3gRdsYEsX1W+LijvP0pmHdIoUtikLzmNFNXPx4PnnvZ0i
 b4RdcIH9timKaXcLQmri4M83xaI1auTbHx0TSSXjBLUrEc8bS5c2hN5+OhBUrNUeSYCRQDLSiUX
 YmClxLGw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120164

On 8/13/2025 1:01 PM, Krzysztof Kozlowski wrote:
> On 13/08/2025 08:55, Pankaj Patil wrote:
>> Introduce Top Level Mode Multiplexer dt-binding and driver for
>> Qualcomm's next gen compute SoC - Glymur.
>> Device tree changes aren't part of this series and will be posted separately after the official announcement of the Glymur SoC
>>
>> Changes in v5:
>> Rebased on top of v6.17-rc1
>> RESOUT_GPIO_N changed to lowercase in bindings and driver
>>
>> Changes in v4:
>> Updated bindings to column length of 80 char
>>
>> Changes in v3:
>> Fixed indentation for example tlmm node in bindings file
>> Fixed s-o-b and review comments in the driver
>>
>> Changes in v2:
>> Fixed dt-bindings error from example node's reg propery
>> Fixed gpio-line-name maxItems
>> Driver UFS_RESET macro updated
>> Removed obsolete comment for pingroups
>> Updated ngpio to include ufs_reset pin
> Where are lore links? Why aren't you using b4?
>
> Best regards,
> Krzysztof
Here are the lore links for the old series, I'll setup b4 from the next rev.
Do you want me to share another revision with lore links embedded?

v4:
https://lore.kernel.org/all/20250723103644.4058213-1-pankaj.patil@oss.qualcomm.com/

v3:
https://lore.kernel.org/all/20250721163221.310746-1-pankaj.patil@oss.qualcomm.com/

v2:
https://lore.kernel.org/all/20250721143037.20983-1-pankaj.patil@oss.qualcomm.com/

v1:
https://lore.kernel.org/all/20250716150822.4039250-1-pankaj.patil@oss.qualcomm.com/

Thanks,
Pankaj


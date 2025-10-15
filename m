Return-Path: <devicetree+bounces-226873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F59BDC4D5
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 05:17:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BBB13E3159
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 03:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E28226E6E5;
	Wed, 15 Oct 2025 03:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xlf2kAIC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37ECD19CCF5
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760498245; cv=none; b=RV0/O5xdi7jUEXNttnI98ScIEB3IJfgk9ZHnCF7hy53f6sj8aoj6Fdd1NBiALFNEJNwj+rJVeYs0tsHal4TTcUFJCvMa8cDyjAMQlli71pB2fiyQY5XUd72NhDQhKQcJbe8McdTGDdb8qv9+T49DTQ+GZ7SstPN6CzC+PGUJfqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760498245; c=relaxed/simple;
	bh=L8eRhqEBY6VPKEe+NuDuAvsDC5E/DLGuikVuC496Dlg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n+njU0SM1UmhWIlkG9DkRHjh1wor4d4zhtoMknRp14jvY6hbca2KIwQhL5HbJYAJL32rKyRhL3O4UhA06JS7OnzMGM+dK5CpEsdENYtG/Q0+bk6sypp8zIV9wznGqW3zg22RPPdjAiAahJIkDzvAUGfj0voQrWb+4C2Xx5VNQ1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xlf2kAIC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sQIc015160
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:17:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6UAYC8XZOapAdIGslkNfv0MnBEhGl58g6zptcvxFMsY=; b=Xlf2kAICwu1xDiM/
	mdhGqKZpxbowqFBG5SOuYG4quvVBRV1zWjPIhcmIPDxcgTpfhtKzdDETHleBWYp/
	g8BxLHz2klBzp14CkQ7C/wVTc10gMCBwcdJgLl08SmZ9N+nZPXdNGFdpyrbpKlqt
	1PrG616v9EXQeM/73X0hQgJgYuuGkLnzO3Y+Usyo8CVSufTHUFItsQwSCDTPlLuf
	MtkCrocT1DmPLcRuBHgOARP6ak3AUMeb1800PKE5aadme2UtC1CedD522kEKoJEM
	Dgk0k4ZMQrQAsn6PX/bT+laBYRORFgLt6F5DuLX6gFuZ7m54+VOEWMkuqQ3oRC5G
	VuVaFQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfbj2w7r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:17:22 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2681623f927so103548145ad.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 20:17:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760498241; x=1761103041;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6UAYC8XZOapAdIGslkNfv0MnBEhGl58g6zptcvxFMsY=;
        b=SXfvk57l4A1MKqfCuxs8RUGNdfGQCELyO2B3lseEndCVp6NlRKjy3cj3aDOeRiYTTo
         81zMMvqXCUPsl0NRkTZGsDI7T0oqKOfGtScPsg0iBJzALr+SE5JO4ZWAf/t+1bCAo+sq
         PQ1lDzlybW9k1txJM4GntFeqDEj7GOTG1P7wL3InectODjP0mY6LCOeV+gFyg1liZA9W
         vwZBfE72/iKWsjG5qI/0SD60roNpLuf9pVrl6guFNnqJ2/wWU1tVJwBSKrSOlG1qSpCJ
         OzgYZeuOmT2FOh3tXh6HBGFlDKY5n2n8sx449JqJIGm0yueAx0tfgNdSHl7oti5rqpwY
         CCXQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6ue7TXrPYMiFPHwF34XFP6d8DRoL83SBJ35xiPz8sTxpLL09deK+yhbm7EGC9DFWBSuQdPoHg6R8E@vger.kernel.org
X-Gm-Message-State: AOJu0YxzjoRAmqJhNU0QZkEgJBl4e3yZ+MHoRKTkaC3QLSt0hCUR8+42
	AGuINUz7LJf1KWWfrrp2FCCMW1RFuMAGSOCq0GdGJac8s3Wlv3a4QA2U9UQ0ZzdZN+aU/7mj8Nr
	EkLu9lxZK9DtqpgH8Ny9MnO5z3E9wCSV98OLZsvKRSX6Ah8zfyFO7HLnJZ6shqkl3
X-Gm-Gg: ASbGncv1RjvItcbJzVJvkCoRCz5VQbXQxcdogdEV28IWkapu/ry/tkMm4bqD9zZcYGU
	aVDA3jyY9ojyzjzmQa9CaLxV4NtgPvcGX/9J7o6ijiYW7tSxQ75hKNLdvp7bmOJqy1aD+NjBb/p
	oXpJA5Em6ACUAtAKCH4b6nGptFCO8Q4jqZtBP6wFTpJzQK0aJCk5K0CVrXQdsvxW9Sr4bM8wO9a
	yMVrVyHi3zOUZ21WhkGGUxpJsdTCs48XAktDESJ8o/gwzM7dGoZ9F7t2yEvnWpt/X4SrHlgh3Ae
	znHZw25cPKsTPGWr+cnHlReFB4DYmsNgiWhTXlPnNTw+AGpykEBklKLd/5NM7ydiGH6kLnAwUcO
	phQtU2btbo9TdB7hSxKHGk1sx7Xg8ktEyhoI=
X-Received: by 2002:a17:902:f64d:b0:27d:6777:2833 with SMTP id d9443c01a7336-290272e1cb3mr334523785ad.47.1760498241027;
        Tue, 14 Oct 2025 20:17:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxCCtupf0AwQhQZ0njtfPCJ2MZQQSKAfVp9ujpBXzGdvRclHdjEwejxG1jW4b94TQOYMHR3Q==
X-Received: by 2002:a17:902:f64d:b0:27d:6777:2833 with SMTP id d9443c01a7336-290272e1cb3mr334523375ad.47.1760498240576;
        Tue, 14 Oct 2025 20:17:20 -0700 (PDT)
Received: from [10.133.33.56] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de6de2sm180043285ad.18.2025.10.14.20.17.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 20:17:20 -0700 (PDT)
Message-ID: <ba63c3e9-df0c-4309-9de0-253a41569925@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 11:17:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] media: qcom: camss: Add Kaanapali support
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com>
 <30f9292e-e6d3-4fd0-8d1c-f10317ca7751@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <30f9292e-e6d3-4fd0-8d1c-f10317ca7751@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX3Dy0zYPPgl7Q
 bBcE72h/+qilsE2RWrnp7fH2z0NBfIHcDxwt23zoExtFNrzPSdn9oOuHMvtWiV1nfAlgEwOpAxO
 +IzCtW4LXlzRGFZFZvaLQ63Art0hCJcWhfvM7jHjxPS8qWA9Dt15imOQtCTOAoOY5tAZtMU2uNk
 5xk9L5bOYjl+kWsz/fH/38o3vcwrz6NtRI7IxxFTe19ngrYZrtiBabAXwmhcOu3YFDUulGrIBxP
 WYumPvk4TEznTYUi5fKwr8yjFW7CxLs9eLMHgNBLGNMYId7x0V1oy9guq2QMvJeyFQ9c/NRw9D8
 2ev/Fc0H1SWAnaTYzYcNpRIMCGFJRwIF/YnWtVtLv+qvqsgAohIV+Vv/JAlTazXbDH/9UA/Vt2h
 wqLrhuPwRxef9ugIJRaBzwqsYj4y2Q==
X-Proofpoint-ORIG-GUID: 0j-BOnySWfmbQcsMH-5TCvWcfvCn4LEg
X-Authority-Analysis: v=2.4 cv=bodBxUai c=1 sm=1 tr=0 ts=68ef1242 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=v1UKZosia19T5iwvbEQA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: 0j-BOnySWfmbQcsMH-5TCvWcfvCn4LEg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018

On 9/26/2025 6:48 AM, Bryan O'Donoghue wrote:

> On 25/09/2025 01:02, Jingyi Wang wrote:
>> Add support for the RDI only CAMSS camera driver on Kaanapali. Enabling
>> RDI path involves adding the support for a set of CSIPHY, CSID and TFE
>> modules, with each TFE having multiple RDI ports.
>>
>> Kaanapali camera sub system provides
>>
>> - 3 x VFE, 5 RDI per VFE
>> - 2 x VFE Lite, 4 RDI per VFE Lite
>> - 3 x CSID
>> - 2 x CSID Lite
>> - 6 x CSI PHY
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> How has this series been tested ?
>
> ---
> bod 
Will update in next revision


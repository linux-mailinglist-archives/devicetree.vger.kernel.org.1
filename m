Return-Path: <devicetree+bounces-245493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C19CB1718
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:44:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D3E6304EFCD
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 23:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 173DF2FFFAE;
	Tue,  9 Dec 2025 23:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g7PoBqyn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AvNfsASW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3FB2FB96A
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 23:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765323871; cv=none; b=st2QALNpg0xMZ6mmcQjEnemFP21DA0zujQQtkfpo9KoKs9ij0hxEisFOmjXJJztWd3IfzlgOUXtIqUdP4lP5S8Jo0PF50RVsLeu00wMUoufx7OhQg/bRoa+dITAzsD28AhaXORGwZIlagUzz92lQEvU8DD8cywNzlErpvtKQ2HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765323871; c=relaxed/simple;
	bh=7ZNBrKSfQreRzMJCbXtA+Yjny5XijogbMTiwidhTx0Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rThkAR5DgFFxMgEC4PTBKuDFA9l2+iy7xAVjMwZjCXltESGXTjbe4UjTSN0+9bJERVeZKvtQHy+UlB67/20VsG6dboecrHkBokqeZGoY5Iy0KMI91vkRRtHLxCZb35R890LD01Ilm7SlTMGWRJmpdvftTWnxADoGX02CYxy7A04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g7PoBqyn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AvNfsASW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9NKMJW600745
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 23:44:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sjpO8G5wLnjz5we7rLkVbQzCnwi38DbQl9vKvL932M8=; b=g7PoBqyn200hn/pm
	gQB38hsw+ZefxBj3mcgYvhEKafyVbucXxdtMMDz3V7DByzQA1cMe2M2w6h+WN7Jo
	T0Q+bnSvqFNvXhmxyBpTSKeaVO8wPi/VT4YfUnQa3sskED5KX9C3L2sbSjTmhnsA
	IkQUnf9tf1Fvg1snSF1eqgecqCkpX7AaeVqPgdqZKOrI9f4cy2Mv3zNAaYzWjyrA
	gju+WeMUeR5e9LDcjzC233c6fJGV4ECyJAq24mWtH6irEeOWQP7OWDp63izHlKoi
	SNrh2Ae3t21TNfClhK2jLua3Iqi3pu5BJGPMKJaXIKQykXcbRgwfonQukoIwAUdL
	RKCjsg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axgqrand0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 23:44:27 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b99763210e5so12041400a12.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 15:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765323866; x=1765928666; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sjpO8G5wLnjz5we7rLkVbQzCnwi38DbQl9vKvL932M8=;
        b=AvNfsASWcQPdcelAgz5PO8kd39/W6dI8bwdAADi5eQrkH+xOUFdugmamxrwpzG/EEk
         WhuD/hG0QcWdGBftKvqj98k4QndFKRQv/8giUmcYM/FqY9/WuSUnE+daqoCJHs72O9Za
         /zqrrJCykQ9ohEtM6Q9cxrnNKrnnicljGgdAcobkbbG685iorRhSw9IEUmDX9rJgk8O7
         9VJgV/JAI9p9p+9ZBk+PRkiIHC9kCYKZ/nIPugJhedSlcSDThFZ8jq5ZKb1TbAKO8o9o
         NoBoydBtU0AysE0LVjU1vDUQ3UaAjEUOzr7arVzccDCYRB+UxaMa2Kmaiyx3OUlqtQS0
         SkIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765323866; x=1765928666;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sjpO8G5wLnjz5we7rLkVbQzCnwi38DbQl9vKvL932M8=;
        b=l+XqKAWOWQ8wLKC8vgaplf1MXVeKsyh0VGDzsXF9hS8Pdr1teB7svxknKdKnhbgLKY
         dW39EVKbPG1y8JIiGclK96MM/RZGYdOzM/Xy3cl7TbyKiS2JghDzZFAGVo3eMDSs6UQ8
         DDS0u1RWjhw7Nz3eWbKx3nzztrbkGK9MrpfNuJ7Ajso9M04UzJq6UIvd/UcpdKa/OZYe
         1S+1wnDN9PK/qFUdOxSNCFBPxoqQH8F1gQ52WCG9BLPVVQzw0qytjCy1oJpJOLTFMDII
         9nIE6R4rzF24qt4YM60FL6/2spW9shx7l5A5Bejgg84wfG397pUFQnBPuj5H/IcE3o3C
         BamA==
X-Forwarded-Encrypted: i=1; AJvYcCUA6p++fyXTMXYqAXf3yxsi6HVaxsyp+YuZVF/JxCKrqFhKo1c9LrAKjGF+LB/THt5QjFPiP6Yo8jEa@vger.kernel.org
X-Gm-Message-State: AOJu0YzvrwA3rE1F3HYCeht20LIwJfwVbZzmUbO5td3bxW5cA8qk83Gq
	v0P/5d+7v4gOKgYlAvvbtoDpEVns7uXV66rRefPVkJEFtRA+8Py7v/5dpvEhKrxkKdl7MDjcOat
	2zo8xKaX1uyk/xwWyM4GwzFpwMCZJYNkcJsnNkn3bLlt9rCpvdOUzQo613PY5eCGl
X-Gm-Gg: ASbGncuWTBqNbNg2oOwdZjj3IVx3ssEfJHjv5rLjfk0Rsn3HgqKGVdsP88fB9fo6jCc
	cLTLaW8A3ZWUUZQeH0+QKOVX2bQRs3ENZOpr+1P1cz0QBVyyvSNqfnS7vMq6HvV6t7UhRZgLIL6
	xCZ4ism4t2Kcntr8CPbeqWm4DPVeS8l23kLDePdusnLvZOLtrrgAg0xdaaP9GMlGeuqRax7mte9
	l1EpV61vjbXG1MavQ8okwofigflwNYpR/cQyoICY3Yy7QplcmIi2yI6I6aPc0FCPEn+DPwrXTWO
	A9NZyRN6iNjSpV/5whxfDd5QUEiUEfTzxL0zu3u8V9Om/cyihIj/UJ9xnjMvoSXiRKt8F2knTXu
	oFmXSa2mCul0UZ0OYfYD6YlQMNX9NTEQldJ1ih6kcaP0cW6o1ZPhCChtESWeSO/jJ5FU=
X-Received: by 2002:a05:7301:f0e:b0:2a4:3593:6463 with SMTP id 5a478bee46e88-2ac054ac4ffmr527055eec.19.1765323865909;
        Tue, 09 Dec 2025 15:44:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE3F2VgAXXXwJr/em2vLI/efDeZig31TQwsPxK+d2pjqeoVK8eG26s7sKM/261F+V2nUHnb6Q==
X-Received: by 2002:a05:7301:f0e:b0:2a4:3593:6463 with SMTP id 5a478bee46e88-2ac054ac4ffmr527033eec.19.1765323865311;
        Tue, 09 Dec 2025 15:44:25 -0800 (PST)
Received: from [10.71.115.110] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2aba87d7b9dsm62424812eec.4.2025.12.09.15.44.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 15:44:24 -0800 (PST)
Message-ID: <586da917-6ea6-4b99-8222-7c49a5452451@oss.qualcomm.com>
Date: Tue, 9 Dec 2025 15:44:23 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 8/9] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        vkoul@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
 <20251209-linux-next-12825-v8-8-42133596bda0@oss.qualcomm.com>
 <4f3og44prqjjxsiy5lwnxam3ikqylvmk3m2ofsxoa5byczhs56@3uvxjtobddxf>
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <4f3og44prqjjxsiy5lwnxam3ikqylvmk3m2ofsxoa5byczhs56@3uvxjtobddxf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: iwRN2sAw7lY7uF9L15H-xFmGHcSbEgiR
X-Authority-Analysis: v=2.4 cv=UrBu9uwB c=1 sm=1 tr=0 ts=6938b45b cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GfICSpz_d4rxbVQ3OkEA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: iwRN2sAw7lY7uF9L15H-xFmGHcSbEgiR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4NiBTYWx0ZWRfXwhSjpe4w8h47
 ajYJ6Am+OKIhKCHrB475QfkHjDE9oNYBh5un6e+1mzJsga6h+NxJUnYA8026+XfPbEkjnCWGNDt
 EIer6T4vmfUjWv2iskPDeULpHZLSTgwnK+Vy5QiihR4B6AFcve6nZsF8lxxD2S8neWIv7qT/+tA
 Y3+OAzqz5Nf+kotFo3GqjEAkn/CgHQoShRK3AsEaPSaz/r4VAoEf2LHqIfXkRyYvO+E9Ac/1Tou
 RjHitzfFAn5d5GUo6w70F7DlztHfa0HhIOkv6vqkAd7iLnklpc8HPGWH381DuODO+XBvLX5f7zc
 +qOmRZyY+v4LGGubPskzPXVWnp5RgFXPuCa/UGC+Rds/kgskjBf32B8OXRa6fBMetgnA7QgN2nh
 eUc5DusuHAREatfyVkcjSYfd+m+SZg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512090186



On 12/9/2025 3:19 PM, Dmitry Baryshkov wrote:
> On Tue, Dec 09, 2025 at 03:09:44PM -0800, Wesley Cheng wrote:
>> For SuperSpeed USB to work properly, there is a set of HW settings that
>> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
>> these settings follow the latest settings mentioned in the HW programming
>> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
>> new ways to define certain registers, such as the replacement of TXA/RXA
>> and TXB/RXB register sets.  This was replaced with the LALB register set.
>>
>> There are also some PHY init updates to modify the PCS MISC register space.
>> Without these, the QMP PHY PLL locking fails.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 285 +++++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
>>   .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 ++
>>   .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 ++++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
>>   7 files changed, 1212 insertions(+)
>>
> 
> Does this work without DP tables?
> 

Hi Dmitry,

Yes, it works without DP settings.  I verified it on v7 before sending it 
upstream, which did not include the DP tables.  On this series, I verified 
that the QMP DP block is initialized properly on top of the existing 
support for USB3.

Thanks
Wesley Cheng



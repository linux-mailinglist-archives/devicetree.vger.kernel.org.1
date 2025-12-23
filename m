Return-Path: <devicetree+bounces-248968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFCFCD7D6D
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 03:15:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2363130206AE
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 02:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46C552405ED;
	Tue, 23 Dec 2025 02:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pcDQ9qRq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QYF25XG4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADAD5199EAD
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766455986; cv=none; b=b4L6ALNjUvev4l42p0npPJ4zFXaCWdVlti8v8bueU5xexgvLLK37VVeTz0XwMGxIBEFVJrIdSINg9YwAqFnnAw/9g8l9A2KAm3aZu9WV597KzNoGHc/fEU0D9bd+QivrdpwKalcdFsZG1dY/x76wys/i7JbAWjf1G4j8W1FCspA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766455986; c=relaxed/simple;
	bh=sU6llapwLiYZF8tL0069BDflbpS9qkot5XILKfjfems=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hnEHnS8WCcZM6KEDjLO7x55+yoXxukMiLc6nWTUvwDpjidRo7VySlMzymIG44OraWykRVCqTMC9NYaO6OyWYApguE+t8MJiXV07ZrvnYfI7uf0ZMO+bXmsMKlTgGnMqw6xE9YtITOap4sYpUM9N8PuKC0B7ljDw4V1BYiULZpTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pcDQ9qRq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QYF25XG4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BMFl4Nm1357349
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:13:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O1rA82QE4jXgcwD3wcsNDUDYnq/GTgvfToStJYGuPgM=; b=pcDQ9qRqxUK9wybG
	j4H4xrVqqxgqV+7OM3w9QCLkFDutBZ9zqd75bNeAPosApFNefEmfncNCGUh1tVSq
	Z/iumb8XkPbBAvY+FOshj+3GGSHKmOSpte9UEFcEn6n8DFfDmPY7kQvWhqTNdytg
	F1ZiWAKeSOsjCnJ/Ipjrv0qqyderFe8bwqvLj+rsm0LqTZuQ+mZsFkrkNYXGGdz+
	QZ1QfDgsDrwhaq/p607HWOnmFBS01YhizJu215TcJIMNjPZk6/bV6GVuKBdnySk/
	8/US7KUvYZaYwUgPiUS6ByJc7YfkeC0bySeJ7zmCZQ5DdgwJqzsl3bGFL4D31FAS
	QQGYwQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b78xc1bsx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:13:03 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b89ee2c1a4so8939028b3a.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 18:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766455983; x=1767060783; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O1rA82QE4jXgcwD3wcsNDUDYnq/GTgvfToStJYGuPgM=;
        b=QYF25XG4cDicP1QHB8apKyQ2YMKGisZ9m5UstIbvjkMF7lfC+ZDEnc0633atEoyIBt
         LI10+FSwVVUKK+CnQKxrod68tCnJdGJU+oKrd+ynrllGtz0cfIdbmdjLNJ5daBtg5bFM
         0PqAO8/z4nCE3JBAV2RYPGYADR5+UDrSE7t2U+eW35YUzwN+SNayhHavjtsddsqgPUp6
         w/O2NjhtpRRjXTfy4W2mhtEgkOkbtfddtOp/filTRc7+qp1Zk6ke9NeWVyBQ+rFv/Zyh
         B94Bbq3td9GAIdCD40JqA9pj0SNg5Ssuel3i7CnIp3x3O6kwL0ttmruPF+6Gj9lbL6VE
         DrOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766455983; x=1767060783;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O1rA82QE4jXgcwD3wcsNDUDYnq/GTgvfToStJYGuPgM=;
        b=hSIz2v7Xpiz/SbPIcgYrcL2mF2dmiuVyOChw2FVvnozSeExDMulE+vw+GKgwhAR0FE
         osxtpX9ZZzNjsLE9uHJLispLjpKOEzEo6V4DR9JQEvd+7RDksMHzANcyXxJvwX1X0tuS
         ghUkw/aUvEwy8yKGYDb43FW7gWbX3szC6cIAZgDcnQWYLREqgbAvlLH01W6mRUfiZrKf
         fmrV/AiH08aO6IEWs/SmVk3P8ZAYwNEg9sc799WtU0+4gMfErQL9XyqoB1/lUgjH0d0h
         OJ51Ezyr+DI2CSj6JsP6yfGkAYX1zotfe/flcfAhDl81U2nDxQSxYgEiFpmZaBwxpPgn
         kKUw==
X-Forwarded-Encrypted: i=1; AJvYcCUOS9VjJOl4vsaUrsCoDAHsE3gApav4j5+AX0NN0N3SJ18Tr0agFGlEn8oY/73K64L1IhWntuRhVoxG@vger.kernel.org
X-Gm-Message-State: AOJu0YxK39Cu3lohp1JmhWlupQEQFucfOBUmZ0tVfscROXvJ/WuwmqWJ
	aB0YYXSmxrAZIKZ6kpYflS6Zi1uUpYp+zEpiKe+nAteScEjLpSWM4T8xO5khNDBhUo7Mdhn00Se
	d1ouaArqJxA+p9aHaQ0RZr7Z8+E0PaZxpSbJiiceXrFKQqYG3IZQcK7KlWNVv3+Hy
X-Gm-Gg: AY/fxX5m31ufC9jLd7ip1ZBtKZDrm2/86BFbVdgprP89qaS1bJapwfWifjI6/b4TLlc
	I6dW0fj5TNV/36LlIZDeECtapTJLi6X0GJI71NU7gOXL4LEj1uQeniSkq95sUHMlg9vT6R/QQoa
	pOla2TwY6AKusD5+gVYx6ilYhdTmhO4KkrGnt1zlhd3Ne0pJeNzFQsMn9i0TX3smd1F/oI9DlQ7
	i7E/BT+CCauN2P1GlazdB2CVnBzekpUWBJhno6BJyEzDozRm+ULVCmZps5rIeFQTdLgLnCWUEPB
	9Jakw1PmliGEfK0POlr1QUe1z1fHNvye0a4Td9kCNUCKcQOMny17qm6rbXiNglTjrsiOrPhmqba
	5brjfTnst7cC59LDsvdMGGR7U6G8dV7mkM8Gte0asoMwv/Z9z8DQgd2f1iMZ/XOGMRG8kSH8hHt
	DM
X-Received: by 2002:a05:6a00:ab0d:b0:7ab:78be:3212 with SMTP id d2e1a72fcca58-7ff65d7e735mr10841929b3a.19.1766455982589;
        Mon, 22 Dec 2025 18:13:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFqY2u9Cc4PP3gmsSnCQi6YrzHeTT9+q58yMBkEYgqgiQHSArGEyKDtwjaBWFsuYaiUx62HMg==
X-Received: by 2002:a05:6a00:ab0d:b0:7ab:78be:3212 with SMTP id d2e1a72fcca58-7ff65d7e735mr10841915b3a.19.1766455982101;
        Mon, 22 Dec 2025 18:13:02 -0800 (PST)
Received: from [10.133.33.8] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e48f258sm11649868b3a.47.2025.12.22.18.12.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 18:13:01 -0800 (PST)
Message-ID: <d8642ba4-9a6f-4fb2-bd0c-419ead2630d3@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 10:12:56 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Initial patch set for PURWA-IOT-EVK
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <dmdtwsdwl2bl7mn6j4d4xv76h6bo57van3ni4zt3iapq5bonsp@rxoqan4nahud>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <dmdtwsdwl2bl7mn6j4d4xv76h6bo57van3ni4zt3iapq5bonsp@rxoqan4nahud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: c_u0bs76XgRnI6xJIR9bF1WMrvX0cM3k
X-Proofpoint-ORIG-GUID: c_u0bs76XgRnI6xJIR9bF1WMrvX0cM3k
X-Authority-Analysis: v=2.4 cv=cuKWUl4i c=1 sm=1 tr=0 ts=6949faaf cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=8S1x9iRXHCQAEbiqu74A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDAxNiBTYWx0ZWRfX6HosD/DJW2Wh
 5U5PTLFPf+xNwhthlQqKcqXpaSrbnOzPtMD0gmqNsuURCQw/7nkAQNilbkdmpXBTyAtJb/rOgwO
 Dd1bQ45QcMZUtBlmHH73BjxRy8wdNf9KXN63VReNeWGMZS09eJgUnbUDOhrZjW4CiuYOgsDVzhZ
 SSH5gQ+9UbQpSs5n0IZe0lWFPz1CG3XU+EB0PZLAEzBH/wUEetQ+sPgyVAQlhUDBGMo9LZeExPC
 6ab5EF3C9lFrZCJW03MKd346N9gWpM9y+1bEqjjNIfTGUXCxkHs01GGwv4ac1EYGEsZBFjkSgKo
 FO6aoKsno7+lrEsi+JAm2lvhKatYkDTWLzPLBT0OtkMjF4c8O747xdGWLvjMN4RZ+HQJuTR8/il
 grKabSjW9Fji6PY5BdDTJrosv9TWxlputmxGbE0TMapWZagmd76qA1amJVZHvp0MEgezWqb6hvZ
 D4936TVdASLlYvnOOwA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-22_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 clxscore=1015 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230016



On 12/22/2025 5:18 PM, Dmitry Baryshkov wrote:
> On Mon, Dec 22, 2025 at 02:03:25PM +0800, YijieYang wrote:
>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>
>> Introduce the device tree, DT bindings, and driver modifications required
>> to bring up the PURWA-IOT-EVK evaluation board.
>>
>> Purwa and Hamoa are IoT variants of x1p42100 and x1e80100, both based on
>> the IQ-X SoC series. Consequently, the two common files in this series are
>> prefixed with 'iq-x-iot' to reflect this relationship.
>>
>> PURWA-IOT-EVK shares almost the same hardware design with HAMOA-IOT-EVK,
>> except for differences in the BOM. As a result, most of the DTS can be
>> shared between them.
>>
>> The changes focus on two key hardware components: the PURWA-IOT-SOM and
>> the PURWA-IOT-EVK carrier board.
>>
>> Hardware delta between Hamoa and Purwa:
>> - Display: Purwa’s display uses a different number of clocks, and its
>>    frequency differs from Hamoa.
>> - GPU: Purwa requires a separate firmware compared to Hamoa.
> 
> Is it just a separate firmware, or does it use a different _GPU_?

It uses a different GPU.

> 
>> - USB0: Purwa uses a PS8833 retimer, while Hamoa uses an FSUSB42 as the
>>    SBU switch.
>>
> 

-- 
Best Regards,
Yijie



Return-Path: <devicetree+bounces-232855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2D2C1C8C8
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 18:45:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D4AE58372A
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:43:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1476533C520;
	Wed, 29 Oct 2025 16:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jurMUHDU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xp4c7do7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5F531E0EF
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761756190; cv=none; b=A8WQNCPByWD2dN1b8bfuRLL/n6x9KSmtOkyynVhnkYL0uga4f/ZDtI4LFUoLZEj0PIw1vrgDLeh74DzVl+UQKkaV/en95Bgj/DVYrhibnXRm/f8oS3LozJ3Ov6SRXCsD080Lo5npwX7PT5SrkhD/aYQ+qwrIXTiLv6Eie9Bmri0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761756190; c=relaxed/simple;
	bh=CMWQj5jtGtAgppiK1n11UOBvfGJAKubZbQAB7EpoUA8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HeExBHEruu8axuPKq7iSruoawdBxE5+Ht2ST1pRHP53izk/MOaOQtATJtJhGD5J2aeNF02DdzJTCtVYamtGIB6F544xciudKLuYi7qUCh8xrzGDXurhFvtXZsK2VrhnmCHoziKGbRcd+4sSA5ZR3iMyVk0gjRr8N2SkzKe08Xnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jurMUHDU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xp4c7do7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TGIeYA4135998
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:43:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YxIKHvu9IRyd/kr31TQ5+bn3d7b2acGDQxHpx6QiFGw=; b=jurMUHDUf/mNomJa
	+oeZhdG+83i+F9+e+daqj3ssXJGeXirYKNx1u5hIov0RBJSXrbYf5MNDxSmYBTy+
	z5VDwtI3nXmbitvuF4hOr5XGdm8kXpmMFYePm+iChGdGrfne/bEnLFZC+ctmCZmZ
	SCK8zEP6JoFcNZrQKO0fuD9J/xedI4lR7N/85OaAfWTLBuw4QTWI5qliV7S6RDVG
	Z6tfQoptPVHLvTFxiKJqRw/WAd7IevjU99fQo0vRDyAMZSaJYgMJruhXGkjcIh7G
	cECyCPQ0833F7+feQ/JbCBWzlRyHyK6TgYOPpG5mrJBfLK0e1VJafSC8w125m2pr
	L4G/4A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3ff9sgqs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:43:08 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7a264d65dbeso108932b3a.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761756188; x=1762360988; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YxIKHvu9IRyd/kr31TQ5+bn3d7b2acGDQxHpx6QiFGw=;
        b=Xp4c7do7fPSwN5tGsalx1vBkHfecOw3mzsyAZ3zc2cbzZLHzYatllliHdBli7XpkZG
         RKbsvo2hHFwxDG0P9lG0x76jGxZl1T/WQvT5nC4asvX8dgZYbvTgspaVYodIxhhyhAbn
         JSKFUK3ujun79RHbmH8U2ofXdbffznsJvzeHhrpbVXYHna+2lQUP5frFtX+vlHd8rpnM
         IqHLTNGWBCW/cKLH7S9aw/esOdIYgwYHqXllVzYxGAVEqFu4Eh8gcciUK0d0ErBI4UJ2
         eDUVnYBWOzvPVuNjcOH4q4xzoHIkJe9LBgYCrYUgkHs50Q8+5maKVDeJDDzstPyXthb3
         bgLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761756188; x=1762360988;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YxIKHvu9IRyd/kr31TQ5+bn3d7b2acGDQxHpx6QiFGw=;
        b=TNNKR22z/yT3ElRocB4l77KQGAXqmklwOUdHS51OOY82raulwqrT0EUOZC6xiltjsT
         A7ZST+JAayyqfJCsOOd0hJ/gGtbDlyg/JYvqjWGJT3222Wp2EQ8IB7btx0o6SWWGq+vC
         oRrKDKUqXtvRuD9DH0q4o8tkNIkLJGh5XCX7mZumMz2YX1merTCSwwVn2X6mJhzvjZYz
         zcqE6/nckfGG+JfQpadz+opgUfpY2BH4ibzitiHxnKBmr+uwycNNmEQ/ctKGyW1thtLr
         WywzaUmEu7BnOFkhEG6eqdZCpwiaEo7R2/yrb5uYO+5Ias0b+hp0n3qvmE9G66bwHbd3
         tu8g==
X-Forwarded-Encrypted: i=1; AJvYcCWLVOp0sNe3/xi8iFZ4JGdt3RJhILq9MinzLVFBeZXUhhuV3Fs5Nw/Yj9Wz/tx48kigkmDEd/epvMKp@vger.kernel.org
X-Gm-Message-State: AOJu0YwHz8ZohWTPQOl5yDCnsKabQ5EvNvvX0Odl6SwJ31rEC8g2Bb0n
	aC9a8b/4yclHj7r3geY3qSa7s7u32+f/hCnM6WXKkmkc7ok6X2zjJxnEOoozTdF5uCh3dATC9Rp
	1yzk8VY/pFfiNxrbopFlNHAISOXUdiGi7L03bm1L/VaqcM0N8t2+crKlxwSWyoTc/
X-Gm-Gg: ASbGncuIU6ue8i4f9foPTdF31pzyZtsbqteLWQ/izMDYnYdqeHhygBcWDF5OJDg3pVM
	0DBx356ZS2aKUK2ou5Z/Tv8uexYDyxM6JD3SkyXuvQBkXy6UGBakLv1jnCp9YniuZPWM3lLYXCv
	EBB3MWr7wZLKRsDftIZ8w+OH6NUXTfqrgKOd0lG3u96cpnTDCkm+4I3bvmAy+ahVTPYfjl/g1Iz
	vg8q5dE47vcP2DKSjrnv6McV8gX+AfcsxYcPJdYJ36e11KgQubG4+1QqBZUoJCNr2K4Hi42YC3p
	lL2cBSROSD8UydNrA31VA3oyokdxUim+Y8I9/k95jvMPZxs0YfLclqgUP4VQP7mJ/g99gVs6NDb
	6I9C71ZHwat9/u3znSfPdZJNHudj17buYzg==
X-Received: by 2002:a05:6a21:3290:b0:343:68f2:3728 with SMTP id adf61e73a8af0-34653334edfmr4521756637.15.1761756187885;
        Wed, 29 Oct 2025 09:43:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFa6T49KpR+tP4OKn61E0XyxYqkZWJ0/qeQQmMiqapSzHCPzMBLcjoz5QGBVzIZXALq+pjJnw==
X-Received: by 2002:a05:6a21:3290:b0:343:68f2:3728 with SMTP id adf61e73a8af0-34653334edfmr4521722637.15.1761756187354;
        Wed, 29 Oct 2025 09:43:07 -0700 (PDT)
Received: from [192.168.1.3] ([223.230.47.219])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a4140168f7sm15655726b3a.11.2025.10.29.09.43.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 09:43:06 -0700 (PDT)
Message-ID: <bfc126ad-1443-4b9a-bc8d-3619606294e2@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 22:12:59 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/3] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 MTP platform
To: Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251024151521.2365845-1-krishna.kurapati@oss.qualcomm.com>
 <20251024151521.2365845-3-krishna.kurapati@oss.qualcomm.com>
 <r5zjb7v2ngsbx2y63tmdhnm4gbpla5fki4uzpjhvn7sqmzsqi2@7637rbudt3z6>
 <469fc3aa-9b95-4b30-a704-d568a830452f@oss.qualcomm.com>
 <vmtm6wy2ldvobgl2o7cqdtknyfg4fup2pqpddkftnhzs5tgqrq@vbo4j2gmr4px>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <vmtm6wy2ldvobgl2o7cqdtknyfg4fup2pqpddkftnhzs5tgqrq@vbo4j2gmr4px>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: n6U5nZGeBbX5twkL4gm8szKbSsNg97ZR
X-Proofpoint-GUID: n6U5nZGeBbX5twkL4gm8szKbSsNg97ZR
X-Authority-Analysis: v=2.4 cv=Cf4FJbrl c=1 sm=1 tr=0 ts=6902441c cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Wzgei3/ilxDouSaUxftnwQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=FR6T9U9chX6Biide38gA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDEzMiBTYWx0ZWRfXwOpkaal9iG64
 Tek7DWJILEv/Y/wR9XpZX6DBslQ0kAuYnipkdrgPxXeUZ7U+QMqzpuXVjfQHEksggKGV7EmDjsj
 0ghhDTOxL44KxuZK31gRakZZjutnHEEbyHEhdP86rPTlAl1LaLgOzo0h+RGydy/3hwAYlJRzZcU
 JdgRPdYqCY8lObf2m3EB2f/LWa3UCUALBAsoNecMzE57nbg8qNDKoxMoxSh55kmCPQdd1XilIvj
 hpmwqbuozJ456ZDixea6/mUSmLk72Oyhj60dJr+4QUhDrPG3ADPugXJ/9EILG610Mx759jp2eNg
 Bo5wi9eZZKaY7ull1LMc8MgJ7AGU+KILsa33ejf76XPDipxJHzhoGBuEXWixZcYDOY4mjhwHzzP
 r/54pRN52TOnep4mEFoDO69/LckaBw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290132



On 10/29/2025 10:04 PM, Bjorn Andersson wrote:
> On Wed, Oct 29, 2025 at 09:20:48PM +0530, Krishna Kurapati PSSNV wrote:
>>
>>
>> On 10/29/2025 2:45 AM, Dmitry Baryshkov wrote:
>>> On Fri, Oct 24, 2025 at 08:45:20PM +0530, Krishna Kurapati wrote:
>>>> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>>>
>>>> Enable USB support on SM8750 MTP variants.  The current definition will
>>>> start the USB controller in peripheral mode by default until
>>>> dependencies are added, such as USB role detection.
>>>
>>> Which dependencies?
>>>
>>
>> Dependencies like pmic-glink and adding remote endpoints for otg support.
>> Till they are added, we can enable peripheral mode.
>>
> 
> But this is 8750, Jishnu got qcom,sm8750-pmic-glink landed in the
> binding 9 months ago, so why are we spending time discussing this?
> 
> Why not just add the whole shebang at once?
> 

Initially I didn't add those changes because the series already had 
acked patches and I didn't want to disturb them. I can add them in next 
submission and send them out.

Regards,
Krishna,


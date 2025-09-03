Return-Path: <devicetree+bounces-212189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 469BEB41F6D
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:42:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1B85202222
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B71C2FF174;
	Wed,  3 Sep 2025 12:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KPvTAbyx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287AA2FE05B
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 12:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756903329; cv=none; b=qzjEu+5R8F70qpMr24mRF1D0yW2slgY9a5rSEwhojNyQdUcsqME1k9SCssOvRJDHRIxgiM7ZkcxbGhXfT5J3zqdgC2dU4aNycOSCltPitm54H2nJIV5xdDNwvbnKoNS0o96P3in9xXY1n97J02v/fS2JUsCZpjKDiwTgf7zq51I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756903329; c=relaxed/simple;
	bh=E1Cna2N6t9JI+222gYwxRIEMiszhSQiq7OVsmw0ymsc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EagaTxhdZkDw+xR9XI63chENb/fjB2/yxQOwgzBS0KPvfoHERC5fRT5SqHiKWI5NpEFXJlKEYwuTirvYglaUBISsn/B9DzZteDy5ta0Vf/7trKZnG4LQ53HqSnwvGtl8F3vQJETLcSFbR4hTOmTkqbxkYR4Dg7Q3L28R3JqT3ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KPvTAbyx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BaGrM025402
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 12:42:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UyKqXw+ysFsFYLn6dUcHiY+1la1eKIWGJlMEPy3Xe1g=; b=KPvTAbyxdOAR12ei
	60xecrPb+TPyiRkSD0snqlxUlWPHcUjFg+H7+9e/NY+3CbtQGIYpB4SUyrivMvXD
	mbVDZrMl/Dyq9FQvNxH/MvuLhT3y7oefheUXcplUlgiNn6ak7+EVxa/2tOlOZRXO
	ieQTIBmI7YCIXXNP+DjYp9sEiLOjzWX1jRccygpo8I6Y4PoMLDIvfOYeaCej4V+L
	fhudvYGhNSJsbiaQ91ibNbCx9SwT/QlKkZhgFn6YBUOtCOty1dL5FmUo7T5NWVMr
	VOg5+1WzMxU0JhTwukeWO0CdxEM0LYz61pn0rqDY9NtNyA6oN9vdTXMlqYPnUGE1
	wdLVhQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48xmxj078h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 12:42:07 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b3387c826eso12247711cf.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 05:42:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756903326; x=1757508126;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UyKqXw+ysFsFYLn6dUcHiY+1la1eKIWGJlMEPy3Xe1g=;
        b=ssx4iK5owCcGQoAxIUM0V3zFdMSpwjpajijqA7tOF+Zf/+/6RRxEInn49ERRv8FfcI
         QfOUaMqFQEfAq2SzjfRCd5l4CJUcXRwHRjjD7BM7FlhGg4T/Le91U5l3v/XmBQ/sIXxv
         ywOaCw6AWSmZ778CA0so3w4GUpw9yNVB9Lg5YCdYNCnuRy/ViI2h/egBst+C/1KJRL/T
         5xZU6JqYAanul8TcnCBr342mHgnRO587byaFQlepj0EcgQyEjMFCM9Kd1VAFmeD+ipFv
         1uRDgzl91iATGW43caNQtdHup/sp2B8ruDaFMSUHpdk4zCfXgxKj4R8H+w7JxRwVQXgy
         00gA==
X-Forwarded-Encrypted: i=1; AJvYcCX9XlrEyaxAB7AnAb5oTnJXCD1Kb3Iylnu5cXVrseci8EdrzKIfCzbyxHgaYSG2+1Uku4QWuToCHG7c@vger.kernel.org
X-Gm-Message-State: AOJu0YxVYaLuHTZGWv35VOcw4WHJsJbSfUAH/nXE39RqXoou2N3/V9RW
	oZP1L7YwAX5p9/hjPstpwUB7vSDnA3LP8ltuX/z9JkgDAqULgA2NxXucWHhdyFBdilSFk60KfJc
	zm0LgtVFZJ6s0+u+2b1T9vm7mIGQEBaCK8apgSp9qOAJ7MIciPTsln5x7VsGy8g8vYqTnp1KW
X-Gm-Gg: ASbGnctuxPTUYmK6bcw26oGPgXfRW+d3aj3xJ6nJM4/kpyYMbi3w4km3ce6ZL3rMTBq
	PlDyWtWSR7DwxXExnsu0L7pjh1nmygHS2qmjacajpbwrike/JYUPrPkmhurxTUEeUpaPBW0Sglr
	VeycKXOFnfk5hPfDW+LH00gLIUmeAxesGXUWiH70/XVIg+cCo7nXvWnIo5u1KKZ9yGcrHklOOSY
	y7kTvbtv0AmmLEd9m8gXU5b0cRIjhGA29x3FU1xqtmJMQLqmQcMJUDuGvPkCLtUML9Qqq0xYrhE
	G1rVUhK/dxlTL4GNfrlOyi8mfau6XCURD6kE19lQ1ozCihpr6eIZrv767ZPj0HHDO/7+I0sw49U
	pNTNK5Muy51GFG96YS35snw==
X-Received: by 2002:a05:622a:1992:b0:4ab:7633:c58e with SMTP id d75a77b69052e-4b313dd0295mr147827621cf.2.1756903325936;
        Wed, 03 Sep 2025 05:42:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsWMsoVz20vZMifq7gvXp5WENey2TR6INKN0I9TlYR/V7hgmuniZ60zIFTZtgxCrX1f0kK6Q==
X-Received: by 2002:a05:622a:1992:b0:4ab:7633:c58e with SMTP id d75a77b69052e-4b313dd0295mr147827041cf.2.1756903325090;
        Wed, 03 Sep 2025 05:42:05 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0467f47d4csm173799466b.11.2025.09.03.05.42.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 05:42:04 -0700 (PDT)
Message-ID: <3c4751c3-52d5-408e-ae80-df22bcff5d8a@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 14:42:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: interconnect: add clocks property to
 enable QoS on sa8775p
To: Georgi Djakov <djakov@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20250808140300.14784-1-odelu.kukatla@oss.qualcomm.com>
 <20250808140300.14784-2-odelu.kukatla@oss.qualcomm.com>
 <90b51e31-3217-4483-bb5b-ec328665a723@kernel.org>
 <28b97952-1b67-411f-a7fb-ddd558739839@oss.qualcomm.com>
 <ac83c453-c24d-4c4d-83bc-9ed13f2f9d1e@kernel.org>
 <7d3e5cf7-4167-4005-ba4b-c1915c254705@oss.qualcomm.com>
 <00f50d92-e4ea-4805-b771-147fa5f5ebe4@kernel.org>
 <249f8109-31b1-4cb8-a5a4-b30c27b2e987@oss.qualcomm.com>
 <6e036d6a-f2d1-43d6-bb35-54467edd7ec9@kernel.org>
 <26e5309e-3705-4d70-a2e7-3f0e9344816b@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <26e5309e-3705-4d70-a2e7-3f0e9344816b@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAzMDExNyBTYWx0ZWRfX181dTCueT3zj
 SAdNjSyKAXFvGTJfTgjqOB97HcaYc5ZFJJ4Ss35DC4OSpFvOTIkMvKxNVgJ1wXV0jMZYR4NmIT0
 p/j7SE9A4uzTbo/MY7lySYN7/n5NIl6NNoJ/apVhnUJmvMvlQftTyIiC8NHvbxlKWL+o7KKy9pg
 5luA6PHfJPk0X/p35Wx8WJTGEvOnI2clq3EXNnDIYZDG8Zy8zx22kZ0mu48AHkay9QlZ7cw+uav
 SjQ0A12Y0AAm3r9TtekYN17XuW6RmaRLCey3V9bkqEoTw+6lslVlk0fNDUJ9ZliPNeDL9djveAI
 V4nDk1mHjD6QtnCcKYClv68rUohaR+4aRUGLgNCzbzohAZoR7h37zs60WBk7mXOVlAYxM4+nK8a
 90tfxPY4
X-Authority-Analysis: v=2.4 cv=a5cw9VSF c=1 sm=1 tr=0 ts=68b8379f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=XlH8FPY39J8rQsCe0dUA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: LQCB_eIkGB8LMxHUI8uNtmPjWbnaGKyS
X-Proofpoint-ORIG-GUID: LQCB_eIkGB8LMxHUI8uNtmPjWbnaGKyS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509030117

On 8/28/25 11:59 PM, Georgi Djakov wrote:
> On 8/28/25 9:20 PM, Krzysztof Kozlowski wrote:
>> On 28/08/2025 20:16, Odelu Kukatla wrote:
>>>
>>>>> QoS configuration is essential for managing latency and bandwidth across
>>>>> subsystems such as CPU, GPU, and multimedia engines. Without it, the
>>>>> system may experience performance degradation, especially under
>>>>
>>>> So how was it working for the last 2 years?
>>>>
>>> The system may function normally without this feature. However, enabling
>>
>>
>> Huh? So you agree but keep continuing the discussion?
>>
>> I don't understand what we are discussing in such case, but just to
>> close the topic from my side and be explicit: based on above you cannot
>> break the ABI.
> 
> To be even more specific, if we already have some DT binding without any
> clocks and reg properties, we can't just suddenly change them from now
> on to be "required". But they can still be "optional" and this will not
> break the ABI, right? The old DT is still valid and the QoS will be
> active when the new properties are present and this is handled properly
> by the driver.

Correct and this very approach was used to retrofit QoS onto an even older
sc7280 icc driver.

The icc-rpmh core already ignores QoS configuration if the clocks are not
provided.

Konrad


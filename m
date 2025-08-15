Return-Path: <devicetree+bounces-204922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8C1B274B5
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 03:29:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF4D2A0590E
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 01:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA901339A4;
	Fri, 15 Aug 2025 01:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C+rptkb0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E5F8821
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 01:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755221373; cv=none; b=gH84HkIXc4mG5gSk53O/Q2lXNvH32qS0q0cQIJmQIIRlgWkFuj7UnmpZbOIOChj80jOBkd/Ivf9JqMyb6Pe3zEZ94ory0bmzXecLohfEaqi59P0LGUq6hc5qhnnnUpQV/r2ywHUB0lT6x+aTeo1VwdsQQe5Sf3wewn5jM0Dofxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755221373; c=relaxed/simple;
	bh=cL4fF5cojIEZfoIUUyktMh691We62NCcFTpHQe1DfMA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZtcOlSC+X8yLrJyoikIhvGxW31onl0iOajMV78+Il7yfLhD4C//QKToG6dEFh58AYV06AJNn5XKVr+OtkU/R/v/ORJZYsEZ7BRyY/TyiGGhTFp4yX+2an/YQdlC7SE35HKU5SiTaqv5wAK8mOdKiEPy/XWN7AHoimUf1aeqWd0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C+rptkb0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57EHWBso002871
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 01:29:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BUqEIcGg41PDXWHz1z/iY0qtxmEUPZEPL2CuLNi8QnE=; b=C+rptkb0uGTes0QG
	nkqJySsyMhhThA/IhZCQ7aoDYwPH8KIvov7RFNVDU+VWDDuANrPyVxx7YHu7TYN9
	XL44aCtGkefVytiC0PE7QWywNcGZ29E24QEW+aTRuJU8VN2TZctkDutwa/R+Xp7F
	vKXUdYouhF6yhJd7ltlhgwhQW3yiJhWCc3HpIoGuzHgnosN8TyfNALwdzpB+rHy6
	ThZwAfRteRXRO/bTPmdqgMG/a+4TFU/MCxL6x056oGN6rVzJghMZtmf+fY304wsY
	ERJdYD0AmmBfEQH4064y1I+z2p6qdKC0DUfKTNzznu0MhBq1tO8+clKX1vAumBDU
	mfgtAw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxdv9m9d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 01:29:30 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e2e8fc814so1368558b3a.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 18:29:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755221369; x=1755826169;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BUqEIcGg41PDXWHz1z/iY0qtxmEUPZEPL2CuLNi8QnE=;
        b=xU8Vjk196Y1Hw/bNxMtwPv5IfDpNH3CxEiuV7fEtFCNrz25aOSVFrWcVLISW7z36h8
         CAH2AMdB/R+ZoZg76ntV9grDcPenvsV0q2LMIGoCkoeTTje3QSR/zK1dvHVKE6bZuKNQ
         uySkfFo611VfbWk6KDDZPbApzjoG2Ykq2QbhVTwZzFIdD2ecVNUW+seP+hkPSrNhGNOE
         SYDUOmKe2vTD+PaLWKagbLaeM9Q+TMUvbF+lMPDuC/g16LjNQSn9U4rAyYM8cMI+ZRjv
         D/72JvoqGax+cJzajEFAI9jOykQ8+2oHJODfL160vLZ46jpGvB8jIBkDgWp28eqnsh1Y
         NaKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVn5fGLeOmgzLoV3BXt0deOvj9BdMDs8hXSCuzdLsAd1+5KKEJGrULtVC1gWzzc9Ov2YOHq8DsLizPA@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz9+LjXHuUu0P0f/vC0tK17BFM72qC4ivaYBok/KrBlyO80ZcP
	u1x53QZXu4wjYfe/RkKBnC4jUSqvTLRszBirOGipNKY2qkPANayuJXGWCCC29BDKcWCZA6JRwzI
	IvlHQkwLxOn2QHlP5qx7nAYS25EwRkVuZwJXuSG8WZXQiwwoG0kf60eL0Dv0XzMQD
X-Gm-Gg: ASbGncv8YUyRw99uDqfhcAfD5aLyGdvCWrof3oTZWvobt5BfKJYI+yCEesJadZB93OW
	ZWdDQCKQ+dnQFrVLAg75cpk88wodl4fkQ92MICk5wYF/wd6YGqcGucrR9rKEiVIoWCDKC78q60G
	hKYGxLAobnimv2MkwTJ8GhLftp+2qp9eLHZeZwGJWBrFod0kb16Sa6Bfw0/OJsLjK8KHBiPuJcs
	DGI1gh81MhbdZp/yJSfM3B7qUNLYGogNrgShNoMXzI0/JE1bxBAqCj3SvwuYooEFyEHvfzGWLYH
	4EPwIQZCIDyHfdEPlXT8FX29UT8zce350c7kh2QybmEjCLRGlV2P9TZlUO96ALHuRdPc0ekFMbK
	X66gkONd1EBqnReybsYwqPZipO9Q=
X-Received: by 2002:a05:6a00:c92:b0:76b:f06f:3bca with SMTP id d2e1a72fcca58-76e447c149cmr255805b3a.11.1755221369337;
        Thu, 14 Aug 2025 18:29:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE85cmPNcrwW6bUVVpYJSBjvWFffHOJCxDIni8KFhZzvKGJ6oG/cndR/h7QxbdZXamxFvZSdA==
X-Received: by 2002:a05:6a00:c92:b0:76b:f06f:3bca with SMTP id d2e1a72fcca58-76e447c149cmr255754b3a.11.1755221368603;
        Thu, 14 Aug 2025 18:29:28 -0700 (PDT)
Received: from [10.133.33.40] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e4526d1ffsm9468b3a.16.2025.08.14.18.29.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 18:29:28 -0700 (PDT)
Message-ID: <603fe072-b2f8-4cc2-8a0f-7f51d6672b12@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 09:29:21 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/3] Initial support for Qualcomm Hamoa IOT EVK board
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Yingying Tang <quic_yintang@quicinc.com>,
        Shuai Zhang <quic_shuaz@quicinc.com>,
        Yongxing Mou <quic_yongmou@quicinc.com>
References: <20250814-hamoa_initial-v5-0-817a9c6e8d47@oss.qualcomm.com>
 <5reeryefhw7burzf2lymhg5wivaq2n4gq5hszvfp57dergvpyx@qehaf334gdrn>
 <7e5d39e0-115e-40be-b44f-0195a4827a0c@oss.qualcomm.com>
 <63ecde5c-8234-4630-97e8-5806b9ff3eea@kernel.org>
 <a56b3e85-0d42-4945-8b6b-dcff20c7b104@oss.qualcomm.com>
 <bca211d0-8d53-4f49-9cdb-67af7ba69421@linaro.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <bca211d0-8d53-4f49-9cdb-67af7ba69421@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=IuYecK/g c=1 sm=1 tr=0 ts=689e8d7a cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=ocaDlfLBIpot7SGG8IQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: kAUMJnk2GxzYxByzD-s-tgMtPxBPKwME
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNSBTYWx0ZWRfX3SScBbEEHDaU
 rgqp0IHMJGqlVEG4o0N/O6FYc2WIZHN7kKFaE7g1eh0ssICmdbi6Bi0DcwIDdlxxig8g5FzGUj0
 SMFc07LGK54Bskbdn2oJy8mM1CjNr5rfsKF++UZ/EPeGwpYkEQwR1966O190Jhavwuass+pV8vA
 H8l/iH3CU7T/M7gutahU2IhUOTItlHhbmFW9gPkTPpN1xXYMENRzwZgVjYl8X3UF3PQR6ahO8ED
 RDdkAukdN7caazb9eX+EFmGnM8o6Sm/h5xFdC5HjVK1MP4v4nRDoqM9+XmqBdE6yHZAiEiBYhvU
 wCfiXsnj0VKGNjpTOBOs3du7RF5OuIyfM0wAFPFZlryTUE9Rg+WlOnBKWvSeQ4NQHA/Kzd9wE+2
 Pk+1Hf5F
X-Proofpoint-GUID: kAUMJnk2GxzYxByzD-s-tgMtPxBPKwME
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090025



On 2025-08-14 19:15, Krzysztof Kozlowski wrote:
> On 14/08/2025 11:28, Yijie Yang wrote:
>>>>
>>>> Audio support is still under debugging due to unresolved issues, and
>>>> it's unclear when it will be ready. Would it be acceptable to proceed
>>>> without it for now?
>>> Audio was sent to the lists, so this is confusing. What was the point of
>>> that posting? It clearly said:
>>>
>>> "Basic test is good in Hamoa-IOT-EVK board."
>>
>> Additional issues with audio were discovered during further testing, and
>> the current audio series on the list is not suitable to be merged into
>> this series at this time.
> There was no such indication from the author in that thread.

The author of the audio has been clarifying the technical details in his 
thread, and I’ll ask him to mark that series as unsuitable for merging.

> 
> Best regards,
> Krzysztof

-- 
Best Regards,
Yijie



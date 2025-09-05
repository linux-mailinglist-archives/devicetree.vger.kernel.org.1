Return-Path: <devicetree+bounces-213229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A7734B44DF6
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 08:31:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64A09487144
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 06:31:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95CBE2BE027;
	Fri,  5 Sep 2025 06:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AzVtrVzJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BA429B8F8
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 06:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757053881; cv=none; b=gh45e0NVkicGtOFLmOBnJ0KuJc6dMC0vs7PfnpC6biMx/GgIEouxpY5rjEwT6Tu3VRPLUspq10eKoWUBGWGHVdzjWIbBXIQCxr7YALvAh4mRTYHDqFEsE5jV96G8EwDFvjAsDLaUlq3i74FMWULkhTlpfOSr3pRh0IassVv9YFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757053881; c=relaxed/simple;
	bh=c+qCkBwUcNTbqtKHddqUYexmmRMT9xAUaD45trrVIqg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jQaDSgyJ/epJ6KA+wtMozAg4LH0i9mScUs3n9tZXlDT8nLnGFY3VaexvTdoXGg5ZZLYjbIHSsYTVyYJmbYcoIbhbe/vRPxsXVvA6X9WlDpMcgW+dlNrj4hQACnrbG5IbQFAkUoRxamGDLBSf/0IMBRighDBaWrpA9xuENf1TnUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AzVtrVzJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584J3eLg022976
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 06:31:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ihUchhbr+BPTutSAMH3QPkZ1k4UUvBlJqLlucFmaUzQ=; b=AzVtrVzJcsW7ElbT
	DqPGbcveokIzhJepOdZCV4f3wFdinbwoKmCv3EtfGrbzcUsHDYAwD6hH5EhbODVj
	dWbTjF2IYUA4f1Uf3lo8K27VoTIPcncYjP9qpUBFWz3PSner+u064gTqQro4RWS9
	33g65acPdZRHB2MdJu9Lx2EEx49d5FFgH3O6xGaywnCRxli/foUdEAhDYMyQlmqA
	EafcfT9dOt2z58QRMGjT80f3VK8piYI6eq7K/69Q0O/z/9F65azI20lArTEOswzy
	TSpCHGOOZDjBQ8WOCz41jVRFRmj4+XFAVHYeN6Vi0knWoDKIAEZSbQbr62bBjU5f
	z3q+lg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0et8v3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 06:31:19 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4c46fbb997so2254957a12.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 23:31:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757053878; x=1757658678;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ihUchhbr+BPTutSAMH3QPkZ1k4UUvBlJqLlucFmaUzQ=;
        b=rQjWUYO03fjXSyZsYJQGJgkA3xWggyTfcS3E/Gr93TKxyCC36u1adbB6JmtY4cRwDB
         vW1KWyHYjeWY1/ncXXSK23DZ1ncKSPls2FKjVs/+qsjcPUhTBrOofuCxjRtLx/szOdJK
         dBXITPxd6Q1tv8B4EWG9xrEfs10YleBthKiGyOakkwtD2bjF/9uCQqZDeqbEZkZD59WQ
         7E3ERoofxPahv6Rg+qsNeUTKN+eFyZOsiDI7Lf7zW2br8rR0XRlLuGo7rJZboJHCmfyy
         pRCjFKOWwT6qiFhHeRIqnJySCOaCjkcchfU+UVu8Nkc7J4KGGErG/Y/3MuwrxFPu+ap5
         liGg==
X-Forwarded-Encrypted: i=1; AJvYcCWWDFbAYBC5/3tJH9aNNC3YC8l1qI6I+9dAmP064dN/9cI7fwRKJHS+gtBnPHnDxwSli6nltQOA1qE2@vger.kernel.org
X-Gm-Message-State: AOJu0YzdN5iY3SLjFh4gFSgkiCXsOpfboy5pY91zuiosaAkO1a89cnrG
	yenylS5VvfKnrdq4HZIgWBqBsMWqRLVqMX3Q8Y7miTgHGF+fTNOTArmmrZDU793eeyfjkVWrdNw
	nC7ZvpoZ7ADgzyEXMy8l9W4lPZiaLdSoyuF0CJnEImdIBeeDSXVVzxX5Ylb9bmYGw
X-Gm-Gg: ASbGncsstSIcF3io8LvwKNVqoXYNuq03fhh5b7knaGM7SAFn+X/hQlJSH8GowIC45JG
	Q6ATYtnsp18Mjs1+wtADSr1vv1ZUeF63IAel4Q6edw3A8KyD9vhALu1Vrhf5Op/3NSMpLj3/J8q
	SmO/Axn4fc8G0IacxoOREd4EPqW0aWObVN7H8QHbZc+8gkaBYGTLooluYjMj5rN4fWA5hQHl0WO
	CV2odsP4B8nwBRh9NanaKDcB6IOcpRVHRJ1okbLIGrpoP/r+ER9rTDrwWYxX/1R2n1bRHgmQdLK
	Jzon+GadpAKZYqkwnXFDf/jVCzY35TBSnN32lvtAYVmv8NP++6i0VNt9sHE5CigGWBd0I8zURPy
	eK0T7CHD3i5hmoDalGWrpMplzceXrspQN
X-Received: by 2002:a05:6a20:1611:b0:240:1e4a:64cc with SMTP id adf61e73a8af0-24e7f5ad1c8mr3634914637.12.1757053878334;
        Thu, 04 Sep 2025 23:31:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnzYt3qIjxJ2UxKLfHlG3uR/JqPIbskDDWIrtlfTXdYVFfX5BCyUCF90DYXyEmWrm4+f7kkg==
X-Received: by 2002:a05:6a20:1611:b0:240:1e4a:64cc with SMTP id adf61e73a8af0-24e7f5ad1c8mr3634875637.12.1757053877874;
        Thu, 04 Sep 2025 23:31:17 -0700 (PDT)
Received: from [10.133.33.61] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4f80181dacsm12244112a12.40.2025.09.04.23.31.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 23:31:17 -0700 (PDT)
Message-ID: <d7e5cc9c-4918-496f-82de-05924c61d06e@oss.qualcomm.com>
Date: Fri, 5 Sep 2025 14:31:11 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/3] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250904-hamoa_initial-v9-0-d73213fa7542@oss.qualcomm.com>
 <20250904-hamoa_initial-v9-3-d73213fa7542@oss.qualcomm.com>
 <cf873dbd-1f97-4796-b973-a0d6ed569f37@kernel.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <cf873dbd-1f97-4796-b973-a0d6ed569f37@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: oPeXQGCNGQuuoMGMDEn47XDk5LcnoBvT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX+ZqmpoeUcCKD
 kkuZKOdbrVyYlCc0QApBbJbFRFxBT1gV4S5gMNn39+4Tl5DLJm74L+7qOCnCwt49aiNtrwdpfFh
 o8KGd0gEgzrBRKDsGCMFEky9/IxI5slNajb5kPRiPa/YOPtuuXoARnAmvoEklmZL0oSBfvJw1Wv
 zF0H9Bh/jpAbdR+s3ZK/TemJ3lEy3or4C3JPu9BP1owOKQFGW8jHBUMKmovE3lqWvZAmiPb0TtJ
 x7RjA84lM1o8nKxuWbkcmVVpCJdFSILN3yIpwocCV3n5pOnvUa6CZi/tKdPerard3/IpVHSobtU
 zU0QV0y9HSAUwFsSZvSnEVgxDBr6WZqcDMixxLg0rq/2xULyjLBQvJqTI1ueiHgZEJOHKWHyCEV
 FqhFKcB/
X-Proofpoint-ORIG-GUID: oPeXQGCNGQuuoMGMDEn47XDk5LcnoBvT
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68ba83b7 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=K1182fJEmGhiR4m-f2wA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=M91JV_wKSCcA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004



On 2025-09-04 23:15, Krzysztof Kozlowski wrote:
> On 04/09/2025 09:48, Yijie Yang wrote:
>> +		#sound-dai-cells = <1>;
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = "serial0: 115200n8";
> 
> Huh, why bothering with testing prior to sending to mailing list if
> community can work for free...

Sorry I missed this — I’ll fix it.

> 
> Best regards,
> Krzysztof

-- 
Best Regards,
Yijie



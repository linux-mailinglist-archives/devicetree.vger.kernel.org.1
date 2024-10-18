Return-Path: <devicetree+bounces-112984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FF89A4142
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 16:34:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93FF01F24CE3
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 14:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A613B1DED5B;
	Fri, 18 Oct 2024 14:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XcZUlLUb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F309F18FC79
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 14:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729262057; cv=none; b=XdP8OrvE5GDlD0lH/zV6hgZ1HpjCcXJGAx5Tw5dKKVBDioaNsUmYPDHCjeGNjIHgh8YQ1pn2Tsnw5myQpyD9zXxQP9Mfgr2q9hiVQwBtDsqOOOkVGVS8WF8osNixvjl8Is80AluOgWIFeihDHZtiMbPJFsbEr+lk4XhWUL50lpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729262057; c=relaxed/simple;
	bh=RaFpgywSScq01ux3+3OV5asn2Vl82d8XmKwKAiPeXjE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KjsLWBXsTqzC3eLXKMi11FchQvkcH+9biUbtZrBFeiAXv/99u61j248cdcn9JJyxOfIEzLTvk6LY6QBsxip+C82dUISJP1lJKbqohLqmi4Gh2O/qq624YQxME/zHFDwLg1s6P6HbcOZY8gorbkOxKWRaA3C8OXikvyNU3AzAHWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XcZUlLUb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49IDNWx2016349
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 14:34:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kbqKpzObyi/yGBLuUSwte4NmOybimaxnDCPAICv2vCE=; b=XcZUlLUbwhK784vl
	pTXoopfXeGvZrxaRblVlwCvNfa074mQREzIQFRx1P9X5EtsyB8gtKBdfYfPlVauO
	pelMdp9tQcUT1M81HBQijKNe9+TTsRPuUr0wuAPDUoTh1ss7LhZdafj/N0CipinL
	FjuuWWBNDvdTj2daP+ZpAxMtfO3xeBQNnfXHlJKZdwrZBNASc0/ueezmajPyoryj
	iHKdHuNTbfdPgeUgdvIKfVwmDPLh3UVwrnt9IOcULEXlcF0Y8As5Kb/ZyGd8EZ/Z
	M7ZJDc3imCpkMYrBTnKB9x6PNywosrVSd6APVA56SFPbQSWKWr2RFPvX1O6/0QE/
	qrwTwQ==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42bh3p9pjt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 14:34:14 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-71807ae5894so393664a34.3
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 07:34:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729262054; x=1729866854;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kbqKpzObyi/yGBLuUSwte4NmOybimaxnDCPAICv2vCE=;
        b=X3IPl/K78Ioh6+QnKQdA/swyCeJt4u85tj2JJ/lOer6v9jaZQljs5bID/6oQEo/5q4
         JHnwI8a/RpjVtOs3BePNcw5iwS6m8+sMP96SK/N8ElqkPg9K+9XZqbv76xmrAgiev/l+
         6qbNKjji94P3tcL1RoF9/HNicPIGx2no7LwtGzr3gZK0jczgjLAgXINrdGE1TLSxY4tA
         j+12ebb9uFJ+wSwdGA/NFYfw2hpJrlQXoqUi8PHCrCfDxiaQhClIRmL/aADvTMz+jPiL
         uz2yFa7NKaafdO9lJnl6aHRHAx24XJtGuGYWytCwXlYYlQ3ehwuSotNqZzGt0MzsXn/v
         eaIg==
X-Forwarded-Encrypted: i=1; AJvYcCWJFuMd83S6fu8tWk1SqsLyEJZ5VTPkZ6HBmwDiCIf/ctapTmReXvbTc7bAnd8fSF8uGzFurZX+vMwT@vger.kernel.org
X-Gm-Message-State: AOJu0YzosK9LmcEQIJ2idkS7f05WkxN+eUY8rF5nmZYWZLG8tX3IC70O
	pa+YwXfqaR3VfMgaLZ6VYsP0IazrZ/JItzX/mYVk8Qbt/QcTMPOszYTAa8PMnOVnAsbqeI5Sejc
	APjIDbIP3erLUmSF92SBo7Y2dvxv+2cuiVSojpFPnlR3oRAJ39UlV9oav5peY
X-Received: by 2002:a54:448d:0:b0:3e5:efa0:f47b with SMTP id 5614622812f47-3e602da9e4fmr506200b6e.8.1729262053967;
        Fri, 18 Oct 2024 07:34:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGISNsIBENtnBzCTvI6c6V6TLW2BX8U9uWZoNoj5zLbSBeYFzjNg1XUoOUyspiUqE9msR/7JQ==
X-Received: by 2002:a54:448d:0:b0:3e5:efa0:f47b with SMTP id 5614622812f47-3e602da9e4fmr506186b6e.8.1729262053636;
        Fri, 18 Oct 2024 07:34:13 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ca0b0809dfsm830005a12.36.2024.10.18.07.34.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2024 07:34:12 -0700 (PDT)
Message-ID: <c8560240-0b02-45ac-bee9-d969b46dc636@oss.qualcomm.com>
Date: Fri, 18 Oct 2024 16:34:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sc8280xp-blackrock: dt
 definition for WDK2023
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
        jens.glathe@oldschoolsolutions.biz
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
 <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        Merck Hung <merckhung@gmail.com>
References: <20241013-jg-blackrock-for-upstream-v3-0-839d3483a8e7@oldschoolsolutions.biz>
 <20241013-jg-blackrock-for-upstream-v3-3-839d3483a8e7@oldschoolsolutions.biz>
 <050f8c5e-b16f-4df1-b1b1-06e60f838085@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <050f8c5e-b16f-4df1-b1b1-06e60f838085@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: aS9iYGQ6aFfzlon-DFYoipYeDuAKDOYA
X-Proofpoint-ORIG-GUID: aS9iYGQ6aFfzlon-DFYoipYeDuAKDOYA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 bulkscore=0 lowpriorityscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 phishscore=0 priorityscore=1501 spamscore=0 mlxlogscore=608
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410180092

On 14.10.2024 5:37 AM, Krishna Kurapati wrote:
> 
> 
> On 10/13/2024 5:24 PM, Jens Glathe via B4 Relay wrote:
>> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
>>
>> Device tree for the Microsoft Windows Dev Kit 2023. This work
>> is based on the initial work of Merck Hung <merckhung@gmail.com>.
>>
>> The Windows Dev Kit 2023 is a nice little desktop based on sc8280xp.
>> Link: https://learn.microsoft.com/en-us/windows/arm/dev-kit/

[...]

>> +
>> +&usb_0_qmpphy {
>> +    vdda-phy-supply = <&vreg_l4d>;
>> +    phy-supply = <&vreg_l4d>;
>> +    vdda-pll-supply = <&vreg_l9d>;
>> +    pll-supply = <&vreg_l9d>;
>> +
>> +    orientation-switch;
>> +
>> +    status = "okay";
>> +};
>> +
> 
> I may be wrong but aren't only 3 supplies for femto and 2 supplies for qmp sufficient ? I see two extra supplies in each node.
> 
> Same for all the other usb phys as well.

Correct, drop the ones without "vdda-", Jens

Konrad


Return-Path: <devicetree+bounces-142524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF9BA25A4C
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:03:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8B2E3A3326
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:03:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41B4A2040B5;
	Mon,  3 Feb 2025 13:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nOg27x6w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6681FBC83
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738587806; cv=none; b=WlWId2MQnwQRgRy6HBmUWNvTlA23IedPgfccr3Ww9r6LNolR5FINcc8hEPFyGBvkS5FXjOFTWFqpkaYWvWZQnzLs6le6y7+08tb4LigVMnaJSzL48+QvqPBUZI1DU+9k+0hx3H2zwo+tJPplI7oqtz1tnN3BZ/f54mX9Z3hLwK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738587806; c=relaxed/simple;
	bh=gjrHEP9LzVQF9W6Zkc7o6LKOb1D9gOO33PCRBWqB8uE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S9DW/fWIS/07AjGAvGcBSmffM6u4MXnytloJWsDxG6A5Wmfz1tqLmr1bAFwUaIBpQgVpZ8q8N8YALN/1E48Q6r8n6s5KKDd+qfrJ0Qx4HVcdNi6SrtfJm8MWBQESqzO7ckqoI6DDf3ZXb1ipvzqy6x3GVjSukdGZ9lh+gMmodV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nOg27x6w; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 513BEgKT002421
	for <devicetree@vger.kernel.org>; Mon, 3 Feb 2025 13:03:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mX7IfXj8e+kxJnyMsONTU5RjQUK7rzCN/ci7rHKOAdE=; b=nOg27x6wRaSJtHgl
	M+XWT4621uQHI+uz6vwasngw5vPFhnlnF91tAKmC8RF5WfipkXvsdLceAZizC7Cq
	wwe9egb13+KJpEV5dr8bvSBGls01qgdbSBza4MbGin+KPjsjJDJBcEwjV1wwvlNh
	5zjLbEu03rsxMhDOgCvQAnnKWa2VJm3DtxwMDXMHRnVIIwyi/sDhVKWpj+Kt2a/n
	dSBeBBHkthRu1aCn0CiYJw6lTk1rqNlHMhsN6BcsnJF+/xq1N8MisNNbirTH2BxK
	lbo/dugFlnd1Sv4zyQsFv504ftNc5CVFbVwUKIcMbMch25Z2ucECfvaCJI5r1EcS
	0rJ+Zg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44jvrkgcfr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 13:03:23 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467a97dec51so3801781cf.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 05:03:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738587802; x=1739192602;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mX7IfXj8e+kxJnyMsONTU5RjQUK7rzCN/ci7rHKOAdE=;
        b=Dz156Ehcy72LoIa+QF7tsKF1oFu/6REYHt9z77BxJYBIh4cAmalxY3zVh9zj5LhaOT
         nC3ZcN68uJNPWvvuEDZlqqVEuX1Uhw881J/LSNcEEix48e56BKkR3lvxaEt8wY2huSwn
         tzNckuEiOTpQBbZkq4/CYrFKw4Y2lRdYdFg8VZCPjyc2qd3Em78xtp8xbnOVWxh53YVf
         p8scPxK8BP+sS2AYBHaJKEjgyJ794PBiEWzANMUjqLgXICcPlmi83o4UARIq58taGPMS
         uQ1pBBIUGspjmg0rVFpdBXl9Aev+h7WIbCLt7uhryb52vp1YsX/V4i1Pbf//5OVIsWJ6
         0IJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIiFKIsMKGxOq7dpA3ZS/jq9W4jInXv88VRBWVt12KjBkEnwBrLvAMPtlFxl/ln0ywjTZGR4gQG8QC@vger.kernel.org
X-Gm-Message-State: AOJu0YxMV2NWjpbvnb8NtpNly0YHD7eqAmIdyclTC9I5mx7xZREcBFpj
	eocpMIfCW4tfQL3lLizWzPwHknMYc3JCLnQulfzocu6+u55LaIpuN03xwXKPh4EvPbfXx4TSvwW
	CiVGzJQpx3t6hIggia4JSMGNkeisWaUtT/nFVfY7trgrOczFHQjLjnCX+jDiP
X-Gm-Gg: ASbGnct/7A7QgPjY7r/lxa3YD3Q0cEKXs3to+4/bqVuTagK8GXroOhL6A+LY98YgT/+
	n/zCEJp4ZOSHYwIEXKJOP4820XKaEzMd1q6wKkoE+FWhH6dbv8lH4i8KNKw2FKWBe6OSUP1oyrp
	dgKGcIbxZDjPmvE/DBTHXKrrEwp0+0sV3bBL+lKiYg1wx257R7gDEv6ohYne5hfk/KSRhA6RSgc
	YlM+Zgg7Y2ekQLnzzUrX25YbQfEcc3/g/AsohrANjw+6C4lVOm6HQWvWtz2IUiO4lJk9Zi562uD
	bCHPpKx5nYvd20Otgn8pYCKWOkwOvY5hGrNW83I79Cw5ExqA0H8ikxW6PKA=
X-Received: by 2002:a05:620a:198d:b0:7b6:d273:9b4b with SMTP id af79cd13be357-7bffcd8bd6emr1098437685a.10.1738587802315;
        Mon, 03 Feb 2025 05:03:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGrZB6OqHiWRJ8HOtNHhQ5KqKCDHZxHykXb1U1YPH9wGXVvU50wTt//rEdVCP8JTUwiZqblcQ==
X-Received: by 2002:a05:620a:198d:b0:7b6:d273:9b4b with SMTP id af79cd13be357-7bffcd8bd6emr1098434285a.10.1738587801762;
        Mon, 03 Feb 2025 05:03:21 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc8eaafa38sm4639434a12.76.2025.02.03.05.03.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 05:03:21 -0800 (PST)
Message-ID: <3ee057ab-927c-4eac-a933-a14a5849d66c@oss.qualcomm.com>
Date: Mon, 3 Feb 2025 14:03:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: phy: qcom,qmp-pcie: Drop reset number
 constraints
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-2-02659a08b044@oss.qualcomm.com>
 <20250127-hungry-bald-groundhog-4f7d4b@krzk-bin>
 <96c4af07-6adb-470a-8cbf-784bb544ff76@oss.qualcomm.com>
 <0ec25b21-9a1d-4c4a-ae52-6bd1c3018f4c@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0ec25b21-9a1d-4c4a-ae52-6bd1c3018f4c@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: s2gZFRhXNUsitRGOV15IUBwDB7jGA2z7
X-Proofpoint-GUID: s2gZFRhXNUsitRGOV15IUBwDB7jGA2z7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-03_05,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1015 mlxscore=0
 adultscore=0 impostorscore=0 suspectscore=0 mlxlogscore=996
 priorityscore=1501 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502030097

On 2.02.2025 3:35 PM, Krzysztof Kozlowski wrote:
> On 01/02/2025 16:56, Konrad Dybcio wrote:
>> On 27.01.2025 9:26 AM, Krzysztof Kozlowski wrote:
>>> On Sat, Jan 25, 2025 at 04:31:18AM +0100, Konrad Dybcio wrote:
>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>
>>>> (Almost?) all QMP PHYs come with both a "full reset" ("phy") and a
>>>> "retain certain registers" one ("phy_nocsr").
>>>>
>>>> Drop the maxItems=1 constraint for resets and reset_names as we go
>>>> ahead and straighten out the DT usage. After that's done (which
>>>> will involve modifying some clock drivers etc.), we may set
>>>> *min*Items to 2, bar some possible exceptions.
>>>
>>> You drop minItems now, so that's a bit confusing. If all devices have
>>> two resets, just change in top-level resets the minItems -> 2 now and
>>> mention that it does not affect the ABI, because Linux will support
>>> missing reset and it describes the hardware more accurately.
>>
>> This will generate a ton of warnings and resolving them may take an
>> additional cycle, as I'd need to get things merged through clk too,
>> so I thought this is a good transitional solution
> 
> I still don't understand why existing devices now get 1 reset, while
> previously they had minItems:2.

Hm, right..

Would it make sense to just remove the else: branch?

Konrad


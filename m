Return-Path: <devicetree+bounces-188489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41015AE3E10
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 13:37:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C03FE16B7E5
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 11:37:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1973F23F403;
	Mon, 23 Jun 2025 11:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d1ZvPhgN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB6A82376F7
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750678628; cv=none; b=UN5lS8J0JAmS/1bwUwPtMBbiqXZseesHILNp3hv8gqJ0hIz6gnzfnmW54DYL1ItItBaJtUCbVDVrtvrAsY+t5G1NITpS7QbklP3CcinjsHGcChLnKcYGFmTq2fETRwlsGS5mtyz/SlVJb5PYQuNJV8oBsRGtXHsaetkrMlNEscA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750678628; c=relaxed/simple;
	bh=YQEAJCLfezUIG7yoU9HGhernWupP/zjzQJHrHDVuTeY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZDAyJRQevXhXKKov5mnNU7+MTxjW2qTKAd1FXAZ0v/l3oAps2bQid0InqAuSeOneuAyl73TBAHbWkbxarFpkDDaAye+7YjpZq+fXctx34OzKPAYVHS0+pEyUlDCKkeXbowiK1kmNTZReG4qbrFiBkUHt6GPjlkx8mBKrQHzDSGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d1ZvPhgN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9enOF015714
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:37:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RNES+f92fEjKmzMHA6ySrLrXjwkhHw9zw3WBGAogWQw=; b=d1ZvPhgNu3dU0tyQ
	5Nuzi3JZq8xpQ/7A4oQlAlLJ863p236YYgL99jmePBSYXbOu4Oz2wMF7Nrkc8mnV
	aCDRhOv8ijx4MLtN5QH3li9A1pLQ5Bpr8KxexLTDJPTGa+Rsym7dy9+RwkJUNVYS
	iwy5VBXfKp972WjmMfR80Y+4+KROnoswfg/W3rCsjm/m11iLnpFR2wwHnUuzznQF
	SSWctwpDAYdPG52WH6pKo6D/lJa8tCAdbTg4EmM5iMW0VRKngTk9bFRdk1Ss6irP
	jkw/klJ6uFrA/81EPGidLM58u/jvcCA6W/300gfwRO5mjVVzJBERkaw9DgDiIdtP
	aVJFAQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc5hk5y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:37:05 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5af539464so116053885a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 04:37:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750678624; x=1751283424;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RNES+f92fEjKmzMHA6ySrLrXjwkhHw9zw3WBGAogWQw=;
        b=UVIBbRll5H81trUCXrfwHySdzG2WG2Wic/sEO5ru6b5W5ZpzGht7Bs6LfTFUkG87qm
         VuAOGPVQisVVPqtY8EgryJ2+zqK0IdPvP+W4jcuP3xn9eYEYPcfhr72ANIQiBVly3fK+
         TA+ZfUx6BXB0hnQTanA5ApxO3hBdJuc9a/xl2QCiL1iVJqkPPMsTdeHbqEmgRnB9pK9u
         GMEQ5LOuKvTbLpcsv9Y4icRPp6bV7d1P8ZdSeLtF7tQmw3p4YOm45z/MzxzBWo80q43U
         EVMjrWiPr1D0/QS/jwOQ9/YdZAVNsB0J3IJRcbMb+1lpz5Fgd4UgCjLXQBSGvgYjAoFw
         A2fA==
X-Forwarded-Encrypted: i=1; AJvYcCWAnfpX4JB7n0H5HS+46eh5PGJvJd9hkaAx/tp1K13r9wyFOqneIjZM43ZU8y4jR+CliN8fKJHsmipc@vger.kernel.org
X-Gm-Message-State: AOJu0YwZIqENPRo055+8w+yF5bOVZQ6h9etCEkGPkoTXc+Hs00/jLOyB
	jw1Evu/ImlC8zy5GtwxZEIPz5/GFtQRtJuDV20o+C5QGSCnUJzLzwrDhngp4NI/G+9ibFiDzUPX
	roWBSxcQSy6XuQKPhb4rtCvOUAJtd20e7mny56vCq6RUd/9WX434FqWNqH8VUBoexag2cmPLv
X-Gm-Gg: ASbGnctoVR7gRo1TNcE4WorTCnt/WdecY03LHVEC0uUogNydTf8aXfnJEa9CbF1fBSa
	Fj1a+F9V+HWDo60DeTgtnOG721eiMcB340zctT56Z93gJBLoyhM4MVpdWGBpdw21rcnP8v2+pUY
	6YNjJE0yFAQ8AXuPLD8cKyapqGuiF8Cn0ZD4j+O5HZIGcL4JGbOsXBL7o45dORilpCH3H+4eVU7
	BAW6UQAsoUSV90wQip9tHDb2kbc3Q2FV5Q4IkTzjYDM0WcmNpECfUCIxc2/fDo7Q9M+muT2LMGE
	GkjS4SWKW5mrPq9i3ymJyYCLj4cwhsbOPVD2O/Lw5D/ZuQoN66IhHQGa8fgPhkDWfGjfQhqu0Sk
	bE2U=
X-Received: by 2002:a05:620a:46a9:b0:7c3:cccc:8790 with SMTP id af79cd13be357-7d3f98dc881mr756578685a.5.1750678624270;
        Mon, 23 Jun 2025 04:37:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE64KulbHhXpkGuf8qB1USD8QxfJD2kcnD0exRsp233FiT2+hiKockefxscwnsSJEqw7UcENQ==
X-Received: by 2002:a05:620a:46a9:b0:7c3:cccc:8790 with SMTP id af79cd13be357-7d3f98dc881mr756575885a.5.1750678623807;
        Mon, 23 Jun 2025 04:37:03 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541bc9absm700991766b.145.2025.06.23.04.37.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 04:37:03 -0700 (PDT)
Message-ID: <519f9e21-466f-4e8b-9bd0-dfe0448920bb@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 13:37:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-dell-xps13-9345: Disable
 PM8010
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: bjorn.andersson@oss.qualcomm.com, Konrad Dybcio <konradybcio@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        laurentiu.tudor1@dell.com
References: <20250318-xps13-no-pm8010-v1-1-c46236d96428@oss.qualcomm.com>
 <Z9qXFLmnae86_GT9@linaro.org>
 <a7zyhmv5lqxl2l5rdg2x5g55wokm6ztwvzwrfkyeignwdromjr@afpe7zwsmkt2>
 <d2eabc30-f1d2-47d8-82f9-86f6f7a705bb@gmail.com>
 <7c850205-0c42-4e6d-bf5f-f1255367d53a@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7c850205-0c42-4e6d-bf5f-f1255367d53a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 62hNTeeI6CizRRuin3TQjqlcQT5Eppd8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2OSBTYWx0ZWRfXwXTYKkyAyR8q
 vxKew/IQy1Hcqx/aPEOrUjUtqXLn8iOHG4dd8xbn/4eQNrfAx29e/gLLiqRIYRbcu8RrsdD7Z/Y
 MGhCr5cSSCUmEwT1HY4yp04nQ1zCKLCNKH/wvUpERXXFK38lTYORqXZBNp8DthxH0FmvSwYb2ZZ
 qBkxueS7n/N6YBkDvygIBOpm9S9L+a/S70ejgMQ//deuDnr34VA2tGe8d8AdVV9TOsBsGa1jOBQ
 7RuKRi5kEPkYBI20uI0tNLkIJZUVpWTBhsV42fFjU9QmK1kebJw7SAWqWP9vPDXi4Efj7DJTbMa
 w02jHqjUj9PeLYvGBTb5K6TVznj5wW8SZqkDEZaSF9/2MiaYo2RkRXgIzVyAuypZ8fOJZOBU556
 VQHqBHPkUAhmUFG9rvlYYpuw/G6ocFi+bWuoXlZWSIEfA7Z1t2DzIYfKDBJoFIEyq1nxXZrg
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=68593c61 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=FUMimz6QtM2Ddm9xIjYA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 62hNTeeI6CizRRuin3TQjqlcQT5Eppd8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=852 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230069

On 6/16/25 10:09 AM, Bryan O'Donoghue wrote:
> On 15/06/2025 19:29, Aleksandrs Vinarskis wrote:
>> Hi all,
>>
>>
>> Revisiting this change in context of Dell XPS 9345 and now Lenovo ThinkBook 16 [1] (and upcoming Lenovo Ideapad 5) as these do not have pm8010.
>>
>>
>> Perhaps safest and easiest is to simply disable pm8010 in `x1e80100- pmics.dtsi` as proposed and _not_ enable it on any devices, since its known to not be used anywhere _yet_? As its a camera PMIC, the only submitted upstream (did not land yet) change that utilizes pm8010 on X1/ X1E is Bryan's CAMSS series that enables camera on CRD [2]. There are a few other laptops that have patches to enable the camera (my Zenbook, Bryan's branch on Gitlab for few more laptops) but those were not submitted yet, so can be easily changed to explicitly enable pm8010 before submission. This way we could simplify this change and not have to figure out which of the upstream devices do in fact have pm8010 onboard.
> 
> As a general principle, unless its used it should be disabled.
> 
> pm8010 is a camera specific PMIC and Dell has its own way of powering the camera sensors on XPS, Inspiron and I'd guess other models too, presumably as a result of reusing the x86 design with Qcom with minimal changes.
> 
> Disable by default. +1

Sure, we can do that

Konrad


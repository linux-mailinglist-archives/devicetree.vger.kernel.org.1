Return-Path: <devicetree+bounces-206150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED05BB2B9E0
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 08:52:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50ECD189D63A
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 06:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4D7126FA5B;
	Tue, 19 Aug 2025 06:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RA1xZPkv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F13B26D4C0
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755586295; cv=none; b=aVlnu+4ACf3eHeQSqV8/mVaQ439PUXWgDCFEwWUrDqIGeLMhxrtd7qaY9UiFRxs8+zp3C+P9bbSrjKBxMyu+zwbuXYCFnG7fDdg7q+Es7GicHgjL1BD2QuJd3ISX8ZRGYisu1N3AjJKL+ccGDPXh+bJ1jX9qn+89+wi2XsF/tdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755586295; c=relaxed/simple;
	bh=ytBpBRy+4SzRAfoTHldnKXycB1vfiRkT22aOMpmBfLM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A6aIb5En8O6m0u/U3S493aj0/M50dCCE/P+15u7cWGkR8OOlOJlKA01vkeHB/zolhEA/GPAk76JGKhxiy/ecb5NMMWUnX1aMc5UDSm1A1MUW2mm+HptEqJXz9AH7sjqUyqB1GSle5hrRXifDWSCAhz/4ccE6Ig8LVIh+i36VNOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RA1xZPkv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J2XJPS025503
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:51:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KhcnubSus7MkpUMzXlz1FJ9i66J4sJ3ytWF3Qtk0VoU=; b=RA1xZPkvzllF0MpV
	naoDi0yR2CxSqphg6p90qxi8lyy6MADcfyIb+nkKPjEoCoBV9uc+tBLfOsHmszpO
	xyJO08L2fhdIpPJKpszYhLkQzhlB3U8XKYaiWda/pkkAkRVK3HmBcdHV0DAx9+Dn
	LX7AjA3/OdnWRDTgQV94el6hFDRookIlXq1U+6SF1dzX2ia/3+Dp3slRNc/522k9
	oI1RPosK4xauiQymYlcQyykReT4tCir++VLdkabDx3DL02Rhn640eXmVfoqZLr2N
	VaG/+Tx1EDRKPPhWBqP31mETZ1MukY3FNGhCQAJj0+KAMbUMmdoOC5MBnAwSyNYG
	u2tiRw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48m71cj7n8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:51:33 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b471757dec5so8890572a12.3
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 23:51:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755586293; x=1756191093;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KhcnubSus7MkpUMzXlz1FJ9i66J4sJ3ytWF3Qtk0VoU=;
        b=YARCGZlGwE6pHtUl3T3+eTuf6gjkieJAer1gP8msVDtKsDwTJmoz4QfaBItw0gTpnh
         rHpVb/lzZYCwZZ2H6R0R5tI0daf6VNpq9VvHne7AydXLjK+Gx7FNoq8o2+CDTnRagllE
         3SJaLijTbrYDT0coSt0ZMiwi/ca+Kd/09c9jDwzB3ZbEvxu4uOKcAWeWDPW3BPqZOKI4
         iqAa5DBzhG6tCekZjwThft6kLHDY+oFONhVYXOt7a7zDOs4hPqN+/OFJrT2GXPvef89g
         g3R0tyGhKRKWH/5IaxxZJunW0kIgAClEbgPwY4SquxuH1UZ5uq63E8HRvVeEuJhkL3cc
         yVhg==
X-Forwarded-Encrypted: i=1; AJvYcCXGHBOkh2bm5HWgA9hPL2iPUSTUgxPX+jRf6jDVE4tdGsE9yFTusb39pcnZQHJGxMC5aiipzZbW1p8h@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5wI/ZmVWjLYdkSGUyiECjfN12pqtrZtbr4bC2bHuoNpMZAN0E
	oH8j2JXixyU/l1R2zpeOwtp6fJv7A+evxYT03OhtXJNsKMawRaebEEiUpUIhn89N+JDfX9tUNcP
	uJcst+ZUTxiVuMPFlIQpiUpEICwAjWuZWZ45BP3vkJuwwx3Fpz/X/8sR+m57+956Z
X-Gm-Gg: ASbGncvas3niDwwV4qGVhJWUWApWEqqYHHMheyZ2jpS5KAK1v6J5y/6rlz6fSIQJ4Pp
	rieYfpvDECvQXdCTLh85ORoRbiaQG/ZGicOsF1zFidmF3EfMPBV1f9Uga0+k4786djk21QH1k5B
	w88H8nE2+4RCpKahai7nWNsfXiFG7pOiNxO9WAHyCflS/rBYjcKULNWEJJv0icxxh5cl4O/PZGk
	Spov25oYdPqYVOfIzEWx79Yir+tNvblJhe2DUxPXLjd5QvNLJ/WQKFxgUZNrrY5yXSSeYDDDg5Q
	i3YpxF8eKaqoDg5AoUxnzUqqM8srA2iBHudDjXCDbbScNa+2hyC6c3zfFeN4EZ/6fz72zTnet/7
	NvMMY7MU/CcnnNn4galGcLpxQ7VgQ5lSg
X-Received: by 2002:a17:902:da8c:b0:240:aba:fe3b with SMTP id d9443c01a7336-245e02d7726mr20776745ad.16.1755586292693;
        Mon, 18 Aug 2025 23:51:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrRQRvLzaR0no9uz4wl3VWShxiXhdMnGmDhx8W5wXZivwjwGSDV2ohd6ogQppD0UOvYx2W2A==
X-Received: by 2002:a17:902:da8c:b0:240:aba:fe3b with SMTP id d9443c01a7336-245e02d7726mr20776395ad.16.1755586292249;
        Mon, 18 Aug 2025 23:51:32 -0700 (PDT)
Received: from [10.133.33.88] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446caa3e5bsm99455325ad.33.2025.08.18.23.51.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 23:51:31 -0700 (PDT)
Message-ID: <157c048d-0efd-458c-8a3f-dfc30d07edf8@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 14:51:22 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/6] arm64: dts: qcom: qcs615: add ethernet node
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, stable+noautosel@kernel.org,
        Yijie Yang <quic_yijiyang@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250819-qcs615_eth-v4-0-5050ed3402cb@oss.qualcomm.com>
 <20250819-qcs615_eth-v4-3-5050ed3402cb@oss.qualcomm.com>
 <c4cbd50e-82e3-410b-bec6-72b9db1bafca@kernel.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <c4cbd50e-82e3-410b-bec6-72b9db1bafca@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: DBatXfzA_lNGeiFb4gDmu5JkCqq7Mkuk
X-Proofpoint-GUID: DBatXfzA_lNGeiFb4gDmu5JkCqq7Mkuk
X-Authority-Analysis: v=2.4 cv=IvQecK/g c=1 sm=1 tr=0 ts=68a41ef5 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=XWQ9mN7VkJ-Tecl8lUkA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDE0NyBTYWx0ZWRfXydA84+fvpvAP
 Hy3Q+zbHPVOTPID31Jb+mnuZq4FiWzEIoLrM27Pn6v9RgTwrAnqWV2OfSG1jSXkaI0NrzBBAslC
 TAkj29W9kT0uffsVylS98nykzJusuvgPbKY3Yt0fq8JJJpnO6ZrqrFOM/h/Yh1jz3+VD7T03yKI
 qb7Ea4uINfX7loJiZ/YcI03/BAbhva53Vc1bd4Lb1OI5OAQPnLtTnV48e9dyI8hqmiBTC1gYLXN
 scYWzCk0RreXS3rsOhXdogfEqesM+JquIzxDq9PAXy/nBhJMn3Mmfg+vpzfTfpqmRP8rCxeCLEL
 bWY261ItA2hc88AjkQL+jg1iR0OuU1yvt8hFiTJF/Pj3aOYq4bAbEj6rUPNHTZQ8IuT4b+gAZxR
 PzK7sucq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508180147



On 2025-08-19 14:44, Krzysztof Kozlowski wrote:
> On 19/08/2025 08:35, YijieYang wrote:
>> From: Yijie Yang <quic_yijiyang@quicinc.com>
>>
>> Add an ethernet controller node for QCS615 SoC to enable ethernet
>> functionality.
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
>> ---
> 
> 
> Why do you mix up DTS and net-next patches? This only makes difficult to
> apply it, for no benefits.

The DTS changes and driver code modifications work together to achieve a 
single purpose, so I included them in one patch series. Should I 
consider splitting them into two separate series?

> 
> Best regards,
> Krzysztof

-- 
Best Regards,
Yijie



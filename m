Return-Path: <devicetree+bounces-255435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCEDD22E9A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:46:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6DBEE3009270
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8984218592;
	Thu, 15 Jan 2026 07:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d330+EP8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iM6WMyF7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB3A1F5EA
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768463212; cv=none; b=HYc51Go+nueaf8uSZbcknMDkEhhuMmUVctp8OjvcsqiVPyv9OeTyhJiRrpUi6uMgeEdnW4c72/Ug0GJ0kZaHPg+JDRZneOKugynEgPb1FPkPBccKdp1ke675hptd6Xg9DDI0BxSLCOUAPirTV1bU5dXWyK2c19zatpAbvXU4PiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768463212; c=relaxed/simple;
	bh=a9L4DZx4mQwX5xU49CBuBDPAmU9wirxkxQdCqY6ghqE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P6fAY8SQ5fPs5S35ej2LA5CnMO4L7DqEL4u7Paexc6+OLZ1RrNLfaV6QjBE5U+zx//XKGet+osrvGrNmzMmRc6m9ihNasbzveipNhsso43bHwsYEfG5UzIokoXXXkCyFWYprwATkatLomA/o/rqk/jMLrnS2CUw79gpfQe1KoA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d330+EP8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iM6WMyF7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6g4NT783533
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:46:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6AOiaplXhNL8vpo8n8ICtpaReboP0Dzmj9EtIw0GdOQ=; b=d330+EP8eBFXm+2P
	0vUpUb5TRVQx7wGeVaP6wwXjrzK0XiWwOLZs1buO1NrZ6dDQZFvu8PNB1YehdUyX
	CJeusAsC0iIb/BDbHbRVXN+5x/sLU8yGTVLi8nLeKz76HwhOqblsLOdX4Yv7aNgF
	H1RX5QP+AhnkTHqO8GDDKzRN5ilTVzomPhOHOoG1mtdpgovEgtx4yYENMJHjM4VD
	xhqkBgMAr1VXYCrzhD4bHDDfopfNyXXV3Wu5vXqPtc6f9yr8yUl1/T97qami1l+M
	cnao+rr3Al1cBw/bHf0OwO1VjgKctq5txl+zzn5ZB2/TaX1wI7jBLSPmKzYDoHx6
	ryBUQQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpbj5k25h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:46:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c530da0691so152860085a.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:46:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768463210; x=1769068010; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=6AOiaplXhNL8vpo8n8ICtpaReboP0Dzmj9EtIw0GdOQ=;
        b=iM6WMyF7KWofeZV/bInn00j0i8e6r7kewj5k6yet6bUvCKhAoTL2SZrwQVwj4RsW0y
         VewRyt7wbFGez3X/WUcBH/VFmOkdpiWJ+MOZd12xoWe5nQSwke7yZD3LAR6Go0mKj9i4
         pRPqUOgqv7uq48oWE1qCjl9RZlEGI86O8AtG+dx6bWZHY2nBpJ1hD7f1pNeZj3BC5dZy
         Uo6jytnZa93/dMhe3snCv26ejGjAhbr00dJSuKCDpO/azAfYi3J9A/dTHfUILVqLIJyT
         OUJ/ZrWUFPp2XTsnNCperL7+gIePrJres6hVsm3iM31tXrOD1Cx96BjNm3yxQFJblPSO
         6EUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768463210; x=1769068010;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6AOiaplXhNL8vpo8n8ICtpaReboP0Dzmj9EtIw0GdOQ=;
        b=R9+ZAzmKBbMfEmkbE1t5TFMS4ozqduY0/FPILMqRvd590W9xRa75xz942KMWBlGR1f
         p9eF/28PmVeaZt0ntxH/Jhi3PBIaDu1ZOgt2LELLwlg5L0Jn/vichJZCJPXIZ7weS1jg
         QqLvWFWPQ/E9Bmd8VCJcaRXDdb7q93OmiPNZCmxtVDsf3L7HKH8Y0FtfaAatHIOwMGYd
         J8hbf+WCdbDlCRhnLEcjoXi2b1En1Venph7V6ytyNcrxASZ6+KTcOwAom88gXkpj18K/
         80fmZGGc6uIFNJlZU6sNpvb48kkssMc0eYJd0nUPMaUO/ZcZMvcdKYcZoltZZMvpZjs8
         ON3A==
X-Forwarded-Encrypted: i=1; AJvYcCWi9dkGPZHTLEJtdFGGe1M7lKLbGNx2RK2WFPrzTvnlOnDdqLBxcwSfepxYSOWoUbj8LOHKkGViKYHZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwX6dlR48p6LIQip/UV0fXm7l0jzlsJ1QYTajVQzoRM3E/ueRGL
	MYgoQ0LUACF5n3WeuSFbE5sKeaRXRBdZR0sO8PsCQZx4xRfPVoyBKRZuuf2Tn1iWku8C18mGji1
	QiC0KdzRq0//MWKxJUoCX2/Div4UkLWpr5FCCAr3QTTBr2TETv/HTicOWOGZXlG7Z
X-Gm-Gg: AY/fxX5dxTdqoRyWCrzroGjSHHCD/16TCsWKgq1Mb1/mvMvdjG5OdILJhf9z3J/eO+e
	YeXsMBd3Ix3dn0MMfX/pXY56k5Ac9VLzTr5fnvNggCVBhhrV6gGASwyYnMCrn1YDuhB3xm5D28G
	SvPhXcZVozqiuXAbIzktO0QgToeMXhZses6xT2MnXD1SPxw8b2L6hS+Q+tTXnDoi4lq7Mt33LGH
	Ym18v+9EVDQfieMSe6wrWE87RnYdMQEwhZJZY9RauBNm8sWWX1ASzk2FuC5g2yvUitMz4Mda+3o
	GhxBRLLfZ8wxomKmpMZbt1eW46zHWsizLTjOkDnDWVDUGLpDe60dTdaju+kw5s0DgfdbqUcLw4m
	kpQMXdeTlMyi+g4Wo71fDWKtEvsEQgTysuZncaA==
X-Received: by 2002:a05:620a:25cb:b0:89a:2f9b:10d3 with SMTP id af79cd13be357-8c52fb1d076mr770879485a.30.1768463209663;
        Wed, 14 Jan 2026 23:46:49 -0800 (PST)
X-Received: by 2002:a05:620a:25cb:b0:89a:2f9b:10d3 with SMTP id af79cd13be357-8c52fb1d076mr770877385a.30.1768463209216;
        Wed, 14 Jan 2026 23:46:49 -0800 (PST)
Received: from [192.168.1.29] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a4d3113sm2708008066b.43.2026.01.14.23.46.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 23:46:48 -0800 (PST)
Message-ID: <05896dc4-a9e3-40e3-9bc7-e2a5ee37be0a@oss.qualcomm.com>
Date: Thu, 15 Jan 2026 08:46:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: axiado: Use lowercase hex
To: Tzu-Hao Wei <twei@axiado.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Harshit Shah <hshah@axiado.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20251223152432.155299-2-krzysztof.kozlowski@oss.qualcomm.com>
 <5cc6b959-4424-4d34-a8b4-eeff237266e2@kernel.org>
 <aWiF39xuH6n9LVRV@axiado.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <aWiF39xuH6n9LVRV@axiado.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA1MSBTYWx0ZWRfX15QLhmcM5NVl
 FP3mn4Ek9r8edyJnebFN/fJvdS/Ro0o4YsXrt9ccACVrEtNVIIJY+Lkas4JkRNPBwRx1bU7sUGC
 uCggHx331gK8jhYJJI/SJAwk+faaqc3dYdLWClMMZcBI7Zl0lo3QZPCVOfAmSGXp1FGVbjNBDln
 kWyHCHpkAogPtWkfYGfo+K2F6BUZaoSM3wmzadfTbamoAYNJX/ypS0HcJ9+T8KTMp9cKqyjgTBd
 GvKKc8Vh65q61vJ/M6dOL8mSszP4Xbua7z/rQhI4Fj6AbL4yoLCJ4pSw+zUBJvNB8gWc+ST/cp2
 rjSi68CTUPUtRmKga6H86MEFgGvUY4dp//gvpETReznHrKk6VSAtkIiajmxP03Ft+nQqqawFf3r
 MyQsNbvbPtWyZFPek7Cbn2qwdZWmZ+UVKVy685ZJWBUE4WaGRBBSfozr+Vg7ywFH9F4qfXcSE7A
 GnRnB1OHzi33aP+Omsg==
X-Proofpoint-ORIG-GUID: X102B05RF0O83FExxlhCWYQDQiSejZ-e
X-Proofpoint-GUID: X102B05RF0O83FExxlhCWYQDQiSejZ-e
X-Authority-Analysis: v=2.4 cv=aapsXBot c=1 sm=1 tr=0 ts=69689b6a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=440cDlBIAAAA:8
 a=bnvtvey6Md5y6pS5PTAA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=d9D1X1bx8dWolqnE4HNT:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 bulkscore=0 phishscore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150051

On 15/01/2026 07:14, Tzu-Hao Wei wrote:
> On Mon, Jan 12, 2026 at 09:35:24AM +0100, Krzysztof Kozlowski wrote:
>> On 23/12/2025 16:24, Krzysztof Kozlowski wrote:
>>> The DTS code coding style expects lowercase hex for values and unit
>>> addresses.
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>>
>>> ---
>>>
>>> Patches done with sed, verified with comparing unflattened DTB and
>>> dtx_diff.
>>> ---
>>>  arch/arm64/boot/dts/axiado/ax3000.dtsi | 2 +-
>>
>> Ping! Anyone in Axiado is handling patches?
>>
>> Best regards,
>> Krzysztof
> Sorry for late reply
> 
> Reviewed-by: Tzu-Hao Wei <twei@axiado.com>

Thank you for review, but who is going to handle the patch?

Best regards,
Krzysztof


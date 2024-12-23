Return-Path: <devicetree+bounces-133538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D859FADDB
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:47:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D75B1883FEF
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57D671A7060;
	Mon, 23 Dec 2024 11:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FpHhz/uv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2618C192D91
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734954421; cv=none; b=rswWjOhyT76jxJM7Cqh93G8yHIia7pNpufUpGPi0RKIHNhPG3X+V7PU1FKueXB4/KIuISlw/M9yZetLjTotjvHeq//VT3KpH6vaD6jIkDWVr4F5FeeuH8ePXqsY1JgXESijOTJSre28Sk43Mm0/wC14sq65lOTCAdXSGmVLjGqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734954421; c=relaxed/simple;
	bh=WoNSE/sE5fC33uSU/9fyxT1jw2V0Oynfwszs7Z6IVwU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=icmYiFlm+Ro4BHl4FBdreCOv6UOAYZ4TE5LwxdxvB1iYC4cwXy7NJnjFWmiThTY6pcNaphFR/lKzakTZ2tePl+UKth3rQpLII1bG0cmC+W8wvNOp7CJuA3IeHqJpAZzXth3vlxbeOsGupbno/4zl250KvCD76N4SkqXudsGxzRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FpHhz/uv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BN86RXU015773
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:46:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x3B4oWFzJNbqUipgeIarx9O0ibUhzHvQuYbYMdgwP1o=; b=FpHhz/uvwWgLvlHd
	E+D+I6Je46lMUesJcQdY9+eN9g/8+m995xQQG9SWhvL5CDXHtFeluwF3lL+hBzKx
	PZmGJ+UhGkhQbbjrhKTY8N0bYWgt9hxBkA7efJNmulgvV9xfNE3a5MI+bkLB2EBC
	M6rIBU4YM0ui7uVMS1LJmsaeqIXQpCnxnEshm9oEj66vQDr8PoMGQRPnJj4cnxvh
	Z+pa1RrixzILK6PqI+2Sme+/w/dLsFgD3a6b33S89gXsi+mNYCpWip8QMkg29BFY
	FdZLnj2+37l1D1WlU7UKEXQgJ/uNTmEV26++1DTASH2nRCNeYdYoV1ybfBjY5KCT
	0M+YTA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q42g0m6g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:46:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6fec2de27so66103085a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 03:46:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734954414; x=1735559214;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x3B4oWFzJNbqUipgeIarx9O0ibUhzHvQuYbYMdgwP1o=;
        b=q3XTOs0qttU42e8nj4yBC/iViPHXozIRGOQq4V5dxS3Uba5cpakRYfpEqUDoiuw15O
         wdVVwkfxC3aQp1E2CXH6CNkQKPhXRk2LdY2PsyU+QtSS0CVvnzDOEiXR3tAK/Gmr3XCU
         Vvrkqfv2jzURuuaZwHcJzx0IVyRfqvIVnHRRT7nF9rsFu+j9spgFgRv7sBIO8JzTddGh
         iLK+INJ2s/VlpdNh0TvVEiAvB78bA/lFwIDvjwos2TgbZnM4v1p3BjMIoHR1hoHVQ6Wu
         Hbb6G2vxyOablHxUkz7/az+D3S8DKlTbH6HzVBdsZ0DRbYQSxx75dmqaAeaw6BDGvCu1
         fSfw==
X-Forwarded-Encrypted: i=1; AJvYcCUY0L7vYny6qi7sa4qv3R6pECqREtN5UIpjL+pNvXYF4yGLfhqgp56sH58NnQeMG2oQTGTrJ2Ld+Kve@vger.kernel.org
X-Gm-Message-State: AOJu0YzU8Rs0LfgBrxxyMiu2h2ef432OYBeQESa/B7qRddd3WQWG7wbu
	vHMQx3/Mt/9+wqITCg74xZwC5h/XxUX7hvlb3aPtNjPTHZuTWmHxL0VtWhHhm/YXrlEGv5Nf2xA
	sdDjr3JbJ62syYTcMieyY+j7xhOhTOcuUmpHuY2RopRLb+uhkiCf8/yX2l/i3
X-Gm-Gg: ASbGnct29DPyagwcOQ/Eq41lzqqf4vh3DPZjA+V55d4B7AzQwb3FUX75hxXPcpj+fbF
	Ab6VYUns3dl4rbXUl5SXdwOJ74MpsbfHkxqnSF040ueLI5R1aMrIBD9eJ06gSPBpzpzmBiofv39
	Y08Z+sB1szUIygFgw/UkCqiKq95iSY+OVd2eYmhZu9gF6HhxTeZ9DBzUvjKUKlrcWchK+tzKBsq
	xeayXr0s+DQSl4MNHa4Q/RwL5gfbRpPJc3iueBjfx25ip2ZRBeYEHXaGxpX1D8lvaXqmSmVxCmL
	tblHOKyyIjy3DlSR89Y2+nZwCzWqn2Nup9A=
X-Received: by 2002:a05:620a:2a13:b0:7b6:da92:fcd5 with SMTP id af79cd13be357-7b9ba75c089mr709413385a.9.1734954413920;
        Mon, 23 Dec 2024 03:46:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHNZDOc8mF9qHhiFj67lTcN+JTELVHiDCWwHoBDaAnJpVE8Z7J/DHYM1IQnlLkKvZX7HuEaXA==
X-Received: by 2002:a05:620a:2a13:b0:7b6:da92:fcd5 with SMTP id af79cd13be357-7b9ba75c089mr709410985a.9.1734954413501;
        Mon, 23 Dec 2024 03:46:53 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80676f192sm4984127a12.35.2024.12.23.03.46.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 03:46:52 -0800 (PST)
Message-ID: <89d308d4-8565-4e60-bab7-94474dae3b55@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 12:46:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] Bluetooth: qca: Update firmware-name to support
 board specific nvm
To: "Cheng Jiang (IOE)" <quic_chejiang@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_jiaymao@quicinc.com, quic_shuaz@quicinc.com,
        quic_zijuhu@quicinc.com, quic_mohamull@quicinc.com
References: <20241212150232.3823088-1-quic_chejiang@quicinc.com>
 <20241212150232.3823088-3-quic_chejiang@quicinc.com>
 <94eae703-ed9e-4f57-9786-99db7aaa07d1@oss.qualcomm.com>
 <db516034-81de-4e41-932d-c1bb26e1c55b@quicinc.com>
 <d5fe224b-7ef5-47ae-840c-7b6df21da816@oss.qualcomm.com>
 <3a8fe16f-aca7-482e-b1cb-e6fa37717843@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3a8fe16f-aca7-482e-b1cb-e6fa37717843@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: D1Nc3svRku83t56MajoI89f0ITpptSee
X-Proofpoint-GUID: D1Nc3svRku83t56MajoI89f0ITpptSee
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 bulkscore=0 phishscore=0 mlxscore=0 lowpriorityscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0 mlxlogscore=999
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412230106

On 23.12.2024 3:47 AM, Cheng Jiang (IOE) wrote:
> Hi Konrad,
> 
> On 12/20/2024 9:46 PM, Konrad Dybcio wrote:
>> On 13.12.2024 8:05 AM, Cheng Jiang (IOE) wrote:
>>
>> [...]
>>
>>>> /*
>>>>  * If the board-specific file is missing, try loading the default
>>>>  * one, unless that was attempted already
>>>>  */
>>>>
>>>> But, even more importantly:
>>>>
>>>> a) do we want to load the "incorrect" file?
>>> Normally, there is a default NVM file ending with .bin, which is suitable 
>>> for most boards. However, some boards have different configurations that 
>>> require a specific NVM. If a board-specific NVM is not found, a default 
>>> NVM is preferred over not loading any NVM.
>>
>> So, if one is specified, but not found, this should either be a loud error,
>> or a very loud warning & fallback. Otherwise, the device may provide subpar
>> user experience without the user getting a chance to know the reason.
>>
>> I think failing is better here, as that sends a clearer message, and would
>> only happen if the DT has a specific path (meaning the user put some
>> intentions behind that choice)
>>
> In the existing BT driver implementation, even if the rampatch/nvm are not found,
> BT still works with ROM code only. No fails, just a warning in the dmesg. For this
> new approach, we use the similar logic. 
> 
> The fallback to load a default nvm file is due to each board has a unique board
> id, it's not necessary to upstream all the board-specific nvm since most of them 
> may be the same, the default nvm file is suitable for them. But we can't set the 
> default nvm file name in the DT, since the platform can attach different 
> connectivity boards. This is a reasonable way to approach this. 

Okay, let's do it this way then.

>>>> b) why would we want to specify the .bin file if it's the default anyway?
>>> The default NVM directory is the root of qca. The 'firmware-name' property 
>>> can specify an NVM file in another directory. This can be either a default 
>>> NVM like 'QCA6698/hpnv21.bin' or a board-specific NVM like 'QCA6698/hpnv21.b205'.
>>
>> Do we expect QCA6698/hpnv21.bin and QCAabcd/hpnv21.bin to be compatible?
>>
> No. It may be different. 

That's a bit disappointing considering the filename implies it's suitable
for a family of chips.. But I guess there's nothing we can change here.

Konrad


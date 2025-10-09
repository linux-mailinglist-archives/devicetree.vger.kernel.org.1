Return-Path: <devicetree+bounces-224981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 643C5BC964B
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:58:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2D4024E885F
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8CC22E9EC2;
	Thu,  9 Oct 2025 13:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hyMWHI91"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1FF2E7185
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760018316; cv=none; b=g4kqZNPfM0Bx+gYFdUhwiKqRWR1a0nSl9SZn2FnwVDEBVYJgLwSc9K/nfBI5gx5I+ZHQGVVlG7aayHGziteABU+5LOF+AIyYxM0M4MNhB8cZaIlBnwdp7r8Fqth0P4k+HDa3vhSUbPBnoCuDfcwnOESOnGGGUvxR9+ZZ7ByTuFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760018316; c=relaxed/simple;
	bh=8JF62Q3C+EsRAxzwX7Jr8Qg61aBRsdXSa3AMc4TtLOo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FxIQrkXAInQtaip8pCWtLnw/70EHdCNLT5us0/l5B+LuiFR7A1WwqEUHVhEt3JePrJK14ODqdUoWRAfAYTauTxpqd1f8ed8rudkzl90qv8XQRzX17Xka2eiK5cMIgedDe86Fihbi7gvh9i5H+iKG3LQj2KIf1owx4sqTlGpMQ0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hyMWHI91; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EIrA022299
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 13:58:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eU4S/oCfNeusIxb1UAWsZP5JLwrWFLZZqFtcDi2NAvY=; b=hyMWHI911Bg/deAq
	3gKBoudkK3m18jJ7bnZzBu+YyEx3m4fMlNEaJpGHe7EoJYFiFxQFeT4hFeKbn1aR
	LQZumZmA43rLt73EORs/HnjCbK9FVrKWnDTI7zRQZF0YRPi79FOFHMElUIwMMD76
	/sDzah68bVV7JVyOZ3CtivzJ5OrJt3lX0geAJc+drwoGwxe95dP6LSuNkCAyKi2Y
	plCb9ONBsS7oxLSFVnz8Vpaqn2W0xv3cVSGLRbwkpa7W5VIywyqtHXpMUcNPvV7z
	k1G3ARnl7JQRI4NkZnOOACgAkW3fkd7H+m52bwAryevCTcJjRzugj7JrmWobCAXd
	bmeVMg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4sk1nu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 13:58:33 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e231785cc3so5064901cf.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:58:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760018312; x=1760623112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eU4S/oCfNeusIxb1UAWsZP5JLwrWFLZZqFtcDi2NAvY=;
        b=iFU1+O4ZkBwip4QW2ruadjy2Pj4xJA2UHXC125dWpS4NhTdmFScTCLjvFWjah0thPV
         KKLcM0jjmDGIerQ279q712DbgSYm7gzJmHxpYBQzYVaNmp3WXKl8pFw7CzX4qkK9Qm4l
         uyu7GlO07JgH8woCvrha1QfeknnTUMzUUi6x3U0a7oiU79rrHC8myFLB4bMZPQ7AcOJC
         3OsAsrzAeawJa+nnZ382mKsocF31GhqcZgpehfe/e08AT37sBQmbz8tcAAyt8NKx33mz
         bgGFcVkptmKeXuhkF+fdyoauiCACoJvMGQtXBY2oNMSwDef86eiS+mCuW2DVC/3zfWiR
         8mVg==
X-Forwarded-Encrypted: i=1; AJvYcCW5QFqRpE//yJuWyEd/GGHUygWJ5E3yXfVN06RkTII8wgu+eWx56Dcw/1Y1FfYsNPafGhqf9cQBH58M@vger.kernel.org
X-Gm-Message-State: AOJu0YxmpDPsCRHheuOr8SueMdF9ZwWzRxvJTV8jcNg9ohUFOkEjraik
	mnvnotaClULURLRl1BSVXjU0Fdbmmr4NpjmyIl0AWBN0rovVtDiUU4XhIvygOK4iz9MH0wY/4ix
	fJ3MsHjK88TW7mFyKLQJdpHbwGIzn0txijRr3rQszAJpq9enFx8QuoVC/duvUqp2w
X-Gm-Gg: ASbGnctt/vFBGs/EsfYmSVf4vRS+MbvwubFVB8+VoAUMZgiKhc5UZjDv0sFoeAJRKaA
	0/gfPZ+0y+uVHyKniQvjXl4SjS4umbjqxPHH+gRb0LmGlRs1n3yNa/THwKdONHz64ZLXSgYGM3i
	b+RcG4/nsRnlu7jI0WeVlOHlqnKqtt6iPnamSRHqz+mGjWffbg/7RwPxBSvK/WkpfCvY+vA7hW7
	jOcss7zLk0nM7plQPoB4ir3DUBoT5W0hqkdNAalpX99aJeC0bktLHt+n+LZHJZ09Ir1TxD+Goif
	tpWwPuL5X7+D24KdRu3bP+pe3Rak4D15BWwyXqf5LyGR2DMV2gxET9C65HyoYIPzLJ+4uFlxISD
	eo73S6mQaxU7wvzVjLzpEnvkig+8=
X-Received: by 2002:ac8:5fc3:0:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4e6ead1deb0mr69214671cf.7.1760018312098;
        Thu, 09 Oct 2025 06:58:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDlmAQ1SSqslLTs4Timgj6hjNiMNGuRJ654mshuUwvTPhL0bouZZ4Wr6ouAI/YTdADv8YPbQ==
X-Received: by 2002:ac8:5fc3:0:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4e6ead1deb0mr69214221cf.7.1760018311376;
        Thu, 09 Oct 2025 06:58:31 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486a173a5dsm1916364966b.85.2025.10.09.06.58.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 06:58:30 -0700 (PDT)
Message-ID: <c6880fe5-029a-4f8d-a08e-81a066a79450@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 15:58:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: Add support for Huawei MateBook
 E 2019
To: Jingzhou Zhu <newwheatzjz@zohomail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251008130052.11427-1-newwheatzjz@zohomail.com>
 <20251008130052.11427-3-newwheatzjz@zohomail.com>
 <6ede6425-6b99-4505-a231-de819bab9ada@oss.qualcomm.com>
 <6199698.lOV4Wx5bFT@debian-vmware>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6199698.lOV4Wx5bFT@debian-vmware>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -jL3UIKI4zbKfx6kNMYHDaqzAOR-_drW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX5XHg9icve5h8
 9dnyTnK+IQofsV/hU37dZ0iMOMEoGjXilS7KT3SJBljTOyfSsLI7L0ChVDdFQ6SMJB2uKlw6tLa
 odjATSe5vS6UflWBjqPQ1+PfPcAjEjNaG/TCgO18rMmkTWAB8yr6NTcHVX4nXUQ1furExwS6g4N
 nWNpRCqQGQQZFcF5MwbDE9JqG49kdLW1Ra5s6aMZ0zw/MIKA6nm7SpLJa1t3Dnk3DbBXYMOWj6t
 pkLLiI4XEy4K4pYUmu5BNuj9UCjP9ycfE0Pce2FpdrIUK40H2AeSvwk8MqH40q8nWymkOR56Qqs
 hFamqqrXxmx7tlCBeygQC6ZR+R3amknURf42OjOCMfF+tzk1NVs+v7iAxOnMebPFD4whfs92HFd
 0CrH5CHaLuBz1lfEcOPKWLUYdICoIQ==
X-Authority-Analysis: v=2.4 cv=SfL6t/Ru c=1 sm=1 tr=0 ts=68e7bf89 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=XCp-TdQE-aPcymyUR0sA:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: -jL3UIKI4zbKfx6kNMYHDaqzAOR-_drW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/9/25 3:49 PM, Jingzhou Zhu wrote:
> On Thursday, 9 October 2025 20:41:19 CST, Konrad Dybcio wrote:
>> On 10/8/25 3:00 PM, Jingzhou Zhu wrote:
>>> Add device tree for Huawei MateBook E 2019, which is a 2-in-1 tablet based
>>> on Qualcomm's sdm850 platform.
>>>
>>> Supported features:
>>>  - ADSP, CDSP and SLPI
>>>  - Volume Key
>>>  - Power Key
>>>  - Tablet Mode Switching
>>>  - Display
>>>  - Touchscreen
>>>  - Stylus
>>>  - WiFi [1]
>>>  - Bluetooth [2]
>>>  - GPU
>>>  - USB
>>>  - Keyboard
>>>  - Touchpad
>>>  - UFS
>>>  - SD Card
>>>  - Audio (right internal mic and headphone mic not working)
>>>  - Mobile Network
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Konrad
>>
> 
> Thanks! will add Reviewed-by tag in v7.

Please refrain from resending if it's just to apply tags, maintainer
tools do it for you

Konrad


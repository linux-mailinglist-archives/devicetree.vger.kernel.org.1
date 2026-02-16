Return-Path: <devicetree+bounces-265709-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCTSIU3/kmlr0wEAu9opvQ
	(envelope-from <devicetree+bounces-265709-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:28:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F34D2142F28
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:28:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E76BA30138BA
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 11:28:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF512F8BD3;
	Mon, 16 Feb 2026 11:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B+De7JcD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kvKtGDsO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1A44A21
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771241290; cv=none; b=M6A0stWbdvvn2M/Hp9EzWzTL3KNPCoT8ywl1kvVyMedOPGN4yQBMxShu4jDHh4MHrfslwf57L3xfFR6R3Alm6JFsduoUVIymztAmej7V9CAwWNLqAf2pCFLqyz1jZ2kGpRtYo89Q4CORWunzyyvIMy/dwemvyT2rMWqXzvKTPqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771241290; c=relaxed/simple;
	bh=UxHWCRF+IQ0QVxfbffrrHZHEWimprbgw74KqfqUgIrc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DKtmERm/4woj5PBqJygSZ4d+JLu3lcCZ52Q2EMkbGL/bmoBAzF6RuNCJp6ExtdqkHAn/C7PIV/kaw0akgbY4VmZa4iCRSZKawmFEh5ZQh/SDLEPQpPlBoBAgecYFYtEpFD6kQZUtP0LVPdkNmYMQPcdXaixYylX+K1dT0xDW8Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B+De7JcD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kvKtGDsO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GAdB241998059
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:28:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Bgw6B2btCaXJBjPE9YGzmamSA00IlFt8rgEc/CwJc2Q=; b=B+De7JcD+4d04Yy/
	/xyNguYetwTnZZhLelyMyfhs8eKgU+aIGhQ4o6MovJv/PiS5y4H6FWPI+FJa47nt
	VOjrRDph/diCSqLHzwOUhb91rM3EkwOfluLw2xmHLz5daxhgEo7PZ1NXVNK+hMeA
	D2xaYBEAJ4N8PGeYzigvYm03NAIdDDfCRT4c/ZmlbjNgBUeg1cHT1hiRQc8WjatO
	8mNwOdw5WDtC3W9GBTTGADprMHuHA/6y3mATg+uBMpdzhFNQ7vf2jLckKxmJvS+s
	iQjC8FuRyNagIj9PI6/lyFS4qdZtDhFRqq29byKAySIp69HB7Ab23zC3WXbCHzuX
	jYEPGQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4caerc4ku5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:28:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb485c686cso213017385a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 03:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771241288; x=1771846088; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bgw6B2btCaXJBjPE9YGzmamSA00IlFt8rgEc/CwJc2Q=;
        b=kvKtGDsOowLXoA87xjHat1nZiPVqJVLZu7j4HzL1IKnFjskoX3Oag0beP7zeEQ7pbc
         uxB0IWWRR3VT93MY6UUoSzsa8vK/pUpsFTI4zgNgbz6mKS/+ZFwqnSbPw3ICY1l/L6rE
         oIFllu3AwYe19GOQHbp0+pNiAMzgXVnzyOxVysapOeL5zUSHM+8y3sF3HtnviTsi2YYs
         msRHTjFuOi5m80mA/yc5TwWNAfSrQKszfa70DK9kw4rSqWTn31AZr/ymEIVgf7r1es+6
         rUZ+cHhHMK79KP65HlFDyDqY6THFX+AgltoebbIhqdAjRy+o4f+JcymZP1i1gVF2Bv+p
         X9zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771241288; x=1771846088;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bgw6B2btCaXJBjPE9YGzmamSA00IlFt8rgEc/CwJc2Q=;
        b=NnOCMV+TYWgW5VFDKPsLV+JPJscxa9s2rWoOOkbaiekOCgTlfXCtHJqkkE2QDMkbOL
         D6GiE7GAnyfWCU/WNLg+ZTQrN9TSxG9Gh8NmK4bXcPbVrYCSDXwd3QgtKfk4DY8c/88z
         Ayn8mbKd+F9TknUWj24qWU2ppx4GAbRAcq4Bf5Col23t+xvSToCVl5HN2AhDGAhjac2P
         7qEooMR8WdNlAjKuwgJEa3T53yrTm5RFQAhU/TCb09xVhZkY41Mn33/pdCAH1QFvCCSv
         JRozDTlpfdY9blnUaCDHzx7OZMDWWhr/1GUGvx6s8rxbneJ+KZCl/cgoaT3CVs3U+5LB
         FxJg==
X-Forwarded-Encrypted: i=1; AJvYcCXAYgwX6CMKpHVaLUcKnlQycwiqCxJdE1/4cNfcBBV5xpv5j3qJnLrVCH0Kc37n3MwaCklRofd1FyIV@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4HhBnio+SFF7LLhFCumLIphPMNfBlK1GKgtSFBNF3UspG94cA
	PWB5QNNPX3wq8aaSK/hN34OjBmm1xrIrojndlkG/MsHgBTA8HNGFHcSMvQ7QCI4dRg55u0RGxKP
	aWC6j6yCf2Hfn13zV1GIw5B1DjibM6Of4Ft+DMWdOiI4v6v8XH5Xc/r2dpkYrYRTk
X-Gm-Gg: AZuq6aKa7n8oT2iBBOaAHuCkFLY02sVPmvAZD6eKGQOYpQ1ieWI86ky6ue/0g5PyA9O
	C1kW09NKySWrpaFTUcFNj1YmsUOE4PaSWp8kAZr+IghNcOadzLgoSpXCJZpLjPVrfEgci2NVj9U
	qAPNL5CAu4x3ejs1LFSYkWk8qYBdbXg881CYftgpyQpx1I+dr8KcYM+LPDfnWTwStPeqJdN1as6
	wqX+1irqsDwvQQipKGqEifrUu+AszMPMyUbin6j9Cib3LHZyfF/bF2TOtrGMIwNnnl9mbVJ6/+2
	K5OE/5bfv+aHk1XfWUtYexYg0v4ubzYzWL/wo+Mz8TNeCiETOxmDJt2f5yHwngw3m5BR/Xc05x+
	iPlYCQCw93eRlzYa9RiGJ3Dy4agHaulw+QemHoFuOcLq6Xp6abubApsmSBEMndss5Z8wbSE4SuY
	FiUb8=
X-Received: by 2002:a05:620a:40c9:b0:8c9:eee0:dba6 with SMTP id af79cd13be357-8cb408caccamr1031104085a.7.1771241288075;
        Mon, 16 Feb 2026 03:28:08 -0800 (PST)
X-Received: by 2002:a05:620a:40c9:b0:8c9:eee0:dba6 with SMTP id af79cd13be357-8cb408caccamr1031101685a.7.1771241287623;
        Mon, 16 Feb 2026 03:28:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7665563sm248061266b.47.2026.02.16.03.28.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 03:28:07 -0800 (PST)
Message-ID: <5c17f64e-5125-4365-b986-8c058cee292f@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 12:28:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node for
 PCIe1
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
 <20260212-industrial-mezzanine-pcie-v3-2-1e152937a76a@oss.qualcomm.com>
 <97af21d5-7457-4dc1-bd47-2e34e6df094e@oss.qualcomm.com>
 <ee1a1fa2-89df-4d8b-898e-9a4a50e1df6f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ee1a1fa2-89df-4d8b-898e-9a4a50e1df6f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ZJraWH7b c=1 sm=1 tr=0 ts=6992ff49 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=qfHuR384cUd0W-MamsoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: zGACUb84ZoDzuqQv3300fWqF5j_0u5gy
X-Proofpoint-GUID: zGACUb84ZoDzuqQv3300fWqF5j_0u5gy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDA5NyBTYWx0ZWRfX5KIWY9rizytV
 xFpN9W3l7BbS26jEy9OjN8b2WXHk/F2iFn9JckygwDYZ4SYbI6uuFmygJ/RVQLxCwwvYWmUiJPJ
 C/DUIJLTgkViSNlVPCTPS1sh2AUn+adBomlwGu53Tseooz7Sjnd4Iib3WeRWSHhPghFVUwSenq/
 pwdv83arlX8YzawWgB3Aodo3elzcrDFy4ZNy/CNC8BZ6MteIE98HW37lWwIOnTx8w9gibfug6Xc
 IcGNm2Asjgfso4qVsD6r8qit622B8LE9mcPxd75cToKIwXR87ZRI7Joht95oV27ncfWuG+l06e8
 hBlxsrnb0yf9OLuq4K2++1bKPwk1NO/tKIPfy6mXS+ZvosPscUfR3hEypXyBC6mXMawSgY7a2ba
 Mi6QbvO2jw4rQfcP/Bk3yhMugKS6j0GkDjeZFiiegudpXX2fI19UoBYG54L+xyE9ltpC6wGrUEn
 O7viFaGcuqCBOXiij+w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 bulkscore=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160097
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-265709-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F34D2142F28
X-Rspamd-Action: no action

On 2/15/26 3:19 PM, Sushrut Shree Trivedi wrote:
> 
> On 2/12/2026 5:16 PM, Konrad Dybcio wrote:
>> On 2/12/26 11:44 AM, Sushrut Shree Trivedi wrote:
>>> Add a node for the second TC9563 PCIe switch on PCIe1, which is connected
>>> in cascade to the first TC9563 switch via the former's downstream port.
>>>
>>> Two embedded Ethernet devices are present on one of the downstream
>>> ports of this second switch as well. All the ports present in the
>>> node represent the downstream ports and embedded endpoints.
>>>
>>> The second TC9563 is powered up via the same LDO regulators as the first
>>> one, and these can be controlled via two GPIOs, which are already present
>>> as fixed regulators. This TC9563 can also be configured through I2C.
>>>
>>> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
>>> ---
>>> +&pcie1 {
>>> +    iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
>>> +            <0x100 &apps_smmu 0x1c81 0x1>,
>>> +            <0x208 &apps_smmu 0x1c84 0x1>,
>>> +            <0x210 &apps_smmu 0x1c85 0x1>,
>>> +            <0x218 &apps_smmu 0x1c86 0x1>,
>>> +            <0x300 &apps_smmu 0x1c87 0x1>,
>>> +            <0x408 &apps_smmu 0x1c90 0x1>,
>>> +            <0x410 &apps_smmu 0x1c91 0x1>,
>>> +            <0x418 &apps_smmu 0x1c92 0x1>,
>>> +            <0x500 &apps_smmu 0x1c93 0x1>,
>>> +            <0x600 &apps_smmu 0x1c94 0x1>,
>>> +            <0x700 &apps_smmu 0x1c95 0x1>,
>>> +            <0x701 &apps_smmu 0x1c96 0x1>,
>>> +            <0x800 &apps_smmu 0x1c97 0x1>,
>>> +            <0x900 &apps_smmu 0x1c98 0x1>,
>>> +            <0x901 &apps_smmu 0x1c99 0x1>;
>> This map is not just an extension of the existing one - is that
>> intentional?
> Yeah, I created a new map just for readability. Should I instead just add new mappings
> and keep the older core-kit map intact ?

Quite frankly, I don't know. I that against the "base" it's missing:

0x400
0x501

so presumably the second DSP and an endpoint for the primary switch's
ethernet port?

Konrad


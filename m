Return-Path: <devicetree+bounces-261247-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aO+dI/XEfGm+OgIAu9opvQ
	(envelope-from <devicetree+bounces-261247-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 15:49:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CF91BBBBBD
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 15:49:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2E8DE3002F69
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:49:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99EAA322C60;
	Fri, 30 Jan 2026 14:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XJJPHXgk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ERScmCGW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB9130F92D
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 14:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769784560; cv=none; b=rPcSj0gcwuR1IzFmhT/cCaf6SGQuPiUvp1pHyeo3D5xY/ML+J+Q8pp+FJnOVVIvP0dYfpMfydUt2Yxf+oeYmWbGvyQxshZm/Cbd19TsHUwm+zNgU6KlCF55giAwVH21BxMmobiNUo0Md9OOdZBgEoGarl1FwMgXCYRGKqRuHzBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769784560; c=relaxed/simple;
	bh=tfZk+5KNNEIOJgNbg0qag/Nul+kpF2IKQPhVCoBQD6U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jo+6unAgjvDCDbSe+Nz1E876nRrdy4Tjq5nWaywHTDeSydc3qzJU/9/Xk9Q2ktEMQdPn9iPvr/S18Lot4PVGI0s7YIJolpd1K+aZ6FoabGuPghCq0ufON0T44bF55bZCHg1K2Uha63ysdgh472HLD+fGs14Lz72vKTZ21lYBLqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XJJPHXgk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ERScmCGW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UCSC1L555440
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 14:49:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JwTwhgSyzqJLo63i9kwRYod4/mBwRdp48FEKlR9vabc=; b=XJJPHXgkE7AFnUgQ
	LaMRZ5LJWwuQRZgrNpI8ZgUZKxAJKJ9PEv48TWDwUgQIzwuqt7xGhwa8sOUT4KYt
	onnR+Quc/RrNXFABDQ6LbetxDbNv9fi1/xtgIdjAONecwl70UyYRGBFB3VBuUxd4
	TkrMhAPr1uokJMvJje2QBVBAERIdg35+4W7tN5K1PMYf3EWRKxU9gxCP3Zkpw+AY
	L17F1LePoBl5lg7GZ9utfAzpW+DnHTBxgVfrBDMV7t+cWCzDsgUgJcm6tLsx+oAb
	5F875S/xlKU3eJ1NeA9toZBqa7uMHbbAiAkppKDR+wGtf9jYHDMvCF43htXth9wV
	ve5oMg==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0p59hppp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 14:49:18 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-124a38e8980so2970705c88.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 06:49:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769784557; x=1770389357; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JwTwhgSyzqJLo63i9kwRYod4/mBwRdp48FEKlR9vabc=;
        b=ERScmCGWTi6z71E9mN/E+TekdZioVidS/0MqrpYEhrJPfmkH9sNJW1ENl7D04SKSKX
         NPBFRn6FXQVqI3YGWolOeT+cE/+kFltAtXymcDMifTZygI2p5I8wLzsATbkGtulXJtKZ
         SKiRkcMMDXQjVRPFnOYU9YBCGOOqQoHM6eRoAnCh/FbykI34BKjnEMlG9Rp7qoam7JWA
         82eYTJhIp0eQfZClT94z8Kx6kbB4VwN0s39SIdVZ+sS41DhUqXEDYIyW03gk2ikAm2+n
         WFyvUSlcM5aSvM7IVrXlPgkgtjIVR0VXrGVpSrxJPGbW/bH1Dq96QBcNsq4NE5/nBGNy
         mNtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769784557; x=1770389357;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JwTwhgSyzqJLo63i9kwRYod4/mBwRdp48FEKlR9vabc=;
        b=j7UqC0W+bHzLpdP1AcuZ6q+3Q/rTFD6u5EbW1RQhcN2v0W1CzRipsDffGxozu2HlgI
         6IRGN7HbWcFHUd/l2fD42ToQEkZTS+yN5hTXN51S8SsfhB0Aqwm1xDyHQBfX4Gx6rSYP
         pKbHdkTpu4TjQ/P4aRXPD/nvqNcGn0W8QcApQ2G71ClzyodKOTdRTYWebMW8P00vr8dn
         CitMYasmuzyULiB1GVVBnDw16Sb3L5Gcpzcrs40K8BP/R3Fr3uktWFQQLBwCzbfQhQOU
         sbVOvs3F6NmD36qy3Cw13KnCPlb85PRxxUSqgOPqRMQ9Ppj4Cekuy+NqRSWfA+4MYF68
         8u7A==
X-Forwarded-Encrypted: i=1; AJvYcCVL5YN5rD6e1ZH1kDN5zp6mBmjDOk4rLpM7j781OfSjYpcydFC52W2JMiFx67qlJodMz3E99nFwvfrG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw62hAaNt852ktjQUs+O3UO2cBrHcV3VeEW3Rn6JZu1aeYZ+RLq
	D3yBLBOJVEUjlkpat45tRMP/7IFlvTAU8E8CsDZooR2f0yh4g8Td4S71ju7PBiJvHfSrIs3zEMA
	k2KAHiUjdbxG0lj4Tj887uvf2iDw4yCnbqhuD9xV2EAK7MyFp42azJzCUsmNq5by8
X-Gm-Gg: AZuq6aI0IJkmAPVtg1tAZAwVLFTXMAnlRaFcXftyTQBVz+ayVC59rdNfiHhtHDBGKLB
	H96MhPi+8+o9oeoLJnU3NAQi0+2yNaaWLwQQZpXckel9RlsAph6AiIKq4b+n2UdC4RkqZ0tHPzE
	LVJRiM9gWYbf1iLsyAtWSUW8JK799hSiBt/ZUt/Gie/xddmXW83ggG7LGNQeJ3TGijpDH5mFkov
	qKiNW7fUqdIXph1dU2EFgOJiDmVFtOlX2Jz/GPaDm8JHYxf3RRNvIn56O3O6RrzZDu1slGERGYf
	ylSqm9MNDjIk8PNqnD+PV/PXj/LORhz7Xzhi2J1+q3gj21WUaJWe4vuf+jE3aMPNFqQgqfnZNFR
	0qfZgiSiA3zkGO4GJ05AvV6/jDNePuCqwAddMldoulmm+/A==
X-Received: by 2002:a05:7022:e25:b0:124:a93c:44f0 with SMTP id a92af1059eb24-125c1021329mr1305173c88.47.1769784556882;
        Fri, 30 Jan 2026 06:49:16 -0800 (PST)
X-Received: by 2002:a05:7022:e25:b0:124:a93c:44f0 with SMTP id a92af1059eb24-125c1021329mr1305147c88.47.1769784556232;
        Fri, 30 Jan 2026 06:49:16 -0800 (PST)
Received: from [192.168.1.3] ([122.177.244.129])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-124a9d6b740sm13384721c88.2.2026.01.30.06.49.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 06:49:15 -0800 (PST)
Message-ID: <8892020f-b674-49fd-8715-aaa364ee9e54@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 20:19:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: talos: Flatten usb controller
 nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260128062720.437712-1-krishna.kurapati@oss.qualcomm.com>
 <20260128062720.437712-2-krishna.kurapati@oss.qualcomm.com>
 <2324aa41-6b2a-41ca-9f97-7a5b5e0f575f@oss.qualcomm.com>
 <f9f7514a-8841-43b8-b01e-aef4aceb8d3a@oss.qualcomm.com>
 <fa3735c3-ac4a-4f98-bca5-a1b75dad0939@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <fa3735c3-ac4a-4f98-bca5-a1b75dad0939@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: BPrdqQuAiEzcu7YjmgwJzBNsBU-hTdWi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDEyMSBTYWx0ZWRfXyU9fqBoD6HvY
 pZgmLBseSzZ3d5ps+lGou52wxHzBnyNDW/4+4eIUEgT9dcA9F2KcuJBTxjyQNXHzqS5KtaAizCH
 C/DKLd507iclTQp6EVaatPyf/Gt/glpy04FppmWHJntZzINjKIyiLbzKhGajvdVMbXItZhVcJiQ
 +xPns/3gBCJ68bc2pwVrPo9Sp+0A2ooAY7osoXKRVe1omcdYpgTu95O+5jPw0BgMhOfqi7h3gk5
 MOHIEoqIBc53U7kHXexDTuEP6AkInNE0CGwakC44kK2pvwmEFkcStuS6WMOm9YxdlcbmWhra9xa
 mm7Mqq7OKmr59qZuWhYrbRVtt4AB2Y7X6xI9F854Y11Xlr7SkvsG6d/mBt5YOxi3TARyulxLhVL
 PleG/FAR3Yj5GlgSyD4M/hWLbVBirluhUNTssiagMiKlFhn5idkx78SEXH0cYbAu420JnlFUYce
 8+Cu0eMFWxWWvTwxNrw==
X-Proofpoint-GUID: BPrdqQuAiEzcu7YjmgwJzBNsBU-hTdWi
X-Authority-Analysis: v=2.4 cv=Re+dyltv c=1 sm=1 tr=0 ts=697cc4ee cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=cyLKOHUn2kgKoBmswTDEEg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=RdQPRE3GmD7CddwFaIoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_02,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601300121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261247-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krishna.kurapati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CF91BBBBBD
X-Rspamd-Action: no action



On 1/29/2026 4:58 PM, Konrad Dybcio wrote:
> On 1/28/26 5:09 PM, Krishna Kurapati wrote:
>>
>>
>> On 1/28/2026 4:01 PM, Konrad Dybcio wrote:
>>> On 1/28/26 7:27 AM, Krishna Kurapati wrote:
>>>> Flatten usb controller nodes and update to using latest bindings
>>>> and flattened driver approach.
>>>>
>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>>> ---
>>>
>>> Have you checked whether this brings about the same crash-on-suspend
>>> issue as it does on Hamoa?
>>>
>>> https://lore.kernel.org/linux-arm-msm/71c15a78-7a50-4913-b677-e5308fcabfad@packett.cool/
>>>
>>
>> Hi Konrad,
>>
>>   Yes, I did check system suspend use case after flattening and there is no crash seen.
>>
>>   The only issue I observed (both before and after flattening) is that waking up from bus suspend, there is an enumeration failure on second port in host mode, and an xHCI CMD_RUN timeout occurs. The issue is gone if we keep controller GDSC flags as RET_ON (not the right solution though). But this issue has nothing to do with flattening. I will sync up with clocks team and try to fix that host mode issue.
> 
> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
> index 75716b4a58d6..7e7f4eae8a98 100644
> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
> @@ -4559,7 +4559,7 @@ usb_2: usb@a8f8800 {
>                                   <&gcc GCC_AGGRE_USB2_SEC_AXI_CLK>,
>                                   <&gcc GCC_USB20_SEC_SLEEP_CLK>,
>                                   <&gcc GCC_USB20_SEC_MOCK_UTMI_CLK>,
> -                                <&gcc GCC_USB2_PRIM_CLKREF_CLK>;
> +                                <&gcc GCC_USB3_SEC_CLKREF_CLK>;
> 
> 

I tried this out but it didn't work.

Regards,
Krishna,


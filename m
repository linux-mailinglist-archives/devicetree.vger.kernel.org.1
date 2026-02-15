Return-Path: <devicetree+bounces-265620-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eA7/Gv3VkWn+nAEAu9opvQ
	(envelope-from <devicetree+bounces-265620-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 15:19:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E473413ED7E
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 15:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBB373011752
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 14:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CFC72C030E;
	Sun, 15 Feb 2026 14:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NwqaTS1V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ko44iFcI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1EA1A9FAA
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 14:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771165169; cv=none; b=t/JMXF3mU/RAqxgOxBEb0PJ417TIsdx3hTmN3UL1uZHP4FfkZeIhJ8bGWf5GWcpMnAhYE2FlGzQrx0umZ/MJElAJQ80ckiXnlUrmYUXa1dU/FPLGFNiyShnQvEVon3Qd9QMec5/mtZtXXTl7V5yGw6oauyD7I0+IpJwQbY6z/JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771165169; c=relaxed/simple;
	bh=C1ivIqC2KTxLtvlhKR6tu5c0YkWoXQU8GJdsXn8gtfw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PidDFY4hqVUK3Si+F6QIVNTuFxWj6RhSityzhvg/jNOSC6Ggc6T0YWY6Nys/1HGgV9djQxFBz9c+QepBuW9kj8J6MwUu28As13SzBS/7pl0TaoIZSkdFaeaVvWVZ610n5pm05dr8SaOHdWDStragEeZLBIiyUOlTAtVk7If+VR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NwqaTS1V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ko44iFcI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61F3tQaY874498
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 14:19:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	drLFfljiudUP7/uJ+kHU2to4oX8NlbvFjFsZ9HWcYj0=; b=NwqaTS1V383AX8Cr
	oUjn72Epnw8ulzO2+CDefiUMGNhquqmAYxvIsgO1sZT6DLT/vUYX6w5btggwiRo5
	+zdT5ihNlMIrTTjboeFpIAiU9qVf9b2tiLnoa2me4NWJ8pLPYmk97r+xfJh5DuxW
	ELZ0JLuPfb/W0VLwUDZHip89Ae2ANwknljd19CsYvfnMUysYvlxdQIw9BNFqUQBi
	CVeefH3KVzSXFfjqd7DruYPc0gpwU5sx9V6aDfsfk8S+K7xIAQ/LS6Zv8TywRsR6
	lqhneLZBs2luLwgDcNihZc17oKKOnznLtr/uDDRa1LVZNEzeudpQSVERYNZMgWK/
	9X2N0Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cah4sjd6s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 14:19:19 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aae3810558so28696715ad.0
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 06:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771165159; x=1771769959; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=drLFfljiudUP7/uJ+kHU2to4oX8NlbvFjFsZ9HWcYj0=;
        b=ko44iFcIYdvDBUxwQbYor+Dh2/f6gxJGF5ov8GlqE9CiKdRP2UzzlXkbTKl+anJZiM
         8gp0c4Ne2K6H3mih9gMKvJvxgupqSCO4KwtvpCXPG6O0IJwU0bAfIZ9xobl4NHBE2nAv
         jy101WVqPvJXLKgDpF2uO8lXQtDq5DTEsAQmuctloqJ+oFPZrujXsu6+mmpembjHLmWD
         TK5Ifrw7mTi3+lEmJDhEaeW/MO5DRnFj96hP/u9UpznKdl5N/Rh4y4WgidM0IHwoHdDJ
         /SPUUGF1gROjxgrX1Ds/d5i5n8U5FoxTy+XRspXIRhhi5YZtGsPrR/WJL7jZNtf0YCaN
         mjtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771165159; x=1771769959;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=drLFfljiudUP7/uJ+kHU2to4oX8NlbvFjFsZ9HWcYj0=;
        b=jBT1jy381A4bVVaqi9MxNACOxwSLl1+QHst24mzNI/8+4WOMid5WuOZu6ynn24YG2l
         qZcTt4NbwjAowybRmLnEYEcZ1AWaXRF/UJi7zPxsGFRMBvGJ0uy7pjpNLaXUr6pXYIa+
         BRrIaoLOfSg0qSNvoPgVQljVNmhyu3IEYCa2ch3y5H2WH7cTyr6SIqsDxs4k94W6XvAw
         LCxj/qOMtcOAWisJvtW5Uz1j8QRgtp//+gbug9O9o4NCQuhlFTvtKst7Rur8ExK2Qei3
         g7/LLjAoHLd/7BLSRMCTxJzLYkZrXoJZzy6hK/KvKPdpyAJFNXC3mn7I2xO+POAPFC/q
         kvdw==
X-Forwarded-Encrypted: i=1; AJvYcCVuAf830gd6b6N5qIWGxinD4kPSymk2RtKz8KyTbQUuAcFm1l4RIbva/Byp19QKrzXnWYPqwaH9L15l@vger.kernel.org
X-Gm-Message-State: AOJu0YwnbMtzngJurKEh4aAt2+uVOWl/IHlOSqNsDmLEEPam2kxaeo9k
	mAGfauJDadE9jfb9lKcIAwKjElxh11dV7zAGjGk5jIuRv/iaGGAP2Wt+F8RkiYcSNjMcGx3xSYu
	SnAK3mgt23SNxMNepxw2tFN/yuV/GNJzYOgaZpXc2kOG8IWnwDnF/cW9BKtL4btVe
X-Gm-Gg: AZuq6aLcOPwHioAZb58CSpXqiLXyJaH8UWZJmKFjjpGBBzdJpG9M+L0Pe+EZX5alloX
	9oucZVI0EYXBcuZ/V/D8O/9orygy98SKqzmk5CwFlrvsC+zFvzof+Ufs86kZHzbsTTUCXZ8fNEB
	mT+k/GfULIGzt1rQWIdOnpVHYDv8YILul3SQ7SUUQ56N/S1tn/g6/wZViBWCnr5uapU/vtXoHlR
	j/eZ74u33MysCWX20Zl8sOQLpSzAOOIKpweu4o6aZLlXXY99cK/le2M1x4T2bcrlP1ffG2reW2g
	NQZlED4HUG3XQkygvJ7mwcuI3k9kwXuZu0u4tvrQ3fVNHqfhQS2U5DDFiSBdBlWUJtqSfKo+PuM
	9z+dn9ztWcldbmtuzNniaSVzXyi8LqwEfvzOY712vhcY2QfnzjFETB8tOuZ8V/hGvfxmKwnmZHJ
	aXuEUPqveM8eGr
X-Received: by 2002:a17:902:ef4d:b0:2aa:d288:7bf9 with SMTP id d9443c01a7336-2ab505b5e41mr86855255ad.31.1771165158929;
        Sun, 15 Feb 2026 06:19:18 -0800 (PST)
X-Received: by 2002:a17:902:ef4d:b0:2aa:d288:7bf9 with SMTP id d9443c01a7336-2ab505b5e41mr86855045ad.31.1771165158463;
        Sun, 15 Feb 2026 06:19:18 -0800 (PST)
Received: from ?IPV6:2405:201:c409:b03f:7465:278f:83b:3aef? ([2405:201:c409:b03f:7465:278f:83b:3aef])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6e52fd0c81sm4897105a12.4.2026.02.15.06.19.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Feb 2026 06:19:18 -0800 (PST)
Message-ID: <ee1a1fa2-89df-4d8b-898e-9a4a50e1df6f@oss.qualcomm.com>
Date: Sun, 15 Feb 2026 19:49:12 +0530
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
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <97af21d5-7457-4dc1-bd47-2e34e6df094e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE1MDExNyBTYWx0ZWRfXzLG997Hlky73
 npYKG9CK0FlFS4kQkol7Vf3YC6SnEH4JzbpwGdn0VpFCHehQZgKFXTYZQLjL9Hu0fsYazCBeKAb
 HrpiZH+KIKfJQUYPI6vrHVdm/epMrsauAqYrzWeLU7hfO2l2HOVP5iVYOzFP/2AuKaaDHxUIWJr
 kZOgiVNTWa8nYMlhIuviyHyHOYxtlI4OAntMMajM7wcRvWYniXS9t5j/zVEE2TLM0Ni3mA4ZzaU
 QKa0twRfXoJvXX2IehTwzMlv7At+OkmJPdjRGlPXmspLRvC648g6Qwp0D+ecQQmQoucZwPx8CRh
 pv68bUAlaf8ppzT5ePjYP+e34EBe9J8oQW33FYsjmyM5xEAOJ9v/0GtYUOTkfECUyDrntiimUSr
 p7fizsb/AjBeS9Tr6/hU/ugRF994pbEcWw/pWXprRV2Et3wkzhNU09uEPlejGOjNTv5lkm3WnJI
 9Gc3LnZoUnBydAQhcCg==
X-Proofpoint-GUID: k5V6xHpKoKogeWOIg2MCGVeMp5i0v70R
X-Proofpoint-ORIG-GUID: k5V6xHpKoKogeWOIg2MCGVeMp5i0v70R
X-Authority-Analysis: v=2.4 cv=EbXFgfmC c=1 sm=1 tr=0 ts=6991d5e7 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=84ae-n4OvFXSi56mcEoA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-15_05,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 suspectscore=0 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602150117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sushrut.trivedi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-265620-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+]
X-Rspamd-Queue-Id: E473413ED7E
X-Rspamd-Action: no action


On 2/12/2026 5:16 PM, Konrad Dybcio wrote:
> On 2/12/26 11:44 AM, Sushrut Shree Trivedi wrote:
>> Add a node for the second TC9563 PCIe switch on PCIe1, which is connected
>> in cascade to the first TC9563 switch via the former's downstream port.
>>
>> Two embedded Ethernet devices are present on one of the downstream
>> ports of this second switch as well. All the ports present in the
>> node represent the downstream ports and embedded endpoints.
>>
>> The second TC9563 is powered up via the same LDO regulators as the first
>> one, and these can be controlled via two GPIOs, which are already present
>> as fixed regulators. This TC9563 can also be configured through I2C.
>>
>> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
>> ---
>> +&pcie1 {
>> +	iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
>> +		    <0x100 &apps_smmu 0x1c81 0x1>,
>> +		    <0x208 &apps_smmu 0x1c84 0x1>,
>> +		    <0x210 &apps_smmu 0x1c85 0x1>,
>> +		    <0x218 &apps_smmu 0x1c86 0x1>,
>> +		    <0x300 &apps_smmu 0x1c87 0x1>,
>> +		    <0x408 &apps_smmu 0x1c90 0x1>,
>> +		    <0x410 &apps_smmu 0x1c91 0x1>,
>> +		    <0x418 &apps_smmu 0x1c92 0x1>,
>> +		    <0x500 &apps_smmu 0x1c93 0x1>,
>> +		    <0x600 &apps_smmu 0x1c94 0x1>,
>> +		    <0x700 &apps_smmu 0x1c95 0x1>,
>> +		    <0x701 &apps_smmu 0x1c96 0x1>,
>> +		    <0x800 &apps_smmu 0x1c97 0x1>,
>> +		    <0x900 &apps_smmu 0x1c98 0x1>,
>> +		    <0x901 &apps_smmu 0x1c99 0x1>;
> This map is not just an extension of the existing one - is that
> intentional?
Yeah, I created a new map just for readability. Should I instead just 
add new mappings
and keep the older core-kit map intact ?
>
> Konrad


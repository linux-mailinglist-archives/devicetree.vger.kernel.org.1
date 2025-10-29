Return-Path: <devicetree+bounces-232634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 453F7C198E9
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:03:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A502407096
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:01:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AA352BEC20;
	Wed, 29 Oct 2025 10:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A6elBAIv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C7rCmTOw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C37199FAB
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 10:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761732064; cv=none; b=gDFgxKUx3oqSZfqIdfSQ2Yx4/OypZUVDT1OD/UP92H6hU1Q1pZyAdvdytckOBWlA6mOk+geylX3bYy2diOIjZNLJ3v/SJhPpTgV/jkObxZVJNB9UsgK62Ygu8e+xBcC9m0Tp8mP1yGi28UJm4vzmH/ifbeXx/M45kXuM3RPKFU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761732064; c=relaxed/simple;
	bh=q1a+cRy8t1d4Idu23Ds5LKgiMgaTqXhVpL8M3QMBjw8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Unz5gUwtQ/mcXUCh5BeHDH5K6b4KjSrzFVfsZ/1fog0m4CAAe2cFnevORJ2LP6RZO4MvZ1/7jO5TReR2hYw5gwmqxFC2IWrTnCAErLpHhyB6nv80vC3tnN2ticT8i3RiEHDh+armZppBarYezxVcdwurahGkQmiEwbZSKcEpZ+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A6elBAIv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C7rCmTOw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4uwGG3676849
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 10:01:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TePNPalHMwIQZy41qp0xadoCq64yzmdgEKfirFQHl+Y=; b=A6elBAIv2QDswVvs
	0YUo+0l2ZqvSTWozu2jqV/6/G1H0Pxu7JARdj3e/pAKG293HNhnznz471P+783M+
	yD9LJynxYXixNkKayWj4NPP+UD5nis/AWSbXRrEfCmu/ezIR72Fqn/UJUNlOJosI
	rlf9g48bTLJ5B8Q3nJAViOb9AqLbXrxNQ3qmQRM1lVJRRFdLdZdT6wyVdgAAoI7N
	1YGXbikG0dI8+CB/pgAS1Pec757jlj2xE0K7E9t/opec22VELUjxMlpwFujwlOCm
	pK2kjQ4Z4T9HUpjlb/MywwwQsQpx8sRLuOPe0c3GFzX5j/qjW5Y/yn/9fRBNwbRP
	6sG9Ng==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1j33e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 10:01:01 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b5533921eb2so3980482a12.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 03:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761732061; x=1762336861; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TePNPalHMwIQZy41qp0xadoCq64yzmdgEKfirFQHl+Y=;
        b=C7rCmTOwCE84tPWIPiJzx3YKGMLRYRRkvSCpjoZFk/leVmh3IuRld4uGZVip1OzPpd
         GS0xIXtdZYfPi4loovVhpfg6WG+RMmoK/+S7kUHbcjH1JynzgioKIQhU2PlT2dha9C0f
         nxYPEmlj13pYI57zXGKnL+RzPXxwb6k2z3oRJ3dy8iLuIvTcWbmnwOS9NuPXxjaz3uYE
         9h6B+r9E5oJmPmYf1VK4+RR7PlPGFPJJvtOlthg7UQwzidCYnsYSD8OXKgA69R97KtOp
         vzXH66Q/tfk+1px88Ecqs/PLM6oNwa+TcN/FrXQGeBMoTdnXWwMvssyAlNRzDMPEqqPR
         JKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761732061; x=1762336861;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TePNPalHMwIQZy41qp0xadoCq64yzmdgEKfirFQHl+Y=;
        b=noIyEGOCvepvzVLTWfA9+MF4N1cZIMsQT+JK1XIM+FN8Jz6lWHQusnZ9cd9rfIPJpm
         M1Au9EkPDmy15kTNN55TWxqo4T7To+/vdUFfqA7jDahsTLr25FwjLy1HL+ZNf99Q2USt
         Dn3Y71+AGRoPrvpRUK3x0LoEKFAc3DkmMS+KB6EWCuC01LGhsvim7d9G+QdIBguxb0pF
         NKEckkKB1RwOPEMDXPauFbjK1KRDEtrJgJu7ocIejFNtiLSLcfgzQVCGWx8lq4GSPs3A
         IKAO30yoN63JIEphpmhp9MG0d2pv/aHXztTW8LbAaEB6tcxrRi+scFDWhzss3ayVOTRK
         S2tw==
X-Forwarded-Encrypted: i=1; AJvYcCVpfMziEFe7dkyzjJzLFgAg6oHEArncItCe+220NV/i5xECn/iH6XVpOzG4HhkEBxuli3MwXk1d/9jZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ+PGjoqbpuxHqIQ6445FIeVlftY747mrfj2B/1knsGulkm64g
	w02q9SNv0rZ6WFGyv74DP34Swfw/f/3uO3XBcSxtpowC53yoA1UwaDd0xIkDkVGEdNKS2DeP151
	/VgI3DwHy6q+SollaavAMenYk01duQpx1BLDqDZympeghyQr9B4hlBflvdtz+TCQB
X-Gm-Gg: ASbGncszR6uN1VdVK2W2Epujq6aSR4QkWKz8ehsq+iUdh/ZEO+GAUTvSsGV7r/OplDC
	z9teRPbkheB8e3nilTzHLnGcQSxFpeJKR05cSAUuWDP7pEGvVBXdO/ZZHmVmYvVJTwL/nNn2W1I
	K2J4MoMhW6jtL+s5FJGGVUEP7ZKfPKkY/A6Lwzq1+i/Q9EtIIv5wxaC9mJN3hP5Cwm6+2ZuZ+zF
	QB9J2iEy/iUc9PT3jMmPYFI4N85zivhKpfnArP733/jXdkC9uNoPxYJAg5xjU1sutMKt3Yg4Fg7
	E7RRqL180qAlLVcSMY4HCsdsuViZIcNbfYBdBn0n0QWS6oXRa1X277LrnQ0j2xZB/7CN22tgpXe
	g1y7DX+WRkJgwkFyLr27l7TYflyc=
X-Received: by 2002:a05:6a21:3386:b0:342:e2ef:3323 with SMTP id adf61e73a8af0-346553f732emr2780358637.42.1761732060820;
        Wed, 29 Oct 2025 03:01:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvHLDqBXrIHqT5BhdcfrUajorIAMA9uhhTRhKCPx2T/Ja47LZZ5K0xA7gJ350vkbHObhXNJA==
X-Received: by 2002:a05:6a21:3386:b0:342:e2ef:3323 with SMTP id adf61e73a8af0-346553f732emr2780316637.42.1761732060183;
        Wed, 29 Oct 2025 03:01:00 -0700 (PDT)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b71268bd810sm13323143a12.6.2025.10.29.03.00.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 03:00:59 -0700 (PDT)
Message-ID: <0a47016c-1d7e-4026-92bb-a13ac2ce169b@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 15:30:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/24] arm64: dts: qcom: Introduce Glymur base dtsi and
 CRD dts
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-3-24b601bbecc0@oss.qualcomm.com>
 <2960a6fc-106b-4280-b4d4-9c1a3a449454@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <2960a6fc-106b-4280-b4d4-9c1a3a449454@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Nu/cssdJ c=1 sm=1 tr=0 ts=6901e5dd cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=HDE9XZ7bw9bohbkjgD8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: lSaTZiCE5Yju9UA6JZmTErP3lTu6zqS_
X-Proofpoint-ORIG-GUID: lSaTZiCE5Yju9UA6JZmTErP3lTu6zqS_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA3NCBTYWx0ZWRfX7fRZ9ro/773P
 /i/sOTCOyve0j8xZQ1KYaHPG0eaiOLogv3h9Kgw2RKllZ4Ib9zNgdb9Y4chQL8XaFlS7KJzswex
 rhsgbPFq7GIk62W4/h+XMpM6AQe5hl9M9I2B4MAiyesxpU6NJZISniRNhAog9O256W8T2DMRPYm
 nNHk6+FH3eve2gWHPiMOXW1rlWBvYsFdiY8JG3nEwqThfiic0exDOo7EvTNbdChFfk6jDZs6kR9
 xoW+d0BKLF+uecKTO6wUbhfhZyjqnnsk8V1LqfH0g3RmMbytIHyrKeGOLFLSflnpQ5CBvnULfAH
 UvKPa81I6xyY0NxyrMCahxp6fboK1J4TYgvEu/rXtf89BQaOLIh54lKpJ9aEAY9SqmQMqUSBgeC
 8tpMp3MAiBxmWPZ8m6wKHKyZhRudVQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290074



On 9/25/2025 3:46 PM, Konrad Dybcio wrote:
>> +		tcsrcc: clock-controller@1fd5044 {
>> +			compatible = "qcom,glymur-tcsr";
>> +			reg = <0x0 0x1fd5044 0x0 0x48>;
> We can map 0x1fd5000 - 0x1fd5094 inclusive, as that seems like a
> logical subblock (this would require adjusting the driver)
> 

Konrad, we encountered issues when trying to map regions beyond just the
clock reference registers. Normally, we map the entire address range of
a clock controller (CC) module in the device tree. However, for TCSRCC
where CLKREF_EN registers are located within shared modules like TCSR or
TLMM—we don't own the whole address space, and mapping the full range
can overlap with other devices.
To avoid this, we propose defining the base address as the first
register actually used, and the size to only include up to the last
register we use. This ensures we only map the relevant subblock,
preventing conflicts with other device nodes.

So want to keep the mapping same from the start of clockref clocks.

> There's also a laaaarge pool of various TCSR_ registers between
> the previous node and this one.. but we can leave that in case we
> need to describe it in a specific way some day
>> +			#clock-cells = <1>;
>> +			#reset-cells = <1>;
>> +		};
>> +

-- 
Thanks,
Taniya Das



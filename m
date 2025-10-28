Return-Path: <devicetree+bounces-231897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7CCC12B4F
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 04:02:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDB6E46543C
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 03:02:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71F841F583D;
	Tue, 28 Oct 2025 03:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CVIb7nRP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0CD19CCFC
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 03:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761620536; cv=none; b=D60F81/JVvycog5lVh/A2nwwZTVmtUvvFtl8TjBsLqRs00YE5XAqGMJzVigj3UN5wgWTcUqp7xXVTPqaDNXZcsWDMaBwMAz1RjBR1REmwwa2i7rQQEhgNR0Ukx5MEzK7LZWMZiG6n8Z3N5+/+qDa2/UdJyd+xLD/uHOIIKaCgMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761620536; c=relaxed/simple;
	bh=J97EGj37o1LYAf64oQGIuCna3MTQqEBoZLlajyaxXGM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dZtfixEi7k2cuNlEvo5nQd4H4ktxh4dxBwBHr1+eniwcxwUYWk5Xsy20mwMxCno2//bObN7PBjDzRd/iySh74zQlYu+lx2FDgr8XHPIu8o9yzMRk9dy8TcLdF9xxIAsK1+daMNWBrFW8Tx5Ct23ljGFI3OZrOwBcvmhbbafbdQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CVIb7nRP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RMIwPr2752121
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 03:02:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mZT/6+ObGcxpNvzNL3larcNaKCkvBwUwpJYv6W7bOhk=; b=CVIb7nRPeXQ1xUQF
	GSBi0Ve6BZlknIEfrbX2UGzMgJqeCLiOz9nrOyxmMs9+cWdHXsSK5gu5JEcuSaj0
	qj5ZWOTEzszKdFELKzf+W3AeBs7XgIbzl+w1H60i5H1ngjN0JptREGRuG32Ygtku
	B4ClVxo8D1h2gSBvTj0OUkbcXEcT6gBqNDESFgXowrFOGh64jX7Aij6ylxuztoxy
	T2JeMRilZCOS7QKUsIO+9xlN6dSwiRAzyjHIgM1nP/lYlAUYOrczGBQOaCnCwe7Q
	vtBEqd7b2wEGQlmcT8eAJhg7ZxMeHl75dZ06gS+hji7PPN3WOwttsWb2I7ZE9kls
	7Oewzg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a28nstd6e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 03:02:13 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-28eb07797f9so19513065ad.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 20:02:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761620533; x=1762225333;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mZT/6+ObGcxpNvzNL3larcNaKCkvBwUwpJYv6W7bOhk=;
        b=Js8hZcA5dvMKWc3j2TUPAZaavteMdfcGTUSAXpFGOpfBBVutYGXoRONoTXIeLGFYEm
         rtx1bNjimsuq5LdVhpwYjjSsqEubqSwpDyPskiLaj6HUou0qCQ29wJt/Jih0JffBkeq4
         ti2dEZfuX4Y+/tmFkRZNjUT8PO/76UkhfVcEo0n5JTFjkrHhBIl7uUAqKaL5hNrpeC4k
         v0CMURWc0OCP6tx6T+k2UasfRx5su50pkF8gJE/+JUC3KSo7mt2yJfQvEGHKqNe6RGeF
         6cNKaswLWFNYK/3Fg1qZqb9LawrQ4RRB26pRYPW9JCoI5KBFEAFCKsbVW2/STQ3jN4eu
         B/gg==
X-Forwarded-Encrypted: i=1; AJvYcCU0DVn0w38qgm0/P1YZF1q2kcEllEQU6VhI5vcv1sLa+Lbf2x7gsJFTFM7pJk1bHooed2S6MbhNjlBl@vger.kernel.org
X-Gm-Message-State: AOJu0Yyprde6YwtgTQnmx1DWB8/YeYtm+xl34kqnbgNTUVboBkGVI+bn
	1Q+6iVvGvQwtC2eKD4Sr0mqRRN/GZduujkC9uuo6UlpGm+zNyszppDrcgwCnyXSRylOU/eQO/y/
	sIla0FeR18ZFtUpBH3QvCfMg3KA6hy/A3fvJzQ3lGQK0CoJ7O+e2AnS6fopV2ZE0D
X-Gm-Gg: ASbGncuKLhO4Dc7/4foLOZ50+igs19s83U83cGeBYh8THRu0jEOpu9d+oErGUKodb4U
	zx80ZyJHKV88EoLpDSixa8xfSD5te/9QDYhcbGYjoL9ULhq2vVmenttiY82ThP6oabCx8x0W/ee
	C8o306+mGVOqLeqDff2EuTC/KIkkrslf+Bo0fihVLP2QbrhpEF1FOeEwglHp55PT/+JiQ0vhqkh
	qRZMvOBXM9+9ffLErXOLyXPEgRgeWHTsIgiNkVK/NQMaNZd73EzE37zUkqyRIfmd2XBC8q3eZ+1
	sy8A7M4NriOGEBsZ4AWre2oo6X+eqc2lVZ9aXbC+FcSfIOjha5mac0+Eo4SCPCt1tjSXFT6C6HO
	6Y1aou2pe2XVWVQIXSjNFuxLR5wjEHpZoSwzHpOROPGA2s2mzPW2wag==
X-Received: by 2002:a17:903:2c7:b0:27e:eb9b:b80f with SMTP id d9443c01a7336-294cb37880bmr12041735ad.2.1761620533198;
        Mon, 27 Oct 2025 20:02:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjH2jcjwExR9ZejktFCScAZsb46EVXd09cixcaCyHqdEG80lz4FVfKGqiyH60DFpO/NfhY8g==
X-Received: by 2002:a17:903:2c7:b0:27e:eb9b:b80f with SMTP id d9443c01a7336-294cb37880bmr12041495ad.2.1761620532610;
        Mon, 27 Oct 2025 20:02:12 -0700 (PDT)
Received: from [10.133.33.249] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e42f5csm96570895ad.104.2025.10.27.20.02.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 20:02:11 -0700 (PDT)
Message-ID: <07c5c404-e2a7-418e-af5f-dc7c4df9f2f6@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 11:02:07 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: interconnect: document the RPMh
 Network-On-Chip interconnect in Kaanapali SoC
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251023-knp-interconnect-v1-0-df13182aceac@oss.qualcomm.com>
 <20251023-knp-interconnect-v1-1-df13182aceac@oss.qualcomm.com>
 <57bc950a-a62b-4218-99a0-86c570bba6db@kernel.org>
Content-Language: en-US
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
In-Reply-To: <57bc950a-a62b-4218-99a0-86c570bba6db@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDAyNiBTYWx0ZWRfX+kV3u4Lpok2b
 7soJRmaeLVFAL5c4b3RD4HsW2GXqMAF3UlriGc9wcYn7skZ5jzVUdsUV2zjbht1LFB8xi77RlyP
 JQUdbH97jMoZwWrfc8poJebBDNDChVCuxgkG5eT/YJM5P8HZDuRmRUKkjI5eIgaqfNqeD5juKVD
 g21J/9uN4Q/dr/VWMmYbL3+0PbbBBx244J+whq6pSJCImrNgob96V2PAm3r6k0FcB5M9p5cbuOZ
 FJlIjr6HU7nSgBb+X/E6abxF4VtUCNaMdEgYniU3R3oN8ZetZKYWLI3QyExrzJij7j13NJbJHH9
 5VZq1mFH2vx3aYb3PBG/3TaBDtQWdxN1JF1QInKKLPr4F9qOdZa0dRfo0/MbHZybVmNMDkSiYsh
 yuSdmQYWq/FX6+/BToIxhagsHTM1NA==
X-Authority-Analysis: v=2.4 cv=RIW+3oi+ c=1 sm=1 tr=0 ts=69003235 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=aNDXB-n8nvUMI_014rgA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: u1Go0DhMdkFj2qmw5LnaGwG5MlFHV1FV
X-Proofpoint-GUID: u1Go0DhMdkFj2qmw5LnaGwG5MlFHV1FV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280026

On 10/23/2025 2:23 PM, Krzysztof Kozlowski wrote:
> On 23/10/2025 06:39, Raviteja Laggyshetty wrote:
>> Document the RPMh Network-On-Chip Interconnect of the Kaanapali platform.
>>
>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> 
> 
> This cannot be tested, so there is little point in doing real review. We
> already provided guidance - and it is documented in your internal
> guideline document - what to do in such case. Please follow internal
> docs to decouple.


To be more specific:
Please drop header "<dt-bindings/clock/qcom,kaanapali-gcc.h>" and use
ephemeral clocks in the devices example like
<&gcc_aggre_ufs_phy_axi_clk> <&gcc_aggre_usb3_prim_axi_clk>
<&rpmhcc_ipa_clk>.


> 
> Best regards,
> Krzysztof

-- 
Thx and BRs,
Aiqun(Maria) Yu


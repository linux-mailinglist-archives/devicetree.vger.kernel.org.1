Return-Path: <devicetree+bounces-238895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F42C5F5F8
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 22:31:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AF72635CA97
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 21:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 283A635BDD4;
	Fri, 14 Nov 2025 21:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ew8Xh4g5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GwzyJrpd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ACC135BDC7
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 21:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763155882; cv=none; b=pjGCk2HGNzp16g1be1m36XaejR3kOVFJ8hpgSBuTJdfn1R3qfShhb9/lKXsM9WcRdebfca0EdzaRr+gZm2LIw6rsQmk+ezYIQ7z3TQ+BlAWvGRy/MgNPZsaouockzRDhh1KtObV8Z2M+tLiwYFNgfi6AT5cvbNU3iEWyqJOrpo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763155882; c=relaxed/simple;
	bh=4wHutVPZHzKW0CBC6gvfiy435oE3atvyvraD0aRRdUI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JEm8330kmCINPsLUElefZe8uavbZ6oK8JJOkpkNgTaxMyV/Ht351opu+Stt6oAdpipIP5k0DLSBU/+JVzgtf7oeUV/FqlGfZIa04idLoSweP5lzcWgf+kIijrPkFTxYHR63c6uiIyEap7EX0ouXBwEFfjgFbq2fmDrEW7+AV8JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ew8Xh4g5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GwzyJrpd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEIQCSQ380888
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 21:31:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m3eMOK+HlzN3NWKmihAhMU9paKgRRNM2y2GGr7K3kG4=; b=ew8Xh4g5vpSP1Zjg
	bpWldg37vo5D9nIfqlX75E5xvFWmmHVSPFcE66SjIym7DmHtNWj17HeRtFs7wcoO
	ZteQGNULrbIrvhIsIPjlp7/gSkqmFmfA2osH5N7twAAVA1QtR0z4mQ01TTXrZVbV
	8V3Q4Plg2vg9WZziAdO/G/3NcW8ERHOB/oIIZVAYL+fAJLaymMiLgijHulGeRBeC
	ySAKrF/snKDJIZL55r15iRxIQQP1pneM3emuH4LG5hzp/jI51WeUcHCbt7tyygdS
	LjXUSTBQIwlPCPV44y8HZCfP2HqcJztHWIDMI24IwGDd/zi6Qhs1Omb33idzlE0M
	E6VntQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae7qh8vrb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 21:31:19 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee05927208so220491cf.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:31:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763155878; x=1763760678; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m3eMOK+HlzN3NWKmihAhMU9paKgRRNM2y2GGr7K3kG4=;
        b=GwzyJrpdrCsdYDGislFKeaKAGlBNtTiUrjbmwGSERNaEHlyLgPiQFJMtO4G6xXhCXt
         iMIil1qtxWtnG5G4fdB9tIqVWIRrd1+jPANoK9HbqnuW8D6b2ZfoMbopjWNNza0/fT8t
         D19GCeXAkxPVYnK+3eA4IOwKpD4Wbv1Ty3Z9pl2BoOztbqWwCNJKF/g2bjlxYswFPYR6
         dHLi+nL+bYyBWAWT0egqRpfUerRdDbZypttsbG0NEyQ5AF8C5u5EGjsY9cCKD2C5WEDR
         ZJxgGNaJgJJ+LOXvQeUZJ2K9OEchbXVYLWTGVeWPs43YfDNQO3n1zD7m/+7ePgyHDl2e
         0XeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763155878; x=1763760678;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m3eMOK+HlzN3NWKmihAhMU9paKgRRNM2y2GGr7K3kG4=;
        b=tDbnTOOsQ+RRpeP/OWsneRpJrd/PooApHyVfiLYgHT/ZBcE2cw/k6qacHCbW0k1aE/
         jW1N/CXgE/aKs9Jj409Bd0PsQbi24LC/yO+e0Hd4ZAusS06sNMsyJRbR5CLdXrAMeP6T
         UwWlNBUH847g/RZFYpGb/uLFlN8ny35ksKV8yQRBJ5po74R27hD1X9mvxmaWZrqNSJYa
         cB9J4lBOTouJAtqFVrpmUtPPsfMkC7GtPkgKitqAz6F8sX4IIZXi4Zsf1BsxI2oI5hF1
         rq7XhUJhvXMZKrk3aMPC+eIeu01Ny0hqgbfUQRC1ipIvxKj8Hvyw7oVLEalEttw52k+j
         cwoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVdYyjtG+1tCd41WsWO6FXpR2tUYWs5Rg4MatYIo8e2s3CJlAXrVqLiDXjbGVaxHmurbgJtJfi19WE@vger.kernel.org
X-Gm-Message-State: AOJu0YwI6MMvzCjdFE14hDlfzVUNUQoKta7QgFpcNU41/US87tGXVDxF
	Y+bK05iQ65qn6tNHdz7u/8tXO4GdBW+BjO/z8Hyiw0QPJquVKjBko72ZuWwG9/BtDCDHE6ivlYQ
	MseQoFKFI8FvxDp7FJkgK70Xz5/w05ualRgUe4ngQTxsh807TqzwnuZWApPRkg2S1
X-Gm-Gg: ASbGncuFy6wr0NIuiJUo2Q6+fIf3sx80GuWoYQmafxK+zo/bpfUBKS8Zn7ZAX3rudgP
	TtkE8Q39j6RqLL8JNDWU5eu3q+W4RVCiKWkSoVEwj2zGAqjb5lgoVsQiUu5CoXCEHrcwzFydDxd
	wwpA1ducpl8ZbqzcBZwLa+Sqjoa+8OxUHtDX9Vxwe3PI/TlKukRZ8DOyWi1xD95i0rGrooe8SUy
	QdZVgw2rSt8rxzVAw3bXLg/qdJfbkqLqF9CRTEwz2kUSbj+5gvEZQuEZHgIJJmklBb0mgpo6AbC
	zpqQ6n/7kKd53WlnjoIMzqV45ErojBjwAlVn4OIMgJmKaxDuQ292evLXyy428cdIcD+Q1+qWfqB
	FtV/mIi8Z2SDpRYLknU2+vgpRRmK+tAMuHBysfRZx/Un0SUmen3cYfq8d
X-Received: by 2002:ac8:5fce:0:b0:4ed:6e12:f576 with SMTP id d75a77b69052e-4edf36eeebemr43731181cf.8.1763155878563;
        Fri, 14 Nov 2025 13:31:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG84e13Ij0fjz1mCVTKqmi8pqco4zDdzx7qetDnkV/I00+/pFf6pc8OO+AxyQJYwxhlZiqWog==
X-Received: by 2002:ac8:5fce:0:b0:4ed:6e12:f576 with SMTP id d75a77b69052e-4edf36eeebemr43730771cf.8.1763155878151;
        Fri, 14 Nov 2025 13:31:18 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad48dcsm463058166b.25.2025.11.14.13.31.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 13:31:17 -0800 (PST)
Message-ID: <f4fbc949-415b-489e-b333-4c846d3ce8c7@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 22:31:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: add apq8096sg-db820c, AP8096SG
 variant of DB820c
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251111-db820c-pro-v1-0-6eece16c5c23@oss.qualcomm.com>
 <20251111-db820c-pro-v1-2-6eece16c5c23@oss.qualcomm.com>
 <02a9d6eb-e480-431b-bd4c-a35cee170516@oss.qualcomm.com>
 <wf4h2lwyvgswtv4bgdfidj4vpvykwhu2gri4crvvtd644hf6nr@cnpqi5bmpvm5>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <wf4h2lwyvgswtv4bgdfidj4vpvykwhu2gri4crvvtd644hf6nr@cnpqi5bmpvm5>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cIvtc1eN c=1 sm=1 tr=0 ts=69179fa7 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u3Kf3rDHAAAA:8 a=p0SuUtGt204vInNQsQgA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=EGheP1PGFffiXWuNiQ4X:22
X-Proofpoint-ORIG-GUID: UTrLfILRxnfzMxev6GhZK65eWsI6YPw-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDE3NSBTYWx0ZWRfX5BmbpOsH2fLc
 SiGRnB1mVg1gtvM/WOZHgCfKzEEoChljsH1CYp1LARX2bonMgv+Og0MDIfCrXOEzZV5jj10jPtY
 52BizAZqOj+fYwleyWc7WwMgqqvlQuNIKQfqwFqlCyp0Q9thyflvJz9MdwBdORDkzmrHLh3HGma
 9fnM5YG6BKXD7Ak+84WABkaqijiy9P6AYaGf82e2s6bNApFCdv93KGMdB0wqvaxHg3BVpp6dUtd
 HrmX1HaXXSJIKULH1WqyH7OOjTJgs3XPDpZyN3nZPCegMf5chRearLgRkLCtjZGtqWiLQm33Uy5
 DF1HqXmZ84eUoJETry9WCVnQyNN3qH/YYCkQ5AGb/WeKJUEhGSc4GsdUiOQYwurnYZT03DOTQTI
 fwbVA3ASTj4zapm73KNsfJ4Au+FwRg==
X-Proofpoint-GUID: UTrLfILRxnfzMxev6GhZK65eWsI6YPw-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 malwarescore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140175

On 11/13/25 9:32 PM, Dmitry Baryshkov wrote:
> On Wed, Nov 12, 2025 at 10:44:49AM +0100, Konrad Dybcio wrote:
>> On 11/11/25 5:02 PM, Dmitry Baryshkov wrote:
>>> There has been a (rare) varint of Dragonboard 820c, utilizing Pro
>>> version of the SoC, with the major difference being CPU and GPU clock
>>> tables. Add a DT file representing this version of the board.
>>
>> So is the conclusion that both flavors were used?
> 
> Yes. I have had a production unit with a non-SG flavour. Bjorn's lab
> has a standard one too. All units in Collabora lab are Pro ones.

Pro doesn't necessarily have to == SG, this seems to be sort of
a "MSM8996Pro" and "QCM8996Pro" situation. I'm hoping that speedbin
fuse values don't have different meanings for mobilePro and SG

>> This product brief
>>
>> https://cdn.lantronix.com/wp-content/uploads/pdf/Open-Q_820_Development_Kit_Quick_Start_Guide.pdf
> 
> This is a totally different board.

Oh right sorry

Konrad


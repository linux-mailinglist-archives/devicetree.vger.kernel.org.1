Return-Path: <devicetree+bounces-149036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C38A3E051
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 17:20:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4401B3A686A
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 16:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87A10212D8A;
	Thu, 20 Feb 2025 16:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="M7VSUjgM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106E4212B1F
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 16:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740068150; cv=none; b=Ad6/XnmJt1zdFb4S+U/bs6DuF45QKAGHt2XsEgtjbLysTQ7lfzxYoLzQErlsmZcuC3iZIZD2mgpWssiMOCN0BxClvWGbMxr1X2lBSGIOtabUVtHCb5WbxJXakhq+Ub2VAQEV+jjgejY+8lS1w+LOqBWuIZQHsR4BQD8+meU92Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740068150; c=relaxed/simple;
	bh=nQxPTk3XzhwzlVTy5oVoYYWRlGJtwhkLDYbwFRBKHSY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ic9jCanbexU68NHLAGhVk7FxnmQsepr/RYkzhtCnhdf5RRjWzTJVdN/ZMOIdgiN+sdn8T7dkEPUUVojX9Ep/Wz7qo5tZmbF6ealyipuvxOKxmXi5VZhG7laX+VPb0kZLGpSR/EU//x08UFirh3uWOF9no4QENVWvmOINDZNpLjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=M7VSUjgM; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51KC0Nk2002119;
	Thu, 20 Feb 2025 16:15:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pp1; bh=OIOsvB
	OcNIo5uWpOxqgJER5g78ZzHEwKiNE80YUjWrA=; b=M7VSUjgMEOjg6AikzeFLsK
	g+/1g9FRwYUEJZJkqlSjQ4wIc/20NDDxbdmOopg/zJD01CRwaL9kEaZZ7l9SPC6g
	abguEeh0nR8GDn8ph0UVS1zJWG611++JMGGtlrtjzuDpn33km0JdPCm9VKm+L23I
	XUE2b+S8KzN4DsOcf2+JrVQTurqW1Z3cA3Ca4k7BJEmiWmKRRMYeZ9RcGugIavuW
	8I+ch5fuKZ9EnP0t+y7jIog9AzM/znphAVA5WHcPvippFsUHW3pbegX7SjGoiSmj
	F7izdP+nEQsFaiPZeHs7MJdtLaI57fPMWTlyfpkmUUpNRdDCltBcJ/UbFZzbkDtQ
	==
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44wtfa3ykb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 16:15:39 +0000 (GMT)
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 51KEU6YL030262;
	Thu, 20 Feb 2025 16:15:38 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([172.16.1.74])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 44w01xaxt9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 16:15:38 +0000
Received: from smtpav03.wdc07v.mail.ibm.com (smtpav03.wdc07v.mail.ibm.com [10.39.53.230])
	by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 51KGFc3K31720052
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 20 Feb 2025 16:15:38 GMT
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 39F5158054;
	Thu, 20 Feb 2025 16:15:38 +0000 (GMT)
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D59FE5805A;
	Thu, 20 Feb 2025 16:15:37 +0000 (GMT)
Received: from [9.61.48.195] (unknown [9.61.48.195])
	by smtpav03.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Thu, 20 Feb 2025 16:15:37 +0000 (GMT)
Message-ID: <f9615bfa-9d3a-47df-a5dc-a6a1f3b4940b@linux.ibm.com>
Date: Thu, 20 Feb 2025 10:15:35 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: hwmon: ucd90320: Add 90160 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>, linux-aspeed@lists.ozlabs.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andrew@codeconstruct.com.au, devicetree@vger.kernel.org
References: <20250219212735.1365050-1-eajames@linux.ibm.com>
 <20250219212735.1365050-3-eajames@linux.ibm.com>
 <3ed2b213-0219-4ca7-817c-d6adf424612e@kernel.org>
Content-Language: en-US
From: Eddie James <eajames@linux.ibm.com>
In-Reply-To: <3ed2b213-0219-4ca7-817c-d6adf424612e@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: hwx3HPhEc_5YfTe26_0_J_lfKe-0dL_S
X-Proofpoint-GUID: hwx3HPhEc_5YfTe26_0_J_lfKe-0dL_S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_06,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 suspectscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 mlxlogscore=719
 bulkscore=0 phishscore=0 malwarescore=0 mlxscore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502200113


On 2/20/25 08:47, Krzysztof Kozlowski wrote:
> On 19/02/2025 22:27, Eddie James wrote:
>> The 90160 is just like the 90320 but with less GPIs and GPIOs.
> Then isn't it compatible?
>
> Where is your driver change?


Sorry, my commit message should be more clear. The driver already 
supports the ucd90160 and matches the compatible string I added here. 
I'll improve my commit message for v2.


Thanks,

Eddie


>
>
> Best regards,
> Krzysztof
>


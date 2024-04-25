Return-Path: <devicetree+bounces-62842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6508B2B16
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 23:41:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51B421C21A61
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 21:41:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ABDA156C7C;
	Thu, 25 Apr 2024 21:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="o1g5pANT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9460A2773C
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 21:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714081136; cv=none; b=SbJ9BDrD+8tJOFC+szh/epozFLhiBcfEAadR1ETDNHVZOdTWFJQocETIORt5/ytAVtVtIC1EyrouDgp2y4wRqEVlhS4ze3MQm3XLGti995n3Zua7YJxdr5UAFGcKu+oG1hzOv1bFs98pPtTgrdQV3ZY6izGHQDXPOM3x1nKQzF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714081136; c=relaxed/simple;
	bh=jtASTyzcGRL+13P6GYtbc44kfCnPvMIIoC+hnWKT3r4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MBY3iAvVvHEMMIWtmxXE2eb+UKzakVyucMvFpSzITxUpL/zjWK0yNno25/iPTu0UFHOQPwT7glPMuRdtOMwf8DXu/2UUVjUmG10Yk/q4DQPfIqDA+umwtwsMbkL0PENctEjkfKKGqt+ctwsFiWfiMjCYSfPkNhP7jrHc5qXRC7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=o1g5pANT; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353722.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 43PLWpNo027592;
	Thu, 25 Apr 2024 21:38:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=pPqulXQcgAP1Yn47yRbI2nhR6pXaT98IP27reWC/ELs=;
 b=o1g5pANTGnkjjUO+jNDnu3ug7jOr1+X02tm6TVmSKHbO01Q7LGKEm/vJs4RvWH0ZFE7y
 YdCwZOrPj8jbxODyGqAqBNsRGl3fLuX62T1pA8iQLD8Euuh101Yf5++Mg/8sXBSjY0Pf
 DCHztt/zF/f7DrdywL15YnE0nZ4TzWZcYWPDZWnQZkcbxflVdD+T8hGz0C7BD2DwPxot
 KlUMVH46t/H87ITcq1LVHXmWJmPUxfJbQrnUH+Z0T5jcH33TVk3uyKc5BF3DwEUEsysd
 niZY2PGcpZYaFawaQE7wdoXi6Tzu+egEl2lg3LKT9HeBMHq4iDjEQAOMwVPMF3OUuVr+ 2Q== 
Received: from ppma12.dal12v.mail.ibm.com (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xqy67r087-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Apr 2024 21:38:39 +0000
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
	by ppma12.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 43PK5KGr029863;
	Thu, 25 Apr 2024 21:38:39 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([172.16.1.8])
	by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 3xmr1tvcs2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Apr 2024 21:38:39 +0000
Received: from smtpav05.dal12v.mail.ibm.com (smtpav05.dal12v.mail.ibm.com [10.241.53.104])
	by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 43PLcauf21561890
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 25 Apr 2024 21:38:38 GMT
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id ABCFC58068;
	Thu, 25 Apr 2024 21:38:36 +0000 (GMT)
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6FBFD58065;
	Thu, 25 Apr 2024 21:38:36 +0000 (GMT)
Received: from [9.61.133.34] (unknown [9.61.133.34])
	by smtpav05.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Thu, 25 Apr 2024 21:38:36 +0000 (GMT)
Message-ID: <6c2f8ee1-ec59-4ec4-8d0c-507d98225dd6@linux.ibm.com>
Date: Thu, 25 Apr 2024 16:38:36 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: fsi: Document the IBM SBEFIFO engine
To: Andrew Jeffery <andrew@codeconstruct.com.au>,
        linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, devicetree@vger.kernel.org, linux-fsi@lists.ozlabs.org,
        robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        jk@ozlabs.org, alistair@popple.id.au, lakshmiy@us.ibm.com
References: <20240419211143.1039868-1-eajames@linux.ibm.com>
 <20240419211143.1039868-2-eajames@linux.ibm.com>
 <0aec6a507b9288cdc0f890164951c730f6f430d1.camel@codeconstruct.com.au>
Content-Language: en-US
From: Eddie James <eajames@linux.ibm.com>
In-Reply-To: <0aec6a507b9288cdc0f890164951c730f6f430d1.camel@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: cMAs_zGMMEFwhJHfM40Yn00J3-BlK3xL
X-Proofpoint-ORIG-GUID: cMAs_zGMMEFwhJHfM40Yn00J3-BlK3xL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-25_21,2024-04-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 mlxscore=0 phishscore=0 mlxlogscore=577
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404250157


On 4/21/24 18:02, Andrew Jeffery wrote:
> On Fri, 2024-04-19 at 16:11 -0500, Eddie James wrote:
>> The SBEFIFO engine provides an interface to the POWER processor
>> Self Boot Engine (SBE).
>>
>> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> Reviewed-by: Andrew Jeffery <andrew@codeconstruct.com.au>


I'm sending this patch in my new series for P11 BMC systems, with an 
additional change for the OCC child nodes. Hopefully that's OK, I kept 
the tags.


Eddie




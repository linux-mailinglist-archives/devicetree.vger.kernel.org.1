Return-Path: <devicetree+bounces-240884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E93C77224
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 04:14:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6248535C8A2
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 03:14:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7F552E975E;
	Fri, 21 Nov 2025 03:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="fQtV3bFh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413A51FF1C7;
	Fri, 21 Nov 2025 03:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763694873; cv=none; b=uubCDeeTe49iS7SP20oR1lRgd0yIb6sfeH8LV0EewhXhqePVSyDcqa/bYvS11WARIZS0E9jkQW8CuknsFElVouMyYZxva4UiFfU2kfokMNWAjBfj32FRKSKK//9wAZU3W7GN9l7AEFbWC2FK6fDM3rvZGI0zRwtb2ICAFLU9ZU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763694873; c=relaxed/simple;
	bh=V4T7AubepUPtgRQPcl1NmnKIJ4dRtwEtty0jOqYgFng=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mnvGCz0z8uUip9ZfSaFCQOn8QoS2ij122i3KayP0zBhS9WgVZwpZLSX0YOsTx+d2QxfZAcxQI6+jPsS3tMe35VyK9kNfRbyt40IGfHrNi6fEP0SWi8Ml7MeqyST/D5jdIC5N0oM9k0WLDu+eq2pnXYNi2Oscrf2EBuN/6RFUhO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=fQtV3bFh; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AL0eMNx021423;
	Fri, 21 Nov 2025 03:14:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pp1; bh=Wrab9x
	Jnq8wVj1Bj+Etz9IklWNdPfRMY/bGE7FDxIZE=; b=fQtV3bFh1zRy55EC8B9Bep
	1SUeITWS50nm5rx7S70o9xx0IkcEz7sGkW9v3FejT9GkgkzU4wm6b+jCjgiK0LxB
	X4GK0OzbP/8Btc3QHGiosL4YhQQn+73fpHy6qgfhuY6eY5DoGHsAPocAOM2+4CuI
	MoSxjC6QWRJ0OY1WwiZE6FgyJKrIC0NsmzfT9TuWYA/IfcVEk7wOVA3sTTZgKEAg
	I0GJvHWRLAhqnECGXoiuI5mrsI89aFZQdkDQ4HPUJZhAqJMJzJp7Hepawj8FEyul
	4USS6MZJAhmEIZe4Q9nz3TG914BPTQoWWzez4C3I1Bf+X1jo3lHrxS3jEcyTSJ2A
	==
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4aejjwhrus-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Nov 2025 03:14:11 +0000 (GMT)
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
	by pps.reinject (8.18.1.12/8.18.0.8) with ESMTP id 5AL3DtpE026792;
	Fri, 21 Nov 2025 03:14:10 GMT
Received: from ppma12.dal12v.mail.ibm.com (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4aejjwhrup-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Nov 2025 03:14:10 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
	by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5AKNEU01010406;
	Fri, 21 Nov 2025 03:14:09 GMT
Received: from smtprelay01.fra02v.mail.ibm.com ([9.218.2.227])
	by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 4af3usj7xs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Nov 2025 03:14:09 +0000
Received: from smtpav01.fra02v.mail.ibm.com (smtpav01.fra02v.mail.ibm.com [10.20.54.100])
	by smtprelay01.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 5AL3E7mF49086780
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 21 Nov 2025 03:14:07 GMT
Received: from smtpav01.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id DB728201E5;
	Fri, 21 Nov 2025 02:54:22 +0000 (GMT)
Received: from smtpav01.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5D60E20230;
	Fri, 21 Nov 2025 02:54:20 +0000 (GMT)
Received: from li-c439904c-24ed-11b2-a85c-b284a6847472.in.ibm.com (unknown [9.98.111.108])
	by smtpav01.fra02v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 21 Nov 2025 02:54:20 +0000 (GMT)
From: Madhavan Srinivasan <maddy@linux.ibm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        Naveen N Rao <naveen@kernel.org>,
        =?UTF-8?q?J=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] powerpc: Rename wdt@ notes to watchdog@
Date: Fri, 21 Nov 2025 08:23:48 +0530
Message-ID: <176369324786.72695.813847437031179480.b4-ty@linux.ibm.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20250418-watchdog-v1-0-987ff2046272@posteo.net>
References: <20250418-watchdog-v1-0-987ff2046272@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Authority-Analysis: v=2.4 cv=BanVE7t2 c=1 sm=1 tr=0 ts=691fd903 cx=c_pps
 a=bLidbwmWQ0KltjZqbj+ezA==:117 a=bLidbwmWQ0KltjZqbj+ezA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=DqtfCAEWuzFl7eJMzwoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMiBTYWx0ZWRfX9Sc7/LpNCTCi
 mRlTM+cPMhqd8urQUzeosowdXmiNz2NEzOs82Woc00a1bXvajNi8okWRcMdWLn49euplzb2Rtoo
 ilE09GWGswCGfxJq1FjD7BWv+2/YZIamlXI2HaTiee+Cne/rXqTWb46jOsHQX9inAzhEPJYPEAQ
 brDpVeNK4nmfqVVpwZ8hzFczXOUWce+EgRcWxMPIPfqNEIT1ehktH0csJBiPl0yaXU2AQo+/CXw
 aPYrmiQ53Wn4TMyRivVE/i8OFt5UE/GlRHIBJ3elzaYIUilJsEyY9MURsBywZM7/zq8yqpB4wEU
 q4W3ExiG/nWHPeepmmoOiqV1cMRk+WdL1n3czKRFuUE3x0wVhYiNn04JUN1lHbKGn3vR4jPV8Rt
 0eOyTRYaYURcISvDS6cq6f7LOgH1Aw==
X-Proofpoint-GUID: evJ4MlJ_AFNHRiRmB-C9kfvbu8VBR-uW
X-Proofpoint-ORIG-GUID: XgMkQFeo4GppKhcRZaRLBQxnRl6s3QNs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_01,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0 impostorscore=0
 priorityscore=1501 clxscore=1011 phishscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510240000 definitions=main-2511150032

On Fri, 18 Apr 2025 21:28:50 +0200, J. Neuschäfer wrote:
> The watchdog.yaml schema prescribes a node name of "timer" or "watchdog"
> rather than the abbreviation "wdt". This series fixes the node name
> across arch/powerpc/boot/dts.
> 
> 

Applied to powerpc/next.

[1/4] powerpc: 512x: Rename wdt@ node to watchdog@
      https://git.kernel.org/powerpc/c/0070b2cbfe7389159669c3a5bb23d2ef89043055
[2/4] powerpc: 83xx: Rename wdt@ nodes to watchdog@
      https://git.kernel.org/powerpc/c/cc156be1e7566add1f490854133e27f091ae58b6
[3/4] powerpc: 86xx: Rename wdt@ nodes to watchdog@
      https://git.kernel.org/powerpc/c/39fe29e7f2fd38b0fee9bf987d180dee976dd2c7
[4/4] powerpc: p2020: Rename wdt@ nodes to watchdog@
      https://git.kernel.org/powerpc/c/af6850ac9ef3c98e6e8f2929e24ed6fd154fa39e

Thanks


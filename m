Return-Path: <devicetree+bounces-240047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 68222C6CC46
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 05:49:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4C1424E04EC
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 04:49:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 748B43074A7;
	Wed, 19 Nov 2025 04:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xjp2yPrx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V4rcw+gc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA4024293C
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 04:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763527751; cv=none; b=QHCync2gc7qxtWFrUeSDkvL0Q0GjjOgnVUwOCZQSP/t/cdrDEllmW5HJPE6ta5oJwYGsxtBjUZctiaDA+l/bi7uUdqosNSbwGHHa1ZFECqmjMzi2PdgpbWFceEHLdsVZ/ltGPchFyHj0J1z5y2ozFpwk/iOMKGFOYDWCr+mflh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763527751; c=relaxed/simple;
	bh=x+EtDfjkrUB13PELZRJL377YyzVKJ+zwQy+uMzfVcGc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hPr2AQ/K7XIwjwMmlqBJN84RL+M4FrVxrs09MMupy80UsT5jal+cOqYzyJwqa8dUQEXWVKcX2tJJMJlA5bIQza3IeEDQP8VnPBrVIdo+8RrXUEumACbQ1XPn1FOW/+coWcpdIMgD0WujqoEvPhVq1vUHxtP9j/cBb24aP2/MgxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xjp2yPrx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V4rcw+gc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AIMgs5n2194259
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 04:49:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kFG5Mqe7GlywUNGuL0mBhZFPMuuMhJqAl3FsJ7xmmik=; b=Xjp2yPrxqTLLWQhL
	5AdlJWo/5AgORRgJbjhRZx5EmLaPOyhOLe5hTmt5Wbg5jiH/QIIzryEbMATnM+5s
	bozDp/OnjlW+XWO7iRfVVOifV4DNnd+SpUDVZ1X7/WhmVvwP6ACPUPfpnZ4Uge3p
	riz1QsMWnIcdeRFsPONpx4uP4qOdkmtwyyNzVcznYA2fhv7C++RIHI9GQQYSJdRV
	8Pn/1KOSUCAhDercnuCo5OosoLoosPxj4n98de/K9UDbm1ptlhfPBYYHn5vZK8nP
	zK1gLngXtGVUFdEJ4luSI7y5B/ra/2XaCBjUgpedNa/9JeylFprucy+4wSysiIcs
	BcG9sA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agn3ybbgf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 04:49:09 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-343806688cbso12591786a91.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 20:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763527748; x=1764132548; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kFG5Mqe7GlywUNGuL0mBhZFPMuuMhJqAl3FsJ7xmmik=;
        b=V4rcw+gc5cFccjBNk32VGY//xkloCvwwVbci7mTpVnwkE+iQYX520d99kHqMgzYTNL
         rxLEeW6KrrVjK+bZ8uVpjUORnvn+03DzySecD4cjNDQccsXTynDOeCLTuOZGZjWkY8cc
         oK0YA6WPynwrGkbckmaVpNqCtG0M10ysh/i74NIUrkhQ1qx5JAXTpguHcNAaHS4YlYgh
         LeoPTtRsNb/ETyBCGHIPI+xWju5N239Hy2MH1awR7tTnqH/teIXD+FtEC5GEMRFRNvIr
         fGzl2pRL54P6O+n+3fm3zhwkkCXrFYyHCTrgsha8HpUEATGAw/wRzDzY5E2Ft8tqtPuY
         Kd5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763527748; x=1764132548;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kFG5Mqe7GlywUNGuL0mBhZFPMuuMhJqAl3FsJ7xmmik=;
        b=DJZt3YlnFvrk8V4+5cB9n6DDRln4c9Xqf36biMorkDCWzADrwAx/t+VdooUrc5u3+8
         cRcNJXDdSlg6UvMme2wcVrA1SA24XA7yJ0Htd30Ujf2avLq6O+jbMotzNMA4bC2YLEOi
         ueqaEUSO3mCv8v7v9TKpzfW+vFccUKYgXn7nx5sojmIlQFe0yesmW/jWMApx98oZFM1C
         sFAELL2RmaizdMPWYDfNI47Hmo1ReoQJqHshbsVQ14RrqBI4ewnwDXFjC0Aw3XbbkzAV
         PfqwNBVFfVBhd40hrfqvn7icA3cNMEZNIM4f2tAymijqOqktHrgtjMho1xBbeTT3eNel
         cqOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXezmUCvBfe0FERWKpZPl8ymZplE+RaoVZMYD7czWddXQKWzKRvu/qjd8+wM5Ass32egL0jyw2UheHF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0VyIMsjDfgEqR2weWESEpKU11a4PpVXzmQdesYEmYCgaknFIV
	yT2bHx6qbmySQILBAlUjUjtNMhp5fLHuwkYmqXF95Qfb6Wu5wOuJNMzc5QSZX/+xDgubphYEcXA
	W/qsosujt1XgGn3/To+HKCr2T+lsk9w6ek+sg/yutKMTGb6UIiz9ub67p3NoiPpyg
X-Gm-Gg: ASbGncv0zMtG5/VWxjvcu9goBXWe8VuoASkqPAsSJRRkSthHKGrbAE8kGvV8XE7SLNQ
	5lH/aqRN1ycWXRRrh+aH9UpYlb+wLseFdaA5k8pmnIFp1pVpIWKbe8fFNhnd+RRZ/+BotlivTXC
	ewLTCljmierh99JqQGFAQxrh0H8NcNyGFx5KCDzjh+DTKfu/d4KnG+h9Sb8IR8S+td1nHqU28k6
	5p4s8bdSdURRr8e+MOPC9n6bQ3W0AwDoFO2r/GgaSBa2s212GUn9mwEX4YHYVEj1urdEDYDJyx/
	JiqSOBMe87XuUvlsoX/5ceGMycQ9BmOmt79lacHGfmUyrJD9KNIqPxPaqo0wc5vToMtwoU7j37x
	oK567leh9Q5AvsvldM4Kpv2eTwr2ycsg7
X-Received: by 2002:a05:7022:ff42:b0:11b:c1ab:bdd0 with SMTP id a92af1059eb24-11bc1abbed3mr4995423c88.35.1763527748451;
        Tue, 18 Nov 2025 20:49:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFLvJ3BtCW1AoI0h7qv8WBIu7dRN5NL2oEjk4AbsU1vWLecZW7FVCQPnhl5gsZf7titMWSCkw==
X-Received: by 2002:a05:7022:ff42:b0:11b:c1ab:bdd0 with SMTP id a92af1059eb24-11bc1abbed3mr4995399c88.35.1763527747895;
        Tue, 18 Nov 2025 20:49:07 -0800 (PST)
Received: from [192.168.0.13] ([76.176.54.54])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885f9sm59870695c88.4.2025.11.18.20.49.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 20:49:07 -0800 (PST)
Message-ID: <5c30421e-108a-41de-81c7-c0c5e5290cc1@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 20:49:05 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: vendor-prefixes: Add Arduino name
To: Riccardo Mereu <r.mereu.kernel@arduino.cc>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, broonie@kernel.org
Cc: linux@roeck-us.net, Jonathan.Cameron@huawei.com, wenswang@yeah.net,
        naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com,
        chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com,
        farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, m.facchin@arduino.cc,
        Riccardo Mereu <r.mereu@arduino.cc>
References: <20251114121853.16472-1-r.mereu@arduino.cc>
 <20251114121853.16472-2-r.mereu@arduino.cc>
Content-Language: en-US
From: Trilok Soni <trilok.soni@oss.qualcomm.com>
In-Reply-To: <20251114121853.16472-2-r.mereu@arduino.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDAzNCBTYWx0ZWRfX2DsrmiWoSYc4
 QuHuvG6gn+h4EIYWa+WOqz07ZATdB/OP5qL8JhYvbcoJKkGAx8yZcR86w/bSV6t41n8lYzGIlQw
 MK+Y7zIbhqXJpFUzKK2Z5d0NrA7LCGuqpdqWtZg/VosEsxIMgXs43QpTE6w7VEilpjt0YAH8cAS
 SeGMsmA55PmBR96W+bk5cfb4HZMVH7SeAH6W0cyScWiO0t/77ZfCCHQxWS8c02qzCQu0GF0VL4n
 rYfUtc198oXd+Tdk8q19Hyf4lQ3b0Jhlr3YJRNhP/yfunENRZlBb3cheT0supagTIc04+FtLD18
 180TOuA9ItVHMxXGMoFdV4X3MedoIaOm9WutmushagP7jBa7S7/1ZPFt5yvJzRE7DwNlGKMHbA+
 WSbQ3xFDkqCVnAzulQ7kkqZ6lNDE7A==
X-Proofpoint-GUID: ggGTMAJ3RTB3Y6bTRzJvd9zpu5h99KId
X-Proofpoint-ORIG-GUID: ggGTMAJ3RTB3Y6bTRzJvd9zpu5h99KId
X-Authority-Analysis: v=2.4 cv=FtIIPmrq c=1 sm=1 tr=0 ts=691d4c45 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=4DQS9OR3UOqOMXWGYgShMA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Ar_5JxPjAAAA:8 a=5jHDBBYAGbftYkXlaRIA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511190034

On 11/14/2025 4:18 AM, Riccardo Mereu wrote:
> Add entry for Arduino Srl (https://arduino.cc)

Is Srl or SRL = Inc or LLC? 

> 
> Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 42d2bc0ce027..07a285c9387e 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -158,6 +158,8 @@ patternProperties:
>      description: Arctic Sand
>    "^arcx,.*":
>      description: arcx Inc. / Archronix Inc.
> +  "^arduino,.*":
> +    description: Arduino SRL
>    "^argon40,.*":
>      description: Argon 40 Technologies Limited
>    "^ariaboard,.*":



Return-Path: <devicetree+bounces-212899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 343F1B43F4A
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:42:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D422586FE4
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 14:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2939530ACE0;
	Thu,  4 Sep 2025 14:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j9W5jwEl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C65309DD2
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 14:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756996774; cv=none; b=uQEfLZUOk1OnmozSaUL+tf3ycYha68KLgRzq4d4+eMNGI3nD40sJqEaF1CbtUlcTqQ89lCqBn9gwUsCKrfQ0UW9LODs4dJV3fGJjCAX86LR1RfekBxkTz1NkLSDMFwtzoPu5G96sC86+iuRXeRi+Rbz1eJcUxh0j4DnDrEQMH8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756996774; c=relaxed/simple;
	bh=PdKgDAkZqj76ujCFHiYUV2a4vgAUgOQCtX/qwYcNlis=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TbEUiex3wKoLFoRunx8VgZRpdI1ig6MEmRmUGnniHzl0kj4b65OOCZ53XCyUp41HfeASQKRQFJo7LWWxofVPAAbGjkiNuGcJkvDdEGkCHCJ7Aey0otJ9lVdfdnBejI8hm0iE+qYaZweynpgenGvgMQtmbl3X+iIw3qUc4hecDLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j9W5jwEl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XKPK023173
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 14:39:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Pw5whXpBpvNS8WxXMKd8zSVMyaNdMtCxEMvZdYte1hE=; b=j9W5jwEl4/qxn/DX
	P8ISRGWboF81TxkIWTMQ8uPx3CWQm1bVl/GHMugZ8Uwb6xsybpQidE7y4iyF1y09
	XTE5GbwoQOPXurjEmO26ehr/KYsr1LmeAn9ou/KU4bkk+flpsPRiOxPj10wG+CHB
	9wMSKIvXWx6EefHvTO6faydm9xcFN0j78Z9ZEZ/kBEraxpJtIn9VRJsXTEnGemcq
	Bssab+r28VgcgiKEK+LR6L9F3oIoI5Lbx9CdNBAfqaVS/UE8uK4otsXZIyD7cCoc
	CnWx8/t4E6qscpSLpGLIzoRV75DGMhl8sahaVdhGjiSbKHC3vBJtkhUDeEgKNGHE
	h/Heyg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0eqxk1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 14:39:31 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24c99bd543aso17372835ad.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:39:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756996770; x=1757601570;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pw5whXpBpvNS8WxXMKd8zSVMyaNdMtCxEMvZdYte1hE=;
        b=WhPgKDSedqdSuWZP48GkMIcBIeEc3wQcJBNJGOUXslAFK/OLebo2p1+wKlS+MmK0uK
         eTCAsnC6LreSeFLq0QC6dXQKCIoLj2a54CjTJdJdBRx+WPFCasuEPZL3qwv5sNBj/t6z
         wnf3Fnp7xroor6v41OYusB5zusvSu4/SWKzUYSo7/qY/fZBiwq32dsKNf0AD4CzXJ42x
         Kj+e2AH69Umra4X1XpZcRHaKKW0cFS32xNDpEztCXsQkQrc0f6+8rkPhGhGmYeNRchD8
         czDeTzWICeVkR9q0fBRuSkK9V0i0yg9c1OFnNN32qNFMg4vF/iWj7cfR/ODhcKOj5CUs
         21IA==
X-Forwarded-Encrypted: i=1; AJvYcCVgcPCKBGa6B049leCwVqWjELCBPJNngyBujxqZvUh4QpHBG6WmrC8i1vTIbfZnFh+Sy7UswtIP7gQl@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ/XfVaU2HlkawBgfFN+klsEOLJRBohmKh1fPFJxspvE7INY7y
	+Ba4sPii+oo1N2ysYsyZKFd02lNkvqYVVv6cmHCKfwpY8NTmR6t2PODRjzUD9jWxhv/kH+m5oKN
	iLvgqDbSzLLG+yCETOZ7dexBvWx520xIaYETQCTIRpScVmn01A+aaxcddM8lQHDFq
X-Gm-Gg: ASbGncuzQ1xrqV13haN8HrI0rqUZUwttQ9ekUJE9c4+gYCYYEthws2aj54wAPf1hYNz
	C55I1+5vEMxi5GjR2HLj3cHN3QAYOEqCjPX2rc25mfj/Kimnw75ThdZwX1GqXLY1Q7tJ56KwtM9
	9fZiyt0fO54NNbr2qC6ULoyDSNYkwnfavxZYMh0DfegxKmUTUzICngMGmuP6B3mAoBFj+F2RSnn
	g46PB3Zt0+JRvPq/9tzIcTmLvFjPAdV6Ms1xoDVuAsswUD947P7pN668SyeH0FYA7SthvmUDes1
	eYIsnDWj6MI/9tN9DrI81wEvNq8eIq/dapUDCqVolTD2Git3TFiLADti7Up80H+vimq3IovEplN
	X1LIjGII=
X-Received: by 2002:a17:902:ceca:b0:24c:d6f7:2788 with SMTP id d9443c01a7336-24cd6f729demr16657835ad.57.1756996770464;
        Thu, 04 Sep 2025 07:39:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEi6kGCUhUfwu5x4jMfrg5WbhkrMkiCM2GTKdX0bXB/HRO/3Es+MmJciwCepdhATrDfobpMGw==
X-Received: by 2002:a17:902:ceca:b0:24c:d6f7:2788 with SMTP id d9443c01a7336-24cd6f729demr16657435ad.57.1756996769927;
        Thu, 04 Sep 2025 07:39:29 -0700 (PDT)
Received: from [192.168.215.112] ([152.57.129.192])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24ccc79a345sm17693515ad.132.2025.09.04.07.39.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 07:39:29 -0700 (PDT)
Message-ID: <1f12cf45-410c-41b2-a55c-94b438dc2719@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 20:09:22 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add support for Gunyah Watchdog
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250903-gunyah_watchdog-v1-0-3ae690530e4b@oss.qualcomm.com>
 <20250904001014.GA3405605-robh@kernel.org>
Content-Language: en-US
From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
In-Reply-To: <20250904001014.GA3405605-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: u0XyPITdQC9ybYvpsEumJ4I3KJlHdWu7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX3vnYII1CFq6F
 Hqv7UajSI/o/tD777wDyURpqTtKl7nV26UpjApTA0FRdhz1HbiWzGhTSXKbiByE0lSRxEjkB4vl
 G/BxBnGWP5RisVLJXoVYU2woDqK0h/PMmJwKeXXkTFcDRUilm/o8hT2Uj5lz3G5QwlS08Bbuy6E
 FvbQpXCdaEuO0gr57c8Kox3VstRrWyjw8nlOIoKh/Zo1WdNYJpaNnIiVMfFVfwwI7D1qmtUW+ip
 1rE2/N/0/cDKaGj81FoWmXwcw7Y9yO2ahBLihBq8yb9cAsOmFYtptR++gd5v7fkd2PyQ5Jpat+6
 h8XSL+nG2C955RYxpqn0tb2nkW6eL16qGZfslTzpQUz3sbDT8gtInb6/vkh38o6IawZi8tUhlUp
 7kcA/T4o
X-Proofpoint-ORIG-GUID: u0XyPITdQC9ybYvpsEumJ4I3KJlHdWu7
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b9a4a3 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=o0dP3Ed1ANdhMlAYVkqilg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=AtXW_PjUgssW4A6z-zMA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004


On 9/4/2025 5:40 AM, Rob Herring wrote:
> On Wed, Sep 03, 2025 at 07:33:58PM +0000, Hrishabh Rajput wrote:
>> Gunyah is a Type-I hypervisor which was introduced in the patch series
>> [1]. It is an open source hypervisor. The source repo is available at
>> [2].
>>
>> The Gunyah Hypervisor doesn't allow its Virtual Machines to directly
>> access the MMIO watchdog. It either provides the fully emulated MMIO
>> based watchdog interface or the SMC-based watchdog interface depending
>> on the hypervisor configuration.
> EFI provides a standard watchdog interface. Why can't you use that?

I need to explore about EFI watchdog. But Gunyah Hypervisor does provide 
various interfaces for watchdog including fully emulated watchdog.

There are Qualcomm SoCs in the market that ship with SMC-based watchdog 
interface configuration of the Gunyah Hypervisor. The purpose of this 
patch to add support for that configuration.

>> The SMC-based watchdog follows ARM's SMC Calling Convention (SMCCC)
>> version 1.1 and uses Vendor Specific Hypervisor Service Calls space.
> Is a watchdog really a hypervisor service? Couldn't a non-virtualized
> OS want to call a watchdog (in secure mode) as well? But I don't know
> how the SMCCC call space is divided up...


Sure, a non-virtualized OS could directly access the watchdog. 
Hypervisor needs to interfere when there are multiple virtual machines 
running simultaneously and we only have a single watchdog device.

>> This patch series adds support for the SMC-based watchdog interface
>> provided by the Gunyah Hypervisor. The driver supports start/stop
>> operations, timeout and pretimeout configuration, pretimeout interrupt
>> handling and system restart via watchdog.
> Shouldn't system restart be handled by PSCI?


By "system restart via watchdog" I meant the restart routine in the 
watchdog_ops struct. And I've kept the watchdog restart priority to the 
lowest i.e., 0, so it will be used a last resort.

> Why can't you probe by trying to see if watchdog smc call succeeds to
> see if there is a watchdog? Then you don't need DT for it.
>   
> Rob

We could do that for checking if SMC-based watchdog interface is 
supported, but DT provides an additional information about the 
pretimeout IRQ.

And there is no way to get that information apart from the DT.


Thanks,

Hrishabh



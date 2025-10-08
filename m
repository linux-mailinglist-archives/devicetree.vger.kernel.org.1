Return-Path: <devicetree+bounces-224634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEBFBC66F1
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 21:11:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B22554F4562
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 19:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 357472C0F91;
	Wed,  8 Oct 2025 19:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PmT5xaWJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D0CD2C21C0
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 19:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759950664; cv=none; b=HQablfoUTkqagt9f3wibYatiMf9haBF54rFCWZX62XzNY/N7H2RkFEIhmNkuFHHNA8fqY4RF5+bwuum0kTnY6F+XHHGXcf4epMzVGT6wkyeWpmU/cfPHsyZQ8lyHWUKmWA6yF3xdMOMn1IV1cDUAHVmul3cU+WtuuiHfMSXhmq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759950664; c=relaxed/simple;
	bh=Ii5p//lANQpwUR+totbFED/Y+2YNQArSAdIfd7L7Oq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e7P6Z9LbCbsKFynFYpzgUK7IvbvZ0tib11MI36Z1DCWpAH+ogcZKIuAhPVm+z1ObovyH0qJ3iJcICLQxMd963c+CdneO4gCRKkuoHWqquM6IrbhXy+g27Bg66Wfa8Djq1dSdojQAFd+K01e3G0TKKzSsOWAXBXi77GKvgGRN52I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PmT5xaWJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598I5dsn013793
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 19:11:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v2Ckrd2MBpwnD5dVtICWm9gQnW8kfuaGhxbrS62TfrE=; b=PmT5xaWJe2G6LtuB
	yTIu1hnJR6OgEDqn71ZXfUX805mHX84p+e2/iXQjr7YIBySYX2QYS13as5WmdYg2
	9ZjFRKy0d6jVw6fUpKQBmZ6nxje540p7dfyYQzI/jsT2OEpXepFkAT1VUpoOc3lW
	FanPWwdrrLCaqT+5eU0G69Wsw++ajE3iEbvZm2EmW200UvH0VKfgmvCxxWToZQVW
	tHQ3OVUAZhwTyprk6JOtyFzMoFOrvSJy6kbXj4FSUz02e0D4T98vPS++qaWaUgJj
	eVcastXt7dEYwo7338Eav8kuugjqdnJsmpnLp4xVB6aHKr0+HFBCDpHgDt/FNvlp
	tRMZeg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4j0bbu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 19:11:01 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-28a5b8b12bbso5217305ad.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:11:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759950661; x=1760555461;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v2Ckrd2MBpwnD5dVtICWm9gQnW8kfuaGhxbrS62TfrE=;
        b=hWYflrYXDQ/VdGE3nTJjNMFrL26EQNNnqL5rnctnedWLtnXm2X77SFkJ6XuYjdD6RZ
         wKQAt7uYH5A4F2C3KGlGZs3M77mZMpHEHlcAak0fe/cxAjGVvMWtmTLLmWJOXbcN/sq8
         O3Ca5Qj+MoWqpHtX3UOkVWzV+VWtIj5WHK+tW9N37DX+AlVLLFZYL3yMvEJ1faEzjlxT
         wIH/TFkgCT8N3/eZcNcabO8K1wqby0KaqPyu0CYVc6pO4ysGq8dsjsbmU3GjCg9NU7Bl
         SNaG/42HjswD1qb67NZKQuePmkG1pSgsvOWPuybIdRJdXQkSffBe9SgCZa41/pOXgxpN
         FVgw==
X-Forwarded-Encrypted: i=1; AJvYcCWaM2eFSc/lac3vA0pveqrQfJYZx6ZlDUKul5fWiuS9v7to8L0q/hdY266+vVrjyxZVWf7XOqwu4qw6@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv+wFhtEGD8N++nzLDRv8809Gw++3cq4PTWh2ts2A8tIa/kTcQ
	duRPGznORBGGIzHd7abAIvOIVt8mbRGIFAM5Hl1Aad3fK5UYOjipmwfbtPdsRPYEGfY6tu3tyIx
	dec90g4z3yqnv4Zv3TUeqpA46WqXfloFjN7RIzptcJjArKzyfDS1wsWmzBXKnf7i4
X-Gm-Gg: ASbGnctMygs56TZ2vF/HuHLCxdYVKyFZyIsDq6uB4KWSBE/Qf5gysmZm1Gr1mda1ahP
	LHdkCoCVoQeWB0946I/miEq7aoqFA4P/V1o0M0caaADsl7t3borIB33spFI88FU6qtG0QbcqO1E
	gSe8ZpfTn04cfCTpPMl5QMwyrEQIn3L4jCdnLOzHjWDln6kcvB9KseEq8CQxA8nTLms7I8mTuM4
	+RY4yPm0wX4oC67Z9xlRW1+ud5HE3KH+K5psH2h3RxXq/XlHr1NrcF1y9Da6iJQeEn8PebmsoFr
	6ohyx8C8ypq0NzNkRCuz2gulmYWzykBRSbEGSUQACE9xnyvoeytnapvieoBDta69EV3Zj7oOfB+
	w
X-Received: by 2002:a17:903:3807:b0:269:4741:6d33 with SMTP id d9443c01a7336-2902737a672mr59928935ad.23.1759950660780;
        Wed, 08 Oct 2025 12:11:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFoltEn2VRkpyMuHU5UPRZwV8um+jjn0mCO/9YfDOkYq9eUvZtXCOTDt/5dwPosSV7tuY7/xA==
X-Received: by 2002:a17:903:3807:b0:269:4741:6d33 with SMTP id d9443c01a7336-2902737a672mr59928625ad.23.1759950660344;
        Wed, 08 Oct 2025 12:11:00 -0700 (PDT)
Received: from [192.168.1.6] ([122.181.205.161])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de5defsm4950085ad.15.2025.10.08.12.10.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 12:10:59 -0700 (PDT)
Message-ID: <0d0560cc-9757-4c7b-8de4-170148d99481@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 00:40:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/3] Introduce iommu-map-masked for platform devices
To: Robin Murphy <robin.murphy@arm.com>, joro@8bytes.org, will@kernel.org,
        saravanak@google.com, conor+dt@kernel.org, robh@kernel.org,
        mchehab@kernel.org, bod@kernel.org, krzk+dt@kernel.org,
        abhinav.kumar@linux.dev, vikash.garodia@oss.qualcomm.com,
        dikshita.agarwal@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        bjorn.andersson@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev
References: <20250928171718.436440-1-charan.kalla@oss.qualcomm.com>
 <aec0f40a-8346-4194-8b18-1022fe3366bb@arm.com>
Content-Language: en-US
From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
In-Reply-To: <aec0f40a-8346-4194-8b18-1022fe3366bb@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: y2r5t2fGVRNc9zZM3buqLX_tcrJBcxd0
X-Proofpoint-ORIG-GUID: y2r5t2fGVRNc9zZM3buqLX_tcrJBcxd0
X-Authority-Analysis: v=2.4 cv=f91FxeyM c=1 sm=1 tr=0 ts=68e6b745 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=6JKELlXEPSgWT0DDZg8VgQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=qT7v1YyD-ofD8Pk09kQA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX7/wsEsGnRzD6
 1yDp3kQkbxCmwleu718F2iKqoyPjoRDQmbbOyIFMZemfVSnKzReYvYikaPe2bMkzzC0cIW5c7NE
 SkpZT9VkY4a39BqmDE8qZ8BLneM7puJupmgZ4dYfallfGz2620B5ztVDWJneY3CasvLFjZUTdeF
 9eYa5QaEFkq+EXNOy0VYfnbgPkaqTh7R0iJ9ezgITr6Az7RUZcEe1q1FHCSZ0WlhYXzDq1U2tYY
 ufCefhPZp+a3OTB8cOu/8kMBk4pwOGQ1ZBD6P517xbtOdz0z/n9DLmq9EDtaSotl7MWegiqPGzS
 R1kPXcSWDWArJaAGm0Pc/qrJYOVPdNdHAU+CWG4HTiugwMmMunOTboLqAkab9/4t1GhOZlM7Qxp
 qQGgEcRdqUBL3Boq/K+gwb8GJmCb+g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121


On 9/29/2025 3:50 PM, Robin Murphy wrote:
>> USECASE [1]:
>> -----------
>> Video IP, 32bit, have 2 hardware sub blocks(or can be called as
>> functions) called as pixel and nonpixel blocks, that does decode and
>> encode of the video stream. These sub blocks are __configured__ to
>> generate different stream IDs.
> 
> So please clarify why you can't:
> 
> a) Describe the sub-blocks as individual child nodes each with their own
> distinct "iommus" property
>

Thanks Robin for your time. Sorry for late reply as I really didn't have
concrete answer for this question.

First let me clarify the word "sub blocks" -- This is just the logical
separation with no separate address space to really able to define them
as sub devices. Think of it like a single video IP with 2 dma
engines(used for pixel and non-pixel purpose).

I should agree that the child-nodes in the device tree is the easy one
and infact, it is how being used in downstream.

For upstream -- Since there is no real address space to interact with
these sub-blocks(or logical blocks), does it really qualify to define as
child nodes in the device tree? I see there is some push back[1].

  > or:
> 
> b) Use standard "iommu-map" which already supports mapping a masked
> input ID to an arbitrary IOMMU specifier
> 

I think clients is also required to program non-zero smr mask, where as
iommu-map just maps the id to an IOMMU specifier(sid). Please LMK if I
am unable to catch your thought here.

Do you suggest to extend the iommu-map to give the non-zero SMR mask
value[2]?


[1]
https://lore.kernel.org/all/ogslvjglnz56lz6nria7py6i4ccp6zvcd4ujpiusrq6xutydsm@xb72os5wk67r/#t

[2]
https://lore.kernel.org/all/bffc8478-4de9-4a9b-9248-96a936f20096@oss.qualcomm.com/>
Thanks,
> Robin.
> 
>> With the classical approach of representing all sids with iommus= end up
>> in using a single translation context limited to the 4GB. There are
>> video usecases which needs larger IOVA space, like higher concurrent
>> video sessions(eg: 32 session and 192MB per session) where 4GB of IOVA
>> is not sufficient. 



Return-Path: <devicetree+bounces-252307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7742BCFD64E
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:30:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A57B9302AE0A
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E88B30F92E;
	Wed,  7 Jan 2026 11:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mlGKUlRU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NBiIk2iD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D85630FF04
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 11:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767785353; cv=none; b=SJSachH4ie6zVMfZF276MeGqDa9SQQ/DDYurjWCtf9PSjlpGl40M15h2odNOt3CRk4zb9Zjoefjz/hgUwhAGwq+ucSth3E4CTsZpqIijE679U+OG9dP4rDaCP0ndAxZZCoJdCZKlbDzDlZ9ZKVd3fT3Nmod/7RUXE0oAkSZar44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767785353; c=relaxed/simple;
	bh=qx7YB2uCJDFqAQpv18gw/aj2WVZy6YsXTZm5XoNIPl8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dvPZ9fcCmVz3QBWtupLQxjyHs4hhwAr3vQyR523JwrIRWtTv7sPeMDjKTdsOF5JKGMsm+otXHyCQDag3jqHi/mfRnH3rIFToGNz/Bff5+7RRZ6eQr7Ad90CHuHIUuDLb6dxWJoeqqalVb1N94HhWM78dx56DTD4/gQsivDT6KVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mlGKUlRU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NBiIk2iD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607B6iSi3888927
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 11:29:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wKzSjGaF7bD5k+WIY55UCJcaAoPYulLP8uG7sW65uYA=; b=mlGKUlRUStT1qaCA
	GMHHkzUnGWXckvHbKJspTDrnwjzuqaEvTgl3s/IChcCkCnBfuzAsXeDRlkeEwVwy
	Z//wrD9WSe/iLpYVCuFIDxXjhE0rfCjdvEerKKu2RbcDvQZZzMWeqHMnYwOcpMED
	75DiHBYyC4XGVy4KNHjh+WAkw2cjBX2F/J36diKbm209HtvFMbJrNK2UUiC6jbDF
	qvtIHoskXM+s+7w7trcQoWmVP8Urzj2CC6Atl8/TLXyLhiCqzczfU14uqhp2rMIh
	SUlO6biQ+Wd1eD+A5kyV30l2QZIG91/SQLXMQyQi8zvwSoAi5H+3LEgiSrqGrcBD
	2aa7Mw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh6a0k4ed-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 11:29:08 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f357ab5757so6400331cf.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 03:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767785348; x=1768390148; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wKzSjGaF7bD5k+WIY55UCJcaAoPYulLP8uG7sW65uYA=;
        b=NBiIk2iDa4RVeyY4sBnnd//kc5hqhys5o97MVIs/XlqfMRASF9te7+NblV20GUk7Wh
         PDVFssKypAJWMJiVilNaG9Zp3NTfSsKxoLA/0EVCxcX5RBskXdbKgy+IkDBmGMV4bRUO
         j1XSMzkDJZn8bV1xhQWIXY6Af5goYGOJl7S0u8O2F+6FkkfxMkVHTa1vYIYBTO18rQeP
         MDpWq/w7NqBSbrkU4GEqdH4X7LkP2EIdNHTQms0LMC4JJ4DaxGgaKaEbXT9WwUdymRQJ
         nDCR4AgUBXzsi3jfhnS3tBGG+JDpV2R5J5k6xJ6KaYKYq/2QF8sjAErmLnK7LS/vkyWq
         mLfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767785348; x=1768390148;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wKzSjGaF7bD5k+WIY55UCJcaAoPYulLP8uG7sW65uYA=;
        b=A9xRfw8dd7FjcLqJGM7FHBuBauJYlyTAvfYN0NLjdyPdcCzBJk5zQcwAceR4Yd5vji
         br8GXJ4yTCdW7KY9wUJq63rcfC/GHRTCODPaRfK5vwNvymFVSn6LH2SvTnlNvUFKRX2C
         emVlmzUPNHwkyQrivDlN68iNF39nc0hUkRdYsJAlvLCrFAobkc++JXnJBVfgj9Ee22vm
         Uaj861SF4UAWVMaSPDlCAQD3CmaXIU/b9Om6RjZg9jf8K6jAJXzBOM3Pm9Kbn0EpZ6TW
         rKWYlLrUDUrhzPGsiRjwQ9ApxnjQgmNt765si4mSR0njkZl9Ge+cT79MWZeNXZU5inL9
         pOAg==
X-Forwarded-Encrypted: i=1; AJvYcCXhQsNnNr4vLjiknAd37eFDYuNy9Jc8uQKnfijhzyJQb0gnmJMww2xjpcES1Aen4H8d623jFU8nHvXU@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+sBlnaGexekV2Bru8AcT660ETRHBKlc9XCUk1zYXM0ed/OBru
	0RrP+//TzEYq0MJgsAkui0oePKhaXNgHmgLXFcOrVZKmAO271pEhxGTHImlF+UtPM+fCtXGPY6K
	UY/ITMgaSipNrdDxQSGtdmIGsAWkwKcDFm2DqvxjTiXbnaqL+mMAbFUVodL3jtG5e
X-Gm-Gg: AY/fxX6wHlgjCwtVY1FeZgXCEZ4v9GuNZkTzPfI//yERPtnyAu76JA890jxYLFdJjiN
	/W+ts/8hezwaiscFeEfm8zL+GjI7tGIyXRe3R2Aj2xspJHCnrosjS3tXu1YTAC/8+UBLYiAZ8hG
	RVToNDimleebdBBBWtgoCt+c0ekqPRo6GXtHNLkTlZWmfkbpFMw0Q98EnrO3xJnAzV+A3A2BjY7
	6ghvBBtDrUK6bE5ezaexh/jAgnFFl0Pe8ozRoGnGyE6iFt/dCE1lowIUkUcIrP/7w0cLYWk1Uz0
	8P3TlTJE/hPSgUcS/+mIUuyQwFF4PwsHqBZ+a0uVrLYw8IMgh0kr9CbFz+RnyT3Y98kpX57pBUV
	/QVZazx/1mS2JtMd4iFU2xsR7Jv6PTjSbn18wav9bXZQPvwdPEGj1c+Xzo/nvpbmbBeA=
X-Received: by 2002:ac8:7c4b:0:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4ffb47e2d4bmr22185831cf.1.1767785347997;
        Wed, 07 Jan 2026 03:29:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEYgZdo8iwXTOCIW3E2J4dEnpnotNVTj21lWXc2ad8NivOuU76cYXL83C6hJVc9tz96g+r+TA==
X-Received: by 2002:ac8:7c4b:0:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4ffb47e2d4bmr22185671cf.1.1767785347623;
        Wed, 07 Jan 2026 03:29:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf65c07sm4444854a12.23.2026.01.07.03.29.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 03:29:07 -0800 (PST)
Message-ID: <73bcf4c8-3d49-4b55-a771-0c5c1ef54380@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 12:29:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: agatti: Address Gunyah memory
 alignment needs
To: Sumit Garg <sumit.garg@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, akhilpo@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com, dikshita.agarwal@oss.qualcomm.com,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        linux-kernel@vger.kernel.org, Sumit Garg <sumit.garg@oss.qualcomm.com>
References: <20251229071258.456254-1-sumit.garg@kernel.org>
 <20251229071258.456254-2-sumit.garg@kernel.org>
 <ahbbg3pffedrjzvksgz2jv7lwajwlcxc6nsmmtunwc4346eawa@xayff4ozvdbn>
 <aVtQHftDmENIAxrb@sumit-xelite>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aVtQHftDmENIAxrb@sumit-xelite>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: vEmCooGH7AMlPUw4jH7rZ44rUa-QRT2h
X-Proofpoint-GUID: vEmCooGH7AMlPUw4jH7rZ44rUa-QRT2h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA5MiBTYWx0ZWRfX46LLoZhOZxe1
 91D1sFWL6SiOABHLNA5mQjeW/za//90ut1Kk47mbO9NKhcFL22RkosQGiPtUX6X9Cn4qlgnlFh7
 fVw2VRf/Tm7C/CsjMAn1snVccsfna8ulmoGOMMXEMIb4mhavEzjeTVh6PxuP7QLM+0XNoBrHzaT
 paPBU+AQ7l5wCPjC4SjYuSPji6B4miqUi3MjYfacUgGqGOio9kHg3FiNufkud92/cpaUVweaEDd
 vfaQz7NcTeYLv8NFtyKqHlMPD6r0/O2Yf3dSp1dJJKNT2WeXL7zFmZS70oV1O3QKSFnAnXQ5/3W
 N+NoIHKESwVLqJQhXpvLwvxoFtTGz/RTi+gjdb+hgGpTkHnS94CKuxoqNTtovrkFbb+il8vdPtb
 KJQkFhTuoVJ7ol47YeU9ylZZYrm4cWSuoeda8klcyysbUUlH9Ir1gD12RKtksvKujWYmgQTOpq6
 7440uV9xyEI352fRQWQ==
X-Authority-Analysis: v=2.4 cv=MtdfKmae c=1 sm=1 tr=0 ts=695e4384 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=L4FEu4VOam2RnATWhIUA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 spamscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070092

On 1/5/26 6:46 AM, Sumit Garg wrote:
> On Sat, Jan 03, 2026 at 09:49:04AM -0600, Bjorn Andersson wrote:
>> On Mon, Dec 29, 2025 at 12:42:58PM +0530, Sumit Garg wrote:
>>> From: Sumit Garg <sumit.garg@oss.qualcomm.com>
>>>
>>> Gunyah hypervisor requires it's memory start address to be 2MB aligned.
>>> So the address map for Agatti is updated to incorporate that requirement.
>>> This should be a backwards compatible DT change which should work with
>>> legacy QHEE based firmware stack too.
>>>
>>
>> How come this isn't conveyed to the operating system using the UEFI
>> memory map?
>>
> 
> I agree that with EFI boot, the information is getting conveyed via EFI
> memory map. But there will be non-EFI boot scenarios as well in case of
> U-Boot. And moreover I suppose we need to keep the reserved memory
> ranges in DT updated to reflect the actual memory map.

Can U-Boot not do the same by altering /reserved-memory or /memory/reg?

Konrad


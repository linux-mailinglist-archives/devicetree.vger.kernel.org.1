Return-Path: <devicetree+bounces-251153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EF4CEF741
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 00:01:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 97BC23002165
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 23:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5FA326ED33;
	Fri,  2 Jan 2026 23:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YRo+3b1Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NbKL4quV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B14623C4E9
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 23:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767394875; cv=none; b=k7Z+b7XZmNGW6jQZBtEQOD49OstsTbilyrlTF41xwMUvdPg+a81dacY+pfHXh/hQuWgSR4OkWj7iHoLExvLSLJtOQvzwyEfF1OKUWvEuvmy+RmTZpYTUEAJHg00yfOwUGNvm8zB4V8vyt3/BVfeRA4yd2Q3DuKmR0b9579OQpRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767394875; c=relaxed/simple;
	bh=OCbaEKUqVNRSFGQWwUoJL72xfSL9vDWFXC3M2S4N7fs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CQvoooS48IJNzcnaSqR1IXrxdL5kBpWLbX+ARD8OUwz/yiNFUAZVyMgT1nCWCnWFYM4NAyXDbANmb6YaFzqnXGnk8LAD43Gd6OkXuxVwYAfeOqitlU/Rc5HmwQIw2WkoQetdzNX5XuTSHOAc447E3+zQz/quxj3eIB/2Ix2nB/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YRo+3b1Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NbKL4quV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6029X1iE508942
	for <devicetree@vger.kernel.org>; Fri, 2 Jan 2026 23:01:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b3OTeFOaQb58wR8asUs+5Bv3nru7hCHc4Esj5jAEU4c=; b=YRo+3b1Z/m5Dylux
	5EVsknToCHHRGPAJTTZ1vBLvbQMowmL35UG4cWnn4hONsdjTfQM8X2wmoAGqbUwO
	fxDGIKKohHpO+telDUjlLSzXhTMZ3qI99wxYjZ/TUrAI7kzzCYp5M6h1Me00iz6p
	ZPW8hzScB1jnHo2euHRl1eFl1Uy2OmeZ8wy2xawxLckUoh4dVJy3s4bgP035YnJn
	xruoT+pzIz4jrD257IunTBS6WusABcKgC/raBvCzeGoidhWRRvVPm9bKHI/UBNVF
	2UHK/3EjnqttNTNYDedoaH9/M9ftlyzfyn6Rn/WeHP8HCtOcISnfPEyqycZ3h4gE
	uPPb7w==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4be8bk9ssr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 23:01:13 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-bc09a8454b9so31347544a12.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 15:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767394872; x=1767999672; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b3OTeFOaQb58wR8asUs+5Bv3nru7hCHc4Esj5jAEU4c=;
        b=NbKL4quV83VNJVnoAF6/eNLF6JHTZKJR93AJ1D7+BEqz1F3W+ul+KU5/ImN3yPmFWp
         f4U+PJZJ37vcL/xCQWHgAX51vySKv2P9BCpH2lTF9grjBDNl6qdLF7bVYq90hcKiJ+f5
         iJf/340ANKX5CKmKCGGMOoPdKf4C+/ORkSWAPQC49Sk0H1Uwat2394Z4xQJ5r32Qc8YB
         w85FrsuPHK8dCnsV1GW5Wx0slqifacPvn8AEV7Aug8VUsfJRvnAuLWpIY1FLqzmRfmQ+
         p6WextTn3T0LPD63kYrWDkYozrhrQL5hVxOjtOdxMd/zRT8EsW6w4S1WOsxxWs74AWFA
         LAKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767394872; x=1767999672;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b3OTeFOaQb58wR8asUs+5Bv3nru7hCHc4Esj5jAEU4c=;
        b=ki5MqyAr64UPjN/Jqgf3rQo8MJrNFFcxtMF1qbJXWJKptHDdqmA1vNk9tFqlJD8Y1Z
         H/c5b2hcKgj2K2eJJo3CgX1Z0WEx53mTo3SKA3567JnbLSS2hMCQ0WR54bTx9mMSH64v
         qp60fLufTE/lbBD+IWV7xWvvp1f6rDEXzZtnaXSciavTRYPLMDCzEWiPvahp9miQosbV
         PllGul+jxwg+tsgg5JSI2DMcdTJmTnovnZOU4cEp8Eyu/pjm6m1sKv7uVVnVjJcZJlfa
         8H0VnRF309wkAjp4/3Bkr18Ehk+lB2dY9+Nfjfok8Eny1ZESMHBSnfjtnNVGF+TGkkZi
         tveQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfbktJu6WGmMGerIhzQVnKlqAmKt/ELiV0+28wNfVH9GdSL/gSG40HhffKn6OFJyHNT5a6gCSnMjZZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxfA8ttLd1VpURuJ1fgXeQmfQpIIUSKMMSPEdQ8aD/uzE6kTPCP
	zOMFBf8wUNkMZXU96sx4oXjRDAuQ1wehwHzcqRo+CtxbPhVZMQuV+eimlTY0VgCJ3GK0aM1X6pi
	p1PbyzvtqjOhMs6VCljUb4nWJ95TYZscFoXzT0y78OIzjMCLY1Uhtc8p4gMePYeJR
X-Gm-Gg: AY/fxX4A1+1DYrCLbkxYG/30xqyVp88XAGFnvgIAGdcxy0Ou+0QJp6ki09/1SuiN5OB
	uwIPjX8DqyEQrKaqwyiskFDGEZyoW2eUL/NGGAWep5EEB8MTgGhSapAKbM8t7TY8NJJswtukngA
	X6MGQVJeJgtYm+KqA0O5vHqcai55bE3W6CYomkvqs5oqjciKY3dbKfiKl084/h53VlwwlBZetIu
	7fUMHdlsfG5KiPDj9fC2HQ0VuxWfq9XwNYFrlhhJDWZu1gs7rdOZrhHbmpSpaYHNqUbl6Mdhiw0
	aiCg/tRtNYEqorpYoOXCZp7L7wCJrnBSv97STHBl0R1wySlc0EKC4qgGJXalJvB7lT/n89k31qg
	Lvru6Oq5kXwvidAmQxmx1np+iAqMNYtwDbQmzjdOmbNgB9rcr/Xf675Io8YTqCDs/+s7Gmrgrig
	==
X-Received: by 2002:a05:7301:2aaf:b0:2ae:506b:4b05 with SMTP id 5a478bee46e88-2b05ec6f3c4mr25270511eec.27.1767394872477;
        Fri, 02 Jan 2026 15:01:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF5EitizlliS+rSAvKNLC290H+9iTiSCypg+98RCwq2Jc/ptsUK+jo6pJwm9qtXZHoXSeq46Q==
X-Received: by 2002:a05:7301:2aaf:b0:2ae:506b:4b05 with SMTP id 5a478bee46e88-2b05ec6f3c4mr25270481eec.27.1767394871826;
        Fri, 02 Jan 2026 15:01:11 -0800 (PST)
Received: from [10.71.110.87] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b05fe5653esm93661329eec.1.2026.01.02.15.01.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jan 2026 15:01:11 -0800 (PST)
Message-ID: <d513960f-59aa-496f-95fa-28a01b419fc0@oss.qualcomm.com>
Date: Fri, 2 Jan 2026 15:01:10 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] of: reserved_mem: Allow reserved_mem framework detect
 "cma=" kernel param
To: Rob Herring <robh@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>
Cc: ye.li@oss.nxp.com, kernel@oss.qualcomm.com, saravanak@google.com,
        akpm@linux-foundation.org, david@redhat.com,
        lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, vbabka@suse.cz,
        rppt@kernel.org, surenb@google.com, mhocko@suse.com,
        robin.murphy@arm.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mm@kvack.org,
        iommu@lists.linux.dev, quic_c_gdjako@quicinc.com
References: <CGME20251210002053eucas1p1d1408ad0fb49a49bf4371687f8df7395@eucas1p1.samsung.com>
 <20251210002027.1171519-1-oreoluwa.babatunde@oss.qualcomm.com>
 <X-TH#1.CAL_JsqL6VVQ7K_ZAbHJ8Gb7ei_jusLx6wRn=AdOVgV50dX0ejQ@mail.gmail.com>
 <99dc91c9-59fd-47c5-b1d9-157bda86ad59@samsung.com>
 <CAL_JsqK5QEZfyRTDY4z88mX_eYENibea1ZM8H_bEfCCsOOwY4A@mail.gmail.com>
Content-Language: en-US
From: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
In-Reply-To: <CAL_JsqK5QEZfyRTDY4z88mX_eYENibea1ZM8H_bEfCCsOOwY4A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDIwOCBTYWx0ZWRfXy51NrQXtrQrt
 My/cJphbF5jY10vZNHiQR+Zes6S+JOfrC44sjGwi2UpB0RjmWqyGZeDPngiHsG8liLu/ZNpC5gg
 CxwsyGPVtXNLT5j1kUjm/3ohULWdMpvbWTAichVo1K6TmkxfHVfYcyG/woy1a9kHS+oPKNEkNIx
 14O6VKRURTtKdwCGPQKoD00jOTHfik+dwYELiBju//yxdpkykukub7F9cZxCqE7/zriMCQJJlxW
 8XODXGMhPlxxDVSFK2PlbifFx4cPEph/8m8pzsX6hMzbbf74S/tRVL9jH1cd2kBwtxIhrqyOOtd
 UA3twgyVZftFLXXGQwSSUZiDqWRS941XKue8DD58NEkc8EnR4VnTDWKOpc04YCkknKFYdX3WmkJ
 VxaOX/qkdvwC696CncOhGh6Vd+DGgjMqixdzo6jhBdxG9YqCJEjWiW8wHufudIt80b0PYajYuuY
 UCB8/+CbnrMD3iLADPw==
X-Proofpoint-ORIG-GUID: 7e1-8oR0-gS_QQIcA3RXgBBDH0Xt62yW
X-Authority-Analysis: v=2.4 cv=d5/4CBjE c=1 sm=1 tr=0 ts=69584e39 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=hD80L64hAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=f-5fy8xPqO0yBxf2x6wA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 7e1-8oR0-gS_QQIcA3RXgBBDH0Xt62yW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-02_04,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601020208



On 12/18/2025 6:42 AM, Rob Herring wrote:
> On Thu, Dec 18, 2025 at 3:55 AM Marek Szyprowski
> <m.szyprowski@samsung.com> wrote:
>>
>> On 10.12.2025 15:07, Rob Herring wrote:
>>> On Tue, Dec 9, 2025 at 6:20 PM Oreoluwa Babatunde
>>> <oreoluwa.babatunde@oss.qualcomm.com> wrote:
>>>> When initializing the default cma region, the "cma=" kernel parameter
>>>> takes priority over a DT defined linux,cma-default region. Hence, give
>>>> the reserved_mem framework the ability to detect this so that the DT
>>>> defined cma region can skip initialization accordingly.
>>> Please explain here why this is a new problem. Presumably the
>>> RESERVEDMEM_OF_DECLARE hook after commit xxxx gets called before the
>>> early_param hook. And why is it now earlier?
>>>
>>> I don't really like the state/ordering having to be worried about in 2 places.
>>
>> I also don't like this spaghetti, but it originates from
>> commit 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved
>> memory regions are processed") and the first fixup for it: 2c223f7239f3
>> ("of: reserved_mem: Restructure call site for
>> dma_contiguous_early_fixup()").
> 
> Honestly, this code wasn't great before. Every time it is touched it
> breaks someone.
> 
>> It looks that it is really hard to make reserved memory
>> initialization fully dynamic assuming that the cma related fixups have
>> to be known before populating kernel memory pages tables. I also advised
>> in
>> https://lore.kernel.org/all/be70bdc4-bddd-4afe-8574-7e0889fd381c@samsung.com/
>> to simply increase the size of the static table to make it large enough for the sane use cases, but
>> it turned out that this approach was already discussed and rejected:
>> https://lore.kernel.org/all/1650488954-26662-1-git-send-email-quic_pdaly@quicinc.com/
> 
> I guess the question is what's a sane limit? After 128, are we going
> to accept 256? I really suspect we are just enabling some further
> abuse of /reserved-memory downstream. For example, I could imagine
> there's micromanaging the location of media/graphics buffers so they
> end up in specific DRAM banks to optimize accesses. No one ever wants
> to detail why they want/need more regions.

An earlier patch which requested an increase to the static size of the
reserved_mem array did include some breakdown as to why a larger size
could be needed. Eg: cma regions, dma-buf heaps, Guest VMs, hypervisors, etc.
https://lore.kernel.org/all/1650488954-26662-1-git-send-email-quic_pdaly@quicinc.com/

I also see the same problem of if we are using a static size and just increase
it to 128, what happens when someone else needs 256? This is why some form of dynamic
sizing makes sense to me.

> 
>> Maybe it would make sense to revert the mentioned changes and get back
>> to such simple approach - to make the size of the static table
>> configurable in the Kconfig?
> 
> I'd rather not resort to a kconfig option.
>  
What issues do you see with using a Kconfig as a solution for this?


Regards,
Oreoluwa


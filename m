Return-Path: <devicetree+bounces-201343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C739B181CA
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 14:29:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EEF2A5A0257
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 12:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3897224678D;
	Fri,  1 Aug 2025 12:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DG4aGNX4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBE2246BCD
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 12:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754051370; cv=none; b=tkLbgjfdup/g3pverb2obaejEDjcMXyjxU4Y9u9hhbwHvlR9nK9juO359bkYo9699xwLTlz5YRU5OFKY+Isn4MdV5NI45U51oRFGLbXBRtRmQhjNd8F+zB7utdlzMvKpakRiLESSFMy6md/1PVK1QPlKk6m+kgkd0QCDr+H0AI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754051370; c=relaxed/simple;
	bh=pbgmwZNtT9CA0LQIliQlAyv2/lGfNw6LSRHwP4f+Qk8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mGkGL4KGfiGVVfidtWu8sY0xb3uA0dUTtxDpmNVIGKehiSvU58tjgasbihCNHX9SoKWRXyBzSd8n3Ms0h+KbOjSInhtDansAEW2eN5dL3YJdgHrgthS27PnUlAs3tBXevUVX7l+x5Y9oH6bMgN7+dcTFLNNGXj9ikk8KmSWf19A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DG4aGNX4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5719BAA9018879
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 12:29:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pbgmwZNtT9CA0LQIliQlAyv2/lGfNw6LSRHwP4f+Qk8=; b=DG4aGNX4Hj0+cJfv
	3JiaQaXNzbMw+9bwSd/f60HYG/b6B7+MdZOE2Jmw4o4XEh7bVtiJXKmhqdVZlRvA
	3I8+lEokl5CB1gjPu15zjfrzQfAk2MBu3AFcH8npxSDPpYLbSzsHSxaDcYyQfaF9
	JAxwPr+lLxxxuDdTzQeq8V7hv7sDmB3jJsIIFbP7edWpV8W3gSuOGHKJem5AxxXQ
	MiA/MXyzN9SvMRI5D09mOgunp9g+nyx5zszCb9IHFtgIj0s311qvIzYxMf9bcBeL
	RuWjhgbn+ZDnJ/yt2WFcTIiuaLx5A2TurJvmynT3blWIEHkgcFrITPxHxFsfjCdH
	IVRqwg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 487jwggbh6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 12:29:27 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4abc1e8bd11so7360281cf.3
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 05:29:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754051366; x=1754656166;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pbgmwZNtT9CA0LQIliQlAyv2/lGfNw6LSRHwP4f+Qk8=;
        b=LoPeW7HHrzi1rzRYidCMM7HB8G9UXXxeoiydmZo/SRhTWJl7cRZjAaPehrMJUVd7Eq
         abG8fQbKHN5L7yFJR4Jv5qnXQaFp7psE5MUp3ZvmNWZnrrScSBw7Qb3NWlTcdzN8AADn
         GlVjDzaph8OIeldBYDcQ9MyMvyIl0MQCGHyUWatDJ10Ab3VIsHaQvW4hL6bdfcartqPy
         sVFXBKbWqM6CXXs1HrMsKNB0Ipxsj1Sy19b5fRgB0O6dtvlKykE8mHpuqwyQjPZjvYQ+
         v2iMyoUkcXHdFvWB/iOPzJRGacIXNITFKjvqKv/XmiXMP0c3HnLvRt+PW6zTP8cm8Pc8
         eUeA==
X-Forwarded-Encrypted: i=1; AJvYcCUipDJcwvGvuTMYMVQDNa7yRmSWoOAo/jzKwX8GN7ipE7vA63HVl8Vq89OIFQ2Lhrutv9bbEbXrk+rJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4gcVCcE41JAu6+RCXcut9BUSeiwclQs3cwX18EN5CGjgqTdba
	BmEcoeOSmS6JWQ7OH2VxC3yozjlSqTDJ6M8nlgSMy/6rA22PRLVvKiqLkkQ+7KfBJEXbTQf6LJt
	9w+ebTzHJXNmCy1LS2JX5P77kYKbzqJhiFkF3TsUK0Rt1IH2E0eHmEJfJwMfS7ZKi
X-Gm-Gg: ASbGncsDIl7YXF/04wyA+c8x99Z5bu/I1IvtdvA/+t2cCIlJlBiV8RRmQJPrwLOzl0j
	kAt0trHY2VmYQNR+zlLaJBd1hgCCZO1r5pu7wi9OsWTB4l+LYC6fbZTW7AwLMM4xDtCPkowypDV
	2LIC8nQajUlSSaSiDByO7XjaHLu7mE9HvwG+vRv8+zVrT/Cv5TfeSieNLdFSn87WLSwAVoeim1t
	ObIh7B3+5LBhhYcVAfWYRPWDN56fifolVcLTeGpYqCH7efH6ZJhRtYiCLD6x47XvnurZZz7HyY4
	IhR3/NWCcbSECm9oH6+RSzLP7o0Z6uD0762nxc+hhTx85mo4RJ3ZZjMfvOPdcCMPy0FQ9WLBYxK
	BaqLWn7fY7HRLJlutBg==
X-Received: by 2002:ac8:5705:0:b0:4ab:5d26:db88 with SMTP id d75a77b69052e-4aedb94316emr87971091cf.3.1754051366276;
        Fri, 01 Aug 2025 05:29:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8q92C2Wo6neQzzml5bgsNfb0UtuzxKP8kk0JsYE01X/PsK4FmcyVYqJWR7viitVa/ixIFrA==
X-Received: by 2002:ac8:5705:0:b0:4ab:5d26:db88 with SMTP id d75a77b69052e-4aedb94316emr87970691cf.3.1754051365732;
        Fri, 01 Aug 2025 05:29:25 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21c06bsm280116566b.119.2025.08.01.05.29.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Aug 2025 05:29:25 -0700 (PDT)
Message-ID: <0cf8f99c-a64b-43c4-a747-d5dd6fe28996@oss.qualcomm.com>
Date: Fri, 1 Aug 2025 14:29:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sc8280xp: Add initial support for
 Ntmer TW220
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: aliceryhl@google.com, andersson@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, ebiggers@google.com,
        ilpo.jarvinen@linux.intel.com, joel.granados@kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org, len.brown@intel.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        lossin@kernel.org, mingo@kernel.org, ojeda@kernel.org, robh@kernel.org,
        sfr@canb.auug.org.au, vanyang@smail.nju.edu.cn,
        viro@zeniv.linux.org.uk
References: <de111b27-9126-4c03-a7bb-8cce9ea2780e@oss.qualcomm.com>
 <20250706034303.5404-1-mitltlatltl@gmail.com>
 <f2f0f25b-40b0-452c-ad9e-01b84b32e163@oss.qualcomm.com>
 <CAH2e8h6XWAz-pqmuvzK8JqOb=ggiDGb2U3TvAR2+43D_zdsZpQ@mail.gmail.com>
 <9efafa16-e6db-4227-9b47-5803f5933a7d@oss.qualcomm.com>
 <CAH2e8h5Eov+827X3W_EZSHRoaUHgP119fXJA+WEUdmdJ6f3gkg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAH2e8h5Eov+827X3W_EZSHRoaUHgP119fXJA+WEUdmdJ6f3gkg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WvgrMcfv c=1 sm=1 tr=0 ts=688cb327 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=78uhRy8ZE0Nw9m-UYXkA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: 9zl3jQlw7WnzfSnLvTeyxAH6_WAN0Ayf
X-Proofpoint-GUID: 9zl3jQlw7WnzfSnLvTeyxAH6_WAN0Ayf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDA5NCBTYWx0ZWRfX4Kfri6aJQFoL
 9+aBW3sDrgFMJp85YJO2ZO+DgrwjW1N76lZVvZxZycLfzUtv3S9MoHGQv1kkrutHWrfDWTFDn34
 ZUsKgw+f+AeofMsjJ+auJFcAkNcMcVKsUQFDrl8ZcKvD59WbhU9T6dwViKdY0XhDmdIJQ5n08NW
 nk2US/ntfaCMzeEmAwxf8NXpDnw8CYR0OBsCN81NPq8pPfR4yDwi8w7v3IzcZmFzEvpEqKfaBc7
 R4wxa7m7COxX0oYbC+ITVMgnIFroU5/fRO5u9y/cf1neK/wwvkaeMZ4CYulq5iJ3wHW6NhUYIDM
 ldzu/ahzA9Sgb+qcuZS6iJ7HLxsAsRjdyH/Dcma4f/kxHGBxYvQma9J5j8RQbrPWz6e5QwQV0Mh
 8TJz3DoSpUmCUmP1xskZhZUR5sQID3UIgZoOMJEwkWz/KnP4M9vNud+rfSDnrH6jA90kyIqK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_04,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 spamscore=0 mlxscore=0 impostorscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508010094

On 7/31/25 5:05 AM, Pengyu Luo wrote:
> Linux:
>> ae94000 20050001 000001f3 0000000b dddd1011
>> ae94010 00009130 31211101 3e2e1e0e 00001900
>> ae94020 00000000 05190019 064c000c 065f0528
>> ae94030 00060000 00000000 00040000 14000000
>> ae94040 06100006 00003c2c 00001000 00000008
> Windows:
>> ae94000 20050001 000001f7 00000008 00001010
>> ae94010 00009130 31211101 3e2e1e0e 00001900
>> ae94020 00000000 05320032 064c000c 065f0551
>> ae94030 000c0000 00000000 00040000 14000000
>> ae94040 00100008 00013c2c 9bb9b000 00000004

0xae94008 differs, bits 0 and 1 say that the cmd mode engine
is busy doing something (did you set MIPI_DSI_MODE_VIDEO?)

0xae94024 says:
Linux:
ACTIVE_H_END=1305
ACTIVE_H_START=25
Windows:
ACTIVE_H_END=1330
ACTIVE_H_START=50

0xae9402c:
Linux:
VTOTAL=1631
HTOTAL=1320
Windows:
VTOTAL=1631
HTOTAL=1361

0xae94030:
Linux:
HS_END=6
Windows:
HS_END=12

0xae94040:
Linux:
RGB565 (16 bpp)
bits 25/26 are "set RGB888 for DSI1 stream"
Windows:
RGB888 (24 bpp)

(suggesting your panel driver is wrong)

0xae94044:
you may want to move the

/* Always insert DCS command */
data |= DSI_CMD_CFG1_INSERT_DCS_COMMAND;
dsi_write(msm_host, REG_DSI_CMD_CFG1, data);

in dsi_host.c out of the if (!video), not sure if it's correct
but that's what Windows seems to be setting

The other differences are due to the current DCS command(s) being
processed


Hope this helps

Konrad


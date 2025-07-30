Return-Path: <devicetree+bounces-200803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 693FCB160B5
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 14:53:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90D1B165E6B
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 12:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 855722877D3;
	Wed, 30 Jul 2025 12:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XNTxf3wt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E14928313D
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753880003; cv=none; b=UqL8xzMgq3ScOdi1NRW+faiMMpayBCUr6ZzKgamVx+DDtw5piFEEs2Idmuib6iFVNuXKu6ovLJUae/hz9R+ddbUWb5TBwYdnpsTvL6WyD0qjBTl9ZYIxAZfN++35AtZO7gdZPCnGJLctfXzN3WMJuAlS1zsYzPm8ByuiiI+KdLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753880003; c=relaxed/simple;
	bh=O5waUtiS1DG/Eb2NKnNA82G9Q+t+ECoaVsfmcPLBT+o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kdaDhbptBE/MMD8/nIWQNdW94W4rSFWhluuJyCihhGuAT5YgyLb+BUtA6hIhqYIEtS6dCnJNJGxDXbGRNIxwXM7LZYom9pkOZetDIDcnkmHyszyrVryF2/iQdwSGc2VtaLPG+HIl+9qqpdQHijwCJCr8HQCNLYopM7I27q/Pvm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XNTxf3wt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCbAPR005871
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:53:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5gxQPztQMAsZx5roYM/mBxyPSLwU6l2b9jc3C98wtqY=; b=XNTxf3wtL29mzUGE
	PeoxNr8UjQenUIfYGYTVRe4xQhJ2sihoIQAjt7I3yeUhcpV7nPl5nfEAjOzcZMpN
	a6b79mwM6ejGAcsT49Knh3iMHQCDRssPZHfvpJCek3r6+eEYL/pNgAp6pCviVo2A
	0TEKTw/6OKFNAigzL9c+TLo+5L/27NIWLeq4iqCmn5EqC3JbO0s2YwvnqsuEHGtj
	eLsE9ozDlr+vWOWU5ALvnLsh/9GTBSm79C4BOnuGPR8hcihTWLqMpnLzyzn2DEBB
	spAdyrk2Wzjvkd1YANg4QQxpuOxK1HpZ0lPMwD2KOwgsnN9zqA6ybTM8leQXpQXs
	vAtmFA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 487jwg84sx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:53:21 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ab3f1d1571so7937501cf.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 05:53:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753880000; x=1754484800;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5gxQPztQMAsZx5roYM/mBxyPSLwU6l2b9jc3C98wtqY=;
        b=GEIa6EvVIG89xM8mPiLbFe1q4YuzMYVfZFE37mg6DgFtnnRhktQdrqSt7+y4iajxTS
         BafBFrJ9FMlniVHMFFfgEj0hSuZRb7QNE9H2bJAyzzz3rxSiWI2lX1v5zEVTsPuLnuBP
         V9q4m2YtzAH+VIkM8GmTIOtbw+MFXs0Lxz/74bCbUXKqATo58CpgkFPTfoHmOMPlcQ1y
         vT+/NTV5uo2taRwkyUcoZTvTeJeflRMv2t9z5pJ5Qxi2o72+HmXLJ4K+illTe5vOhhSi
         FUc2XL2c6wfrMasDpPo+9AFCLWoJVXnu/UmPMB5ITEIrMk91psq+paWCQsBZJi+2WRfI
         j2Ow==
X-Forwarded-Encrypted: i=1; AJvYcCXZmn3HE5qehgrLhHDaWW44Ip7f6Z28m1xE/+ERYLAU2xpZgVoflFDfqFTonOkV+DgtS9+7iGidIZy3@vger.kernel.org
X-Gm-Message-State: AOJu0YyZwIiYTwTZRSU4PKbJme9fPX4dLHlMcKm4NvrpQxCh2kEFmli2
	vf8BMPJhTbueQk3YHkZaQZHJ76sOWklP19h299BUlal+zqsAuG/IoJIDBND5RJIFCwuz0ZWOPmI
	8Zqu0ZW2Z6kz2NgK43YvHFvzDuS1TCI8c3AULxr+MZ9I3vjxaSlS7QveN0DCIGTvcOtipPOZz
X-Gm-Gg: ASbGnctHGCPJGbH/IbtitF8Tdxoap30iesLNeXuy/iFAkRTRCrYooaw8yQ9t/My+I79
	3BSxE9CHl8gJf//w6YpHCYerVUX7Q5kZOdMWNytTUlcH7SQdzIxJvvlniRPJmVc7NlS/5bl2NhE
	4JQWfdrvttlLjB4G+on2fsxgUaHnhoD4ctKX24wJOOU6fKVNlpfjYeNASv5IiiEZKSLcKs95YJv
	GzTL7ZROJH/QyEev35VrKLGcas/kGcOTXoITT05ISOGwXz+9gpeISA8z0mc/cgTHFQhIM3coSbs
	rYwoqXdap60Q2dBxwCA2myToJEPRFw5bh8EvobBGQMM+PoaHjgoDZ+0EOu3kFo3mtvtMMzjXT7A
	XvwkZT0OkwIh3pBU0dg==
X-Received: by 2002:a05:620a:1918:b0:7e3:3384:4aaa with SMTP id af79cd13be357-7e66f041721mr221482285a.9.1753879999533;
        Wed, 30 Jul 2025 05:53:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8edTo7a2GExz5C3MxUcRuEGGikKsdBITLyPojp4jXdFSx12vSqnRAFako0z2oJUstWUxrbg==
X-Received: by 2002:a05:620a:1918:b0:7e3:3384:4aaa with SMTP id af79cd13be357-7e66f041721mr221479485a.9.1753879999058;
        Wed, 30 Jul 2025 05:53:19 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635aa7582sm739237966b.99.2025.07.30.05.53.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 05:53:18 -0700 (PDT)
Message-ID: <f2f0f25b-40b0-452c-ad9e-01b84b32e163@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 14:53:16 +0200
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250706034303.5404-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=WvgrMcfv c=1 sm=1 tr=0 ts=688a15c1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=dEhO_gk0ZkCmvCEDGLUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: xB2p3XTPnzTQgd6gXeSJCbE718_PA9zj
X-Proofpoint-GUID: xB2p3XTPnzTQgd6gXeSJCbE718_PA9zj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA5MiBTYWx0ZWRfX3DUWx/TnKz32
 RbExnrpwOG3kecE2V+87A4N8E9AotMxZsbe6cck31GBHw0crxktLTg7gGXfp8/lLPOHsZVOHt3p
 0P+Poq8QgXrmuR1YLR7JbLPQPAFc3KfwgT/3oMDdVC84WtQpNKRKwtjot8v2DgK/eHL7/XvXZpn
 rhUyRyOkne/XPyhU/wELIy2WMtBz5wnUr6QSr1WloP6WMknI8C5xtEVAJ8EIfCkBba6lCIlLXx4
 +R2ngfc6XvGyTAyqS0YCx4Nqd/EwlP29rlpG+yZDc0O2QOwAzP8Bp2FQvATZVOjgmtdH3CI59YT
 YrGltJw9pMXxHTIsJNlCesfKvJxcULosthJzbKXFmI7idYBLvizdNnaAGP6ox01WymoP4dUCxRi
 ViYemdvLOl0zS6ntBVCGAZipMYND1IRRvnAGvvxg6guQ1ISosTrE/o4L8D5Ycq/LyALgJmax
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 spamscore=0 mlxscore=0 impostorscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300092

On 7/6/25 5:43 AM, Pengyu Luo wrote:
> On Sat, Jun 28, 2025 at 3:48 AM Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
>> On 6/17/25 11:29 AM, Pengyu Luo wrote:
>>> The Ntmer TW220 is a WOS tablet based on the Qualcomm SC8280XP platform,
>>> also known as the Robo&Kala 2-in-1 Laptop. Thanks to Hong for providing
>>> the unlocked device and early development work. This patch adds an
>>> initial device tree to enable basic functionality.
>>>
>>> Currently supported components include:
>>> - Bluetooth & Wi-Fi (board file regeneration required)
>>> - Battery charging (up to 15V/3A fixed PDO) and reporting via pmic-glink
>>> - Flash LEDs (front and rear)
>>> - Hall sensor (lid detection)
>>> - Keyboard (via Bluetooth or USB)
>>> - NVMe SSD
>>> - Power and volume keys
>>> - Simple-framebuffer
>>> - Sound (playback and capture; top-left DMIC only, top-right works only
>>>   on Windows)
>>> - Touchscreen and stylus (requires GPI DMA support [1] and stylus support [2])
>>> - USB Type-C ports
>>>
>>> The following components are currently non-functional:
>>> - Cameras (GalaxyCore GC5035; only sensor ID is detectable, no frames in libcamera;
>>>   partial driver can be found on LKML archives)
>>> - DSI display (blank screen with `dsi_err_worker: status=4`; primary DSI register
>>>   dump included below)
>>> - Stylus wireless charger (CPS4035)
>>> - UCSI over GLINK
>>>
>>> [1]: https://lore.kernel.org/linux-arm-msm/20250617090032.1487382-3-mitltlatltl@gmail.com
>>> [2]: https://lore.kernel.org/linux-input/20250605054855.403487-2-mitltlatltl@gmail.com
>>>
>>> Note: This series does **not** include any confidential material. Those
>>> who wish to run Linux on this device should contact Ntmer, as the
>>> bootloader is locked via secure boot.
>>>
>>> Co-developed-by: Hong Zhu <vanyang@smail.nju.edu.cn>
>>> Signed-off-by: Hong Zhu <vanyang@smail.nju.edu.cn>
>>> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
>>>
>>> dsi_ctrl, reg = <0 0x0ae94000 0 0x400>;
>>> 0xae94000 20050001 000001f3 0000000b dddd1011
>>
>> This is not something we want in the commit log
>>
> 
> I will remove it. I need help, then I attached it, two of my sc8280xp
> devices require dsi to work. Reversing and guessing wasted a lot of
> time. I will appreciate it if qcom could support it.

There should be nothing interesting compared to what's on SM8350 when it
comes to DSI on 8280.

I would assume something's wrong with how your panel is being set up.

Konrad


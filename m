Return-Path: <devicetree+bounces-245735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DC3CB4C14
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 06:24:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8AD7230011B4
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 05:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9329A2D12F1;
	Thu, 11 Dec 2025 05:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HAYsb2lX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LoFMrrQ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0875028C854
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765430685; cv=none; b=Qmn61afOKUBGJKkJegcJ7Ov3abrjTU4bBp/iTnWpVdwYgKQIU0CvNfhsv6fTmhxXX0uYJ3kw3d2p0PISXSIvyLzkMMbnEZAoK/sqf+3A7vkGgaItWO+IvnAC8dSV2bn19iaSsQXtbOnEaoYgWywYxSZzbdt0tpCtYMPj29csePg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765430685; c=relaxed/simple;
	bh=iWO4kvJmwRy/sw0onQYo1Cx94xt4BSBMfJlb3d29dnI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ue1xFOZyizpR75ouxeYt6fO8uDHWWBDW1GznsYTkZP2dyq0qjQ3FSW17gufiQIocGobfC0rvaviwfm++/Hqc2OOXycB5ay/n8nmSKZZtU87hHfDeYdHyBMV/nMaEIgVpda4h1JstksVwtQjRsoFMKOZ72c7k5okfGgdHl230vVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HAYsb2lX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LoFMrrQ1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BALP3lq097690
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:24:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7p8dbdR2d+LZMqfKG+PHBtQSgFbWvSxIf5KHLEY5gxo=; b=HAYsb2lXpfOWLr4q
	3KJXfT9rzbImzWUiXZiDW4w+1iINK36EHqDwh8+S2xeJ+g+9EZP8JYXDiqqyi2es
	GXX2kJz5MwXFwF0wBy/BtD9s++sXeB26OL1SuNpXRkbjqtb4UlsCgaEbHNxT1xVv
	aT9x9F9lrJdw3NJnPR6uAFF2dDT1sZVKYAhnSylyMgCo4nVqcx7n06Rf1j/655v0
	W65XOMUQuIYDZfVXDn4EbSSnX7MmOe6EHAxYIFiOflkOOq0u4Hskd7uNgoh1bxav
	yS4pF3QSKXEIDX8JZf8eImAhnrF8Kv/+k5fzoxu+j0eh/vwAfRYlk+tGPgXNGyoF
	kOSiLQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ayes1hdr6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:24:42 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34a907477b3so937061a91.2
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 21:24:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765430682; x=1766035482; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7p8dbdR2d+LZMqfKG+PHBtQSgFbWvSxIf5KHLEY5gxo=;
        b=LoFMrrQ1pofMmV9xLVb0Xbf2KyLfDAEIz3o4M6C4HXucxQXsO9BondyZfhhYQ0lQn9
         tZPT8MrFXJ+q/ScM8L18ntz/hCtDj9BjP9nqLlm6ZVQLuvGe+CexKjfoaMOXdtdvZfZk
         ThDzHvosD/BKJTmCT/bpLb/ZYyhwIJLZpY/lhsKn5Aqteb6eLVPcxhHhiM+MEqAl8sKH
         M/4UA6vyzAUIqd8Xos1e17rvfs8ThB/ryevOlFdLMC4C6Wn9tZv0KWhKxoDSsewALiaC
         HjJ1Nd/zhOm68UOi6r+sqSq4Lm/GPiqRIY16XSWB/0qZ2z1u2KEsIu5CPwHH/tJQQYZi
         UuZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765430682; x=1766035482;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7p8dbdR2d+LZMqfKG+PHBtQSgFbWvSxIf5KHLEY5gxo=;
        b=m2hKtt4wpZo6JIK6n88StqDgXaRd7F45AEhrVRJp/WW+bqU6tIRyUYcE6gH17143Ze
         tWaw7G/MPto1xxUf82vwDQ5hsC1649kceDL0nh0/AxHOsagiOq3PWLnO3vnEFgKL4htC
         kMUqYFh/AS3Uo0XP/9E5fPYZMGiQWEmi0dAuLtuUZuWJNnmudBv85w4HcbvsBt1Mct5y
         R//tCFDh+/29Icg6gZKj6RWHIQpzPX0oXrJBOrxCewEKgckwQZW/pZgWOpFl5dmNBwht
         YWZW3JIPrLs92RfE/JYDNltPd4rPPmqAOpeP9nMMyBvHuYWOmq0/zNOENl+v16Bn0aOM
         9EhA==
X-Forwarded-Encrypted: i=1; AJvYcCWpiggTtJ3ifBSMR7M+dTCDHQIQRiCg84nNP0nOfm5TBTO6Jm82brYwWLoBederwMbvsVe0nZCV3kNN@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu4pkW/A+Yu65a4Oi6PiDfzhb0NpOKIJ074qFxy30dcPvEQT0X
	0dLtsK+lVOUIRmn8xZ7r4UR5VwVvabIsdioqaIC8SBc0QJj9w9oFnxBR+kzYGQK6mBeq1gx4Vci
	fO0lu62Y5hXKbhfohlAETwCl+uAd+vra9XAzsywUQhr50Q6Iz4ul2GWnll9payUZa
X-Gm-Gg: AY/fxX6UZ23bvWvaKMcuZi1uuLwJhXqSLOM8/s792M/rZ5+zyLl40PetfGn0Gi3z3vW
	zV/nhFCG/fcOGU0ddC++aUIJ/nrlNkZlW9IrgQYGvlHEftSuU8uyceC+sN1bzM33QW0sLMCfpkQ
	c3X7oMFlsmV5UqHQ+HOei+xmtN7u98qNiAA45i89ilZmgQkaOIQDKmbkseCo1G6BsJR7Qkba0fC
	526r5VkLr0nFT/H6Wjk0n5yzuSIdpq4yCWpsPczwL5d4m/4RrcIPcbZS9JwbLouVMpMtHgbyI9i
	zFfD68IpnBZlxoZ13s2RSpcpqifb27ljwDY66EK7ytje9UPJEtjcqSyc4zKTHgkqFzEigvuFr5J
	lFotP/6qOSxwF242VUH5Tz6oTFnqSSvEq5GqstGfSww+hNuWUfw==
X-Received: by 2002:a17:90a:d890:b0:313:1c7b:fc62 with SMTP id 98e67ed59e1d1-34a72837c90mr4460897a91.22.1765430681824;
        Wed, 10 Dec 2025 21:24:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFhGT46louSQjK3U2dWGMtX5pbvQ3W8GUUHoJ7UAbPmB40N5d/xc6A0JwloR+ZMH5UuxPCMOQ==
X-Received: by 2002:a17:90a:d890:b0:313:1c7b:fc62 with SMTP id 98e67ed59e1d1-34a72837c90mr4460855a91.22.1765430681314;
        Wed, 10 Dec 2025 21:24:41 -0800 (PST)
Received: from hu-botlagun-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a92660f5csm648543a91.7.2025.12.10.21.24.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 21:24:40 -0800 (PST)
Date: Thu, 11 Dec 2025 10:54:33 +0530
From: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Nilesh Laad <nilesh.laad@oss.qualcomm.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, venkata.valluru@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com, Yi Zhang <zhanyi@qti.qualcomm.com>
Subject: Re: [PATCH v2 2/2] drm/bridge: add support for lontium lt9211c bridge
Message-ID: <aTpVkaMJNhTb2zyk@hu-botlagun-hyd.qualcomm.com>
References: <20251107-add-lt9211c-bridge-v2-0-b0616e23407c@oss.qualcomm.com>
 <20251107-add-lt9211c-bridge-v2-2-b0616e23407c@oss.qualcomm.com>
 <30b5f19b-1ce9-4239-bf0a-d83d647608ce@mailbox.org>
 <aQ35tvwp90qm57Cl@hu-nlaad-hyd.qualcomm.com>
 <d2c9cac9-17cc-4bc6-8322-bc43edbf45d1@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d2c9cac9-17cc-4bc6-8322-bc43edbf45d1@mailbox.org>
X-Proofpoint-ORIG-GUID: C7wjlx3hHGkUaof4uqf7e4E-aEOvNpwl
X-Authority-Analysis: v=2.4 cv=KqBAGGWN c=1 sm=1 tr=0 ts=693a559a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-TY5rVZSftfygaBM3lQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: C7wjlx3hHGkUaof4uqf7e4E-aEOvNpwl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDAzNSBTYWx0ZWRfX9+lX/rJ1Iffa
 zdZFtneQTZBmsYODn6dn0lcVNOmSlK2a3yObB1FkTOVeA/1Qhz6bqYX9VW1OhWJRqmXbM3U+FSv
 p0Q1MdqrThezJru5883yu6fIqIu8WMavN5S4HPPwxvrXQeoiUPOZ+SivxlczSfg0EDTP38utjSp
 8yHodzw6ITZDPtasPQPArrTYMMgzkramTc1V6erMHQnA3KlcEXuNBq1ZsOUJlPMOMjGPSPpgoSe
 H7z699kMqC3dejKrKpAkL4dEM4SXupz2xT6pel87BiRI+KkwMx3sIjDJxu4dxRvfcgxuEj6A5U9
 Nu4RYvQdn5NPgm/O82dSz+HAdQm2mEupAOc8ee4pRq1EfJTn0N4ngR94hHQKuKWd8eMXTmrj/tJ
 pHbvZsdYbw1h5fhLQYZDLj//mNIkLA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110035

On Fri, Nov 07, 2025 at 04:11:15PM +0100, Marek Vasut wrote:
> On 11/7/25 2:52 PM, Nilesh Laad wrote:
> > On Fri, Nov 07, 2025 at 02:20:58PM +0100, Marek Vasut wrote:
> > > On 11/7/25 2:02 PM, Nilesh Laad wrote:
> > > > From: Yi Zhang <zhanyi@qti.qualcomm.com>
> > > > 
> > > > LT9211c is a Single/Dual-Link DSI/LVDS or Single DPI input to
> > > > Single-link/Dual-Link DSI/LVDS or Single DPI output bridge chip.
> > > > Add support for DSI to LVDS bridge configuration.
> > > How does this differ from existing drivers/gpu/drm/bridge/lontium-lt9211.c ?
> > > Can existing lt9211 driver be extended instead ? If not, why ? Details
> > > please ...
> > LT9211 and LT9211C differ completely in register programming sequences.
> > Even lontium mentioned that register configuration are different for lt9211 and lt9211c.
> 
> Lontium seems to often suggest, that users should use their provided
> register patches without thinking about the content at all.
> 
> Do you have access to the register documentation, and can you compare LT9211
> and LT9211C register layout? Are they identical or do they differ?

We don’t have access to register documentation. Based on Lontium provided reference code, register sequences differ.
We are seeing this limited difference, we plan to extend the existing lontium‑lt9211 driver to support LT9211C. Will share a patch with these changes.

> > Nearly every function would require duplicated logic with if (chip_type) branching,
> > as register sequence are completely different.
> > Having both sequences in single file is not looking good, hence want to merge as separate driver.
> 
> Can we somehow use regmap_register_patch() and register patches in driver
> data to avoid duplication ?

Using regmap_register_patch() would not reduce duplication. The bridge configuration between LT9211 and LT9211C are different, leaving minimal common base and still requiring separate calculation logic and control flow.

> -- 
> Best regards,
> Marek Vasut


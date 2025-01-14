Return-Path: <devicetree+bounces-138500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C0676A10A76
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 16:13:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7BAC07A1700
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 15:13:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54E9314831D;
	Tue, 14 Jan 2025 15:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="02Bbnuct"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-ztdg10012001.me.com (pv50p00im-ztdg10012001.me.com [17.58.6.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE29A232438
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 15:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736867620; cv=none; b=duEc5mE/Wt4YHxGWHk+QQ5NzEAJ/FmJZ/RFFYgoTnGn+qSTgIuaeSyYn5RkRJQeuEWV/nmzV2b5RLLdy6bLRC6mtlJQLbx6JVX6WqpRk+weSAZjrhdG7O0C51b8imE06n040SO/sz9R6nR2TZ024y3Np7zc3yI/oo37T9T/b3Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736867620; c=relaxed/simple;
	bh=mCUw+lCsUQ5/ddI2t0Szmt5Z7oO6vXrsPrZfMFyrteY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EkFlpgWcrE5r1vmIjQe/QFDL4SV/GlwjeHL1JTZrLPrY+ARctgcnPEMRv8/4fXYdLgckHKvfVFJb+Tid2SLfvmedU5TKgv2VuDyH6EilM8h4viKtqOO1bOZUa7q3idW6HfsFlfpcC+gDQiHyASPFPKuDndVB6XpaZygsra3jE0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=02Bbnuct; arc=none smtp.client-ip=17.58.6.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736867618;
	bh=/l6PZg0CpafWCXOiX9aUUwBWRwj3NMjbWVkF9+6FL7o=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 x-icloud-hme;
	b=02BbnuctMUU3YA93Rwx/mD6Xcre7ojF/g3RusJFk8g+CYzDS0D9TuoUuHl1GwKmKC
	 LhUCDT1L3Z3p+9zwEvyMLpxHB1ZAnPA21xej6Wd6wBPBKVorul6OGptU6XLCe0RHeX
	 +cMjtwK9M1QaUXh/uTeZoF6HCqX7tVrfxMOaK/SbMlUbimKTiFWjMO7UXTymErq3kh
	 ARmZJsj0/UVpIikqMlWUEyIz5ytpCUW4LaOjYXuMiZ+0OcGp7YrGpbSUAecQbIvQhR
	 QAb4ZH1mxltt/wAjfMWo4HL+XrLnhuLQhDdBdcs6d8IG1nLyhhkatHN9z3BbX0NWtd
	 KubwWTt8eSc1A==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10012001.me.com (Postfix) with ESMTPSA id 849A8A0619;
	Tue, 14 Jan 2025 15:13:28 +0000 (UTC)
Message-ID: <20a75803-7519-4e0c-8eec-15dd74bee17f@icloud.com>
Date: Tue, 14 Jan 2025 23:13:24 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 14/14] of: Improve __of_add_property_sysfs()
 readability
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, Maxime Ripard
 <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Grant Likely <grant.likely@secretlab.ca>, Marc Zyngier <maz@kernel.org>,
 Andreas Herrmann <andreas.herrmann@calxeda.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@kernel.org>,
 Oreoluwa Babatunde <quic_obabatun@quicinc.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-14-db8a72415b8c@quicinc.com>
 <20250110204154.GA3529721-robh@kernel.org>
 <954725b5-5d53-4bd0-9a06-61ac1aa35dfe@icloud.com>
 <20250113234643.GA3631169-robh@kernel.org>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <20250113234643.GA3631169-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ITGv_8wwJFauY3VUJE69l3lQE-YJwvX0
X-Proofpoint-ORIG-GUID: ITGv_8wwJFauY3VUJE69l3lQE-YJwvX0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-14_04,2025-01-13_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0
 mlxlogscore=826 phishscore=0 spamscore=0 malwarescore=0 clxscore=1015
 mlxscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501140120

On 2025/1/14 07:46, Rob Herring wrote:
>> i understand your concern about performance.
>>
>> what about below solution ?
> See 72921427d46b ("string.h: Add str_has_prefix() helper function"). 
> 
> Though we already had strstarts(), but that lacks __always_inline which 
> seems is important for eliminating the strlen(). Also, since that 
> commit, clang has become more common and need to make sure the same 
> optimization happens on it.

than you Rob for sharing with these useful info.

i believe your proposal is feasible to improve  strstarts() performance
to achieve performance level of
strncmp(str, "const", sizeof("const") - 1).


this is a common issue and i would like to start a new thread to discuss
this.



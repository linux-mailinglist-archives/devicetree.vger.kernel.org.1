Return-Path: <devicetree+bounces-267725-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMBsBENFnWmoOAQAu9opvQ
	(envelope-from <devicetree+bounces-267725-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:29:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA161826CE
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:29:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 254903063B50
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 06:28:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B6012D7D27;
	Tue, 24 Feb 2026 06:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.alibaba.com header.i=@linux.alibaba.com header.b="AMi18JXH"
X-Original-To: devicetree@vger.kernel.org
Received: from out30-110.freemail.mail.aliyun.com (out30-110.freemail.mail.aliyun.com [115.124.30.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD9B1E3DF2;
	Tue, 24 Feb 2026 06:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.124.30.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771914535; cv=none; b=hX2v3w195TSpYYyn9eOGzNbk9CkD1HurCVUrvgEGnZd8qSh0J+g/ic7G5DlgpDK+PhgS8otY6pNDwYgTalFF/nB4tSMVnlrEAuNG0ey/OkCWNoBAu/UclU5eLJ9yV3ePE/0eUbI5kL40Y2FUPEN1kzkBd7bKqa0mw4SVy7cXGvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771914535; c=relaxed/simple;
	bh=Yw+hefJL/oLMLKdMvMFtQO743LL8G312hzab9qhvk8o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WDgSJYZcaZOQWXjrmSq7nBFtP1YQf44uUr7cXYFMfGCKzduyYtM71mK23uJaGzj8kC5T2SkLQL+mBixlU7bc5jkBgReaUUIKNFNh0Av8vj+8g3OYvWNCMjhXaCPJEGuK7eq7JtZlLDcPekp0Spdql/65xLLpiMLxAkAYXUQU5mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.alibaba.com; spf=pass smtp.mailfrom=linux.alibaba.com; dkim=pass (1024-bit key) header.d=linux.alibaba.com header.i=@linux.alibaba.com header.b=AMi18JXH; arc=none smtp.client-ip=115.124.30.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.alibaba.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.alibaba.com
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linux.alibaba.com; s=default;
	t=1771914530; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	bh=5/aYE/eO7Pe/rz6k6J+6I+R2wxGlallxnpO5elKYXlQ=;
	b=AMi18JXHOTuKit2SqfiyUkX4oVM0xPVt8K0JsjGhBXfIc1bjPannD7p8pBQ6BZy9jaAKq8rQa/dF7pOC4qc3pLN7llbC+NgEn0vGPziqsyKvZ4tQ0XiLGtcCbtiCKAd8uyMlAzOu51bI7yrluns2+Yk+unovcsmsEOyJ4RIviJ4=
Received: from 30.74.144.111(mailfrom:baolin.wang@linux.alibaba.com fp:SMTPD_---0WziWARj_1771914529 cluster:ay36)
          by smtp.aliyun-inc.com;
          Tue, 24 Feb 2026 14:28:50 +0800
Message-ID: <f48b9c3c-4e72-4169-95e5-989f4e9f0c42@linux.alibaba.com>
Date: Tue, 24 Feb 2026 14:28:49 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] regulator: Add regulator driver for Unisoc SC2730
 PMIC
To: =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260220-sc2730-regulators-v1-0-3f2bbc9ecf14@abscue.de>
 <20260220-sc2730-regulators-v1-3-3f2bbc9ecf14@abscue.de>
From: Baolin Wang <baolin.wang@linux.alibaba.com>
In-Reply-To: <20260220-sc2730-regulators-v1-3-3f2bbc9ecf14@abscue.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-9.16 / 15.00];
	WHITELIST_DMARC(-7.00)[alibaba.com:D:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.alibaba.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linux.alibaba.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267725-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[abscue.de,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linux.alibaba.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.993];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[baolin.wang@linux.alibaba.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.alibaba.com:mid,linux.alibaba.com:dkim,abscue.de:email]
X-Rspamd-Queue-Id: 5FA161826CE
X-Rspamd-Action: no action



On 2/21/26 1:01 AM, Otto Pflüger wrote:
> Add a regulator driver for the Spreadtrum/Unisoc SC2730 PMIC, used
> e.g. with the UMS512 and UMS9230 SoCs. This version of the driver is
> based on a downstream driver provided by Unisoc [1] and the existing
> SC2731 driver.
> 
> Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>

Please add the original author’s SoB tag. The code looks good to me. Thanks.


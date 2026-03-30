Return-Path: <devicetree+bounces-282756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eO5cKHs6y2nmEwYAu9opvQ
	(envelope-from <devicetree+bounces-282756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 05:07:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B38D3639E6
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 05:07:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 601B5302F249
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 03:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B01A1F30A9;
	Tue, 31 Mar 2026 03:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="OD2I7o/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A2A1A3154;
	Tue, 31 Mar 2026 03:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774926410; cv=none; b=Sw0S5JBC9TXX4RzMLo6TSaUQTzJdvGhKl6r8PWXjLXgxTtA1hG/9GfKflyxXCe4lUwWp5LSAoUwTNne5fxNlclXcu5j069Wd8eNbIobFcx1UuWZ2BmnLrpM1doCnA6GovSxSpBpn9IVWkJMaI4DL76RbEMIaIthW5QaQG4gjanI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774926410; c=relaxed/simple;
	bh=BMQKZYV2esisuSCDZSI3j12qayB3dTBk3CwakmiObHE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BHijKjyE2Cie4bB+dvo8URLWn7C03Fbd2+gNIx1j7NYbunnG1McDywhvpmg2+wIoaDFFhI4Tbraa+i6Qo4EyG8fa8O/PEvhiGdJdVL3RgFEPdcuB1Bvr7kJyMJocqnRgWYrgOgSGmUR5qSoAkvU0SB/BPwU1L7CcVlhBOelXFUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=OD2I7o/k; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D7CD4112865;
	Tue, 31 Mar 2026 05:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1774926405;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=mgMBTD9z6x6OAJbl8sZRaF9Qn7eVIlVpcZc5WYtqUoE=;
	b=OD2I7o/kdydIm4eYzKrEiv/Q5++qFkip8hBr5lxiJ3zA+4wdF7rHHmphP5cz8XMnIlBjgT
	Tuzn2tLAk6GtCGxeaw8rAcSOWKn5VSq5wazTky1An1Bd5yNOtBXE52PyfXKZLX2z+BFm4E
	qpt/9dNtclfUUYxmKgB2ugzJ7S0j77YaXYM9fe02SaxgjPA5wnUqW185ujwj8MkD+kxf+U
	+P9Jyhi9O7xtOZ4UIJwMCuId29XFJ1VSofTOfIompluoeDcvaVGgYmhH17jrm3nOGh0f9G
	zoI3nzMLDQWyOCDmTyN3Pos7ETu3ia8dD4WT58gwqHpOX+OGLa6SekA+jqojbw==
Message-ID: <bc7d5955-600a-48eb-b897-3928ace275a5@nabladev.com>
Date: Tue, 31 Mar 2026 01:22:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: display: bridge: ldb: Require reg property
 only for i.MX6SX/8MP LDBs
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Liu Ying <victor.liu@nxp.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260329-fsl_ldb_schema_fix-v1-1-351372754bc0@nxp.com>
 <crqzju5cqhvmy5msxvuquydmnpb2ft2t3gsyr6qsre6ccqjvzz@46gfcrelczsr>
 <0d7c7403-4b77-42f3-82d6-eaf2be8e5b1e@nabladev.com>
 <excxf6kxwx44kepc22smvvnirptc4kxpubioxoto7nqleqhoiq@ymch4y6dd5n5>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <excxf6kxwx44kepc22smvvnirptc4kxpubioxoto7nqleqhoiq@ymch4y6dd5n5>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282756-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,denx.de,oss.nxp.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nabladev.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:dkim,nabladev.com:mid]
X-Rspamd-Queue-Id: 1B38D3639E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/30/26 8:29 AM, Marco Felsch wrote:

Hello Marco,

>>> On 26-03-29, Liu Ying wrote:
>>>> LDB's parent device could be a syscon which doesn't allow a reg property
>>>> to be present in it's child devices, e.g., NXP i.MX93 Media blk-ctrl
>>>> has a child device NXP i.MX93 Parallel Display Format Configuration(PDFC)
>>>> without a reg property(LDB is also a child device of the Media blk-ctrl).
>>>> To make the LDB schema be able to describe LDBs without the reg property
>>>> like i.MX93 LDB, require the reg property only for i.MX6SX/8MP LDBs.
>>>
>>> NACK, we want to describe the HW and from HW PoV the LDB is and was
>>> always part of a syscon. This is the case for all SoCs i.MX6SX/8MP/93.
>>>
>>>> Fixes: 8aa2f0ac08d3 ("dt-bindings: display: bridge: ldb: Add check for reg and reg-names")
>>>
>>> Therefore I would just revert this patch completely.
>> Last time, I pointed out the hardware is part of syscon, but as a subnode
>> and therefore with reg properties. What is the problem there ?
> 
> To quote the DT spec here:
> 
> """
> The reg property describes the address of the device’s resources within
> the address space defined by its parent bus.
> """

That parent bus would be the syscon, wouldn't it.

> The parent bus is not the parent iomuxc (i.MX6X) nor the blk-ctrl
> (i.MX8MP/93) device. Therefore this is wrong IMHO and should be dropped.

How so ? What is the parent bus ?


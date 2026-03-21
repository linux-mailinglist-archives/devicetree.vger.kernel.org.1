Return-Path: <devicetree+bounces-278493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id FA1DGkUFvmlYFgMAu9opvQ
	(envelope-from <devicetree+bounces-278493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 03:41:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C012E2F03
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 03:41:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6050C3031838
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 02:41:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 102D32C3768;
	Sat, 21 Mar 2026 02:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="UOymTUMy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A98A2701D1;
	Sat, 21 Mar 2026 02:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774060860; cv=none; b=L6nZbg6GncFrs4Dp41qwzVH0UdoLrkEFay3HupRTlIQ1Vh9wAiAxXItiP8IRIdZ/Zi467mWkXpbsp8JZLyDVN86hHVlbwpBzxfXv+VfDWIHhRv3jVR/CYwDwLw5Co2uTp6Il6+JJ3vElUoMrKXunCMlBjEaVTGYYs+DulEcNbXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774060860; c=relaxed/simple;
	bh=WezwR6yjqKcLmYq3VUS1stQABvjTHClX/MXCYcU9iuA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fbkwESVxyySEtRwKdAeYKRSnWqr6yo0XxIZtN3Lx9GGjBQHa1teGef2iY6l/V49Y1N7wWJi01dtpLeylgCfBQ8WoSoiunGqrvTOHjn0EWlvDP71AFltX6k/CkAAMo3avCD2PlyMYebBRUYasTRH88jCshSwykeP7byJV5XVUScw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=UOymTUMy; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3AF90108FD3;
	Sat, 21 Mar 2026 03:40:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1774060855;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=kCrISU8qUqhXPQFXdM70vx2YEH0Zd5UhU/XwvPSjs8E=;
	b=UOymTUMyyQajREmRrKK96xJmXuv1p2B/7ypsxU+yvZOqmNQu7D7Uy746nt9UaVHFKJ9Xbt
	KgWCTYxpqf66Hi63yJZZklSAWUDNScESYl9YZ4WGtgUhtsU1ZNHxuIaeU+bOJHPZeZidE3
	QLG22x4lLAoeXkJCO8htwfA8O9z02zfkHMWfG6BKC6bjE5PvcJtIDZjskwNastBvbay6L+
	pOENrRmQ/ocNH1PXqLb8p0XOL3Z3kzeLXAOU+CR8YdFg56bNKmUeWC+wPnmGaVje87zzjk
	445qYaSYfHhhm93YPNA1bWRStREPhBx6n3ITd+BPjk5shE+WQo2mNXdbd6sLjQ==
Message-ID: <4e75f1d3-29ff-46a2-adb5-78a08f781834@nabladev.com>
Date: Sat, 21 Mar 2026 03:37:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/9] dt-bindings: display: fsl,ldb: Add i.MX94 LDB
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Liu Ying <victor.liu@nxp.com>, imx@lists.linux.dev,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
 dri-devel@lists.freedesktop.org, Frank Li <Frank.Li@nxp.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260304-dcif-upstreaming-v8-0-bec5c047edd4@oss.nxp.com>
 <20260304-dcif-upstreaming-v8-1-bec5c047edd4@oss.nxp.com>
 <b7968f1a-c4bc-4bad-bcf8-407ff2d8db27@nxp.com>
 <dmqbmmpyi3ssvq67iqwbt6ww7tsaik7ifi5dnupmuhep7u5saz@ads5g7ette3y>
 <mx6b5svmvlonil4efuiaxcmtygn7lld3nj7gcxnnauaryt2yed@gohjshakc2g6>
 <40b3d1c8-0cf2-470d-8223-751240061735@nabladev.com>
 <xqy67fmh42k26iagl7wqrh2dbsn7c5fytwbkcksfzagefp327j@s5hg4lpuvy3q>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <xqy67fmh42k26iagl7wqrh2dbsn7c5fytwbkcksfzagefp327j@s5hg4lpuvy3q>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
	TAGGED_FROM(0.00)[bounces-278493-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.nxp.com,nxp.com,lists.linux.dev,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,denx.de,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nabladev.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[32ec0000:email,5c:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B7C012E2F03
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/20/26 9:23 AM, Marco Felsch wrote:

Hello Marco,

>> The LDB driver was always written with parsing 'reg' out of the DT, so
> 
> Not sure what you mean by always.

By always, I mean since the very beginning.

> I re-checked the imx6qdl.dtsi which
> uses the ipuv3/imx-ldb.c driver. These platforms don't use the 'reg'
> property either.

Which is a different driver, although for a similar IP. We are however 
currently talking about drivers/gpu/drm/bridge/fsl-ldb.c , right ?

>> encoding the register offsets into the driver was a mistake. The LDB
>> controls two registers, which can be comfortably described in DT.
> 
> Sorry but I have to disagree on this. It's no about if it's possible,
> it's about if the abstraction is correct and IMHO the LDB is just one
> subdevice of the syscon. For i.MX6SX the syscon is the iomuxc-gpr for
> the i.MX8M and i.MX9 this is now a blkctrl.

Right, and the "reg" DT property specifies at which offsets are the LDB 
control registers from the start of that blkctrl. What is the problem 
with that ?

Look at e.g. imx8mp.dtsi as an example with blkctrl and LDB as a subnode 
with "reg" DT properties:

1938                         media_blk_ctrl: blk-ctrl@32ec0000 {
1939                                 compatible = 
"fsl,imx8mp-media-blk-ctrl",
1940                                              "syscon";
...
2003                                 lvds_bridge: bridge@5c {
2004                                         compatible = "fsl,imx8mp-ldb";
2005                                         reg = <0x5c 0x4>, <0x128 0x4>;
2006                                         reg-names = "ldb", "lvds";


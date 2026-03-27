Return-Path: <devicetree+bounces-281913-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJ2rM/t4x2n2XwUAu9opvQ
	(envelope-from <devicetree+bounces-281913-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 07:45:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1911634D88F
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 07:45:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B622B30488F1
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 06:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F37E322C99;
	Sat, 28 Mar 2026 06:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="ezHRUiTx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CC0130594E;
	Sat, 28 Mar 2026 06:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774680242; cv=none; b=nNHHlvZpxVl2Steh6S/NDTmyKURa8NGVWkGvpWqeyhUCsMjopQtwJDtA9cAzozFFQSMTtwrNmY4wgzF0B0UzQ9lwBW2hLVd+57Bwtko6AdlsMQxgPLH3FewamL7n5kl687ac/tq0yyc72jvwRjeYtXn1ZnGjiAsAidZUNLVACF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774680242; c=relaxed/simple;
	bh=OCQ7xdDKzEC0lFAjkEryn6WP9INTgzW/siQ1oZjwxoA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O5EVof+Dyb2KPTAYba8lnWbmXemaanB373h8Bi/KFrceK82G36RA7mBRQgeAqcw2Rqlr1mpqb/YQWAhp9uxAu+/RjmEHgrfvvER7rCLoVyfvBmfHd9NqC/sTtkK6semIkJd4b96SL4m5jM6b7KjXeAdCe/2vKxpyQGpEOHv9Q5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=ezHRUiTx; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 964F41125E5;
	Sat, 28 Mar 2026 07:43:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1774680238;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=K8IExplj4jNkiy6koIYs6HsbetYK5EUUl0gJcPtFT+I=;
	b=ezHRUiTxuJwQt9p9FGgw0+VcCYPZNLrdcS82esBojW4G5HRjxLzZt9XDmrG5yGqhjfEOWz
	DZMKBGBet8COkiky3tcehlbt9Fjka6XrG6pushgkBdPmTG+iAe63057Au7Z2hCBxfdfINg
	DXGv4+YiV8vyVN/UCd6ZIK9BvP/YnlywaO10Eh4tdJhN9A6MjmtGo7Cf1sa5q7cs8qgs5D
	j+2DNbD2M+suMlEPacgpl3wc+K9FRAEMSElBKXF3ukePZkl77yDhSuoJ9Yoa46+0FRRZg6
	UxYT3L5FZY/fpPIOhnYscWsqUzH425pkUQ+P+v5yvznC7gd/qEE2eIHUabeRUw==
Message-ID: <a4a5284d-6004-46c5-b5a3-f8eb4d9b3680@nabladev.com>
Date: Sat, 28 Mar 2026 00:17:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/9] dt-bindings: display: fsl,ldb: Add i.MX94 LDB
To: Liu Ying <victor.liu@nxp.com>, Marco Felsch <m.felsch@pengutronix.de>
Cc: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, imx@lists.linux.dev,
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
 <4e75f1d3-29ff-46a2-adb5-78a08f781834@nabladev.com>
 <2fe36f04-97d3-4e99-97e9-7a3ac53cffdb@nxp.com>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <2fe36f04-97d3-4e99-97e9-7a3ac53cffdb@nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281913-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.nxp.com,lists.linux.dev,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,denx.de,lists.freedesktop.org,nxp.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nabladev.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:dkim,nabladev.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1911634D88F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/23/26 8:22 AM, Liu Ying wrote:

Hello Liu,

> ... i.MX8MP LVDS bridge node is fine with the reg property, but the property
> is not allowed for i.MX93 LVDS bridge node according to commit[1] while
> commit[2] requires the property for all LVDS bridge nodes.  See the contradict
> here?
> 
> [1] 3feaa4342637 dt-bindings: soc: imx93-media-blk-ctrl: Add PDFC subnode to schema and example
> [2] 8aa2f0ac08d3 dt-bindings: display: bridge: ldb: Add check for reg and reg-names
> 
> To avoid the contradict, how about requiring the reg property only for i.MX6SX
> and i.MX8MP LVDS bridge nodes and making it kind of optional for i.MX93 and
> i.MX94 LVDS bridge nodes?
I would be fine with that, thanks !


Return-Path: <devicetree+bounces-318822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G2dyJ/tHRWoH+AoAu9opvQ
	(envelope-from <devicetree+bounces-318822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 19:01:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0966F0197
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 19:01:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=D+AH1r5G;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318822-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318822-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5A42D30ACCAC
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 16:55:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C36CF372064;
	Wed,  1 Jul 2026 16:55:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844C0370ACD;
	Wed,  1 Jul 2026 16:55:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782924920; cv=none; b=VLMC3ONh1hKnY/LrzssMMZ5DDnM3OskjVwV41nrQkea3tQV/8LiFX+mwK5uO8g+cNd7Rs77Uce5/Nuo3wdkn+w1/2ZMoi/jlFwghpQXXvx80SsacxxORhF9+pYiN/ITgmqpge2Uwq57w4HGnlp3pceirbfcSiarHSxHN530aekQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782924920; c=relaxed/simple;
	bh=cmD1OfhdgkZYg7FYTHmyqOWvRC0DoAw418/B4w7hUhk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JcVeeV5yPL3IlRVgnpV8MaklRG1p4U4V7hAGHpz9Ia6Bh+edAvKfFjtUz7gp8RrGBE9f0fUNTGbSj8Klh2OF/7w7oX3SgXyP8QOLq3dFvXebVkmJT0dV9Ce9Xt4ZyQzY1MOxKJi32l4VKS4BMpT9fGxUkpF9VzC+kdWUOSlgXQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=D+AH1r5G; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782924917;
	bh=cmD1OfhdgkZYg7FYTHmyqOWvRC0DoAw418/B4w7hUhk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=D+AH1r5GH9ujUL8tJqGzluGTZjxMS5fgy+Mx3d5Wu0EpUIXgHUujv9ZVhrFxkM6ZA
	 OyP2X/uPDUMjVzm7v7F/V62Kg8F1/YZxXJgUldYQFPlnin6R8UlmhQjiLNkXFrKBUw
	 aX/lPqElceZtAcp8QH7GXZm97tZMh+MSlyLSX/As7EZ5n4YS19uFtpGRLoYFDRRr52
	 NXZ8t5eawRotF76S4FBDym7zg3EKOfiXPrj9mzfFfY5fp4FUKRCEakEyEh3WWugxTl
	 9k20ZxuPuRnVqca5w4ndppDaXLKXv9R+t3BSFWcmigiQqK4nb3bH8XlNWlpG5cV0SB
	 3Bkths3eO1adQ==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4B9AE17E0521;
	Wed,  1 Jul 2026 18:55:17 +0200 (CEST)
Message-ID: <672ed995-7386-457a-a013-9816ed413057@collabora.com>
Date: Wed, 1 Jul 2026 18:55:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: phy: mediatek,tphy: Add support for MT8189
 SoC
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260701-mt8189-dt-bindings-tphy-v1-1-5848a2be8303@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260701-mt8189-dt-bindings-tphy-v1-1-5848a2be8303@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318822-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:louisalexis.eyraud@collabora.com,m:chunfeng.yun@mediatek.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:kernel@collabora.com,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[collabora.com,mediatek.com,kernel.org,linaro.org,gmail.com];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BC0966F0197

On 7/1/26 17:36, Louis-Alexis Eyraud wrote:
> Add a compatible string for the MediaTek MT8189 SoC, that integrates a
> MediaTek generic T-PHY version 3.
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



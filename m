Return-Path: <devicetree+bounces-271469-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNbmFl1RqWmd4gAAu9opvQ
	(envelope-from <devicetree+bounces-271469-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:48:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E6E20EE54
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 069803048904
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DC0D372EF3;
	Thu,  5 Mar 2026 09:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="MpcnuxTw"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65AE833F580;
	Thu,  5 Mar 2026 09:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772703967; cv=none; b=E66AlREegl6V3xqonQgUWQ+qVUmt3nCJqQOGLF9lfkZhn4WkLYBE6HVYmMS5F3fUJz9WnRA+36lMCHp+WS2QKhMdae5KI7DxjzyM8prL50COK9c2TSlPXlYuRDrIaH4c1fC4TGtYI31mUIA0nfekal81E55hOwpg8RIKtBrgIDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772703967; c=relaxed/simple;
	bh=qI0vQGpQ9J5PU/VHkTMEyG+Jjq7ShhP2iWcDSkeEoOQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W6R7eNksnR5h++0cvhVPdrk24TT9BWZ2z8OKP8p+JUFdV5diwXy2ghbwhLBntSN8CcYPmSSxp/civSiEQjN5NOCqlG52bbS1Ana3QpXlxqPt6igunxeKW6Db4L+H84+0591jciRvoAkZj1I7FndrywOBPyw1kBrB+ZV+wqJjXSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=MpcnuxTw; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772703964;
	bh=qI0vQGpQ9J5PU/VHkTMEyG+Jjq7ShhP2iWcDSkeEoOQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MpcnuxTw8ZkFdrdd3UtOodNtxRSjJymvguf0Jy7iSET2l3sZUfuO4DBCjBk1MmiPA
	 b/ylMB4Pnfa3kAauLGYhBu4hcHr6ssVNaCSr36tfnvVkOiFEsSTMFSnXgkWpf6LWpf
	 njyJPuIWaky7wPzghqKdthSAXnr0m9Rgj+qIf6PWI1fz8nYwWCUCORZUdJA+C7LK6A
	 GRkuL0HWBsvIu3kG0xszr+FjcG64YWzp2U4tNeHVzUOHekL6wHMpOiv7y5OjLRvhcW
	 evXc+1m+B4x7GWbQL4oGtCgZFcFp09e/vXxmBwIDOrJdUpOnWktXDoA0fxlOi+Yaxu
	 71IXy2/37cV3Q==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EE70517E0454;
	Thu,  5 Mar 2026 10:46:03 +0100 (CET)
Message-ID: <94465ca7-b3dc-4736-9d58-4024f2494e54@collabora.com>
Date: Thu, 5 Mar 2026 10:46:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm: dts: mediatek: mt6589: add basic support for
 Lenovo B8000-F
To: Akari Tsuyukusa <akkun11.open@gmail.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
 sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20260304192417.818211-1-akkun11.open@gmail.com>
 <20260304192417.818211-3-akkun11.open@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260304192417.818211-3-akkun11.open@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 05E6E20EE54
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271469-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,mediatek.com];
	DKIM_TRACE(0.00)[collabora.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

Il 04/03/26 20:24, Akari Tsuyukusa ha scritto:
> Lenovo YOGA Tablet 10 (Wi-Fi) - B8000-F is a tablet which belongs
> to the "blade" product family. It is powered by MT8125 SoC,
> which is the tablet version of MediaTek MT6589, and has 1GB RAM.
> 
> Like other devices in the "blade" family, it uses a framebuffer
> initialized by the bootloader at a consistent memory address and size.
> This patch adds basic support including UART and simple-framebuffer.

Okay, but this is just a simple framebuffer and a UART; while it may be in some
way useful, there's already one device based on MT6589 that was upstreamed with
just a framebuffer and a serial port, but then didn't receive any more support.

Could you please extend your efforts a little and push at least some support for
clock controllers and power domains for the MT6589 SoC to make it at least barely
useful?

P.S.: My intention is not to block you; I very much welcome efforts to upstream
smartphones and tablets, but that has to be real upstreaming ;-)

Cheers,
Angelo



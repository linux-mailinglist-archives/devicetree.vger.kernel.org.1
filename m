Return-Path: <devicetree+bounces-267436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFINJc1anGmzEgQAu9opvQ
	(envelope-from <devicetree+bounces-267436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:49:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1432D177439
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:49:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 857DF3011C44
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEBF921CC7B;
	Mon, 23 Feb 2026 13:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Vd7OLWX8"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97FCC1D5170;
	Mon, 23 Feb 2026 13:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771854281; cv=none; b=mpypLhYEk2sFmrP3kmxV5gGAksXdXNKeRFeCRHYLcNLOYgIG3R5IjLBdD3qUSdS3FAcdRJ6aEdzlbqVCz7a2m1jQnHCrxO3WGIZUl5jC76RA8JaZUTgzU8l8h9/eMxdO61Z5L0wKz2Y7fwfQETEqA65W587AoFffeYWzZKO4Jm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771854281; c=relaxed/simple;
	bh=acMrGJNdojnzZ6jicbdncch2AzpkhBiFzlmsdz3QkPo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G5OJiZLx5P6iffczA7ecJ8eRMUu+YMCY18zSYYR0DohvClB0Ijl5NI7lL+aHzE1yCN07Hl0wWzBQpPoxnWafSRhgFcd9Z/fNmgCm2+ZPjSqr2R5lqyUNZp32h1nxJKS1/PjQFN8K/wS3tKgwh0yrELBBeBVqhw7zM8Dr8cPNDkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Vd7OLWX8; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771854278;
	bh=acMrGJNdojnzZ6jicbdncch2AzpkhBiFzlmsdz3QkPo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Vd7OLWX8Dc+Jh5op1aOlT/jS9Tv3AqwTrgGspy28Lr1Hdb84hQxzeyP0TxZVhGRdd
	 vQsMl/Ndvb6U4cNDCZvLBFiXagTI9sgpQhsDZ9zy/4YssDuf1Y7zbbfUmDi3SmnUzR
	 6zKF6hRoDNA36EZENTeizb+spvgdhudrAt8tOJiBQbfg9vhu+uOBNTpeWINWJV86mC
	 qCo1Xd10VylZovA5RBP0OW45IQQRNMnJs0z9c7sO6LIB6nMRhCfEnVlZibIN6+QwCr
	 84rwVmAY0ab+52lSE8siQlir1P8fiqUVfySKPFzcSXynLZrccysINCG8NeQjn80Uiy
	 UlUeEeUhk+wAw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6D04B17E04C4;
	Mon, 23 Feb 2026 14:44:38 +0100 (CET)
Message-ID: <663a0322-1a9b-45e7-9233-93592878bbaa@collabora.com>
Date: Mon, 23 Feb 2026 14:44:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: mediatek: mt6359: give regulators unique
 names
To: David Lechner <dlechner@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20260219-mtk-mt6359-fix-regulator-names-v1-0-ee0fcebfe1d9@baylibre.com>
 <20260219-mtk-mt6359-fix-regulator-names-v1-1-ee0fcebfe1d9@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260219-mtk-mt6359-fix-regulator-names-v1-1-ee0fcebfe1d9@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267436-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,gmail.com,mediatek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 1432D177439
X-Rspamd-Action: no action

Il 19/02/26 23:55, David Lechner ha scritto:
> Change the regulator-name properties to be unique for all regulators.
> U-Boot cannot handle duplicate names.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>

Okay, makes sense.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>




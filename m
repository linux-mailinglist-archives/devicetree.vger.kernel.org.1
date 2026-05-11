Return-Path: <devicetree+bounces-295419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DfbK5GlAWpDhQEAu9opvQ
	(envelope-from <devicetree+bounces-295419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:46:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4BF50B3A1
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:46:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1E51430254AC
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:31:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42E563A257A;
	Mon, 11 May 2026 09:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="NURSKGnY"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E003F37881E;
	Mon, 11 May 2026 09:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778491891; cv=none; b=D8xthFE3jWOwDYqn1P4FWjrNpGlID7jvT9FL0KHddytIMIVpd9B1DT1pkcCrpeRmt6IguoG+zq/LvksuiCUInrXNS8kxlZhhTMtYI0aNKjXjTBxjSRSsbjGXMnWXnJypGfN7+XKQ8czcaJu17zB7Eo3do25iECUnAFCy9ubCDMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778491891; c=relaxed/simple;
	bh=nvTUNLnx9vUQ7AVLQ9mpVIHJVwNY1VmyH0f8WzQiWrw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yp/PX8ojZ/vxmNTLdzC31g9MBtwPDazG+Pt4/26cTTHRGiUPzsR0uBkwa2XKSAtQEwPsYmAszEp0o3aX3igFnFlvyF3xLzCWxSYq5pEtMZih+/nfGUXWNVRApqFKxoB1Z4J/Q4GY6iyaZ7VANtLwzroglhdkUl2SdIPvKDhuapY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=NURSKGnY; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778491888;
	bh=nvTUNLnx9vUQ7AVLQ9mpVIHJVwNY1VmyH0f8WzQiWrw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NURSKGnY1+wvzAV1y+sFWvgNRH55eIYD6SGtU3lrYGDzMxEHAZ/I3hxsCfqBq51KH
	 nOdC+OxdDQyBJHp9V1ZZD89oqGKCje8peM+kSqFESZ6WcI1zagmOl5Lu7spvSlfWeq
	 Qk5wn1DdFRczqyWVpSGMqFa5vZj0mIgeYjjAgZ/rUb90WK+0W5AZzVcRVjwH7QLYJP
	 bgMHUUd5xE/cPI9IezhfHeOpUYF4CPTTaaINTB4Rp9nPIYvgyvPExSYsvW6UhXgQxQ
	 8pskSBERlEaZ9XEu6jNrbqe2sEzgn+69F5VcRtIkjU8ukl7aosvo7qnePTf3Tt+0QY
	 06Q2x+Xhj/0XA==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8E57C17E0698;
	Mon, 11 May 2026 11:31:27 +0200 (CEST)
Message-ID: <3f666523-15bf-482e-a9ea-085883b3d838@collabora.com>
Date: Mon, 11 May 2026 11:31:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] regulator: dt-bindings: mt6360: add buck regulator
 supplies
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Gene Chen <gene_chen@richtek.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20260414-mtk-g1200-pmic-cleanup-v1-0-2a7193ed4e93@collabora.com>
 <20260414-mtk-g1200-pmic-cleanup-v1-1-2a7193ed4e93@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260414-mtk-g1200-pmic-cleanup-v1-1-2a7193ed4e93@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 2C4BF50B3A1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[collabora.com,kernel.org,gmail.com,richtek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295419-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:mid,collabora.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On 4/14/26 13:44, Louis-Alexis Eyraud wrote:
> MT6360 PMIC provides 2 buck and 6 ldo regulators, that have each one a
> separate supply.
> Currently, the supplies for the ldo regulators are described in the
> dt-bindings but the ones for the buck regulators are not.
> 
> Add the descriptions for these missing supplies.
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>




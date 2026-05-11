Return-Path: <devicetree+bounces-295414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLBjG3KkAWpKhAEAu9opvQ
	(envelope-from <devicetree+bounces-295414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:42:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AF150B23A
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:42:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 846023047BD3
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DCC63BD62F;
	Mon, 11 May 2026 09:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="LrM0grUD"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B57413B27D0;
	Mon, 11 May 2026 09:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778491531; cv=none; b=hfW2CA+Z1iSsCslf42/AnVzG7a7dR+W8fpuiip+/TsG4S27ap7UKNXtnclzIdY23ZDp+A+oF3T0Mx143mWkOnMCfZclVQQRg2k+tScKnWysbbMJasHzt9qctq+07+UIxJpamJBFUTYnGT6tglXtIgzCo/ZjQJbSxqocar7xzMFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778491531; c=relaxed/simple;
	bh=pO/xrPSg65FYo/gA2pRRqpmuvg9jN8z+/J7WeN3Kn6E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eh6wEpkAD+mAsXSyjdteqDtJm5MZGZ04HkF3+zcDHadN1u6Tirx/z+dN4zV+5EmuK/ZVb4vR4nJtnMxTkEybm/B429OH7d8NoHK/HSKV/gWeSvE3Pww+ByXwy1/jY8Ts2Rf+jsZU5G0O+DAK/E3hoO9iLyQYtCs4hS68/QJ0FfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=LrM0grUD; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778491527;
	bh=pO/xrPSg65FYo/gA2pRRqpmuvg9jN8z+/J7WeN3Kn6E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LrM0grUDkRHlaY9gpXL0GF6fUb9FprNGIxJP6Lp6kB4aDWgC89gHTprnaKvxgyaLm
	 RBdWrpd7te9oxavQobVegnCxs3IV37LX9n8wVZ57j0u99Hq7XmFFkvWBjHPRjz/7iZ
	 9tr9inuglXvvcBy66acZN4y5XoX2RTkRbPyhfxIMRmJg5T20NCgAfLeWaMfWZs0TBD
	 IERHmfvvZLvQhui3laF7/hDxqn8erZ4teqxCh/cET1H6OBKzum0DjbWvZw9fYTgj5m
	 HdGBHB5ZVG0pkNV0pJtSgWcq12e5fn1r0DokGNP/gShjBFJw6qFS+/179xfUPq9tWR
	 ml9uqndWWb93g==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B6C7517E12E5;
	Mon, 11 May 2026 11:25:26 +0200 (CEST)
Message-ID: <d8aa4ab1-74c4-45b6-a60e-9ecce5d5e3c7@collabora.com>
Date: Mon, 11 May 2026 11:25:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] dt-bindings: iio: adc: mt6359: Add MT6365 PMIC AuxADC
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Chen Zhong <chen.zhong@mediatek.com>, Jonathan Cameron <jic23@kernel.org>,
 David Lechner <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>
Cc: kernel@collabora.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, linux-iio@vger.kernel.org
References: <20260429-mediatek-genio-mt6365-cleanup-v1-0-6f43838be92f@collabora.com>
 <20260429-mediatek-genio-mt6365-cleanup-v1-4-6f43838be92f@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260429-mediatek-genio-mt6365-cleanup-v1-4-6f43838be92f@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D4AF150B23A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295414-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[collabora.com,mediatek.com,kernel.org,gmail.com,baylibre.com,analog.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:email,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Action: no action

On 4/29/26 11:44, Louis-Alexis Eyraud wrote:
> Add compatible string for the AuxADC block found on the MT6365 PMIC,
> that is compatible with the one found in MT6359.
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>




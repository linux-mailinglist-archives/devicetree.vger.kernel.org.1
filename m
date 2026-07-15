Return-Path: <devicetree+bounces-326832-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id okDhF+tZV2r1KAEAu9opvQ
	(envelope-from <devicetree+bounces-326832-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:59:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D0175CB8D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:59:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=IRPqg0sA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326832-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326832-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AFF323009F30
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:59:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 409DA432BC5;
	Wed, 15 Jul 2026 09:59:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3A53C3450;
	Wed, 15 Jul 2026 09:59:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784109543; cv=none; b=LgHDd6hfMPWfJIXFWz9nLr66GJuly/wNve4D7g45l+QTjtICTkxoDivdNYCyefEYMF7ljQGrafG7moL4tpSngHdeZDXU/vlfgZET+CwhdxIqqpETzu9azWaaDr8ws9IkyLmznLe1oTrK6IiE2L/rvqvUx4AvmdnDeTdgLzuIYxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784109543; c=relaxed/simple;
	bh=A0P83uQz8I3cpMmpwBvFRnuqr2Xe0F0qmqvYylHFg6o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LPDI38bu6YI3V9KNx4qeeanCA0/zfCs5qbYjv9GI95DUkDCuX/ZQ2PMpUEZRyw0tPBfkD3TNhpJydQMFxC1iTFoHgsv6HGdyWC9xcxw/SzBL1z7esq98FoInSXPkZltnACQCsy5TrPsxsA4MpTaUYu4sDgwrqBtIgB8u8SnSt9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=IRPqg0sA; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784109540;
	bh=A0P83uQz8I3cpMmpwBvFRnuqr2Xe0F0qmqvYylHFg6o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=IRPqg0sA1xSsSZQ8f7VHmUKzJdLsuS1PyKjMse96nXIdRp+/5rkSL+JYaLUXUNnOs
	 7dJ0EhAafV594ZrIYCgF7rwy/jnpcWA1i2FG0rb6DLrb6LWMpi2Zy5qQdughkMSeZr
	 NoLGP/uNCYzTkgIHVQZbiWaLIHqWPClFPfr6T8gwslmJZPtiERX+xWflsmSAAKAAfr
	 RyLoS5Hx0J1YysadOlI/tWOOCIygUIBMxrLiuGCsYw8L/xrgdoqDbWpwNOjNSXOZcw
	 v7UbfSfz9sLztcOqAmc8oRFXVZUwOdoTMISVyBk+RGsrHo3Siwu+VX4NVyAADujK6e
	 aEY11kbp7bgQQ==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 834EF17E0928;
	Wed, 15 Jul 2026 11:58:59 +0200 (CEST)
Message-ID: <d3932209-04cc-40bc-9bb1-f31c365e93ca@collabora.com>
Date: Wed, 15 Jul 2026 11:58:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: power: Add MediaTek MT6858 power domain
 controller
To: nikolai.burov@jolla.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Ulf Hansson <ulfh@kernel.org>
Cc: Matthias Brugger <mbrugger@suse.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org,
 Nikolai Burov <nikolai.burov+review@abscue.de>
References: <20260714-mt6858-pmdomain-v1-0-4f09bbb822e0@jolla.com>
 <20260714-mt6858-pmdomain-v1-1-4f09bbb822e0@jolla.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260714-mt6858-pmdomain-v1-1-4f09bbb822e0@jolla.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326832-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[jolla.com,kernel.org,gmail.com];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:nikolai.burov@jolla.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:ulfh@kernel.org,m:mbrugger@suse.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:linux-pm@vger.kernel.org,m:nikolai.burov+review@abscue.de,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,m:nikolai.burov@abscue.de,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,review];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jolla.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A8D0175CB8D

On 7/14/26 15:43, Nikolai Burov via B4 Relay wrote:
> From: Nikolai Burov <nikolai.burov@jolla.com>
> 
> Add a new compatible and document bindings for the power domain
> controller of the MT6858 SoC.
> 
> Signed-off-by: Nikolai Burov <nikolai.burov@jolla.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



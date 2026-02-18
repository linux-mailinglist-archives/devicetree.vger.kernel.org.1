Return-Path: <devicetree+bounces-266366-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kF7rG4qTlWn1SQIAu9opvQ
	(envelope-from <devicetree+bounces-266366-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:25:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7BB1555F2
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:25:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9B28D306F96C
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98E612FE578;
	Wed, 18 Feb 2026 10:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ELYwlYbw"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D692FDC40;
	Wed, 18 Feb 2026 10:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771409948; cv=none; b=s1/m65Fo/ntSGBxk3aUrWxA8vowBS2s/OBGoWrdzw/swDwBLepJDVy9lrJqlnSflieioR6A1UembdGFxJu0Q/WOM9k2i2dAWnP3EZbJ7tH3Ij84u25aXfTgl5snQdOIEq90dede7d1YkBgq17NjlWoxvq8AwCHd0pvE1inc1iGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771409948; c=relaxed/simple;
	bh=2coN9jW71FYXIRiPrOpZ5PPRf8y8jTjKFd2PO6U15is=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hw/Je9d4mp8nDsQO9zeeGdtybjjOPiIgERCzRx3b8Sa3Vy+PlrenzerYrPpALC204JzzgOG4lxUfdhE8KqN12Vx+EfaTMFnOVKtviZKNqOLLw+zE5untuOV4mCSHjdHIOkn0GXZsaWtqNP4/GAcAPmPFR4T2s0MoGjSzP8m7A3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ELYwlYbw; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771409945;
	bh=2coN9jW71FYXIRiPrOpZ5PPRf8y8jTjKFd2PO6U15is=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ELYwlYbwvYuEeyCRJa6Cbo1oxczDp7T7m7cu48avxC3nno4XuXzlL1dIfeB7uCYFh
	 al0JsyEa3GpaPicOo1u9zyqWHHlDeUmZn3GmEcTvUghobbbT2c5jp6SfxY7rQ38KKr
	 dYvyhx/Mu68AFRovpLWUZh3Owy0BkgsVezHtG273HRjYIuGSm6DCys9aaRv3MtRmdT
	 Lmpz77dt7aFU5GUnl0SoxFJlJh0XOS4hQk0LJIAGCukjNB2XLKcddLPwo14tKsOakF
	 mqd+rtvgNyZDJYDb/CKLWyssHnP0Nd5FQ+ym5Ne2DMurYtBEpmLImLf16Uiezen5bi
	 X8tbH5LNvMh9w==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B719E17E13CB;
	Wed, 18 Feb 2026 11:19:04 +0100 (CET)
Message-ID: <d08b312d-0b40-48c0-ac4f-47fa9924f629@collabora.com>
Date: Wed, 18 Feb 2026 11:19:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Add mmc aliases for Mediatek Genio boards
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20260218-mtk-genio-mmc-aliases-v1-0-e218e9f771c5@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260218-mtk-genio-mmc-aliases-v1-0-e218e9f771c5@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266366-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim,collabora.com:email]
X-Rspamd-Queue-Id: 2E7BB1555F2
X-Rspamd-Action: no action

Il 18/02/26 10:23, Louis-Alexis Eyraud ha scritto:
> This series adds mmc for the Mediatek Genio boards mmc aliases in the
> board devicetrees that do not have them, so that mmc host controllers
> get enumerated in a consistent order.
> 
> This series is based on linux-next next-20260217 tag.
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>




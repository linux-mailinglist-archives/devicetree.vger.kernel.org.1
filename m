Return-Path: <devicetree+bounces-268365-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IHcG3P1nmm+YAQAu9opvQ
	(envelope-from <devicetree+bounces-268365-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:13:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBA2197D07
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:13:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F63B30A5E86
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3DC93B8D6E;
	Wed, 25 Feb 2026 13:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="FGDO428/"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594193B8BDA;
	Wed, 25 Feb 2026 13:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772025181; cv=none; b=ZgS8DrZH0PKg4P3PBH92gPSl7wNZEvvDHxS6HlhoYs+trr8vzprH7fsf1+8JeuniFjyTf0HN+W44NOBKPPv7DquRBLjFOgvzUzzsyObRK50Zapuq765c5txjQHQZ9v39kIZVBy7yWxSwigAOnlV2pHJcxAMExr2+NbgLCNyHVmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772025181; c=relaxed/simple;
	bh=fKTvk2bdlGxigaQUePLcxKAmdx7qaMnBZz5+BH6D6G8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RaPjP3kqhkveB1mklHszns1stowzIz7t2r5rO5aY7aDpo0SUbKMcBo2juJ0Eeg3mj2PuU3SCWLpjtKWH1NJhfudPHrDZ2zpvZwJ9j2PnF2oN679eLkSTCV/lv5pigXbrlq/rL3p97wjZy8LI2TsvknWrRgVyV4btoO4R4O8mbiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=FGDO428/; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772025178;
	bh=fKTvk2bdlGxigaQUePLcxKAmdx7qaMnBZz5+BH6D6G8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FGDO428/tIvDRv7dhzqQd3crpd+yl0iAcRp7IXOB6120WPyLjyy5eBiXvNcTjSigx
	 uUXx+1EZLYv1hNPKEXg6V6eNO2rELN8ek5VM3+EgiLlxVVIYWdweoURkQV7ZTSUIP5
	 fxmqnT9bYUbf2SjH2KYIOOm22sW6J8gZ8ru04Hm9nLAPJN1YPumMBMVsfvrNjiwkdC
	 rO4fxm2o7wZwTB6Od+u5TPP7568UvLmNt8OqznccIubwDZbS6BjWLfLUkidHNgRbzO
	 jvYkPzOFi41KCA4FAKvtqC6GybgaZGs/V34hNWTV3zYjrnalNdtF/Xgumw7KsqcLse
	 Mmy7OGBkVT5JQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2D29617E0D50;
	Wed, 25 Feb 2026 14:12:58 +0100 (CET)
Message-ID: <552bdc40-aef4-4ce5-8cdb-3f87f1a5b75e@collabora.com>
Date: Wed, 25 Feb 2026 14:12:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] arm64: dts: mediatek: mt8195-cherry: add WiFi PCIe
 and BT USB power supplies
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Ryder Lee
 <ryder.lee@mediatek.com>, Jianjun Wang <jianjun.wang@mediatek.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bartosz Golaszewski <brgl@bgdev.pl>, linux-pci@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260225072225.3345307-1-wenst@chromium.org>
 <20260225072225.3345307-7-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260225072225.3345307-7-wenst@chromium.org>
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
	TAGGED_FROM(0.00)[bounces-268365-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[chromium.org,gmail.com,mediatek.com,kernel.org,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
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
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim,collabora.com:email,chromium.org:email]
X-Rspamd-Queue-Id: BEBA2197D07
X-Rspamd-Action: no action

Il 25/02/26 08:22, Chen-Yu Tsai ha scritto:
> The MT8195 Cherry design features an M.2 E-key slot wired up with PCIe
> and USB for a WiFi+BT adapter. Previously the power was just enabled
> all the time with a default pinctrl setting that set the GPIO pin high.
> 
> With the PCIe slot description DT binding in place, the power supplies
> can at least be added and tied to the PCIe and USB hosts. Once the
> M.2 E-key binding is merged, this description can be further converted
> to an M.2 E-key.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Eh, the binding is a little confusing (as in, I'd call the node "pcie-class" or
"pcie-port", but it's not your fault. Let's just go with this for now.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

P.S.: Thanks for the `status` cleanups too!


Return-Path: <devicetree+bounces-322539-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nWQiGMH2TWoyAwIAu9opvQ
	(envelope-from <devicetree+bounces-322539-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:05:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F176722753
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:05:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Db6dN4K1;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322539-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-322539-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 53462300BD5A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 07:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 564B03DF009;
	Wed,  8 Jul 2026 07:05:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C273E8346;
	Wed,  8 Jul 2026 07:04:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783494316; cv=none; b=tvC1g7w7VS1lMuE2wNmFoZnmK6QmmnZdUMEoEmIafuYDxGEAHcJTUdvmgXwj+k7JzWG+7DgtMwJ/5CZ548tu256l1DoXx3wZrVNuK/j4LDJWKdmVBlyl4LzRx8YaxS58Kbw65OxUKkYnTkOyB159uhUyR34gYIn1lWw0SKwHOl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783494316; c=relaxed/simple;
	bh=sTtDkbauuTT3a7DZ7U6d9xTz2Zyf1AVhprqSR1RmDGA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aazLsVCx8RvRsPkYVOBNNRtsS6ym60HjnFsyYmHw3tmr3SEmNIP+RXIqUvAWS8B4Zbiw7zYo1HN/OrwvqfSj2BBDvA5fm5E2F5ijTSrS4C7Y09/XEHC/7njy750bbzmkAvL15091wPRCWUOT8otLtC7e0qKU86GFwKleI3bQYU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Db6dN4K1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4DAA1F000E9;
	Wed,  8 Jul 2026 07:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783494293;
	bh=blQnLE3QF5OGl50/VGSrziVsUsYR4d4CLR+QxxJMASU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Db6dN4K1AdG21HPkpWzWQ0eFqmwQLsnC424gTKAuHfBxcTm1bqcX+NfJWjpWojk6c
	 FJXPhJVoa9oLvP373F02aYAhcQYxvuZTvhG4eyuB6h3NXZaJmdj+Q86WhIKoT56nuC
	 WRHVD6CmkAXdR6i+OJs4T4wFfHJqHB4/KSoKqPnPxXGtaqVOte3QZ0zNadqm4iSMaQ
	 ZX1hHbT5E6fQkkZcJ/b5rVm/SThbozAz7BjvLmX4gbL3t098nmtc2BXsUHDDZajoJ2
	 pECPGKxGIc76g6sySi7ZqMJlVC2u3ftXJ+4jFZ8D++wpvdLTBJkJoGdtAC6MoYysCw
	 tlPcRdwJcGEgQ==
Date: Wed, 8 Jul 2026 09:04:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: ulfh@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, nfraprado@collabora.com, 
	irving-ch.lin@mediatek.com, macpaul.lin@mediatek.com, aford173@gmail.com, mbrugger@suse.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, justin.yeh@mediatek.com, 
	kernel@collabora.com
Subject: Re: [PATCH v2 1/4] dt-bindings: power: mediatek: Add support for
 MT8196 direct HFRP
Message-ID: <20260708-poetic-ebony-tanuki-dbdbe6@quoll>
References: <20260707155535.199383-1-angelogioacchino.delregno@collabora.com>
 <20260707155535.199383-2-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260707155535.199383-2-angelogioacchino.delregno@collabora.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:nfraprado@collabora.com,m:irving-ch.lin@mediatek.com,m:macpaul.lin@mediatek.com,m:aford173@gmail.com,m:mbrugger@suse.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:justin.yeh@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-322539-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,suse.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,vger.kernel.org:from_smtp,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F176722753

On Tue, Jul 07, 2026 at 05:55:32PM +0200, AngeloGioacchino Del Regno wrote:
> Add support for the HFRPSYS direct control power domains in the
> MT8196 SoC, controlling power for the DisplayPort and for the
> Embedded DisplayPort Transmitter IPs.
> 
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/power/mediatek,power-controller.yaml  | 1 +
>  include/dt-bindings/power/mediatek,mt8196-power.h             | 4 ++++
>  2 files changed, 5 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



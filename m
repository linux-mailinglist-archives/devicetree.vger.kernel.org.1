Return-Path: <devicetree+bounces-314387-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UPvoBTgVOWoamgcAu9opvQ
	(envelope-from <devicetree+bounces-314387-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 12:58:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CBB6AEE85
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 12:57:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Sn7jRwKY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314387-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314387-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49EB4302DB4D
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B12E23905E4;
	Mon, 22 Jun 2026 10:57:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0941379ED7;
	Mon, 22 Jun 2026 10:57:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782125855; cv=none; b=P8JFhPPQep49BsIjktE5wuhmZF81xsM1KaYzW1hYT+xUvOLn5xldIE4EHCjryYPfVtxJebkfPOYQ7mmFSG+vPDjH8HnS4E5cggoEyKYZYkgh8m514cnPUd59r+DGW8+m5LYFPFQp3+w2isIcetZnd7oxVujG60WliebRmD3VORE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782125855; c=relaxed/simple;
	bh=knBIb34V109c16R60b+IdNa39hgtob6UwbXEEZnmjno=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cAcCIB+1Q1aAPJO68KL4rV2o6vbIXagqSk4HWW/2t49X0qT++kO/8gJkEssT/z3G0UbBmqY3d7Sp8LWKFxV7hHm08F1nJB8727yY50qcw4taRuCrfyE2zhYTEvpvxghfPNrS+nm8jfKx0L1DIlTOEW2MqWkrcF+XLR3lZpqj7zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sn7jRwKY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FA041F000E9;
	Mon, 22 Jun 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782125854;
	bh=BeHcTS/z7AXMwiJASQFJXorWiTpaBk9eiyGNMafLTr8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Sn7jRwKYodQnEtNuXEzdY0BHPGq+TWV+tnYZMBNkkotfzIp8krj8T+jcHMC0ZmrhN
	 UWbHcpIXdDwpEkuf7d34w8jDD2bNkfP4xUAaoR22ZFRYtKL7qNsOHIFlWEUOezGiFw
	 +1c+SQ1y3+q6K9cLu3mhnCNzX0Dh8jP21lvACK85aEmrkqI/HbsCCWIVuKs0D4ztNl
	 OPoW3rNuNwPkLxYPfAcyvx1Wvb9E+zJb7NjVeY7GsxTSVUu8FB2z9aMbZ01uGHuGMI
	 A6JJrSfZtwDa8dm5w0o7vhMQKehDT4+sxylTg35NG0QE335rWgC5b4SsR39vxsQL3f
	 z16vM3ONKeSxw==
Date: Mon, 22 Jun 2026 12:57:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Zakariya Hadrami <zkh1@proton.me>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sean Wang <sean.wang@mediatek.com>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Guenter Roeck <linux@roeck-us.net>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: arm: mediatek: Add MT8127 Amazon ford
Message-ID: <20260622-holistic-scarlet-bison-23e25b@quoll>
References: <20260617-mt8127-amazon-ford-basic-v2-0-6859e29e72a8@proton.me>
 <20260617-mt8127-amazon-ford-basic-v2-2-6859e29e72a8@proton.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260617-mt8127-amazon-ford-basic-v2-2-6859e29e72a8@proton.me>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314387-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:zkh1@proton.me,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sean.wang@mediatek.com,m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-watchdog@vger.kernel.org,m:matthiasbgg@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,collabora.com,kernel.org,mediatek.com,linux-watchdog.org,roeck-us.net,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58CBB6AEE85

On Wed, Jun 17, 2026 at 10:37:00PM +0900, Zakariya Hadrami wrote:
> Add entry for the MT8127 based Amazon ford tablet.
> 
> Signed-off-by: Zakariya Hadrami <zkh1@proton.me>
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



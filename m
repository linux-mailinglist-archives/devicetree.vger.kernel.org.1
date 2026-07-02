Return-Path: <devicetree+bounces-319142-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u3JYNvAhRmr/KQsAu9opvQ
	(envelope-from <devicetree+bounces-319142-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 10:31:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFC46F4CD4
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 10:31:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hSO+EeXa;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319142-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319142-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 133C430277D0
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 08:26:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AA9B42980D;
	Thu,  2 Jul 2026 08:26:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8473672B8;
	Thu,  2 Jul 2026 08:26:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782980763; cv=none; b=iwetyBDNUHZn/g7ni4q2VOMK7ADdFTwUq4wOVxkfB52ZQsrVFCaqZrZTBhHliN5jkuRj0mo1W2MM1EFSlwVvQwKVZAx+orOqegyjHkDHbpPQK7uwM2FbI6FLlnl6Np8RlbKouJR0/KJcana2nCcRJ6vfm1zdACmwuhW7rUGYogg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782980763; c=relaxed/simple;
	bh=iiv8p5qHlPQWmUtFZtqMFFZMBLNDP6LoFpPF9tl+xrA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kPvA05hTUs3oqhqxyMgfQ9JKCQ2f/bU6IZ+SP2kHpU1opekYTQkJ/FFuwA6CrZCwfq5apbe4xG3W1s/hU0PQOcTEUgCcNhox3v2fY3T5aOK340Ks0P+WfUhU5t9jOZ2+GXfKFYimFCzQ3nZekGzjUrk3gmyeMBWMEYj4vOTFYqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSO+EeXa; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FB731F000E9;
	Thu,  2 Jul 2026 08:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782980760;
	bh=g/YU9h2/+V7xdUoN4efaSbAo6cmdtLPlIo0ezNZnzgc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hSO+EeXaBKdlQzKWkECM/IwvEKdEPNtcQR+uj2ry4hmveWdo4e8F35hw85K0rbtvW
	 tXBX2vI9f0zXgpuRBI2LP9eEsu0I6a3TCzVa95GPMwGtzTYe+dV2qKD2d5wM0dmzM5
	 N9A4+n61wB4w2V4zHEzJNyXUXAyPqcsroOKLphCgdFhI5yjAx7Y3TaQTqQ+eiNK1nu
	 8HhH3IVQ6X3Q3fUP8MlHzRUFUfZTtRGySLuljFAR5PqHEU4I6jXGOBGeq8rq9gXOP2
	 r48vuy5CzjHmiwsk1exQ6Igz9CCBVOlyL0CuaLxmVUnfRrg+tl1j4/Nc49WfDiI7bm
	 eHlx5OMd4YKkg==
Date: Thu, 2 Jul 2026 10:25:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: Ryder Lee <ryder.lee@mediatek.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Jianjun Wang <jianjun.wang@mediatek.com>, kernel@collabora.com, 
	linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: PCI: mediatek-gen3: Add support for MT8189
 SoC
Message-ID: <20260702-evasive-golden-toad-d3437f@quoll>
References: <20260701-mt8189-dt-bindings-pcie-v1-1-7c7a65087654@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260701-mt8189-dt-bindings-pcie-v1-1-7c7a65087654@collabora.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:louisalexis.eyraud@collabora.com,m:ryder.lee@mediatek.com,m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:jianjun.wang@mediatek.com,m:kernel@collabora.com,m:linux-pci@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-319142-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[mediatek.com,google.com,kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,collabora.com:email,vger.kernel.org:from_smtp,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2FFC46F4CD4

On Wed, Jul 01, 2026 at 05:27:36PM +0200, Louis-Alexis Eyraud wrote:
> Add compatible for MT8189 PCIe Gen3 controller, that is compatible with
> the one found MT8192.
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
>  Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



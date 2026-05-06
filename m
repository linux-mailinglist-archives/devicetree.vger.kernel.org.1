Return-Path: <devicetree+bounces-293609-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDCNIcxf+2kuaQMAu9opvQ
	(envelope-from <devicetree+bounces-293609-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 17:35:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D12864DD595
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 17:35:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20C8F307EA3B
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 15:32:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79E233ED5B8;
	Wed,  6 May 2026 15:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8XGCe6g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410DA472792;
	Wed,  6 May 2026 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778081573; cv=none; b=KSMKaRtbv0nRK43e5wNcXL8AvKJh7K5yd6VCqL8Rg3ACr9oQ0kv7jVe0x1jFAh+GCoT5KoXfzSLZY71UC0JvzW444K56nRxVJYwwirvxzY1j5giBjRQG0wlMd7N39H/6rtS7DtqeEUR1LgBlHGLz+RwvHUM6M/Rr5Fjd5ojLNzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778081573; c=relaxed/simple;
	bh=zum1bFqqE6ET+3OdOi3NoPnuFsNs2Tr0kQTqHlVTzt0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fg3zkF1Z3vLAG8NEUtV9uQJ5180Qx3/aovv8fxEENrO0wEZSsZPsEkt7fMYgLXuLZKknj725aZSrPylLtT6ShyMMX4OR7gI9YpRp9ENxnZhfDP2e+YRLR9hvfy/Xd+STPzS39pcBOB7FltSNH98/UDcJbDd4gq5sIM/1sY7kf+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8XGCe6g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57EB1C2BCB0;
	Wed,  6 May 2026 15:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778081572;
	bh=zum1bFqqE6ET+3OdOi3NoPnuFsNs2Tr0kQTqHlVTzt0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P8XGCe6gMwHVbCWcAz9IfUGA84Ywlch3e6oZInGSI/VOxy30IX2AGUvHGpGVSlx/4
	 COQjCrKt1bZ6ZDyDSXCqUA89htROrN9FPQ3Iwvc75rz8Xsg3YV9Q71ZU/LryusajXh
	 Cu5o6cNLesDic+osa8bTG7bAi3Pn4UV1he710HLCg1m2vkiMHC8u6V9rZH4RuE5aQx
	 rMhxNdEbSNhwOUHtxT2Vi/F6yGcJXRi5fd0GqOtQFBf3rKb1Zsum8T0Qiov48vP2ZK
	 7TRPhUjPGGoK0nPjgodOh6pa09n7QvM8Ix+/pKRvr29rUe6stlKhJxb6oe/2HTw4ef
	 /0G4v5Y3pFu4A==
Date: Wed, 6 May 2026 10:32:50 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	kernel@collabora.com, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Chen Zhong <chen.zhong@mediatek.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Sen Chu <sen.chu@mediatek.com>,
	David Lechner <dlechner@baylibre.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	linux-iio@vger.kernel.org, linux-input@vger.kernel.org,
	Lee Jones <lee@kernel.org>, linux-mediatek@lists.infradead.org,
	Sean Wang <sean.wang@mediatek.com>,
	Andy Shevchenko <andy@kernel.org>, linux-pm@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH 4/9] dt-bindings: iio: adc: mt6359: Add MT6365 PMIC AuxADC
Message-ID: <177808157001.2166222.1416480244789545684.robh@kernel.org>
References: <20260429-mediatek-genio-mt6365-cleanup-v1-0-6f43838be92f@collabora.com>
 <20260429-mediatek-genio-mt6365-cleanup-v1-4-6f43838be92f@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260429-mediatek-genio-mt6365-cleanup-v1-4-6f43838be92f@collabora.com>
X-Rspamd-Queue-Id: D12864DD595
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,gmail.com,analog.com,vger.kernel.org,mediatek.com,kernel.org,lists.infradead.org,baylibre.com];
	TAGGED_FROM(0.00)[bounces-293609-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email]


On Wed, 29 Apr 2026 11:44:17 +0200, Louis-Alexis Eyraud wrote:
> Add compatible string for the AuxADC block found on the MT6365 PMIC,
> that is compatible with the one found in MT6359.
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
>  .../bindings/iio/adc/mediatek,mt6359-auxadc.yaml        | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>



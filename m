Return-Path: <devicetree+bounces-320031-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sG05BlKXR2oBbwAAu9opvQ
	(envelope-from <devicetree+bounces-320031-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 13:04:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8EB701967
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 13:04:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AtveCQdd;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320031-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-320031-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AA28B3036AFE
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 10:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 821AF395DAC;
	Fri,  3 Jul 2026 10:58:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774F637DEA4
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 10:58:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783076299; cv=none; b=eUHKhq22J6VT+1G5LQCHq8K1W/IfQcC5/rzzLixBfMZ9nDyJ+0i06E9RpWtr84jVAx5v3wmhrigwz6H9YwS4ZA5xHclZ6S0P05bHQLoB98g/9mXi3w+Zpx0y4M/Bcq1iEB6NRmoZIIeUgyMXX3j82Z1E3slfhQpjMRigKKptKGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783076299; c=relaxed/simple;
	bh=ZFtxuI7L7wicBgSK+Q2lFUQ0oAEw9WSqfA3aPejWpVU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YdvKQGPd1JYFg3hgXqVucdXSWZJpWTV0dBQPWcufBR1lsEiJh+HdwIVZFT3WreTkV2lV7tk7NikL8dfCEgVbfIXY2PbVuuGtviBCzJZkF5nicqmvF7NSXWMaQS7ejLpo9EYFKijorj16cF4BxS0+VunebHaEsoLtW4Ez8Hzxzio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtveCQdd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8FC11F000E9;
	Fri,  3 Jul 2026 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783076298;
	bh=VkqT4Vr3kdtjwAWn89RSmy1HMSax7/LTa2L96z38dwE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AtveCQddymukbQuw38VzvqcGX6WGWTpU/r/sFXkgX+shum2KAHDcTB8zi5uCdvocz
	 0ghelxATJ93mUNqWhQ7YcbiBOs3bgzTTGtDdc8VsgnLeIuKg62JPJdr914RJmMUfnq
	 mpX5fK+KtgrgGJfKW82ksTslRNgAuOszpv5EpkRruL+i4ASZxSIHjpV3xyyqiTDPSK
	 4VfV5cDKW9D9DUfU39GTY7EEoUVPg0zZoGGeAj0johaF92vQP34v5jBlEMzoVn6pei
	 it2hIzyY9OCTEO6qsdPDpcBUoZDap1rI9VAvPfeyeGIJEw1YTfUwsRN0pynV04o56U
	 O7gqRmsXXV1Xg==
Date: Fri, 3 Jul 2026 12:58:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joachim Eastwood <joachim.eastwood@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 09/12] arm64: dts: rockchip: rk3588s-nanopi: remove
 useless vcc_3v3_pcie20
Message-ID: <20260703-cobalt-urchin-of-reading-a9fac1@quoll>
References: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
 <20260703-nanopi-m6-v1-9-8344a1559519@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260703-nanopi-m6-v1-9-8344a1559519@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320031-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:joachim.eastwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:joachimeastwood@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,quoll:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BB8EB701967

On Fri, Jul 03, 2026 at 12:07:24AM +0200, Joachim Eastwood wrote:
> There is no separate regulator for boards with RTL8125BG MACs.
> The power is only separated from VCC_3V3_S3 with a ferrite bead.
> 
> Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi | 14 ++------------
>  1 file changed, 2 insertions(+), 12 deletions(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



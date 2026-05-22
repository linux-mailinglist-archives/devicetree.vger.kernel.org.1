Return-Path: <devicetree+bounces-301814-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HPDMiZQEGq5VwYAu9opvQ
	(envelope-from <devicetree+bounces-301814-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 14:46:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5DF5B460E
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 14:46:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B31DF306902E
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08D493A960A;
	Fri, 22 May 2026 12:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOwU/As2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC9D39A801;
	Fri, 22 May 2026 12:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779453230; cv=none; b=c4/3QigCP/NVQnBwfwBVU15rX4YBEQLvDMQZTrVQjMNDmP/BN9mcRIcm7PW76D73zSlzsPyDIpRxNY3kri4aevlJAc60KmUfhf2n+Y8D4rKer4wtl+W7RzWC4oMVZzg+ZNSV9RnEx744U/nBdf7QAsb62reOlYk4FNsQfk8KLv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779453230; c=relaxed/simple;
	bh=eqAcq5rJxCvvKAexVa3BnmyegoKcQa3xS4cH6cpdJnQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ptHvPQLdxuCUgHLBx99EBIr9++AMmRHPULNhkApFFjZzI0QlCQT8VUx0nQRbkknXsTp0k5dONo89kRQa0lHLl4kbdF7N/X9viFrV0UClk5SDrnF6uUxTuIB+w2bb3XujXSNlMLjbpjAMzkTTsYiwUlRGDBTia/6+ucuJ77oR30w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOwU/As2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D6631F000E9;
	Fri, 22 May 2026 12:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779453229;
	bh=dS+7qm60IkZaqDP+SmaPhxum7tgPmOID9KQ1/TCvdhM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=KOwU/As2DATxSW2nXbCdDAuBIG+Azh/UvM5dPa7uT6c8+V2w24Hk+PnxywhseNcx2
	 3hblSVSXB8l3Zp1/3++/ST6gJPJNrUPVGalV7j6798FqvNPmBH2RZptIisTPdImihA
	 62TnSaICFx76uZHRtx7PKWiGYI+EWr3umd7oLVE+kCGxj0LZPGtQuKTYmgiSgF26Hc
	 3EeIeRdpToAgwcp8P7PdaiEO6w8A2bcYeK5C/M6eVrIehz50EkhUUvSjJAvPIXWVpZ
	 EE+6PU8KD09KMzog6HZJduEssGZnEeang/CAeHDgRuKKl9rUIGzz2t4PydS2ZjgIY7
	 YgSnFSEu7NPyw==
Date: Fri, 22 May 2026 13:33:40 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, <linux@analog.com>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] iio: adc: ad4080: add support for AD4884
Message-ID: <20260522133340.4b763f02@jic23-huawei>
In-Reply-To: <20260522115337.18188-3-antoniu.miclaus@analog.com>
References: <20260522115337.18188-1-antoniu.miclaus@analog.com>
	<20260522115337.18188-3-antoniu.miclaus@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301814-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 8F5DF5B460E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 22 May 2026 14:53:37 +0300
Antoniu Miclaus <antoniu.miclaus@analog.com> wrote:

> Add support for the AD4884, a dual-channel, 16-bit, 40 MSPS SAR ADC.
> 
> The AD4884 is the dual-channel variant of the AD4084, sharing the same
> register map and SPI interface as the rest of the AD4080 family. Like
> the AD4880, it uses two independent ADC channels, each with its own SPI
> configuration interface.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
LGTM.


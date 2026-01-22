Return-Path: <devicetree+bounces-258566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDn6MHFccml7jAAAu9opvQ
	(envelope-from <devicetree+bounces-258566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:20:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE356B1B3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:20:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D8FB131B08B8
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F13093904CE;
	Thu, 22 Jan 2026 16:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaCLPUB5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B3EF12D1F1;
	Thu, 22 Jan 2026 16:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769100466; cv=none; b=YxzTHZYLuZUA3wCBT2MZ+Q7encGgSodZp7YXuiDYzFVNt+HK9XX/Z7a4K/AaAO65VgS9NODW27/e6HxKERzlAgoU+kwootoJNPCwEZxyaNvIKhOthr+A/txm1TCwAnm8Tj9F77wNYzczHfHlfhLTSUw51DJWnIt9D83rVs/ha3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769100466; c=relaxed/simple;
	bh=zcHw/TaRrxQh9eXMsWaG6RiuL1KfhRy0hxOrWx1EQMw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XC4BxKawUksAkKrYafRZ8o2HjwuXoy+L9R9NvDkksIWM8s9FgUiUwqs3UnQIy8zrfEkrzkL/PrnYpAh+2obE7joe6giGU45PVMrTrFsO/hlthkj3mi/jVRAC3WWthZ0clwT+kCjtCPUD1qQIx0vDBojliM1WTXXBrs8mMJuyoic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaCLPUB5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B92DC116C6;
	Thu, 22 Jan 2026 16:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769100463;
	bh=zcHw/TaRrxQh9eXMsWaG6RiuL1KfhRy0hxOrWx1EQMw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EaCLPUB5VgPg9SMsF6yGmJDYBCSWS9ojx9wg3XfN96JGkXOJgZuHYul9tmtsFppLi
	 9rwSlHSQ/lu+GcwlbHGD2vvl5NCl5QyOn3XJUHcwiF7q7KjE11iHwmkv1tVZfZ7ghm
	 +7SgA4iI42qBatV7mR0xycth2R+Eb6TbXh3LKkO4hRovKDwSKhGk3gs1YlcZlUDUzz
	 3ku8r4UOnhyNW0MzL59GkGdH3P1PAy+A0OQkvGDtQhzn180QV7xED2BuBMQpUjJIg1
	 bv5BobUCsHW8h8ktbTF4oiqHFGjes83HG9KWbQMB54ne1LFKD48rmKQfpnmexZoEuA
	 k8TilJnIv1OiA==
Date: Thu, 22 Jan 2026 10:47:42 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Alexander Dahl <ada@thorsis.com>
Cc: Ryan Wanner <ryan.wanner@microchip.com>,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>
Subject: Re: [PATCH v3 19/19] dt-bindings: clock: at91: Remove old PMC
 definitions
Message-ID: <176910046191.2558971.11925829281212477545.robh@kernel.org>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120154502.1280938-1-ada@thorsis.com>
 <20260120154502.1280938-13-ada@thorsis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120154502.1280938-13-ada@thorsis.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258566-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,thorsis.com:email]
X-Rspamd-Queue-Id: 5BE356B1B3
X-Rspamd-Action: no action


On Tue, 20 Jan 2026 16:44:53 +0100, Alexander Dahl wrote:
> Those were split up per SoC and are not used anymore.
> 
> Signed-off-by: Alexander Dahl <ada@thorsis.com>
> ---
> 
> Notes:
>     v3:
>     - new patch, not present in v2
> 
>  include/dt-bindings/clock/at91.h | 32 --------------------------------
>  1 file changed, 32 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>



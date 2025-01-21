Return-Path: <devicetree+bounces-139970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D8164A17A54
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:38:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F733188121E
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 09:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F16141C07E7;
	Tue, 21 Jan 2025 09:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="mIUi34eA"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610871B0422;
	Tue, 21 Jan 2025 09:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737452323; cv=none; b=Tx4vPGJG8PhoemfplBxbytFLOqycTs8HBiFumworF1s69QvTHqCBlN5YJqllWHfOzsLMSaVkPVfmvTLtf687qscU7VdkgEdlQYcs86ZefMGrWvFDE39jUZ9FUMeRSmsD3o1athvZ33loYp34wF4lAjKwJHL0Z47z1yjaR1ON9rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737452323; c=relaxed/simple;
	bh=PK0cMKV7dhbCcmGSBZd8oSMK4ar9ug90Db3Kukmpln0=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=B5y/w29veAWwiui2Se3PYzsCdmUSATV9XpAcjCksbQsvgLFBmZNT+KtFpfN/P+7nVEiyYoQdiiNzyR6PEi1WMwVAZD2zHFFDwsM1E2jAqSAEENGcNYjdbh9wZyCF1ciFSDwjAgLUizuMjJWdokUYqDb3cjsNJW/4xEB36HAyGOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=mIUi34eA; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=wjkEkBPDQJ582dX+uFcTKm3bmUmk8z8f27YlZSyzGbs=; b=mIUi34eAzNBy5HmInVbW788CZF
	ulTw/HdVH6Ywx7HZLiEl0hWmh4O9SCe9Bo0qvk20bB79R1DwWTmzUoQNLmJQFOQKydiJjE0blKDTI
	8wGXG0+/afcvJ2OO0CzGhHdpaG/owO8QvVzWqJ0chZelbsWUeZPAPQy/jkKda0F4HSele14Mc0yiv
	935THd6q1u51LF2iM2MT2wY73c72DFRvOwmzm3DQ+vIBBkYUK2P2a52hOhRqhoeZWbNZDZ/cDhMDs
	JBXEtb42cGbltEchop3aj/opd1abd7pmj1ZuJnKZqw2FPGfxh80CgirNC/xko82jg4BXvPXy+xhtc
	Z/3rcgxQ==;
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1taAiL-0008S2-At; Tue, 21 Jan 2025 10:38:29 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>,
 linux-arm-kernel@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>
Subject:
 Re: [PATCH 1/2] arm64: dts: rockchip: Move uart5 pin configuration to SoM
 dtsi
Date: Tue, 21 Jan 2025 10:38:28 +0100
Message-ID: <3355298.oiGErgHkdL@diego>
In-Reply-To: <2d80ae4a-f836-4492-997c-69dac32be41b@cherry.de>
References:
 <20250121092255.3108495-1-lukasz.czechowski@thaumatec.com>
 <20250121092255.3108495-2-lukasz.czechowski@thaumatec.com>
 <2d80ae4a-f836-4492-997c-69dac32be41b@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Dienstag, 21. Januar 2025, 10:36:15 CET schrieb Quentin Schulz:
> Hi Lukasz,
> 
> On 1/21/25 10:22 AM, Lukasz Czechowski wrote:
> > In the PX30-uQ7 (Ringneck) SoM, the hardware CTS and RTS pins for
> > uart5 cannot be used for the UART CTS/RTS, because they are already
> > allocated for different purposes. CTS pin is routed to SUS_S3#
> > signal, while RTS pin is used internally and is not available on
> > Q7 connector. Move definition of the pinctrl-0 property from
> > px30-ringneck-haikou.dts to px30-ringneck.dtsi.
> > 
> > Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
> 
> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
> 
> Considering that I'll request the next patch to be backported to stable 
> releases, we should probably backport this one as well to avoid a git 
> conflict?
> 
> c.f. 
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#select-the-recipients-for-your-patch
> 
> Essentially: Cc: stable@vger.kernel.org
> 
> @Heiko, this one patch isn't really a genuine candidate for stable 
> backport as it's just moving things around but it'll result in a git 
> conflict when backporting the other patch, how is it usually done for 
> stable releases?

Just Cc-stable and possibly explain it being a dependency in the commit message.

And patch2 should ideally get a Fixes tag




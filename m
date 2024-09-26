Return-Path: <devicetree+bounces-105713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 021AB98791A
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 20:24:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 080421F22227
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 18:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2531E166F14;
	Thu, 26 Sep 2024 18:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="efMjJFaA"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E35533C9
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 18:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727375067; cv=none; b=lvE/cmOWeinVpDRfJoc61fafIDSisUGnOoq1E2UcrjoRJauVn+l5H79Kkl8aGeKD+AojCTSjnlpy1VoYoAjjda5HDD7ry2smyB9zu2h1Dmch7Ne9pj8mqsSvDckAasCtPAdrDbKRU21ZEJzdte0UtrpbdGoo9jO7ufQ4WPHdUzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727375067; c=relaxed/simple;
	bh=bdwFS2SzYZ0cXKSFGRox5N9k8WJXmrvJAWar2Ff4zas=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ouy7mB/5jjXSHxFA8kEPFL/exYQ3NkhqvzsshHp/WBgcAfJ7K2fEMpJah5efpvdeI1He/hXTmZkmmD4KcmrDbLU5uzumdJURxHD3J6YvjAPhvsC3KWGOJ7C0sZS0uqoI7yr65tISbhDCtyC9HhwlQv0HjCVVCzwaIlXMN9u9PuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=efMjJFaA; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <cb716925-f6c0-4a00-8cfd-b30aed132fd1@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1727375061;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vBpWwiAFWqFs5UxCna+MtvMLuFCVFCDh3YvfR1ViqUI=;
	b=efMjJFaAqPaXfnyrjlOHdz8KGd6T/WKWndUClmnSOmGTQzQsQC/nn4eyZzyGNWxWh82WtN
	NeresYp2ThFoA5010CTgTeUWmZNbptxJxgyvwGamrIOrMQpKzL9+liMcyXk+RBW+mcmIcT
	z/KjM6XRXZ9XP9UlkRKMuyiuHd9q3fA=
Date: Thu, 26 Sep 2024 14:24:12 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 0/2] arm64: dts: renesas: Add SD/OE pin properties
To: linux-arm-kernel@lists.infradead.org, Adam Ford <aford173@gmail.com>,
 Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Olof Johansson
 <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>
References: <20240926180903.479895-1-sean.anderson@linux.dev>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <20240926180903.479895-1-sean.anderson@linux.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

On 9/26/24 14:09, Sean Anderson wrote:
> Linux can configure almost every part of this clock generator without
> relying on the OTP settings. However, the correct configuration for the
> SD/OE pin cannot be determined automatically. Therefore, add the
> appropriate properties to configure this pin.
> 
> I have CC'd some people who appear to have access to the following
> boards which use the versaclock5:
> 
> - Salvator-X
> - HiHope RZ/G2[MN] Main Board
> - Beacon Embedded Works RZ/G2N Development Kit
> 
> as I could not find schematics for these boards. You can help me out by
> (pick one):
> 
> - Run the following command and send me the output:
> 
>     $ grep 10: /sys/kernel/debug/regmap/*-006a/registers
> 
> - Measure the voltage on the SD/OE pin on a functioning board.
> - Inspect (or send me) the schematic to determine the state of the SD/OE
>   pin during normal operation.
> 
> My suspicion is that all of these boards use the same configuration
> (SD/OE pin tied high) owing to their common design heritage. Thanks in
> advance.

+CC the people I meant to CC in the first place


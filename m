Return-Path: <devicetree+bounces-147806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA55A395F5
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 09:48:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2CBB189A1A1
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 08:46:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A790422D7B1;
	Tue, 18 Feb 2025 08:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="VAIyoo/6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D415C22D4D1
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 08:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739868337; cv=none; b=KkM/44hAwu6GUA7NgxMt+UFagbH0y7LzGzH/dZ9SmW549ceONQuJPFAvlr2HG2JJuEOVJOYo9CGvRnv7c4Ck5pzZTr0Y7d9Z6+SG7wyfvUKbicZYB226D6m+JmZ73BD1wG18LUfn5/HTQNR0g4DWRbczcP9yhM11jqOQSeqNtik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739868337; c=relaxed/simple;
	bh=2go4NOc6idTzCbPJN8eN0yz1bedLrTJjAHzbemvUHxo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jXKXYA1UIWyNEzAby73rThejtxNp4qzxFKdOw35xhlBQKpVucZthWxDcj6UnedMVVTW2PnC/GRIb08JOSDWYAOD4/mjNGNkuWMz0Xie94BJTP93zj91oeqNTeoGfyXV2oISviTHkyUQMzEr+CnQtDuHiLSnYc+7yhzLdvlGyB14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=VAIyoo/6; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5e02eba02e8so4324131a12.0
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 00:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739868334; x=1740473134; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=90tc0lSyWtKHI8QpJtp+rcsL8Nux7GNqdacUEsbn9iU=;
        b=VAIyoo/6O0M2fmCo9r4DyWv+3J02uSTrDklgEq67LFks4TiZH8wOtT2jPq2jNe+L+v
         XCATooFxIqEc9ZlC+bLuYTS2EbLcCnjpa/HLrGnOIfNH+EDuEyrFpIeAdcKjOQpjntP/
         Cgbx8yqD50wV7Sb4Q2eLx+zhFBT+LvZljEu0edrx6ihhlsqC1E2LHrxKrf51bChRvcYz
         ejJTyf+SkTii+UBpJdQBErPHB1KXLpYzxFicISre2p5MsJ+jcrtz0Y7NkK6a6adX+znY
         SlPn65LK3liWnmNA6u9wFdQBTwUaVnMk18465MKPhaXHxUw8XlDejKPxXkxtCLY8+OkQ
         wlPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739868334; x=1740473134;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=90tc0lSyWtKHI8QpJtp+rcsL8Nux7GNqdacUEsbn9iU=;
        b=QvJixvpVMAXiPWL0KwOTrQtEPJq8uGyXBB6PC+nUwJKWuy2s6YRWfr/baZ7/GRdKa1
         BoVx0YHhfEsGhRYruOCP/szjaCNnQJTY8/atc8XWBUbZhIUZlDQvewASt7+5mFLTRjd5
         bEmJAtzm0F5/pG923NkQSn83F/EFApUyp5xQw9pUwcBdmuEAN1GJtoUKDZhQ/6NHETIg
         U9v2yPXbwEAQ13TKfzlembSLfmy9S+M/j6JhiKkV5LTORYsY1eTCUCMhNXmMPxdj0408
         6OLVSuDq3pMtg2jdf5p4ao9gN0pfTRkRyq0GckvzZUozG7C/oUN9fCtq74dCicTFUCMJ
         03BA==
X-Gm-Message-State: AOJu0Yylng3B4Mup9EilFEH2h5BrLteNeWtuCWAc8SDffaHsLjWA5nn0
	uHKnM145rVgD63nYOT/GXnxxLtnotcgrd4N3IHC5vj34f2qQuTdPNzDzc0spVZk=
X-Gm-Gg: ASbGncuUJ/J44NmryaK8Rk8hFkoMQngv/tNbhA3r/o9x+CECggCeA8GRuV7J8mipOYc
	2QpPGgnch5dYwsBavAwYv1shDAZCxd2EXGAf15H/NhkhBW+M8XSEfIYtzTYAFxXVTK9kw/vsjmd
	1rs1moJJzsi+vnbIGyIuFeGMFiqOB/3xjdp5W7BHW3vop4jahF/nGTVULE4ooDXkpttwLuW5tBz
	czmAqfFq96bJfucHQk2KG1VxIzUTfw3jbYvm0rTJMnRtevZTDRkhEw1Xiu2GdwnPTiXhEu6JZdr
	GPrt0+EocouKsGQHiTD6Vnw=
X-Google-Smtp-Source: AGHT+IE6QhNP9qus60hH980Or3o9glxOLiLFh+HKOIb0j8s7OisoSony1uEEFy0/ugn7AUW+SZW5ZQ==
X-Received: by 2002:a05:6402:348d:b0:5dc:882f:74b7 with SMTP id 4fb4d7f45d1cf-5e0361747fbmr14622769a12.30.1739868333880;
        Tue, 18 Feb 2025 00:45:33 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece28808fsm8201968a12.75.2025.02.18.00.45.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 00:45:33 -0800 (PST)
Message-ID: <24351fe0-c4ec-4225-9f92-b26392a858be@tuxon.dev>
Date: Tue, 18 Feb 2025 10:45:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/8] Add System Components for Microchip SAMA7D65 SoC
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, vkoul@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <cover.1739555984.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <cover.1739555984.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 14.02.2025 20:08, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> This patch set adds support for the following systems in the SAMA7D65
> SoC:
> - DMAs
> - Chip ID
> - Dual watchdog timer.
> 
> Ryan Wanner (8):
>   dt-bindings: atmel-sysreg: Add SAMA7D65 Chip ID
>   dt-bindings: watchdog: sama5d4-wdt: Add sama7d65-wdt
>   dt-bindings: dma: atmel: add microchip,sama7d65-dma
>   ARM: at91: Add Support in SoC driver for SAMA7D65
>   ARM: dts: microchip: sama7d65: Add chipID for sama7d65
>   ARM: dts: microchip: sama7d65: Add watchdog for sama7d65
>   ARM: dts: microchip: sama7d65: Add DMAs to sama7d65 SoC
>   ARM: dts: microchip: sama7d65: Enable DMAs

Series looks good to me. I'm waiting to see if there are comments on
bindings before applying the DT part.

Thank you,
Claudiu


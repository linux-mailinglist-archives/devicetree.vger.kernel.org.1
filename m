Return-Path: <devicetree+bounces-117000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 451329B49CD
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 13:37:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 772781C22287
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 12:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA6A2BE4A;
	Tue, 29 Oct 2024 12:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="UvLaKqzW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81487621
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 12:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730205438; cv=none; b=K/Zpuy6Zya6X0AXDTDn/V2yTCU75fU+AwP//GBYFTg+xKe0TLNjiM25aNPM+73q0aKDsWUVcF3Yg4bl+iBmbu2KUQ4XRCi6jVlY6hHx/M9syXyfjfxE7JS2xamYriPuUh13ivpmEqsmM1DeireZAWdv36ncgWYdPXNdnPgmMKQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730205438; c=relaxed/simple;
	bh=FZupF2iD7kfxaR3KKKJqyQpVnPKYpKS8+01BJjHzlyA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BFlFO678ceNjcbqzWHyt4n/kBED1Hp2pUWra6JelVJxPXnllukwDeMFEGahlQCqD11o+MhX5MTF+q3n9/k0HrnEKETvvPvDwAZ3B5WPfZ3KZ+2+TcCXVkdcizSehxdYJPzp8Mqr/fcWP8Ejof6TZT6Aha1LMokFyw0sivTgjFYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=UvLaKqzW; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37d4fd00574so3480760f8f.0
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 05:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730205435; x=1730810235; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SKrUgSOUxnIh3q3e4Z2f0c72Gp6Ecggg0tzc6ohRH2M=;
        b=UvLaKqzWFxb5Ty323zmEiZnegJ8HOZdsBdgZKs5V+MaWY5SOUgj03MgGwaKRI1AOo2
         jsJsjcHUQWU6aoHYi+iUpjOeMhzj+C3z5HBqFwEgRIIyGaFv8pWYbx8soYglUWY/9QuQ
         eYV0cic4NxLcMZOe9bHnYDO2+vPPtvckPdryZyo01CY1pfTnZwQsWJ/ViwL3kZxNO83D
         mxRRBzoBopnV599t6vVMpc37dJMX+sgM0AoaWzSwddZ7JhD+kUz5K3vJ98UvM4PpExqX
         MQDrhZ3bOvAUtuRp4XnLeDHLm3zpVW9FEZZY/B1eVsJGhguO7mUBdM+9GjjFEo4Dvzi7
         Z/mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730205435; x=1730810235;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SKrUgSOUxnIh3q3e4Z2f0c72Gp6Ecggg0tzc6ohRH2M=;
        b=FOlEPDz968n7hKaZv8DfJImBjLewoJm7fYd387L3xAu8uOXlI7ygkIFQIBLHRJcXrl
         MCJK22Eh+XcIHP0/R0E56g+SXsF9U0/5M6LW8rQNSu4qeP8rJRrmD6OAG10moKRgvtJd
         OcqRVlojJ/2PE/u5Vh2uT6xPEPLkVo0wjbuUymuXKobnU3DkB/0e8yMcIJMSh39Q4owU
         e5VgzzxwPnudGtsfptEGy9CJK7jW4aHqQZiWPkcsOx6GhCLxQGTrcB73BBS5lKTxIQiK
         90pisEYdx6QjVdebwQ4N/F1plpuEx/5PsgAh2FQFO6U0LdmOF1za5JHrf/KXlPwvff/F
         6S/w==
X-Forwarded-Encrypted: i=1; AJvYcCV/phvFLhqbd8DyTA9yf0IDU/z58ZE/8cx2zS54CPtIwn+gx7nyvlPlVq67M8vl8tnhMUaZt78A71tI@vger.kernel.org
X-Gm-Message-State: AOJu0YzlrTEQ5uppZNjeL7TYDQ70ob1Ufxy4ENNq407cqCcDxxF7sP88
	06Ix9j9SIEZ3wONlikHX8X0l2F/GTxJfYZV9kqMWHAl9Xsw043EQ+RzEADHgSO8=
X-Google-Smtp-Source: AGHT+IFEbYVOveGst9KWA5oPzBLhzFiKooQTvMFPL4MtunAPaDwMDkZFYzsRBozZtnKTUn8MLA6f7Q==
X-Received: by 2002:adf:f844:0:b0:37d:3baa:9f34 with SMTP id ffacd0b85a97d-38173e61331mr1789406f8f.1.1730205434495;
        Tue, 29 Oct 2024 05:37:14 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.190])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b70c73sm12585846f8f.72.2024.10.29.05.37.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 05:37:14 -0700 (PDT)
Message-ID: <1b5f9e16-4c82-4093-8950-12188b662c39@tuxon.dev>
Date: Tue, 29 Oct 2024 14:37:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/6] pinctrl: rzg2l: Fix releasing of IRQ and status
 reported in pinmux-pins
To: Prabhakar <prabhakar.csengg@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Biju Das <biju.das.jz@bp.renesas.com>,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20241025114914.714597-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20241025114914.714597-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Prabhakar,

On 25.10.2024 14:49, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Hi All,
> 
> This patch series aims to fix the reporting of pin status in the
> `pinmux-pins` file and properly free up the IRQ line when using a GPIO
> pin as an interrupt via the `interrupts`/`interrupts-extended` property.

With this series, the Ethernet PHYs IRQs switch to poll mode after a
suspend to RAM cycle. I've added the logs here:
https://p.fr33tux.org/3e8193

Thank you,
Claudiu Beznea


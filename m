Return-Path: <devicetree+bounces-218519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C58B81150
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 18:51:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A849D1C272E1
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:51:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3ECD2FAC0C;
	Wed, 17 Sep 2025 16:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="lwLe+kEw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9C92FA0D4
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 16:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758127872; cv=none; b=rYV96uqujnz0SzgUgd0gxQkK7JKl36zwdp5BmDiCcRnrXBFWENoWHF7zHG1HC0OXxSRCujK+VnV9fB8oB7xgJhvq+li/K+YdJMuTkVW36K3qAYo86XJHy1Pq7d/Tx32Sp7PqoQkwTvIGxWPoRxjYDbFN0kUsJ5+HD84loJhVcOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758127872; c=relaxed/simple;
	bh=gwDqeO9pTlUdpXA9Yz5i6ic6vnRjW6m7pH/Sogrghyg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mjM6fj7yG5k7V7yNN4jjgr4XVS78Mlbs7Rr4d0QaDj44g5Cv+A7KoOV+qY3EvfrJscAWQUIvu0oc2xvdk2jqfwon+X4YvXij3sDrm/0Lz2CrHESN+MTLAUmexMeFt0vqo8xfq6IV7hmN4JaxgEMZxtCxQy5mtrh4u1Nb9WGSXc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=lwLe+kEw; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45f2313dd86so19865e9.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 09:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758127868; x=1758732668; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4ZNcucLNP4mR46I0TWwPFtv0PUd9VAWxLOjNJ+Jrcyo=;
        b=lwLe+kEw9UJ+bGa96NfYgUtD61zui7E11GrMzUvFnicHQAA2n8YmEpr9ayWoIXvSzy
         12+PFUJJVdZOUirqmBhaLOCOXjbxrxTZ14L7btrj4LntTIPQujH/hthVQivA3bs0JDem
         KXJvqE4/tzWF6CkQXOW6o/92QxtdwN6vx1wsLvRzoqOnkUVGA5OEZR4bturRK4AR3vdm
         uUgqFTkcS6sFy6IIL2/MyIuDAMeb3h9gPxLkgQmEFvX5S78C8P8dlb+ntIg6nN5D5x56
         zWdFYsMYDghW9bqNiw3BpkVfBR5yuPdOw8RLW73HSaOpUSeR9uzbgXebpILellfVWBeO
         ddbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758127868; x=1758732668;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4ZNcucLNP4mR46I0TWwPFtv0PUd9VAWxLOjNJ+Jrcyo=;
        b=smtbUkzHaYfy1No80nX1X/TY5r+S+Og83VcPOf9XXTNOGNBuGJWLBrMP5bepB0tDtV
         LjzWnh5pqCJvLgYyizrnSBcPNooZRshcOE6ooHsF0ELYy6QFb4wYwGZR6ZhcXNWdiUeL
         a3gLIaOhR+47t9FyhsZkc5FbA6RQ1WMVbI0oM/hD+YsJTC7COZxsgp0bgAg2Pj9IclXb
         EJUKE9tPwJle8l76O6F4zl/EbbNSb+6eTXpioUz1sR3cUrgUNEbOOgvq/AfRxeB1N/qd
         Nzk4MfilvYK9832+iiktT0w5yP2Hlxm/AxcqSK5ezUThJghGZorCXPY+4O00DTjs/XTf
         puUw==
X-Forwarded-Encrypted: i=1; AJvYcCWKJyr25fY3WMIkc3lrbDhUDgsYiRs1yAgri5X0RlbN2K3xycJSl/RKcqaYuEKPod6dY8/jU1rvD32B@vger.kernel.org
X-Gm-Message-State: AOJu0YwkCgKcdqzSeMOTmqIT7Ao1DP7IZZopmt2tM+zWantCdwBLtwav
	o+a3MBcFWDMzMwqXjs3gp+n/EoH14nGj7mOHd4Q79yMJlZ8IIliG3inRe9CSOGMZbi4=
X-Gm-Gg: ASbGncsOXSshHCuepZvBG303OhLjzBmwM1z4Kh/bOVAAi71WLHyhSRrVs6AQEiOGVmJ
	TPJJz0CvxY2y5g6aT/7pcUbsOXQXQGVZDZ58j+mmmUnn8FJGWE5Nmdw42c3U/d9VrJy5/QBRw3g
	z1TxDvD54Zbnjo3FztLARXE22AkZ/1UFhIeOb20WjOQ844b8INwmUJz0hNdYd1kGXJ4oNNKlYK6
	qkJPSeiyujt8afcIqRVQ9MUfJWof5bk3Q68+lfQmqzHhXpUy9eTUFyDX3aqmD/t2lsbIr+z1F8j
	sZpOlKPYN8P8nur0/UXT55JAauK8UdqORZr0xVclAH60D8QoCvFowq0CsndrNBXXJZFK9YP7gvM
	o8A25bULvIn340BGjwQPdEqMerDJhwZw=
X-Google-Smtp-Source: AGHT+IF1nrUouqCOeE6wDOtkdHMD2AWyWimjxHxsQ94F2pzaPGFfHQDSxdsvbeXDPczFHDXsujKBhw==
X-Received: by 2002:a05:600c:3587:b0:45d:e285:c4c6 with SMTP id 5b1f17b1804b1-46207a83da5mr28634175e9.37.1758127868023;
        Wed, 17 Sep 2025 09:51:08 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee07411f4dsm64874f8f.26.2025.09.17.09.51.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 09:51:07 -0700 (PDT)
Message-ID: <a59d7be5-f767-4ce5-9a88-5a9b340c6643@tuxon.dev>
Date: Wed, 17 Sep 2025 19:51:06 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] ARM: at91: PM: implement selection of LPM
To: Ryan.Wanner@microchip.com, sre@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, linux@armlinux.org.uk
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
References: <cover.1758051358.git.Ryan.Wanner@microchip.com>
 <98b7e9347fd15e45e2606d0e89f09095887079fc.1758051358.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <98b7e9347fd15e45e2606d0e89f09095887079fc.1758051358.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/16/25 22:50, Ryan.Wanner@microchip.com wrote:
> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> The LPM shutdown controller output could signal the transition to PM
> state for different devices connected on board. On different boards
> LPM could be connected to different devices (e.g. on SAMA7G5-EK REV4
> the LPM is connected to on main crystal oscillator, KSZ8081 PHY and
> to MCP16502 PMIC). Toggling LPM on BSR PM mode is done unconditionally
> and it helps PMIC to transition to a power saving mode. Toggling LPM
> on ULP0 and ULP1 should be done conditionally based on user defined
> wakeup sources, available wakeup source for PM mode and connections to
> SHDWC's LPM pin. On ULP0 any device could act as wakeup sources. On ULP1
> only some of the on SoC controllers could act as wakeup sources. For this
> the architecture specific PM code parses board specific LPM devices,
> check them against possible wakeup source (in case of ULP1) and tells
> assembly code to act properly on SHDWC's LPM pin.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> [ryan.wanner@microchip.com: Fixed conflicts when applying.]
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>


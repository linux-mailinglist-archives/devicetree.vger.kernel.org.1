Return-Path: <devicetree+bounces-147258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3022FA37B66
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 07:32:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CD603AAF85
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 06:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C40F818F2C3;
	Mon, 17 Feb 2025 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ifibiV0g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B5414D2A0
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 06:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739773943; cv=none; b=hDu4Mb2xKOaOmQ9b2VvgYGFkJlnlx8PTaCNInGXpKxavZuhmFM93gv7nPQbNZLNe1xn6B0YWiQ4A2B1WnpicFpcq6P6VYHMGth7ugmtaF6QeoLqgWdrKqmRb15w42EV+CZOVLgH/DvsPmIuSxP/raUPrVJfg+GQBr8JWjnCsp/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739773943; c=relaxed/simple;
	bh=A7IRtN8hL7QiRgZjNciVRBb2qAyw0QTuXI/KIuAzjG0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U5/f5PFPuYW9B4BW9mckDG//Iymker8BuexmQpHtOknVWhLkMfwIl5f8f8w3htDNH7nZ71gIoIwxzy3oON8ji9IPDChGXUVWiOfaCvKFfGypF5GyJ7GylwfCOfJRqjLWForvK9puK9Qu1/ZEdTOfgfBtjGv8HmBoup4kY7l4qGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ifibiV0g; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aaecf50578eso784996266b.2
        for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 22:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739773940; x=1740378740; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A7IRtN8hL7QiRgZjNciVRBb2qAyw0QTuXI/KIuAzjG0=;
        b=ifibiV0g7bJdkgvAiqF8DYCIgCCATfz1J8pdpRbm8999AT0/lYIa1XReZqzBjjvPRC
         pIDgAmqzPPDvVmvxg4lrrepY8LIfhdEnoKqim6CFo6NYZX4vMrG6cO5sQ33L+B2/swFR
         lSy6FbUWvHoegAsZsZTA0xk8q7Sk2By6UzSghtOIvTalgSfKfXaUd/lhCzLqVILH+9OX
         SBexvFT3a9QRnUk1Qp2gaVka9nrzUHtnDF34Qek8DBanYc85/nnoLKZeMLOX8zJ7iyef
         OIlIxnRND7e9iwBVoPvR7CZXqxAesyKJVvl1DwbvaRc/zP6tH2ZwEyu3GUmN/TZlKfUN
         2vvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739773940; x=1740378740;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A7IRtN8hL7QiRgZjNciVRBb2qAyw0QTuXI/KIuAzjG0=;
        b=P5AK6GFbEae6lqaK4sJzRYpCNuf1ZoW7vxChStDyY0q9BFjx18WqWad7YiRzHdIEjJ
         4LvWKot0v++Th0ZEs5qJbY+y99Bk0TztiO5T+Q6O8A5bWVZ0zBuiM10nw9ksKDaIqwOt
         V/aEzKDxY1XEGQBnZ7XjqPdaO+EkotB9RMFq+KnQzDaId0BdjCVrv+WBGMbQeVN3G8UY
         KPtvz73DACRpp/C9abJuTYxAKQyb3F1tOWVMmTbcOi3vDnAA0qEyn9qlMgXVC5hiW/WV
         g0QR9tonz4cg3bDEZA2PIOZDWIyy9wGDG14XMzmceFBUwXUduGlLmmYi9zMMWM7Y+Csf
         7FeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwSoHHXkaiTvJHvVtX+8LvUZhC6dhUltTPPNFWj6YLtayD+9I/lB/mthaSDTMP8CINtporcfTvsrk8@vger.kernel.org
X-Gm-Message-State: AOJu0YwWYS32b8ONod0uw85w9FmyUZvy3D448OvOIHO+m13I/VZd4eD+
	dwQYV2mZkNRkd1YpxqnPqQ6GtH6jSuBDYIz//Ay50kO41hfQFV8LDYZDPj5p8OU=
X-Gm-Gg: ASbGncvKWc/MvbA1V+8jUPYHYcEhXaZISQOzqrpLZ/lW5spjv64S5F7eJZw0nzsQWWI
	ifXwu81ZFfY9GUGAXSp3eP0AuYxwC66RLd2lKlxVEBQvWFZc+bjTg24jidYqm1k0SUAH/u2heRW
	gd8fT8rutlnDKKW7+w9goEh2yM4pdlzhOv+Whgqy8/6OAUWgNixhsashmZS2wGVGxjLYIOobkKD
	WGo6BUfChQQciOVrOTGA+KxoMPIaRUIKG9Sb41hYlnKx+IN9LTGkfyhOKtBl6NY0LQARV+ojC8X
	VDWz3/38J8tmiDixhezIY+8=
X-Google-Smtp-Source: AGHT+IHc3CgKCuw/Tn4up00Ngrqvc2HyPAuBwXc68KPmWOuZltnaa+t67OP6B/OZ8Mij+qQs5NbX4Q==
X-Received: by 2002:a17:906:c154:b0:ab7:d10b:e1de with SMTP id a640c23a62f3a-abb70a957aamr879561366b.13.1739773939801;
        Sun, 16 Feb 2025 22:32:19 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb86c9320csm315074866b.55.2025.02.16.22.32.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Feb 2025 22:32:19 -0800 (PST)
Message-ID: <75a6f8b9-bcfe-44fa-897f-6b800000ef10@tuxon.dev>
Date: Mon, 17 Feb 2025 08:32:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: microchip: sam9x60: Add missing address/size
 cells for spi nodes
To: Alexander Dahl <ada@thorsis.com>, devicetree@vger.kernel.org
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "moderated list:ARM/Microchip (AT91) SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20250110144159.379344-1-ada@thorsis.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250110144159.379344-1-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Alexander,

On 10.01.2025 16:41, Alexander Dahl wrote:
> Complies with generic spi-controller and atmel,at91rm9200-spi bindings.
> Fixes dtc warnings, when actually adding spi target device nodes on
> board dts files including this soc dtsi.

This is already covered by commit:

f0127f66528f ("ARM: dts: microchip: sam9x60: Add address/size to
spi-controller nodes")

Thank you,
Claudiu


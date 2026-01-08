Return-Path: <devicetree+bounces-252610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCF1D015E6
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 08:16:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2A42C3006479
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 07:16:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39D1733B946;
	Thu,  8 Jan 2026 07:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="k6uH9wAl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0688F2D8378
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 07:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767856562; cv=none; b=Oe7+0vGYrM5jbd0Grun44LrP39Ndv1f2Zd+v3DSHDfwaaboqAVeyKmlnPbJsVyzZdYZ1YkVaQ4skKJ+gRVcbI5g8Oh92btA4tCztCimF73V5xeEC/Cwj7c2usBsa+HoG+ySC16dKG/883AeeeKXgIZSuj7PmbWAIcaw/LfpXkEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767856562; c=relaxed/simple;
	bh=GSvRdhbazyhxLswKLeqVT0oeiwfrI5H9syh2+PZAfcM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TZKsrqnf12lkSDXCRPKKpe+70TP0ne7RPDEa+Y23j1XN55M4YcVafHhLgVsn/sEdKujGaY2jS+Fq2jBbBoC89g6hu2hVmEFPhyWRJd/WD7SfDNIrhKJssqPCJe0/mFQ9hj7Lt0EMyNPhNwJlOJIYY35Dj66QU54WQAx0PrG78ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=k6uH9wAl; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-64b9b0b4d5dso5864457a12.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 23:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1767856557; x=1768461357; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w0/cSpUe+jDr+8mlVfQEeowGuJ5hrCv9cMD4OiGr0dA=;
        b=k6uH9wAl2AoSxc29IrvYAcfTEipXsXhjQHBjRB25J0UShQARBpU3stcLjArcJ/CxiM
         Pxs3dT5OJHEBGmGvoIXj7dn+2OP+1Aj2kSABAhU1TQbn9kAmRfn2OqeLo1SRVyZWrN3Q
         N6FHz8p67JFBEDbMcDg2c/8iYEsbOSDuE1vSiiGDmrdN46Zqd6RqgJiMBOirgg5AQyje
         TvG3rxt2bnf6YfpsJKkeZCl0lyFNDUuQu+hqlku59wda6fgzQ19H/fS2NOqg4fKoYT0A
         E4gA8MEXggokK4HMbm/JL3XikdOwfErjP4/sytyYcJLyZXImS4smVS0pfqoYK8YzbNdK
         CKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767856557; x=1768461357;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w0/cSpUe+jDr+8mlVfQEeowGuJ5hrCv9cMD4OiGr0dA=;
        b=lMQU6kw/ttDYxgQchjlw7DZj0cqH3QG1cQyXc6zu7QN5Dr6adBd8pWAY+GudhS4y0I
         xY3ihwVfxACLFNlWuNTvXNFYdzQEKIYU9zotNhGHDNyh4NMaJaguNeirbq9gynLZNoOy
         PSa939aW+EwTcKecwS04oJsgFwL3JjC0KcV/oVKd0dDJZ0TGRH6GJqHV/xlDN8/bmUXi
         PfG/Sbhqz15YL8txSVjU3WzrNJlDU/CEI7Ymmhay2gMPL0hW88TJ13WyeBBE/U2UcUj+
         ohdSGWuCRZROBNPG0x2i7Ot/eFQAe5a5p5x21AmSGH6+svXM+zU7RN1b6P2ynNx8ZT20
         TicQ==
X-Forwarded-Encrypted: i=1; AJvYcCXv8hElTgfFMeAZyKy5162ELOmn0hF13vJ0UQM36T3ArlzsKchA/PA8LUsT+QQYVOKiByGZfna/N5Oz@vger.kernel.org
X-Gm-Message-State: AOJu0YxXTVKzQZPKf+zI5emX0PN8V1LNM01d4fAXgnmvG6iXJLf/1Yg+
	em9lEF/3AKVB8BDxObfQ1P6DfgeTjCwYCa4yX8ocb48e3ul7kszXRwdC9iLyPrQAkik=
X-Gm-Gg: AY/fxX5V0LjR4QgAna0n+Qd0peIIUZUH0Sm7JYEbXaBFoZPBIyIsdw04hEmZAXYjwGv
	CY1Mr/BZIf2yFZhW5rKTzhoiG6T/5fvSCgAJcRmm7XIC3zkcKyo20Xg9q4plZ04key5wdMoPDgA
	nXa1/8w0ws6Si4YVLIpl/G2zEqzXMcvtlGb4j8CR9AyT4e6klCrl0FNIeI850RkZwCdllpg+HR+
	lXoIlLJQg1h9aUJMVMVqdQDuN5qFcjSB/1gFNQgs5DaPCC96JDHu7fbo1UKXluQf+G8FZCV1iLS
	2fqSpMu0qMA3BSZijcFPDgqrmh5v/QHTAYb7chYcRiObqdvKbnPgEqk5Z4Smpc/0LakM1Y6kiGF
	RCcMcBHxSwIsO8SSpjn7+idRXgJeOS0bhqwL6B9SrQDHiLAgp7aMFZa/rnfoS3iaQSfyx0xG8mL
	5s3ZrMhejg0UZjJta8lZ0Y1V5K
X-Google-Smtp-Source: AGHT+IFqeAdT3XRWDHO4Gx5qxuUZmeOKltliXy+K8Lkc/WtNBQtg8EEJ2lzyy2IW5Zo2A6voGFKc8w==
X-Received: by 2002:a05:6402:3554:b0:64b:416a:cb48 with SMTP id 4fb4d7f45d1cf-65097e4d8a0mr4615529a12.19.1767856557108;
        Wed, 07 Jan 2026 23:15:57 -0800 (PST)
Received: from [10.116.161.247] ([213.233.110.144])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b22c3absm6856743a12.0.2026.01.07.23.15.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 23:15:55 -0800 (PST)
Message-ID: <6d94b650-bcdd-4e5d-a607-5285d42b26ef@tuxon.dev>
Date: Thu, 8 Jan 2026 09:15:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: lan966x: Fix the access to the PHYs for pcb8290
To: Horatiu Vultur <horatiu.vultur@microchip.com>,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251119134750.394655-1-horatiu.vultur@microchip.com>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20251119134750.394655-1-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/19/25 15:47, Horatiu Vultur wrote:
> The problem is that the MDIO controller can't detect any of the PHYs.
> The reason is that the lan966x is not pulling high the GPIO 53 that is
> connected to the PHYs reset GPIO. Without doing this the PHYs are kept
> in reset. The mdio controller framework has the possiblity to control a
> GPIO to release the reset of the PHYs. So take advantage of this and set
> line to be high before accessing the PHYs.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>

Applied to at91-fixes, thanks!



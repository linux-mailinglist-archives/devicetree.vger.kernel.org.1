Return-Path: <devicetree+bounces-66931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2218C5B51
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 20:46:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B7AB51F212CA
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 18:46:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBFA3180A85;
	Tue, 14 May 2024 18:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RDG2Lk2J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCBCA53E15
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 18:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715712374; cv=none; b=mPd2rz8+rYgrolzfkC6jY/A5umUkVyZiyXX+wgmkOtot2g8Yw5PFYhUva4dZf+so8/UX7D35tdj22dy0jq1i7zVS4nJl3kveQtyE0SW39Ln/5cYS0DYGQPcvMmbxGWQF7xc07E+1wUpjjp9jdHrxNbpaOlT7o0u4BIsjAr/xVOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715712374; c=relaxed/simple;
	bh=9/KPdGRlEJrAT1NZpQ7pcVvJ7WKkVMm+m6cd6ZNvkDk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Ymxpkahx9oy8+gr/fqLwySpmzw9f6W0oP1pnajEYbhXkdZruK2t2lsj3hKU4DRlV8LPJizLedueR1XPeHM+mtdEZTF4KkFJjeGgD7pFRcGPg5/OTQvpyCmd479jLVAFoWMmqNxgqUNeLW9QYN9/YJppXuHdwN2xf19c8FRNVGPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RDG2Lk2J; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1edc696df2bso51612865ad.0
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 11:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715712372; x=1716317172; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=9/KPdGRlEJrAT1NZpQ7pcVvJ7WKkVMm+m6cd6ZNvkDk=;
        b=RDG2Lk2Jl+CSjnkyy/M4Al/TYbFs43XjviclVxy7zmIdQ1nZ+cGHq4uN1Rp+4m6lhL
         TIfZylGLA5uNGVIuFU6GWGntyLfKreSYPzieErscZHyA7JjuNajoXqXQXlfAYinf73Oh
         yWwo1zpFxke3/wQW0yGnMjmSi61MH7/1SYBgHT+0CiUk2V/s076fTD8/IW4rQKkmq5gC
         VVRnM4lEzq7U2xuv5h+3990D4fQ38yenObXIkDTZg+JedP9/5CvWXLeZoRYygly64bhU
         qtfxVYXy+oceuZLwzotr+gCfIhWTqfDKUwDO09oh5dcfb3XP7aY2A1GjupHjwSksZAS+
         Mnfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715712372; x=1716317172;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9/KPdGRlEJrAT1NZpQ7pcVvJ7WKkVMm+m6cd6ZNvkDk=;
        b=H1prZFixNZDHAJN26JSxd8JznLJSVtUOOejQZfbCQwyT4Qsen04SxYL/gX4kbNLfwC
         /HsMkEIolZD7qxf9q3yIxEBADdnVd2EZfKmrK2Lt0+9ZOpL8DrZYXOJdDl4NuoVkZUov
         kQzdNYrV9tP4j80x+hQErzT3tIzUlTNYiWllSIcD9zjpYzdAdSUy1GX17pog3/x6H4u4
         MwJnojcJTVsYfHTA2+aJLiNBOeHaG65Uk6o8UDxVg3nUMlBEa6AWu8CK44bxs+7SNnNz
         UH0ZuD2SQU4wLsLmuXm61arR2MDt66YwV0Top9oGEvAL7DUJ/fB+BMZuLrs8hbnJgiNZ
         ZVEA==
X-Forwarded-Encrypted: i=1; AJvYcCWV7+g2qd1y0q2BWM3GfZKqeoPP4u14JQP9gFB35MuLprD/BbsTcfeCxpWRfZYqZGIN4tOIz72vif8GKO8agkWfNCe0ZEtKS8F+7w==
X-Gm-Message-State: AOJu0YzaqwYmvkP0E7mhywRjZYfBYRbkmKuts8rOGIG9q9C1rBor7yrJ
	nRqsDqlACKH4/zBKdMvR01qoM7C0RXLjLDVQevw8gWQIzmZDh1fjOQPkWgyoTPOT7Fd7vrXTEep
	fUSc=
X-Google-Smtp-Source: AGHT+IEoObsEKnrH0xx3C0KUfwJWip12l93lYXbuldDs11Wqv7w3vbecPBywu++IWnpGBnVA7Y7dRg==
X-Received: by 2002:a17:902:8f87:b0:1ef:35d5:e3ea with SMTP id d9443c01a7336-1ef44059ad9mr143683265ad.59.1715712372044;
        Tue, 14 May 2024 11:46:12 -0700 (PDT)
Received: from localhost (75-172-111-169.tukw.qwest.net. [75.172.111.169])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0bf316f7sm101161005ad.164.2024.05.14.11.46.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 May 2024 11:46:11 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Vibhore Vardhan <vibhore@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>, Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: msp@baylibre.com, d-gole@ti.com, Vibhore
 Vardhan <vibhore@ti.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a-wakeup: Enable RTC node
In-Reply-To: <20240429184445.14876-1-vibhore@ti.com>
References: <20240429184445.14876-1-vibhore@ti.com>
Date: Tue, 14 May 2024 11:46:10 -0700
Message-ID: <7hcypo44gd.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Vibhore Vardhan <vibhore@ti.com> writes:

> On-chip RTC is used as a wakeup source on am62a board designs. This
> patch removes the disabled status property to enable the RTC node.
>
> Signed-off-by: Vibhore Vardhan <vibhore@ti.com>

Tested-by: Kevin Hilman <khilman@baylibre.com>


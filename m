Return-Path: <devicetree+bounces-251680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B1754CF57BC
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 21:16:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8621C3038354
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 20:16:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 467B1346E78;
	Mon,  5 Jan 2026 20:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EumCJn6i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790463090FB
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 20:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767644166; cv=none; b=h18UoVlA3cKtifLwBwrxD96AH4OBh2MhWBTFML7TBILSkKdQu0tlxx+MO67z6H3vl50UW1xZNRxQvEu7UJm6zYgLhAFaatViTcE2gm8lE+aKbIdZHaZkXKpck4CROab28Yu/+LKQ5fXUgEFltez1PVDhwjee60RqPYYbF4CuzO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767644166; c=relaxed/simple;
	bh=vrWvuBWWkIqJRjzwJR49BS8lxWZbt4dUcR6EDgDcVEI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=bVF36pOvH6k32ZDF4mZCW/QTzCdZWIm27s4GHM+1VxUo/xwBPrgwV13aiCZxCeMai4TFfkPYdCtDdl9irZLKKO+e+NH70Fwz9ycl9Wn4dbIYbVM8SmiQ6xYIcK5B78KO3hEp73siTuEahyn4eQwtc7BUpLoso9T3E8ZB+INHdtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EumCJn6i; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7aae5f2633dso381563b3a.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 12:16:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767644164; x=1768248964; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gM/0NBeBZo/IQy3QHRFeMfe2d0xBAbWbFb4SKMpPqz8=;
        b=EumCJn6iLWL7vFOaBgbm3LTKYP8PxybnGRariAhNcwnMv/ORZXPH4SklYkoQhLh+hB
         p7ck3D/1rB0WeNZqe5tRFCoSrY/lCO9n0EYx+LC3iHxRmB7xgQWrwidvaEujviVzkHLZ
         VtmfVZQNQx3+e/rusCLKFgxx5HpVURI2rRLIw/7jzQEPLqm5okqI+XiYJwbT95405FCO
         vm64OfPi92CyRrsBMkNjn93w9VnxfITfaJDV6RSKb1msSONbWq1GovczMZff5rB7tx3y
         9McLT/ovOoGinzo6hhUlwPHqUqT2eNA13KordoDZX5MmsuJ4eZyaizFv6Vydz4vfTTJN
         8UVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767644164; x=1768248964;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gM/0NBeBZo/IQy3QHRFeMfe2d0xBAbWbFb4SKMpPqz8=;
        b=uIEJSp2KRW216mFh+SgOWPtm/66qyHdsY0amHoXaHKcfq+8zW7/2mZE8p5VSLuC+Gx
         o6PZHRQQSgPr0kKs208BDeZPsimdVfszOb8bBW3x3lb4sbBZgXKL3zuQJHYsHctWHJl7
         k/fqY32cBOgMaxB0NI1vKcXmU2wE07wH4bqCdgkWeFMssVdb+7vsCxYFdCbMT8Ylv8Iz
         uWp+0IqZQAA9ngKha0NYeloskP9mKkkDdz7vka804dM64nztB62+6EHp6rhMK2FjHbcD
         QD/XpkMJjRPFvGxLYMOXjoJNoL+xdo+OmPxxIKJ7shhEEuOSd9rAiqlIMGdLMHP6qm5m
         yxBg==
X-Forwarded-Encrypted: i=1; AJvYcCVcgzoabLMOvz8bYyiVNe0a1DuheGztjcyM5eqvEp6YcHGdvefr4j+Bx4ctEXON3INKy05nQbI6FCik@vger.kernel.org
X-Gm-Message-State: AOJu0YyWd8LyOU0ts8AXEmrOXrODO7s/UTNaandvd+476bDoaojuUUiN
	SYB6r3/Hgfx2FMvPMUtyH8UMnI+xurrlqQjUAKPtTvg8G7ZMnmO2TEvoPNEkHkESUOY=
X-Gm-Gg: AY/fxX6DwDvb2hii7DqjL+/1GdfSXrL/3OVEu2NsHCip46gJtFtiTdKreILtTC8b+be
	IR3oXd6XLyzxJDP44K8ufbiY8Qx4sd8SwSkTnd57N6A7/NNKmowpVCLDXFngtgRWoPAHJIeUU85
	f8+wzN+my4ygq3V9ULhU8hrAXcNka4GvvrvnudS7VO4/lo1IjS/V1e6+AkJ2LG+m2G+nSxvub5+
	mQS9W5wZVpMY6bVc9Mb6utU0zqUX6C4srJMPp+MaZrkOMzZZMENaabB/65ZLd+XKRK8blttsBDR
	p1J8+TeR4I5nz80JCMDJB+KZnUmErtntyzxFFt4ZKLQZLNnUzdvah54j/60WS915oO6jWccW4dM
	/W5dI+J9H4DK02pqOhYY8S4zGm1J4BgmI+jvSzUrdTiJsoKx9Yx7OmdSerk5nW9vmE27rx+cNT2
	jgdcDcdqqe
X-Google-Smtp-Source: AGHT+IFv+URzhFo62S2OJHIOtV3yIc+G3XQJLuGIrCdc5mHktNrWdS8zWFn48CHW91APTlisHxQKQw==
X-Received: by 2002:a05:6a20:d485:b0:361:2fe5:51a3 with SMTP id adf61e73a8af0-389823808b5mr334370637.39.1767644163808;
        Mon, 05 Jan 2026 12:16:03 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cc02ecfaasm209624a12.14.2026.01.05.12.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 12:16:03 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, Vladimir Zapolskiy <vz@mleia.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20251230234040.2083889-1-vz@mleia.com>
References: <20251230234040.2083889-1-vz@mleia.com>
Subject: Re: [PATCH] ARM: dts: omap: dra7: Remove bogus #syscon-cells
 property
Message-Id: <176764416284.2561401.7444989303329594096.b4-ty@baylibre.com>
Date: Mon, 05 Jan 2026 12:16:02 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-a6db3


On Wed, 31 Dec 2025 01:40:40 +0200, Vladimir Zapolskiy wrote:
> There is no such dt binding property as '#syscon-cells', remove it.
> 
> 

Applied, thanks!

[1/1] ARM: dts: omap: dra7: Remove bogus #syscon-cells property
      commit: 76f88d2edd9f21acad7be8422069403118708455

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>



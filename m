Return-Path: <devicetree+bounces-251678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E30CCF57B6
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 21:16:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5DC7D300CB60
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 20:16:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C570533F8B2;
	Mon,  5 Jan 2026 20:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ocZDw/Ng"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA3E33AD87
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 20:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767644162; cv=none; b=lAecu1doC4k8G9mqvubltOHsFoXcKbnDfQz1DewLtrMqirAGx0tOoV38f685nQq3MJg4bGwhgOleM3wWx4I1iSpHEzwWC5QsOZP9e+qN4ZJ/YR0A4UPDwzPlY0Lwq1gRpDmdAMCpPRve+zEsw5j/vh8xnlxkdQISPOfRBl/DOwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767644162; c=relaxed/simple;
	bh=isx8tZ/KgDsBW8GX1w0daR0bqpms0d4lc8DbbBBJ5xg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=KHlpyW2avnt9gU9xdVjtJa2zd6XcT8u4FH03PqtXqCEc/Q1DG3hBqzaqHD34pPJ9uDW/arYU63DyItJY6qD2QPrnkE0+twuInGu9zDklFucfWq3yn2v8CNXuA90jm8yWkhDvmJ/eGFvyLgHf4OCdc8qmhgcHzBOFSXvORchpwd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ocZDw/Ng; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2a0d0788adaso2563245ad.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 12:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767644159; x=1768248959; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNqPSklJFm7WommF1LrsVSvRrNDwiCgns7zSiqfr3I8=;
        b=ocZDw/NgxeZ+mwZXN9Zlk8d/RUNhNlQRi4MO7EC/4oiY4Sc2RXr2cDUje/Q9Vd0dpb
         qm+d+W22XFBJ4Zqck8/1wQ0CIL9VKkCi8eKGfsMJTA5YQDFYeu16i8H2xVfIcbxORIF1
         +6ikL3pCeP0Iv5rc+9RBaWISHXD9NvSzwVeOvDobgoYLqlNTrXldIZlfjzgV/56EssKv
         fQDPO6bmt5DI6sa94xxm7d9bNRbYhA3FPhn23AWqVhcT4NdbJjI4MVla76vp63dhXuOE
         WV4apl7t56dgLcvV3LtqocGnsun2qmLh0JALjFazPkYG6zPmh01SLnHOWWt6VmmIlK9B
         g6MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767644159; x=1768248959;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wNqPSklJFm7WommF1LrsVSvRrNDwiCgns7zSiqfr3I8=;
        b=hoVsvMzcYYeOATc6cQZChZLNpGh8bJXMsO8w7vFeHYGxdU3IxzAlN0Nf0Q7SO7g5C8
         h8nAErQtm4wJcXdapBjwKm6031J5vtnMfDgRgBBm9IbfdOGyLSQ0aZPWClE4RS16IGNq
         FM3BqAqFhZ4hrO5UTOQNVq8o1BsZEDCVSYANAVgZKyXkmPoqo3FfMKTwYtSloXToRxZY
         IlrTfg3+4nQ690Z3sx6VNZes+6EzaN/mUisikLKChp+cFCP0IXeJfRZJ6lcrTJnKmda8
         w3rWeDT5/+vflVS+19wOXWzc2AhL5t4RD31x86b1hZG9RiFmoVzRywO6Q7b1OR9VAsfL
         xZIw==
X-Forwarded-Encrypted: i=1; AJvYcCUDbzuhD+IymNXgJfx5KM42Ljd7M9Kf20eC2h/1ljyXdnbHpj326kZopA79c7HjH0IJa/VnfAs2ZhyF@vger.kernel.org
X-Gm-Message-State: AOJu0YzgTJoPpFrYnI8Xh/UPr/etCqssA/bQrWxyxF+MG83CY9iiIXiV
	Z8F9QodYmO+PPOw0ZiV/pq063tZ8uLvRE28mukAp26IpBTAnnY/Tx6wQTFyPivSjBQc=
X-Gm-Gg: AY/fxX4+geOM7jWqrI5G5HmqUODdM0yWReKouFbOrPjCG3Y1eZ78TdOb3livBNH7BwM
	Ot8R84E3oxtLImz0Wl5CaR/pV8pLubjjM3vff361cs0UBBao3hAMQ5tld6iNP/M7lt8IJDjxyqg
	5dAikwWycrHDOJYcTxMqKw+9GjCFoVLKDZp/pgBvEJOkr176BNLv4FVml5pOqjfERAUqmLyS773
	c/COGzbN9LDpnyzJmxMgAIHNnxtY7gs7L19X8oF5RZLd1A/N4aJ9YzZFjT9Lp+1vRF8LHNUx0jf
	tHtnvMvxLfxK3AbAgeZ1kNYhiVFWf4TJYGmc4GLTSdz5VIW/F5LFFkKxhP8FSFBJG6trNaG+IuJ
	KQZ1LYrBKkBMb3/f7YuyI5kmA18BdRFivUSr1lOZiF+6e+XIpzW4mVxG2NQRzXc+vTUZ39p4pzG
	vuhrdQO0QO
X-Google-Smtp-Source: AGHT+IHfr8XE6k+bGYDQot7AdQMy9OZfkG//q2v3AUg+8RsnBdbZ9rEFP0yZYdIdt/G68wKJ/++tRQ==
X-Received: by 2002:a17:902:e74b:b0:2a1:3cd8:d2dc with SMTP id d9443c01a7336-2a3e2d44154mr7368205ad.57.1767644159531;
        Mon, 05 Jan 2026 12:15:59 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c3a311sm1028145ad.19.2026.01.05.12.15.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 12:15:58 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
In-Reply-To: <20251212203226.458694-6-robh@kernel.org>
References: <20251212203226.458694-6-robh@kernel.org>
Subject: Re: [PATCH] ARM: dts: ti: Drop unused .dtsi
Message-Id: <176764415854.2561401.11477878819275792210.b4-ty@baylibre.com>
Date: Mon, 05 Jan 2026 12:15:58 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-a6db3


On Fri, 12 Dec 2025 14:32:12 -0600, Rob Herring (Arm) wrote:
> These .dtsi files are not included anywhere in the tree and can't be
> tested.
> 
> 

Applied, thanks!

[1/1] ARM: dts: ti: Drop unused .dtsi
      commit: 9da91ec4a6b22238d9178cbc5679467ea4261df3

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>



Return-Path: <devicetree+bounces-251679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CABCF57EA
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 21:18:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F1466309350B
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 20:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B29E42874FA;
	Mon,  5 Jan 2026 20:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bmraLrRD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B8533ADA9
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 20:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767644164; cv=none; b=eQnAKrL0O/s+hz3CaD1YKJ9P6LJ3CriIm2sh3e1XYLfdFhX+J3SD8DJgXbUqRaS1dBziLwXhu2R780288yPqJphKdJf1AJ7wIcYn6Uav19y8wjWFNju/0W3mPcW1a8IWPa0mIBPFIIlyK9MxzP2LFWinclW+QI3TEnV4aWF7N34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767644164; c=relaxed/simple;
	bh=fN/38i/U7MKvA4ILg1H1EEmSKEqmODO+AsGvaeJi97k=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DOLKitGPo+dDZgYGehl00ZsoyKKQFJTZoVnVSjbv8YBHBsH4R053UliM37EUTDar0/IXYHfS9MCy3qsjk+Mx1yz4zRg2OcdCGCEHbys+A70zmxn5+SWDDyrXmA1n3UYY/zbO30L/gYLqcn6Q0/zbxHEuo/0WEHqNl79IA9k7SOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bmraLrRD; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7f0db5700b2so308649b3a.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 12:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767644162; x=1768248962; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NGWq0akpgTwkZdpylOTuuB9EQyJHEcdS3TvPje0PkwE=;
        b=bmraLrRDGpKVGNzL4NjnqL3kYupPKpYrMNfQdaZ6qGlqyhQ7cJS2R0xlNckzv2PLYt
         EJGu08sr9gQ794dQEMkoDF9AglyYNPSblmjvizg5nihEXzBnaxxgWnpHzSboFShR3kyU
         n+fGC8Fn4GzC56CHWJBlJ/9QBYnEwMOQMDpVqYe3ukzfM0bZ5HHe1MTvTm095xZDybuy
         PhyypNe35mOLTrjWdsf+lxhMUA5rsKQOrSiQGo0OCXVb3hOgjPjtQeqGaKYUUJtNqQmv
         PNAgkMuUm6Vm7fhdh1MX/i1rX9S55RDBiUg88imh77PBUgPKmNdk3UswbTf1DODqz4kF
         IQ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767644162; x=1768248962;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NGWq0akpgTwkZdpylOTuuB9EQyJHEcdS3TvPje0PkwE=;
        b=m8f8Z2yQykXN92UROIaqj4+goeie8s6+cNTwV5r42/I/L0S1bTWJkg1OK1CHWoOnyG
         qIJRLWqiJxl/mpdYy9AsSe1vgBPyuY4XyntQc/vUoR5WPntXRcMP/0OEOYqYmLIHWJKf
         bkKjAqGq9nCIE5LUwz9Vkp3x8oB3OQw7wunzW1L/dkz83qvys/HjRNRydar49Xv805Yo
         RMjPbPbJrGEj1wouV3GFcuFoAihxMxnC4qhkIuZ5GdLu+ZB7qtrxX4OC/PehSn+/O/VD
         gqz/iTZbOH/smOq2uthBgZ3NNN60JU5mRhFFguxy0KYP+MgWbxcKZggahfZeXguXciX8
         yWeA==
X-Forwarded-Encrypted: i=1; AJvYcCUIf+KOnV2Iic+Tc7XtUXmiCB3HnXMdg/zMAoIFtRHZ53KgMI8gA5MaFj1pE3g3KyabwCQ1mE/FXNi6@vger.kernel.org
X-Gm-Message-State: AOJu0YygTYMObFNolJGnpywFfqFyGYqNmTDdMOSHuThLrgi4aZtSId6m
	2b1sMeTz7hm/Vj/FsJo21mv6WL+0kBRkUaxFiPgnSCq1JNtwRetWY47Xh5SmJICnxqs=
X-Gm-Gg: AY/fxX6QxX64PnHo0rjyseKGg8UYMmtEIwsLYfoQX2XH18hUrRGzmPPwUro7seRZX93
	Jg28y/ixzUAB0SgRStAnOYMdLN3zvqO0Emb4ZvAwEEpRk7odsNOmxVhUJfX6jrZQV4LQhZBYNtk
	Qlx/D3tYuTXRwrHjp3tNjwM9XGaHjxYnWZzPbNt67HXxKAFt04aww9jTZQMX2Nw5FxZ++G7weKV
	TbNkZBc1huXGqWOBzvk6CW2lm/1odvvW9Wf1MdhGSOfhheCdNBuTMfyLWxZ0pRQ7qm7+tQv+GrC
	LSi/13FdEKMxYcCOj2yV8SmI7VbuBS5dRN0nCzRz+LwJ3II3k0OzEU0p2Pk/fqJz/TvKtAicBZi
	vvZ+l/D64REfl4ehf67Nxyk7p704lkqwaMHQNit1mo7hwOHjz1Akemx0+tmjjEuFsqspzyLMr99
	e99NOMCwss
X-Google-Smtp-Source: AGHT+IHwY+GgjzEgS9tRrEOUQ0srOCi5ICQk1EGLYdjErJaRyO2Qcp6qMaW9MbzYyeAc2JGv30HnkA==
X-Received: by 2002:a05:6a00:4103:b0:7e8:4398:b34f with SMTP id d2e1a72fcca58-8187f4a1ae9mr782034b3a.34.1767644161686;
        Mon, 05 Jan 2026 12:16:01 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819baa19236sm33671b3a.2.2026.01.05.12.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 12:16:01 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: aaro.koskinen@iki.fi, rogerq@kernel.org, tony@atomide.com, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Andreas Kemnade <andreas@kemnade.info>
In-Reply-To: <20251224093457.558477-1-andreas@kemnade.info>
References: <20251224093457.558477-1-andreas@kemnade.info>
Subject: Re: [PATCH] ARM: dts: ti/omap: omap*: fix watchdog node names
Message-Id: <176764416076.2561401.17223781363486710439.b4-ty@baylibre.com>
Date: Mon, 05 Jan 2026 12:16:00 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-a6db3


On Wed, 24 Dec 2025 10:34:57 +0100, Andreas Kemnade wrote:
> Watchdog nodes should be named watchdog@ and not wdg@. Fix that.
> 
> 

Applied, thanks!

[1/1] ARM: dts: ti/omap: omap*: fix watchdog node names
      commit: 1e79c330713efba3f4200c80e4aa68d7393edfac

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>



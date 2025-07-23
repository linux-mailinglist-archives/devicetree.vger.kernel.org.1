Return-Path: <devicetree+bounces-199163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF20B0FC08
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 23:16:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E21D17D833
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 21:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2697B26CE38;
	Wed, 23 Jul 2025 21:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TB2m0bfb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3878A26C38E
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 21:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753305383; cv=none; b=U85UnUrtrXVtd7jeyP3OOdY6Obv/jYPBZtyDGWrR5y0/nBT9AYeumjsGadug4+epbkcDxHhX+fMLO34Dy/Tk24EwBv0S2DKrpvd/aH/CjThhgDLkKvQyMMBijNQVj+Gv9Os1tPkwKdH8ygCTHHl15skMMRQ5REibP77g2T+Debw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753305383; c=relaxed/simple;
	bh=yWyJDF3Q2SumP8IS31W52vFdyTdD9QP8y32xJ3aVsWU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HKrbLQ/pkg06d8JtSRCDcElpLnFF4bhuFDr7IuNaP5qqzJY09bQs+YIbHd5aDb/VaofhF6gcan5ari6I3uyXu2TwQIqZSASD08oQ1hc/CGtfgZqFjctO08yJCGD7XDrmOTKwjUFmHjoh1HqmXdFSUpt4ixrqWJg/OgVKf48Pdb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=google.com; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TB2m0bfb; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5f438523d6fso1483a12.1
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 14:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753305379; x=1753910179; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yWyJDF3Q2SumP8IS31W52vFdyTdD9QP8y32xJ3aVsWU=;
        b=TB2m0bfb5AWnodsdI4fAEe0G25DPq8LtpAMClOdD/1YTS2jhq5Eb5DG1EWe5FtLuLy
         qNrGoar7njwPPDGhlAMbnxBPCljPkWLUXxUz3zyc/VRwGnPAIYhUHn8UZMdGuJjEJ22L
         423/h9wpccWK3CqTPWZDh35goLIjqDiOsjVL4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753305379; x=1753910179;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yWyJDF3Q2SumP8IS31W52vFdyTdD9QP8y32xJ3aVsWU=;
        b=llp3s9udD+mXJKhhVLIwvDfMeFMQeo9/99qre19oduIlIPbbdChGTofs96Q4290ljx
         aHaLTqJiDJK1TgEmaGro6DcV/ZuOAnLHqjjDkWXavcAChIXH+/kMxT2MFVL4Vz1TQcJr
         sh8HcDPS57SqAW24D2yX6QBRmeDWxot07h6/AaCimqch16FTErc4phAHHTu4PtKr9qwX
         xo1Po2KqDJSEEW3XkhpQRgQV38u8s5zoHn9wObpUNwQGoSciCwcwIVikxb5BT1XinXDf
         yeU+06TYCQwspl5174YSaBpAECk0uatvyHcuvynH2uoJ1NPmNVqTvba1LHzVJzsVDn6d
         iEPw==
X-Forwarded-Encrypted: i=1; AJvYcCXPfSJ6xqRb0rMu6PVGAOHJgfoFX/KqiCKEaC4aIFHxUnz393+1Y3bO6KqAotEoc0k8/p4odHbPLFhF@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyr7NDJ2OpLa6nD3gp0z66Ca5+90X97sw6+CZuyXytQz8JvII0
	tHAQNuHZKaYg3sb7O+ixy3fOAW3Zyx+EX4aokqVgNbn7PaTdRenTYnrGyVtfiVZYIKcgqiEl2mL
	YOp+/vJh08YcmrXWCm5KC6snCADeeCZSp8C9yYkDx
X-Gm-Gg: ASbGncuclAkVGyAd64iLINJRBykFY/I3D6vaa65vndgHjPUkaRn/9GxXPxp4Y3pAivz
	Pu5ZTwjWlo6RpObmpZoM3gPv5/FnGY1XPOKoKdbYQozbmDHug7s8QAOyykcjm2YxPnvpXWMKn98
	sV3ReTxEqccCXqshde+qm7gJKeBULFpxkIwztzII4HVly9TI218C+rpwq0lM/VXoTDaIhW3p4zG
	g/cNhKzfeO7fBcS1o61XPCeD8z1U48e2A==
X-Google-Smtp-Source: AGHT+IGkycQnfe72S9SyWbMalkjmg0I49bPxAmbp0MCvmAI2AYuaRbELjXuXnq+jCKrEmFtw1MggLjmHYfDowt+Iv2w=
X-Received: by 2002:a50:aa8a:0:b0:607:bd2:4757 with SMTP id
 4fb4d7f45d1cf-614cce2f67amr6758a12.1.1753305379189; Wed, 23 Jul 2025 14:16:19
 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250722-ddrperfm-upstream-v3-0-7b7a4f3dc8a0@foss.st.com>
 <20250722-ddrperfm-upstream-v3-7-7b7a4f3dc8a0@foss.st.com>
 <20250723-zealous-turtle-of-perfection-e67aee@kuoka> <e9e33fc7-4705-4e6d-bd33-ce9dc1a9b94e@foss.st.com>
In-Reply-To: <e9e33fc7-4705-4e6d-bd33-ce9dc1a9b94e@foss.st.com>
From: Julius Werner <jwerner@chromium.org>
Date: Wed, 23 Jul 2025 14:16:05 -0700
X-Gm-Features: Ac12FXyYNcqm7jBBLCa0VFOXC51yHGdhXmCX5kALRLR-kvG2ffG7jYjz27Mm2C0
Message-ID: <CAODwPW-bwg-CD8qfP0cb58QVFLfJSqj6DhZSQuqHxsEdLz1QDA@mail.gmail.com>
Subject: Re: [PATCH v3 07/19] dt-bindings: memory: factorise LPDDR channel
 binding into memory channel
To: Clement LE GOFFIC <clement.legoffic@foss.st.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Julius Werner <jwerner@chromium.org>, Will Deacon <will@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Corbet <corbet@lwn.net>, 
	Gatien Chevallier <gatien.chevallier@foss.st.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Gabriel Fernandez <gabriel.fernandez@foss.st.com>, 
	Le Goffic <legoffic.clement@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> I don't want anything specific so yes it could be cool to have a generic
> node name.
> "sdram-channel" is fine for me.
> @Julius what do you think about it ?
> Is your existing software generating it in the kernel ?
> I'm curious about dynamic node name generation.

I'm fine with whatever for the example here as long as the kernel does
not rely on any specific format. `sdram-channel-X` seems fine.

On our platforms we generate these dynamically in the bootloader based
on what we enumerated during memory training, so there's no kernel
code for it. If you're curious, our bootloader code generating it is
here: https://chromium.googlesource.com/chromiumos/platform/depthcharge/+/refs/heads/main/src/boot/memchipinfo.c#25
(We can update this if there's kernel consensus on a new format, but
we'll still have older platforms that keep running the old
implementation and we also want those to remain compatible with newer
versions of Linux.)


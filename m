Return-Path: <devicetree+bounces-247910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA8DCCCDB7
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 17:49:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96C383016CF3
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71F3934F488;
	Thu, 18 Dec 2025 15:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BggJZifg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538D334E767
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 15:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766072869; cv=none; b=R7ANkT5ciixjy0yPBASvJYU4IabA6CJY9vNDa0rytY+q+0aHdVRD0+zaId8UiJpgJiM4pRcM7du53dVqmxSlqKnjoJfEh1cKRpC1MZxAsoaWPiq4/y60QPGPEAm0zoer3Ts3RrIgkRfUzcRLgpmny9e45YZ/GMY42rIehBX/rJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766072869; c=relaxed/simple;
	bh=LzxNzF7MpItYcU3pEGmTXATHal65pD7N5vjHukp5bDE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dSotArwkmVHcer6tpf5P2lSqjsYpBhypNuvTzkw9G8T/l9pG4gKV9mphZmnOU+TDoB1OJDLnD1BDBf1QRHLAasRGrLGAVm8CFiAO4htJMVQOTLbjKVskUKcTBPkFqIQKTO//UpQoD04JyiL9mjqvQjz/V9QWowrgoZ0dSl5MjQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BggJZifg; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-59431f57bf6so840384e87.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 07:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766072864; x=1766677664; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LzxNzF7MpItYcU3pEGmTXATHal65pD7N5vjHukp5bDE=;
        b=BggJZifgjvx24PLzSYnjQCRW8lcVGi8OQ3JZYKH1fJf+W1Yphj6PpOXaY/v+7/K3Wq
         svn7fUsuVdAD8JmSROt9ZGzmbTXjYttt2FcrmgoL0MMQc5OGRIf2ubxQfS9ZRLXP1poC
         ljDz/txTjHP5Sg82DWwHJHrkU8aPNTpnkAsintYGBGw1KwwG74ZAxbJ5/21OQAjIrT9g
         Zg4M2Xk8tsIh9wGMDbpVgX6TqPuZb1kmeYVaoYa7NNhxa5eKwL3ZW+KBSNKNbsam59hC
         Tf9/JyaokJRpw5kT9rU1gJaIl4QPPQaWLx56+SBJPNIZl8SkOVFdUvA3EUTrqZkJn6e6
         QQ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766072864; x=1766677664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LzxNzF7MpItYcU3pEGmTXATHal65pD7N5vjHukp5bDE=;
        b=LQveIRDdL1t/wEuY8q3lN9rCEruJnQS5h6pu6mR2/HbTGMle5XcGXY+TXXNqkFnbVg
         lGmxU6uRDHD0jEZYqRFTRKzwcYqkYrKgBDM2ThpqhkDIn+OfBP0UBklG9YcsZ7EaHfdI
         mXXWdhHpE9UqhpTKM344CF4yFxutMcgPhWvepmupRPYbHmVk8Gsr5wzlnDhh/+vzGYC7
         Ccjig44UG6ttQeQltck2Ne1+Y6HCgrJZV/9Cpba6y4hX1wOkZUamZYGRXEMXxD4qWABx
         wb1edtsd+V3wGDL/zsqjVVc/t3/qVvEuFM6Gd05jU0sTMaSoVUklbMkD4nbV10ZcEghr
         ebCA==
X-Forwarded-Encrypted: i=1; AJvYcCXQRTAst6RUpnIPYXZVwb6MZ1oNbXO0mV5R1ZEGkpjVBtA0LmQG19btksjflLZJAhm1RVAJcX/ZbF13@vger.kernel.org
X-Gm-Message-State: AOJu0YwkK9uAiQnjU+8w+yzJe7SlFOxOG/R1cemZse4Iv8o9vyakl1zP
	3jChuvqMEyoJsEUvWy7Lh2oruaE57iX5dq7DbGltvwKnnbx5qp50pV7P7AWvn5VvC8bbqlISJBl
	OLrr5qq84w2xtBIqV68UhsrM/mdbHK5s=
X-Gm-Gg: AY/fxX5Vf3qYApC3eccAdFgzmx3YSvbE67l5HrYeFw4hpjtsto51EmvgQOA/cQGMYoD
	CXnLTYC/A7yp4zSuumbRpI9nP3aqUGOx4tO4IUaV9JqAqtWYgff2GPb8eUt+rzLjDQYscbxonw2
	jgoFiaeOPqlhgd894UpB4lXy6MUAoEcaVDS3TF/YqcdwP7gg4HSvKD2IgEqjmYw5SnGGckjcQnM
	GI0kpI1sG0ozgLu11iKOSjXL0Qp0in/dy/FwLyEERl0TVhH8YO5pwYlMdPJZWPz82X9jenkEnDP
	fCBJt9vCR8M84Qz3bgQKf0VE/0E=
X-Google-Smtp-Source: AGHT+IGrYbGUckFbA0uI/Uak1RoxWaGizxcWDMRvFWxpw/hL/+bdMgS3hQvghW4USBbg4LCsrOKENWVewsmE9VZ7WWY=
X-Received: by 2002:a05:6512:128c:b0:598:eaf8:8f5a with SMTP id
 2adb3069b0e04-59a17d573afmr14623e87.38.1766072864074; Thu, 18 Dec 2025
 07:47:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251218152058.1521806-1-alexander.stein@ew.tq-group.com> <20251218154412.1524249-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20251218154412.1524249-1-alexander.stein@ew.tq-group.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 18 Dec 2025 12:47:33 -0300
X-Gm-Features: AQt7F2qc4TJ7gyArwoED7PIRPB0eAsifB8ZnC9eeMqM3yyZByNJJ_XOF-WESW6g
Message-ID: <CAOMZO5CmP_rdFA=PqGSmKDU+ObzifHFDjwYMD3J67bjs0h_sfw@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: Add TQ imx8qm based board
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Peter Chen <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>, 
	Roger Quadros <rogerq@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>, 
	Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-usb@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 18, 2025 at 12:45=E2=80=AFPM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> * TQMa8QM on MBa8x

This commit log should be improved by explaining the SoM and base
board in more detail, providing a URL, etc.


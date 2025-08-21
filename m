Return-Path: <devicetree+bounces-207725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 484C5B30922
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 00:22:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7F23C7B748B
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 22:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 729D92E0916;
	Thu, 21 Aug 2025 22:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HOoHi0Ui"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E7921765B
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 22:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755814901; cv=none; b=t+pgRJXVhFBBXZcW4tFXOnbiQturCfBAI7CZPdxwDkSUBoBDIPGFNDqOVvoIAQDiioynnDuAZMYesa415hg/xvQFIZmx91T6dLhHI0kzMMTAGU0P7e1gHwcYFWZ0XccclFj4E3I9+bJt0Nd+YYtJvQldlg2v2tGH2Sv/jXbvnOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755814901; c=relaxed/simple;
	bh=UnLbFeNqq7avzDTdoROz1tobjhAOKS9cwykmPx2ktUA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OCxn+DOwuDqu1DhMYBsGrBXZ75bdFNOxnkTN8n2Jd0RP2eLeK8S8t/j0GLIPVuZn1MlLlP50n8JN3znC8loUIhS0x8BMXPn/rw1pdKSoBCYV8pK18M7uBt7CW4dQj2cv9U6LNBwJZDf2s5T3HxtlV20+66BGw0KkhhBFb9o6rhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HOoHi0Ui; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-55ce52b01caso1553990e87.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 15:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755814895; x=1756419695; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UnLbFeNqq7avzDTdoROz1tobjhAOKS9cwykmPx2ktUA=;
        b=HOoHi0UixxikYGIM53Wfyvnv2YaKUSYz5YLi1wHsj3zl05NSXHoRuJra3wXwYEG+bq
         6P6vuIyfvFkBl9W4J0bD+4caFmMQyXAAgO8rSKhadgN3o92KkzRAhKbbFQkRlcVthI2v
         Z+oxV75Al7p6/lZZLQ1bYxwuFAldhqsM7wwqWtMXMG3EqmhYY3oCuug+FyNArHmQ97N3
         mIpSLRnRtrExhKMQcgajGl/WOYpvvOUr/cnjTp3ezEq0OCZ4u7szarVn45AlqgSQglKD
         UOT3JWFhpISF+uHsZ0oHs3QTeYQTH/R8jiNE9uFtq6NkGOvD+mN0mXcUbyH9ywhCGJ38
         HwOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755814895; x=1756419695;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UnLbFeNqq7avzDTdoROz1tobjhAOKS9cwykmPx2ktUA=;
        b=WVyRW//7MHIYBOc2u0ld3/NCEe+CoPBuIde257x7btVUwKSvvjf+eg/pJ54csEp6Pj
         FVNU+KjnYeqSksAmVV7O6oyJRSf4yX5k1IGcnd6l9ecYiW9+JIwACf8iTaPSsoj8N7fa
         u29KddYgCuPRJZ4EBjhssA0ypwwUxYMZYZH40B5QGqWtU8f8XR66KGstR2rgHJT1W24n
         wiM4igvIYpGuoVMCW5JTgJrkoKMz334u3cIgJQ13YFnuk7fBjemgjtnQgWwo+HS6hIdy
         ubzqYJUKKaRzNFjAjtd92UTmLN0iVaiLJvC999V+oBiVz0beCoFcFm//wE2ksfCz6Yxf
         F99g==
X-Forwarded-Encrypted: i=1; AJvYcCVtsYdQDgShRzhIKbVGtV85iANNo5n6C9EN14xg77FjIZ7eUAv01FymPa1BqjOHvU2KXXdgkIsYU4GT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/LI6NMd+27mLFigTN3y3JcfA7W1LHi9mC/EG8+BW7iDWfOqJL
	xEcQeRDFrBnx5iSi87GKKuQ+X+7E6kEN9obm0Nfn0w0x3XGUZyclkC2ZjdkCcNPXGKfDMgtPqL0
	UIHF6WBQ/7H9YRmh17MV8UzmUmaTQr9s6XHHX4qyOIA==
X-Gm-Gg: ASbGncsk/KCSWnR/CEwrNr3c+mM3ECPsttsZ98WJziwYHjm947xuQddNT9JoovAP66q
	fV7BvxvBgSw/XMystahfrg+RNlpWx4HyEHCoBcMwGrni47vxRPAhW8odXNLW6+JYGeQdCUipwAi
	ADr9tUxsS0VY9RMi3SynSdklQVn/I1GuhdAmQy5AMlyYquY1+8jTddvXcfntaIXVKlJRCkVkzjv
	5DS/S8=
X-Google-Smtp-Source: AGHT+IFS/hjiAZsrBtop5XCFciJi9eFP3IedOZuSAiBE+UQ71ZhxAO5GJMkg1G20lNwT1ii0tPrNlXvDS1ipWk+clGI=
X-Received: by 2002:a2e:a018:0:b0:330:d981:1755 with SMTP id
 38308e7fff4ca-33650de81e9mr2119481fa.6.1755814895432; Thu, 21 Aug 2025
 15:21:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821215703.869628-1-robh@kernel.org> <20250821215703.869628-2-robh@kernel.org>
In-Reply-To: <20250821215703.869628-2-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Aug 2025 00:21:24 +0200
X-Gm-Features: Ac12FXzKWiHUR0LNVTk-WVKUiLjwlocmimUVt0NrbbhUZa5VeD588kLhYF24RU4
Message-ID: <CACRpkdY5Oi6sM8i2OQFkSYUQ-Wwi4FTD3Q3uQ=C6BJyTo8FPKQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] rtc: x1205: Fix Xicor X1205 vendor prefix
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 21, 2025 at 11:57=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org=
> wrote:

> The vendor for the X1205 RTC is not Xircom, but Xicor which was acquired
> by Intersil. Since the I2C subsystem drops the vendor prefix for driver
> matching, the vendor prefix hasn't mattered.
>
> Fixes: 6875404fdb44 ("rtc: x1205: Add DT probing support")
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

This should probably be tagged for stable since there is
a device tree using this (correct) compatible and it doesn't
probe right now.

Yours,
Linus Walleij


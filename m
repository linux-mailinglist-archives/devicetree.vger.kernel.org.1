Return-Path: <devicetree+bounces-65874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 198BA8C0724
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 00:06:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE24C1F23601
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 22:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98FF213328B;
	Wed,  8 May 2024 22:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NUKw/+0m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6501413281F
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 22:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715205966; cv=none; b=eevDJFcWCUL0hGSns9FyS6+5Vb0pU7pz7U4P+Agph7wHLv1P2+9o4iNphcX4my6R1JpEnze3tm+sWTSSsFKUvaDI4lcA21wDFxigLlhd/KfTftc3V+XYEWZK4iL8LkA6sWtMQ1nxFR/1xJV0K3MWgXufoYzpg6EY2bbEvpyomZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715205966; c=relaxed/simple;
	bh=4GmjLoOojpEg7WhLizCXheISc+kGTWTFxnKHwCHw/Mg=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ce1r9B04P7EbEtM4lXdc8xRzd6W0zEvcQei8pR8dbOCFiDQC97GxMc/A++vTPVd05T60b/Q8GnDN9PeTLB/m1slmIp9I1PSy8Ry3n005KxvqlU0OkzR8y5j2fMSMU7pQAOv+5Ob9+S9y/p8LJ1BQaZ9jhybGpvAXqvFavorMHZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NUKw/+0m; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-de60380c04aso302818276.2
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 15:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715205963; x=1715810763; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4GmjLoOojpEg7WhLizCXheISc+kGTWTFxnKHwCHw/Mg=;
        b=NUKw/+0m0ePExsvsFHD3SgHPUZge/vpDH/1dWH8O7p8/C9Uj2ki0Z4odqVes8b12Q/
         ovAjzzwOCEd06dRukza9R7ezMxIptvyJGeEYkB23iOx9kWqVy5LIa6lvh50iE4oPGwsa
         l2fFjjc5rqAsG9atJybFMht7N9T/73cXEdgJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715205963; x=1715810763;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4GmjLoOojpEg7WhLizCXheISc+kGTWTFxnKHwCHw/Mg=;
        b=agHa1VN+wSHQgq43p5gw4KwgZvvYeV1uBistnt2OCJ7z/9v3lW3XjkStfSQJ4pqIRL
         GfQ4zqTDqyh9F9FpFlPToRx5ZIZlJXiiJj1Y9NywLaGykUZzJ80mdBjmWU23SpE812kN
         KK6BHeuaLNyHjJeTdiG7jYjxQhjefZIQ5bl7GRW5wX3rIOED60ijpbMBa64VnrFgGQuI
         sGTHAczxveusE3kU1FGKMD5C+HczDHCj4O2A0yzGloDOFcIHaC1adu01pwT5ItfeZvud
         r3IjIxlAqm5qX8ADqLBbcUfkRU4YTFS6xC6Xhfu/0lxDLceM20a3t2A5pqWrJ5tdiq9B
         4r8A==
X-Forwarded-Encrypted: i=1; AJvYcCXMf55NYgYw5HjebYT0afwQYPQv6w4pknVHkBh49rbjewHaV7r4tg3IuFn0M+UG6aE5lro54pQSvfzjYz59H7Cw+PIkfNogpBOYBQ==
X-Gm-Message-State: AOJu0Ywjqrzamj0e3zg9THdk1smbjnlgpTBGW50ovpihBWDTUXXYg48T
	GBAsX/4YhqylVS7ha4sfAOcgWoRiVLvATXcVh+rnCT2Xx3uzJtq14IHIXRQ6tzGwxrx83IAMu2m
	LToIu1a1/q1o+mMgib5xjm0Lm1qggvbWnzqCT
X-Google-Smtp-Source: AGHT+IEtqqWBmwa9YminWEi55PV7HF4TSL0XOzGl7mR6y7E7ORDiXSQKZtGJ2hpXVXVDyymKtOMfdIRRGFW1rvQ6Pkk=
X-Received: by 2002:a25:bb12:0:b0:de4:627e:b556 with SMTP id
 3f1490d57ef6-debb9d89584mr4172658276.16.1715205963556; Wed, 08 May 2024
 15:06:03 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 May 2024 17:06:03 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240506150830.23709-9-johan+linaro@kernel.org>
References: <20240506150830.23709-1-johan+linaro@kernel.org> <20240506150830.23709-9-johan+linaro@kernel.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Wed, 8 May 2024 17:06:03 -0500
Message-ID: <CAE-0n50GbXpc4K-zKOUxpGiPyQwzQfth0+f1fPDnSRH3gfwnsg@mail.gmail.com>
Subject: Re: [PATCH 08/13] dt-bindings: pinctrl: qcom,pmic-gpio: drop pm8008
To: Bjorn Andersson <andersson@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Mark Brown <broonie@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>, 
	Satya Priya <quic_c_skakit@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Johan Hovold (2024-05-06 08:08:25)
> The binding for PM8008 is being reworked so that internal details like
> interrupts and register offsets are no longer described. This
> specifically also involves dropping the gpio child node and its
> compatible string which is no longer needed.
>
> Note that there are currently no users of the upstream binding and
> driver.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>


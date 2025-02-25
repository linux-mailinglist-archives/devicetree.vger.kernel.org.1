Return-Path: <devicetree+bounces-151068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E0DA4455A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:04:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E29D73B642F
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73AEB186E2F;
	Tue, 25 Feb 2025 16:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="krCAssx/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8513315C14B
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 16:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740499428; cv=none; b=ntLc6e0rlmxjatX7dGfUlfyxpwUcc1HrGkxKzC0I1pnPaagvKHoCzKslO/wZy0hCC2UElAeKtpb1pk18UR8VaYq4iAwi4M1uYLYPIjsP0Tql1Y0tT5p2KAvr0uB+E3HY1JP/XwJ+T3Q+8o23WmuQHe8yL1n3a/kroi7qy5BNaH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740499428; c=relaxed/simple;
	bh=qR2JNB0YtgaNbh5AVqlZ4RITAUXIBdixqpacE0N/jLk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZhiOPoJ6da2ablsdReqbUwJxXcMCgLUKRnUGMnfEfA43HTxQvHpgTKCPxzacU0nM2pyXYITAFy55Holq4eggs14nTSowMbg8ofVyFVBnRsZ+dx1CqqkUyNudzyvoK6NaqB9sYweReEW8Pam7i+hThu8kxOSPlzfDExJb1Ha0S2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=krCAssx/; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-30a303a656aso60675991fa.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 08:03:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740499424; x=1741104224; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qR2JNB0YtgaNbh5AVqlZ4RITAUXIBdixqpacE0N/jLk=;
        b=krCAssx/6iNXtjhMAx6SD/YZx+6jk0joE+41Ra/DLH/T/r+j0BcJ+9rr6C5qjL/4i3
         HPysvZ70f8qfrWon/iqNYeTwJkz2RO795vPQ9shj3H2htYnbCjq1NHtWJ4hWv8SH2jl7
         fq27LmFz1vC59DWpXxmq62seTxv12CYwpv/PUqdX1zN16F4Z0/aRvzn/Okhi68rQTQYQ
         k/k4Ba6V2gohadCChH5U0uc7MON4RFTwEaoV2F1aOQdihFU3K3gNaifaxTYPotIxMrir
         ja323fvnD+DMUF0x8tWDf+/o4P9BTEUSHljlt6E3CIiu/Fy537GPdEoE5duc842zH+X4
         1JvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740499424; x=1741104224;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qR2JNB0YtgaNbh5AVqlZ4RITAUXIBdixqpacE0N/jLk=;
        b=anv75sGXxiNEwhKL1A4SR0OK0Csd2uxO4+s7nYkarb6qREj6aMEAN2keTLx/DNnaNw
         HyuXJTW8tFC7/TR7AWe14RH7JUJYTCSJpK46Ane5gYuDzd7AMfZKBhRMDHZjHV0ti3IS
         O2AmIOINaT7WNtXPodT7fUdf7g7fq76jTR5AWesockuV7+G0rNYp6JZVdtAW3Mv4QBaS
         dWlBYQ21TRbL1ei8B+0+lWTmiQxTCG5rCnMdns3rIFPPRXhkOmwIMuKoAledev8cj2Xg
         tPXRWpEmKR6JyrnOY1POyFklmZVe0IJWZOVpSyKgLcEcvm9XQW4nmm8Rv3W5aj/zZqIM
         vdMQ==
X-Gm-Message-State: AOJu0YyRp2Sn3tHvrsnvBiu/tAnmtVwtyTrOwI4XSV5RvLtjBsf9qsUu
	u2vNDSAX6p7Zk7M2uSCBMswH7r5l+WV99e4auDO8ngOlXKxtJo7lpXs8UqTzlE3Ukffyp+jZLnI
	IodntIYngCQ6zW4RFGez9F09rMxw+2kVYtBJcqQ==
X-Gm-Gg: ASbGnctyRon5OUmH9ZE1n+dWoruciXdTOpd6vWAqlFkds/C8yfubMoViR6+AeElr9VL
	vh5dRbQFGHIl+AvlpUjrWwTGqQY+dLKNAzs7P1HtvC4ka6uyuK3tIwDyEHxgFg5NXaMe7v96uBa
	VHJVe3kLg=
X-Google-Smtp-Source: AGHT+IFk/m7lVF7R7K4H5m7+dbhSnktSBcDmdUKKqlVUrI9Kn7thAe5jkuemGc5E1zKqYjYWf17ZEngP8oaLfuPEGKw=
X-Received: by 2002:a2e:7218:0:b0:308:e956:662 with SMTP id
 38308e7fff4ca-30a5b1a08d3mr64411471fa.17.1740499423031; Tue, 25 Feb 2025
 08:03:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250221180349.1413089-1-vincenzo.frascino@arm.com> <20250221180349.1413089-8-vincenzo.frascino@arm.com>
In-Reply-To: <20250221180349.1413089-8-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 17:03:31 +0100
X-Gm-Features: AWEUYZnIWuR60Y1CICJ6IBniRC28YSjUf8IJsjOxper9yUD4oZSXk7ZrSbIe5X0
Message-ID: <CACRpkda0o=xGBsZkL+jLH=sGyZ-vHiuS3OTmOHhjMdezkUH77Q@mail.gmail.com>
Subject: Re: [PATCH v7 07/10] arm64: dts: morello: Add support for common functionalities
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Jessica Clarke <jrtc27@jrtc27.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 21, 2025 at 7:04=E2=80=AFPM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> The Morello architecture is an experimental extension to Armv8.2-A,
> which extends the AArch64 state with the principles proposed in
> version 7 of the Capability Hardware Enhanced RISC Instructions
> (CHERI) ISA.
>
> The Morello Platform (soc) and the Fixed Virtual Platfom (fvp) share
> some functionalities that have conveniently been included in
> morello.dtsi to avoid duplication.
>
> Introduce morello.dtsi.
>
> Note: Morello fvp will be introduced with a future patch series.
>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


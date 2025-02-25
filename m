Return-Path: <devicetree+bounces-151069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA4EA44569
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:06:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1448189331D
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BF4718C034;
	Tue, 25 Feb 2025 16:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dng9aAo4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE3218C930
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 16:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740499442; cv=none; b=RfytUnRO6r/0kethfEE+aE55ygMS7ERMQeghjUJFYXg2RbvPtoheWsWJOr++JlQELbd9dMaKer8G9jDqYHn0r8U/yKV0XXNcOKtp0Hqf6/g5ZMUl9fjKoFKzGtoUrXDoFQBoznFpAg999JeYn0N+nn1vYyS8JgbpISSTOzuynFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740499442; c=relaxed/simple;
	bh=HAJZSDB7xuKscLHDG+yRyNMB2g3SgALZv2+HI4HLlBw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IiYWrTQue/42GHaQ92ss1rLDsxEj4BP01MWpH/r0vurexBsDUfKXCG8+HM8zGZsl/eG+21ZZ9zZNk0c3L2ee7IdvVuGw5yp1yjRSaX8xoLhdeGLEYBQLb8Ka9f0xTfY/ZcNeWxRe1s/T7xxpwlpzFiOI2B62PRkx4Rvux9yWDDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dng9aAo4; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3072f8dc069so59535091fa.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 08:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740499439; x=1741104239; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HAJZSDB7xuKscLHDG+yRyNMB2g3SgALZv2+HI4HLlBw=;
        b=dng9aAo4J6yGm3r9pnM6qmzBu+/oLNUYGDIZNRWXqYw8X4RmbSshZXSTkd4bQ9xiLr
         u40FwTkZaqXE3Jf4EjejH/SdsAEstyZ0hcYAjETELNc7DgHFG57rP3xbF+6BkO1U4W8+
         3d+aeQrVRSVOWP2atcyMhjwbRYqVWkCKcds+Uu48NAKiR4AcMwkxbG5xdEIto1YcBvWb
         GmZCa3kvWUPWTSpcF+l/cjI+a/ayfZ5mNHPv5HmfL5R7UkXZF7kNGXHRbFxUuwLOY15H
         9mbRJ57ZjQ1TTltRNlSGC83HiSlEc2I4SSY3vxJxvVyzK1/RnGb7Sgu/7QRcpLAaMBng
         Q31w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740499439; x=1741104239;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HAJZSDB7xuKscLHDG+yRyNMB2g3SgALZv2+HI4HLlBw=;
        b=VdL1rPFTOk7Ijt+TeaO2nGbHseHas8s4DgmVP/PTvNTruVALliPxXE74al0d+IHz2t
         l5f0V4u0HvE83NoYGzZawKPF2ziSH+8C4F8bl5OpjZQRUgvXGRS7z2jcsoEkUPfyK3HS
         y6BA6nSpNMI8w+uihkrR7l/rV2XmsGkR9NDQzjJmr34Prv/R0sW+HBmOCWiiaLEoi/EP
         xEJJfOFptC/nlu5njYF1Vs50xHA5KSJM+nuVT/MkWHHjLk3RxyUJ4NzVV3j5aO3Y4kFE
         bKZmz6f9U0O9a1umXSWXTT6Z7bcGC1sR9R3loYBaoE37PRIv1vxe0QxBncpPbHLcVpnO
         enCQ==
X-Gm-Message-State: AOJu0Yw2IVLZJJQedptHZP15SXdX8BXdtFkYyp0yfdzuN0UpJJVQ63mt
	ObrHtI63eh9tRCaB14/gtOntV4ZrxScvieURLlma50Jcc2aya9aYMKC1x60u0FZdR7Vz9F1UFM4
	vX8rqYq5oanORwwugPGqQLrujnSRgl4rLQbP/IA==
X-Gm-Gg: ASbGncvYTR3uKOrJWj4H2AqaH8DJ6W5zziWBAKXcnQAX/ltCm1QeKGUjVQvR2iPy3cS
	+ap0lLmPQFxELMKRTkKbtS8H7AdybuhHb1a6l3wOMaSl5aBcjP+ZsJL4RYbAKBdUPTxuYAvR/dk
	wXCXsZsik=
X-Google-Smtp-Source: AGHT+IFwIPTPAN8ZcBc15otKiSGh1Sts3zHIN5YyF4wUrmvTE+Iv+8sCecZDdml+angRjq277rXIbRl6UYAnxPy6Zeo=
X-Received: by 2002:a2e:904e:0:b0:308:e8d3:7564 with SMTP id
 38308e7fff4ca-30b7915f5ccmr985601fa.10.1740499439306; Tue, 25 Feb 2025
 08:03:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250221180349.1413089-1-vincenzo.frascino@arm.com> <20250221180349.1413089-9-vincenzo.frascino@arm.com>
In-Reply-To: <20250221180349.1413089-9-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 17:03:48 +0100
X-Gm-Features: AWEUYZn4d45FVOQcQnBxxxqs1Gqo7DdaaspoAnfO8hGKbCHJZAxez0cdfVz437M
Message-ID: <CACRpkdaH_Ajz=604PeYctvUbTOo76YOSvWvrovPF9m=O-VES1A@mail.gmail.com>
Subject: Re: [PATCH v7 08/10] arm64: dts: morello: Add support for soc dts
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
> Introduce Morello SoC dts.
>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


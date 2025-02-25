Return-Path: <devicetree+bounces-151058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F313A44478
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:32:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28E1E166FBD
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 15:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFE8481727;
	Tue, 25 Feb 2025 15:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ywZM15mn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE5342A8C
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 15:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740497568; cv=none; b=OVnl9JXuFgxbwWm11BT/rDPIWhQfBSc3HOo1m+bvWxtj1EQrFUaoAPfh6VRhz7RtsX+tVEAp7zwZrcKTzPDvcLIFSrGYSaD1lvjsWwJ0asoxmgenVYHd46FpeC+AlSxqpsfuWHwMSYn4notuoZBk/2i/nPF/uvhNDqJKdzHLauE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740497568; c=relaxed/simple;
	bh=kaGjkAopaAQGIONFxxCbjojwL121uVVm+SlSEpngTxQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P9EvAnGP0+5sGLsvRNS3hPa+YzDeBjgMkndtAa+6JkxhyQE7MP7xAk0k9VWwDBEWe9as/OhqixUAig4fYEZgYdNygQtdBG+hZfei6jPnjNh1M24LRshN2bc4yz9UpacW3/GqCqeOmk04TkjmQAU+dKwerk0BuEZyjbhuawTxQdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ywZM15mn; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-30930b0b420so50090871fa.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 07:32:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740497565; x=1741102365; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kaGjkAopaAQGIONFxxCbjojwL121uVVm+SlSEpngTxQ=;
        b=ywZM15mneWg0GoSUwPAEpLr0BdcoHXXD0hZlv9Q/m3rS9QGAQn2FWm6Jjun5zbSYfQ
         MN079WhhWwcPtQ+ypAnpK42q84vxdjTOIBINAmVZ8rY5AUknBM+jFlz9IidduMqqHSvy
         aOtMhwTG7HdqoScaBywSobFUdaS95BnM6kA1+gqRrjgO2DX8iiNAoP/V51KywXe5c2cO
         VLh6SctS3I67XYS1GXu9teuJUnHGIIDEPs2tRthLf8CRFHpl3dBnOOfrT842ZF8FMl2r
         gAyEPF+5av8WFU3E6g9xEbJMpdIem58eyxEEdQns6pvx1iLR4keKE8fzbnK8Fm5Jmd1j
         87CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740497565; x=1741102365;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kaGjkAopaAQGIONFxxCbjojwL121uVVm+SlSEpngTxQ=;
        b=FftqfCy6LnVwNq/D1KGRmsGXrD+Af8NTGiI6Wbkeps8IOVc5qsP53uhtxs35IgxcW0
         3UBEsttmVowmsliNFXZwysWVHK3wOyT8eIZaC9qOEmskmkyIs6gNVYSZlYFFUCxIwL3m
         bC3LLs98Bvl5lVnF1yNz9CTq+yxv+TDd0Y67vM/mluFwg2be6KHaOh3e2PPnCKjoEeaJ
         ZeJm5oM8L4V4v1ihZIfwF/3wn6dEQkIPgpSvUeFXcGzpbPxo8VUDidcotlI/wQvJd2mb
         qU3t2C/EkXHaqp3AGhmWJzw3Refgr8YWjcFhpKaznsvkii2bNxtSYtO2t26pzJWVsHxD
         yVzQ==
X-Gm-Message-State: AOJu0Yy3kBxEvcfbTVPSax8EDq10NktneDW8c8Oyl0ygJtAHx2VhFUfG
	7T6fwP7dwrntjBhm7l1eSEgl+EOAmGMc9UhkbB8wwX6NnRpi/kmJU6dJeg9SRmdwERMmSqAzhvg
	mh1ukya7x0sLEwYVRyxI7tXDS87ixl4G7dSvGQQ==
X-Gm-Gg: ASbGncvFWHByl1atK7SveJBtvMq4Bu6JB9EV3p8xfB1STch8RkX9MC60NHf4GFujLM/
	9QUpSt+bwFCZzq/8FboUs5i1LperauGdybdr3MsJ9VKCPwV7C8c3PoVRrKYttcT4BJ18Jog3DXC
	+N0w4YKYk=
X-Google-Smtp-Source: AGHT+IFPvks1R+N+fJTEiOsOCgQ3Uu2uCdasHK1zA3TfJnFONKyVeOK09rw3k8OZE9RdybF4r8mkRiLMaKmtj/CzaGo=
X-Received: by 2002:a05:6512:ac4:b0:545:ba7:26f2 with SMTP id
 2adb3069b0e04-54838f7b2e2mr6507774e87.53.1740497565136; Tue, 25 Feb 2025
 07:32:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250221180349.1413089-1-vincenzo.frascino@arm.com> <20250221180349.1413089-4-vincenzo.frascino@arm.com>
In-Reply-To: <20250221180349.1413089-4-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 16:32:34 +0100
X-Gm-Features: AWEUYZngCJXkldRqEiu37vm6Vs1F2om2wUYZ7-KT8x5LplRl6N4turQDfjA0U0s
Message-ID: <CACRpkdayJv5Js0trEgHbV1nM6CS-Og-eab00AFC7JWxuk9daTA@mail.gmail.com>
Subject: Re: [PATCH v7 03/10] dt-bindings: arm: Add Morello fvp compatibility
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

> Add compatibility to Arm Morello Fixed Virtual Platform.
>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

I see my v6 and v7 patches are mingled. Sorry for any double-review tags.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


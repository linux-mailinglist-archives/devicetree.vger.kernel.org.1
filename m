Return-Path: <devicetree+bounces-151056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B26FEA44472
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:31:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD7611892D01
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 15:31:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D838215DBB3;
	Tue, 25 Feb 2025 15:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mbt64FyS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1F7140E3C
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 15:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740497437; cv=none; b=lI7KCUD2+oBjAWnooDQZCMXevMMI2RyIqARGApq33ezCA8viiPTZS96iRGZkTtdu3f5C5JQFyxbMCDmcXPB7BTbE1LAirq3rJXqcmrefxAIG3P48H0+EAW8aIA55IW8e84GSYEyJFGwEUK8Fpb9Wzo4I8oZ0snWoq6JsaKBekkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740497437; c=relaxed/simple;
	bh=1ZvoRx3LWghOyRri9YeEOvOEAna0uN78ZVktRLFXYMI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TyVzeGJIKFuf3ojY+6bJFhQMIZJl6fxKbm09RT+rbAZRVae5NJ2FElq0/Cmi7viMVP/OO4bAZXtAZkNdc7S7tJACpvLd523/mXM7iFc4FFCKQUkvAVs9F1tAukTexd53BU0ohiBHIEno3QqDTAEyRHgWmQ1IfuZiUiNFAh3BGdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mbt64FyS; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-3072f8dc069so59149401fa.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 07:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740497434; x=1741102234; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ZvoRx3LWghOyRri9YeEOvOEAna0uN78ZVktRLFXYMI=;
        b=Mbt64FySub/ptL4QsR1RtPSHCj54wHi8qyQ9E737duxcjZqPp+3FzXXoZacnWBH0Rt
         8Df8kgQuSlnaLcX3Ygo3KT6EeWGmoONa5DpVwHWKpXG/hZKQp/jP7chITHzuRVZD8+wb
         r0Hv2ffhEkrGPYqvUno8MElG+wwY7yWko8rlpPM5E6Dzn6XvZf1GSKPL/gY+vlcRwiNF
         hwdU2wPrigP7oDyxWBQC0gpSbW60TQM8JH2If34AyCfJ/42YAx3aWStI/UUBD7unm7Za
         YnysxRduMngh2/rAkgQZNFKBw/B0L1JTyTrr9gZcUFmieZ+bJS8rcBqVVQ12l6a4XdZW
         c/dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740497434; x=1741102234;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ZvoRx3LWghOyRri9YeEOvOEAna0uN78ZVktRLFXYMI=;
        b=B3pBb6UKi9cxCIFllqHxdv1oPm37+APDQO+JFIWmJ2HTyEdWlC8zD68J/mtCJzvvl6
         fjxc0PGM9lweRYCdA2/78u7n+7UgX8Nlax2MzMdUTiLw0Gho0SYqZO/U5ujJzLjNvUfh
         /65Tc1u7mkguf5PZ3d1o9nSq4qUwKDbl8Jhdb94HyVyTSk+I4+QK7yNEMAtAWMVF5zwL
         LAXQICr24SYxcFm39++yYw81idfRMbx1zU8BSOoYL4W2me0Z1qP/tl1dgyrCejZyFSrv
         uV3b5PBmI1HVP0dx6uOER/DuZCz2KaK29DdQ5pvbKUcVM/UB+AKrW+xZoOhyN3wN0vjF
         HKaQ==
X-Gm-Message-State: AOJu0YyB5w+Yc13ng1GGacawV5BwugtKhrt7EWgaoDHUsrUc0Ng3O+ob
	pWADAoOMbEpL3sQQOpxufROAjY8DdJJbwffII4R8rHBTt1Izf3EinsVY/Zk0W0Q9n1l2d0JG3c7
	mvyM2YvmhpDBM60VOcyyCF9X9hKQ9WuUTrObZqw==
X-Gm-Gg: ASbGncsHcxs6m2OFBvRSjzW8Ai6QBYsAitk54GoNqX92AXpGuwxYyujqYT3LmumHllU
	qdWh/5pFEPwC8Rb3LA0TVjHzmxuNFAgpi1v7C8M5yxh0G0BppaRrjTUxEVfBDmdCfJj/mIkdbnt
	4ST4KlEb4=
X-Google-Smtp-Source: AGHT+IGFXegurDG7lCQGwjctZe6kA1aZ2LxHO53zl2+s+c5S54l/LOVcZM7eOHAjUU2OvbrcJzo4zZrQdDsm0JVRQzY=
X-Received: by 2002:a2e:b1c9:0:b0:308:f860:7e8 with SMTP id
 38308e7fff4ca-30a598f3c83mr63050471fa.20.1740497434087; Tue, 25 Feb 2025
 07:30:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220180427.3382482-1-vincenzo.frascino@arm.com> <20250220180427.3382482-9-vincenzo.frascino@arm.com>
In-Reply-To: <20250220180427.3382482-9-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 16:30:23 +0100
X-Gm-Features: AWEUYZkbRv6lFysazE5St1NwoDBha8QHCc1cLTLmu4UeK1RG-qYEVGEW9J5fQjM
Message-ID: <CACRpkdb=3s=Own-eFhtk5xMj=b1+y7+1pyhEvJcJvwLM1UO2xw@mail.gmail.com>
Subject: Re: [PATCH v6 08/10] arm64: dts: morello: Add support for soc dts
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

On Thu, Feb 20, 2025 at 7:05=E2=80=AFPM Vincenzo Frascino
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


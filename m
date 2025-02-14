Return-Path: <devicetree+bounces-146630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD685A359A3
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 10:03:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE74F3A5B52
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 09:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFDD922B8D5;
	Fri, 14 Feb 2025 09:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NJst4X3S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D3822A4CB
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 09:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739523803; cv=none; b=uLAn0HgISzCQu3ty+3cxB4YW7NNnvqDNPu5lMAcqb6Wm4ZX5b60i0E8tiO5yRkfKhxdMxBHk7fYXSQSA8Bxr5Aeu0mMaBy500Fg++nZJuGpVQpO7b+dRMe+5oMiLiD1S/6AfIejuckLgppCl9YRE7BD9fBQOIaQX/Muwtzd0Q08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739523803; c=relaxed/simple;
	bh=iTJc0cMLK8/kUGnVlLkEpjMd1IDc2KhUACzQgpu9b34=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pQSz0OZgf1ibl69loS9LsvXX9g93oDKsCepza+Lj0qyI8/IHBkDMV7/gRmjwKeMy2yblb0+rziWvhQX2JeFWYTN6bpagZD78bY5o/7z5bbt2FdvRTU8csatZIW8wEZGsYdX/HMUoesAgXUMO6G1RD8wS2mon6IP9bxNVWIRnFiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NJst4X3S; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-308eebd4938so17559471fa.0
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 01:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739523800; x=1740128600; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iTJc0cMLK8/kUGnVlLkEpjMd1IDc2KhUACzQgpu9b34=;
        b=NJst4X3ShKfYilNvdBaAeZUSsNND0v2If27aHRsb398vytgj3Mv6zvMZv/ElAHtpAd
         gEi16QAbNvI3UrPJTZxa/3Nf26mrJhW7hS5aDIZxPB6dH3tJwSl3LaZGQlIFv6sX5YN/
         uTEJlU6hbBbDAfkK01+kD57zdhE3+3h3ipqeEh85BMtvW53mFuZGjhNEn8Rp77g94DQt
         N7IDS8voyAohHxca/hnh3RypNejTYYyyFGd76f82LbuPfZV0Rp1VSi845s9GCykNLV90
         5bZNXCQt3QkKGIiVSjsqT4q+NC9GwlR2CTT+Osqb+8YLtL1gnS+q3zde+7v66GAOm1wS
         NUAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739523800; x=1740128600;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iTJc0cMLK8/kUGnVlLkEpjMd1IDc2KhUACzQgpu9b34=;
        b=fLOIrnsQD3dKneYdOTJ6psn6XDECNcbrhpDBxUgMAgEHHeYlZiAVvKwzH1Jz4jKhKh
         5SFtjfxtCvnrD/4VEL566HJl5Gg7pp0GYcsjlhjtkIuIgr9TdJBfkFlQub10hmQZKr+1
         fqgkVkYErLmyMBC2gwLDEvYlVd3SXwLwAZWOn1cwxCID43VEQCZ/xQBqoS7nJfb7ev32
         BX4+CNulLbHnCKQs713eMtp6gLB2Zyq4BqeJe+Sd742muaB1eure8g2R4tvZY/kyhe8c
         bmS+QvYVdw8UYCoaGQSvDSPvWAUpQ02t/H59WnHq7xPym9Ub68FKek7CmdqC+J9yE3LZ
         KEwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLGOGCrR0eTIR/CwgbU9Q9X4AfjdUdJiNA6CfTrAO9mZ/sGNf6+vlyXCut9WKLoDNo3n/u4oIybgZE@vger.kernel.org
X-Gm-Message-State: AOJu0YxAhRKy3m4D0kNynYc1nbidW3K2uOWUtXIRtCcjfpRiMhqBoY83
	yfHS6POQf4ttcQmrRgnOX2pDTq9LzElTfIUZ8rVQT56sxEr+CUO8Gd8gvMBLqoQH2xrRMY7Iohu
	5BWdDPO7UZmF6JYnRy2y1ZzaGUUcnKp/iwc7Dew==
X-Gm-Gg: ASbGncsG3mQG8g0rlATkmJp91BVQSKctlsekiu/WYpbsZtVtyMu5fmCp1ppnav2j86d
	0QS+4b9MZ3JyaaxBxhLPhM4Ic5K+rWhATfn5H0fr84DkEQEhOaJo2zcszMoxvmej9EsdA75Ng
X-Google-Smtp-Source: AGHT+IF3HDdrnSW3BLW3bq9cqh3LStu3LTvk4uCfYArhbMCiGtiuvWWNtxSZE4wwSFlSY9sTduBuIBS2XR5LiRCWzdc=
X-Received: by 2002:a05:651c:221d:b0:300:3a15:8f1f with SMTP id
 38308e7fff4ca-30903927410mr38426071fa.32.1739523799914; Fri, 14 Feb 2025
 01:03:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250207-bcm21664-pinctrl-v1-0-e7cfac9b2d3b@gmail.com> <20250207-bcm21664-pinctrl-v1-2-e7cfac9b2d3b@gmail.com>
In-Reply-To: <20250207-bcm21664-pinctrl-v1-2-e7cfac9b2d3b@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2025 10:03:08 +0100
X-Gm-Features: AWEUYZn7NND4I1Mgn5Kpd46GvIrBPpNFG6Ldn40L_YZFFLWpE1zhxOGmLe4jdWE
Message-ID: <CACRpkdbwVdEa_xgR=wRfkPN2_tpYGnbdpQkTtvgDMRSKPT-GEQ@mail.gmail.com>
Subject: Re: [PATCH 2/7] pinctrl: bcm281xx: Fix incorrect regmap max_registers value
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Christian Daudt <bcm@fixthebug.org>, 
	Sherman Yin <syin@broadcom.com>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Stanislav Jakubek <stano.jakubek@gmail.com>, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 7, 2025 at 9:02=E2=80=AFPM Artur Weber <aweber.kernel@gmail.com=
> wrote:

> The max_registers value does not take into consideration the stride;
> currently, it's set to the number of the last pin, but this does not
> accurately represent the final register.
>
> Fix this by multiplying the current value by 4.
>
> Fixes: 54b1aa5a5b16 ("ARM: pinctrl: Add Broadcom Capri pinctrl driver")
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>

This looks like it could be causing regressions so I pulled this patch out
and applied it for fixes.

Yours,
Linus Walleij


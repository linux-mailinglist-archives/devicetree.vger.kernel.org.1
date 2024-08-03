Return-Path: <devicetree+bounces-90753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CB435946B62
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 00:52:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 59A8DB21682
	for <lists+devicetree@lfdr.de>; Sat,  3 Aug 2024 22:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3846856B8C;
	Sat,  3 Aug 2024 22:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aG/gNvhn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D271134AB
	for <devicetree@vger.kernel.org>; Sat,  3 Aug 2024 22:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722725537; cv=none; b=CQqLgQtbgdjS6iARHj6FnKeNz+u3rgahOHkJrEHd9Z529AZ/fjdTxB9d+t956LvQXgb3rSM1fMzxwwtpUk8HBESiycZ5ddW1FOwCVR34FRYNigLLSK/FM+FXLy593qwrfJho+xSojATyeWC2CUZ6OFQUP0xzVOwyxUvEmFOrH04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722725537; c=relaxed/simple;
	bh=VS/k5v1QNh+3vyYqhg9LJgwdVa5PJldl/+U1/qKG/94=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cqy/fC4vQEVdLr7BFfBeRHCrfoXr15ATMuu36wpssmcCktFUTpKTDcU4PIb6Uob63YRhhEuR1Z6PfiAFGUDyw7ThOkgWoWAy2gHFX+B1+lM5Z5oW+s4dTMXhi/HxO+gkafiVnLrh5lELUkq7AqLEr2T9M5IQXF7z3ZlKcXJJpqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aG/gNvhn; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ef2c56da6cso105555301fa.1
        for <devicetree@vger.kernel.org>; Sat, 03 Aug 2024 15:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722725533; x=1723330333; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VS/k5v1QNh+3vyYqhg9LJgwdVa5PJldl/+U1/qKG/94=;
        b=aG/gNvhnhPVXdVIbUpb5vM+gjqnnDkbGjdaSXiGEZ9IdwxFb1JMgeOscKyKswlhYI8
         ZH/zbOjetAcvnzyYbIXEcXyT9xmdcqD29i50eUciHnqsD4J68vzY29Th4REvH1GHvRp+
         OMdg6Bwvqy7jwNyt38JgGBFKBEuu/rbTDQP3nnjq2YdIX8C4sr0Wo/5eNBSkiwLSyilL
         yPce+2Nl9CBwf0LvS4HOLH+59ABHICHZsj7fZ4EUMVo3HNsq/3K2EpttMRgeCCrhIsRS
         r9/ccDCRJLwEid+zyXOqIIFh5LkPkwsWLJ1Kiv8fabuVVIqul+gnzyvRZVlIn5iTp1Wi
         YdGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722725533; x=1723330333;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VS/k5v1QNh+3vyYqhg9LJgwdVa5PJldl/+U1/qKG/94=;
        b=Yh03Fplk4qpVpZ43eED1By594kZgADGFSPaW6/zLKClDLKx3itXsq/tMVXM0PZTvh2
         3gLuhfrMZLktFzfH9GvHz3YdTMXDCo0QE1MOoJdstyregNVSPCudT2CyjLIfwm7s+P8O
         K3TUBuklDd1qVHQGAk7N3ZLb6QIYrYfAJTytSgtYwMzi7YFhtX8MMDEopd8ayyFHPZc5
         ZeVkrQx2xEXczx4HNkIgKtxkAk9J/6W/WOV8zwXLWlkRnXTVDVUHqp3Xu31rMPkFI2xY
         tPth3lSun/oEFcJgT9yC2y4N4ZMQthozBxO8D7/JC9wBi2HHVafqHCF2Wf7gQqWAxuQn
         jaIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWOe+JZeZeYn9CiWMk6XBYFQIKXxk3iy6k0rKa36wRXbWdrOUDdntHw1UBr7JRDIvsLSNZ9xEdlDdWCnk+n6tfKW5igz5mzqqs0w==
X-Gm-Message-State: AOJu0YyQ19J7h79pl/A1WS3/WJwVNCtKST3lt8rPx2DG8O8Dh/O3KTRc
	UyWuyF3ww1SNr36NtQ+l5zXnj8uurW82I6/gXBoiY+AFOSJ9AxGgiPmQ5N/H7gF4qEZ62FoVp1V
	Zuxcl0iKGam7enyZIR6XuUyfQwK9QAFCCvuELQw==
X-Google-Smtp-Source: AGHT+IGtKbqnwPRPd/X8SX60v5j4Xq35XV3AX5MwZR7GvVw8lAT724joPpRICFpM2WIHSkOHDQu2mGHM8Arm0D/qCKY=
X-Received: by 2002:a2e:2416:0:b0:2f1:59ed:87b8 with SMTP id
 38308e7fff4ca-2f15aa84f4dmr51196711fa.3.1722725533354; Sat, 03 Aug 2024
 15:52:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240730-mbly-pinctrl-v2-0-d470f64e0395@bootlin.com>
In-Reply-To: <20240730-mbly-pinctrl-v2-0-d470f64e0395@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 4 Aug 2024 00:52:02 +0200
Message-ID: <CACRpkdbM2CQdgCq916kdObXUH3_73Yd897QxmY13mPWAzvHbHg@mail.gmail.com>
Subject: Re: [PATCH RESEND v2 0/2] Add Mobileye EyeQ5 pinctrl support
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	=?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 30, 2024 at 6:08=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> This is a new iteration on the Mobileye system-controller series. It
> used to be sent as a single series [0], but has been split in the
> previous revision (see [1], [2], [3], [4]) to faciliate merging.
>
> This series adds a driver handling EyeQ5 (and only EyeQ5, not EyeQ6L nor
> EyeQ6H) SoC pin config and muxing. It is an auxiliary driver being
> instantiated by the platform clk driver.
>
> Related series are targeted at clk [5], reset [6] and MIPS [4]. The
> first two are receiving a second version. The last one has no change
> and stays at its V1.

Patches applied!

Yours,
Linus Walleij


Return-Path: <devicetree+bounces-173868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2084AA9EBA
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 00:04:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6602F16FF98
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 22:04:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A793274FEB;
	Mon,  5 May 2025 22:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="us4AIZLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27641EB182
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 22:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746482653; cv=none; b=j9af0/S4SOUzIgZRpL7POjJlkS227Mvo+Qg14oTeZQmmgvCfYZDsQyCEBrHgY4WC06mRgozzzeQJZcnFDNTM+C29rf0k/diZzwNS6VZm37u/eMS7eJT5OK4+HFMyKbwYWvlTB04ecWrLYR/shysZMbtPmDWfAMQPsdoP1x9ZTbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746482653; c=relaxed/simple;
	bh=PpdmoR8nEkrIKtA42MWXyNQ6DvUv1NTQJUJQQ+3vaZI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iEpxtDWfj6dlasQnXhH3ywIWJcOyTFf1LFuvoYOGumvXrvu+ioycCV2Hsr/PbpB6szxzMf2wr83jjGGgqseKbkUt3RNLs+OWia+VtRbdToQ3zcN+QDi4hed1+S+k2nXlXF8yN/SoTLnaotU0w+sR6V77l1fOomDtz7NR1N/KvMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=us4AIZLQ; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-3105ef2a071so51031521fa.1
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 15:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746482650; x=1747087450; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PpdmoR8nEkrIKtA42MWXyNQ6DvUv1NTQJUJQQ+3vaZI=;
        b=us4AIZLQIE3Bps1t0B5O27A8EgKK8gRfkBa01nrOqZkA5mGkw+TrdYeA0PlfETqw71
         S2p9O+2c2U/wYKtTBeZKzLyKK7efoNuXJyaUAE3bwoZiI1uJjfyVQnrx3OfM+aFcmOqz
         dVrgxK6gSx0gLavKYhAT/bHG3LLWMSRiCPd3RZs+5+k425kkbTHySEWpUibMNhp4vuPa
         zDqC/GI2/by5tHgjVfyn0NnysJMFDBWq1+mzRz4hm8/fS30M3yCScZsv2CZysZdNp+PF
         rRCLyaZsKvIRS7Oxi/pfBKYe50J2MsAOVKmJUW/3RrCRQJiVDDW1H+JG0mTLNtrRatME
         Q2rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746482650; x=1747087450;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PpdmoR8nEkrIKtA42MWXyNQ6DvUv1NTQJUJQQ+3vaZI=;
        b=ZBVSN8MmyPeAOT0fmGi1bi1Pv9OIQGLA72aYwHLs+2ElOAjlI067C4vybiYQ66d6xp
         k9WYnTPLlXgxhMc8g9gRiovtv5jLOranonrmIXhGm1R4rx+jePthO8/pJ2Dp2KLs67JG
         2zV+iOAV6IirXZ/t4/C1MAc4ePIN8II2fv0aE18me6jF4kjjSoDg72KBgivXxEvAA7k6
         p5pUcblPkQHt7MwcL+pZ3zECdtnAevKK8UVKPkeSfGT1rtlO0AFnkTeoc5eAsyHJeTNi
         QQ0sjBm+SLQo7E9T5gA699fOW3mei4GvKdfyZIMHsJj/tTBs4fvx3pwjlNP4UMJ8GBPM
         FX3w==
X-Forwarded-Encrypted: i=1; AJvYcCU9qGXhPqvPP3qzFLWYmsybjZ0VW/B/NX7ci2Mz6DANYCVgtxlveSvLbvsFqi01VRAHKBBYqR1gkN7W@vger.kernel.org
X-Gm-Message-State: AOJu0YwXRcwilKyiwYA0BQbSm52OuwTatkZsNyKfRNlzBOugHstFXTfg
	6IOfRHyONOOjlvzt/yz/YPKjKEcyNQRR/743A025aK3rHhOGBa7wQaESiQF04JNpMK1+8W8vDxj
	0WdQGtvjzog42nXIaWVvFd5qZqP6DS9E/CSMoLg==
X-Gm-Gg: ASbGncvO+T3QQLtw+WsPPK68lKwBd/XwJua24kUzn3x3eqRWD4yYP8lct0N3iDj0G1A
	U0Enmfnwyu+3l2Uojnz70g0S6xcxAdLQWRkdL04f1uRWhnXaYv8+ZjejOF7b0cJ7IIjAttb+yiY
	A7qMfiy/NWA8ItvX294Ak5bA==
X-Google-Smtp-Source: AGHT+IEHFxriErzJ6KWZ4Dnlp4ZP5W2Iyy0QEY/BgIwj3zLpxQz0U2At8oBYxwGceOg9dDWjzWeX9nJUKs0U3r9gdWc=
X-Received: by 2002:a2e:ab1a:0:b0:310:85ba:115f with SMTP id
 38308e7fff4ca-32650ec80b8mr3872961fa.33.1746482649729; Mon, 05 May 2025
 15:04:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250505144558.1286889-1-robh@kernel.org>
In-Reply-To: <20250505144558.1286889-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 May 2025 00:03:58 +0200
X-Gm-Features: ATxdqUE1cM-taJ4-SlbcCYbnOvbDEQV7s-gz28KDyeQW4mI3XtkOG49fIqlZFsM
Message-ID: <CACRpkdZgB4sg1FtDK3QTzKKviPhoCZ8xwP92fV0WGhOBWyUMSQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Convert
 arm,versatile-fpga-irq to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 5, 2025 at 4:46=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org> =
wrote:

> Convert the Arm Versatile FPGA interrupt controller binding to schema
> format. It's a straight-forward conversion of the typical interrupt
> controller.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


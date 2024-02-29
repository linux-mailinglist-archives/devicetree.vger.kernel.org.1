Return-Path: <devicetree+bounces-47135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D28C686C49B
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10C2F1C20B1B
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B73A58107;
	Thu, 29 Feb 2024 09:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZSMJhSHD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDDF5810D
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709197955; cv=none; b=Kh0gwshsCnsl4Yk9uzDBdVTmAecWrTg7pBKSpdmav6oi81FqMkJj0XdYYr4mVfbfPTAg4sp1tGNnmZUSxl4vK1XUQLBe8rAHqdt344GxzFCJud5bGZWwZ1+73YMZ44rJMbpZVqfTqvY/FFlY5RYlkUhQY9j1FRXNR1J+VX84dDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709197955; c=relaxed/simple;
	bh=jmZ3qLypHNtRzpjVcX8wNh12ZGObOwM4O6LdoHLfufA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y9oGBIfnFUVKOFVKggwhZkX+lj0ijDJz8h95FyucWBphjKBv/9L0GqvLIvzfTYaiUEVAG4TBQaQyfc1U36S0e7Juzqq1DgVs3EqRsZJeNCx6RD56SlqY55FU6KnqmCRG48N7bA54onDi8SaBtFurmd3YWwbey+6ZUEpwzxHKk0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZSMJhSHD; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dcbc00f6c04so712276276.3
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709197952; x=1709802752; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jmZ3qLypHNtRzpjVcX8wNh12ZGObOwM4O6LdoHLfufA=;
        b=ZSMJhSHDa8oG65KuSF6uFUq39xA4KWERowin+P+qK4Vf+pRXufiYCSp2w6LMn8XFaW
         JK/kUNjAAblNyUCYsRjGPZTA+a++QXc8YvVwb5RKN+WRk8osarsDRXBntzb1XksPv26K
         Mdap///KfZ1Cre5VQ78YhDb/P65/TIMlqrEuI+NzIPpaf3uvzDgjThXfmXIRSY1wTDwT
         ZUQRbtuTHJ04EtOdvKVLIEC0cvcggfXeZ35uikJEar0nFVFP9v0r6Ifzhe8UhHJLYjXu
         ruYSDUvKsQXr1oNxPwnnf8esp3PRQFWo/5L7+9iL1IyQ+Ceu0qxqLMq8oFnfUegEYlvI
         zrDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709197952; x=1709802752;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jmZ3qLypHNtRzpjVcX8wNh12ZGObOwM4O6LdoHLfufA=;
        b=FA2VsoaVjq1TgVKEK+98NUxLLpouvxcJ13xehv1AGB8xx+RAyMGC7Ivp/fNvKvJU2M
         N4xMfRE/OFVXDGJl4u8b2Relh/ZORhfIylnDLco3SIeOaibcumN2bjnTGPPWFzvxjAPp
         iMVcWn2IH8Y2sXvJlij9O0chxuA7QqOikTm1KuqmMMsiX2OPrkPWSO9tW0a/d5DiWqM3
         j+C5YfbLpO1R5XPSQx/IdJaFpFv0Eu/z1Q7L+ltsGNsU+yIsY3sG24RNP9wJKVO8RYYz
         n3ifSuYe5b0W91rHsRqlOt/ic0nPgWSLU8j5LsjiGW54YZoKkpo0hijxx9o/5Hi5XkbT
         CYgA==
X-Forwarded-Encrypted: i=1; AJvYcCViERTsWns6UxzbXuc30wwFWskCHlXMva8R6WjG2SdPyq2k5b09IVePq+4Eq2vGHphWE9/0D83775uaBKzmAaWgjUa6gxZRZW2t3g==
X-Gm-Message-State: AOJu0YysVgjVm5buHvb1kT78v+4r1nGPSLr4rPVrIY2++y+ZN8mpR8f4
	TqP+t9q61n9AE+TQ8hvTv5G8eJiJ4HcH8mQaqyzaF/Tg0ZjYOyI8xFFjnEPJj24ZBps1a4XQmlh
	PJmw1RiWJZ8QmSXhUYorhNaVi/XrzJFh5irKplQ==
X-Google-Smtp-Source: AGHT+IEAi4/pXUDtlLl34+LSgCiaeZ67gTneHjdK0XuY0Ypo72LCRTzLIF12Q3GEdeS6icfVUdzIU6lcYWk+sFDA73s=
X-Received: by 2002:a5b:9ca:0:b0:dcf:66d4:1766 with SMTP id
 y10-20020a5b09ca000000b00dcf66d41766mr1505518ybq.52.1709197952220; Thu, 29
 Feb 2024 01:12:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240227-mbly-clk-v8-0-c57fbda7664a@bootlin.com> <20240227-mbly-clk-v8-10-c57fbda7664a@bootlin.com>
In-Reply-To: <20240227-mbly-clk-v8-10-c57fbda7664a@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:12:21 +0100
Message-ID: <CACRpkdYtwyKJ-j5Uyh2=jvQ5k6c1b1rW_n02YeKJh9nuRo=i5Q@mail.gmail.com>
Subject: Re: [PATCH v8 10/10] MIPS: mobileye: eyeq5: add pinctrl node & pinmux
 function nodes
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, linux-mips@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 27, 2024 at 3:55=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> Pins on this platform have two functions: GPIO or something-else. We
> create function nodes for each something-else based on functions.
>
> UART nodes are present in the platform devicetree. Add pinctrl to them
> now that the pin controller is supported.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


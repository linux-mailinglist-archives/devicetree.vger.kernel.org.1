Return-Path: <devicetree+bounces-47492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D195286D5F2
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 22:13:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64F10B268CE
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 21:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C43914566A;
	Thu, 29 Feb 2024 21:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d0N1jv0e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B917145670
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 21:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709241009; cv=none; b=odBa9cCye0hBx6y/6hYE6UvNF7apFxxdm3KlmG4iVpuIxCSKE/D9j7pi2RD6HiEgfzD6BjQ98FvSZnD7yYpngeuokUvA4UXMIrfNLY2bbRBps+cjBt8PIPo8LxZ+J3T361D/I+FtQjTsX4irLtpzINvjv0EBbx9cU+6BnxV/Fs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709241009; c=relaxed/simple;
	bh=S8fZ6oYozb5nHV8nQRv8KctbzAfbnxof3VtKQDRYRaA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d2sK7+GbZQhFHrpWxccoG5YiR+PMYCXeEGAi6rNFrZmggJp7JfvdmdecORWDUyBhYl55SGaFzuc50RNx3KFhKzm6rdzOw9oGp9Zj1Ms2f4n3cjJxXcC3jHQnu+3xtdJHlC4pgv0ZNoAqFUfvI94eCYEZ6diFhfiDOAKzeqb9Pq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d0N1jv0e; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dcc71031680so1358710276.2
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 13:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709241006; x=1709845806; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S8fZ6oYozb5nHV8nQRv8KctbzAfbnxof3VtKQDRYRaA=;
        b=d0N1jv0ecE497SIdHY1a0HCti2dEtiEy95GKD6/ZSYIRxqE2CubgluTDIa0hm4ScFQ
         Pa9i3kXtrf2sU8cUdQzxmHsrJpUCJlVxiEtaetaZT+FGb6WCrZEypaM3amhqu8abO62Z
         dFVyfhaGTo+3D/1YFH0G+y7SdNlpDI1SK2tYrIAsELS6Y7B+qDL4odKyrLFPvG3IgwJ8
         nwQQBkm/3KGg1PlfwC1Fk6+8DuQLF29x/LRS7yT0sENWp2U4NMz0rfxTPRpYwyj7sCPi
         aP75dC3/mJKsK8noytXh6w9j6yMmxfRkwpa6tMGGbb1L1CVylTnShJ8Gyox5sbS6kfCS
         oAQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709241006; x=1709845806;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S8fZ6oYozb5nHV8nQRv8KctbzAfbnxof3VtKQDRYRaA=;
        b=wLtbUUpQK3FLhIxC8tzfYZ1SgHDc2kDuJzxcAqgu/feykn9RmmlaxKvwLtq+yiy6yU
         cZFLlg537c7tyT7fNUQe5Xu7zBDAT9kNX/fTR5UiRYJ/rNgBCSqIIx/V+wfQeop/izhV
         5v8pd/5MiI+KGSLHB0qPffEiNoRy5nTKwqNckiS4LbpnvbK7ekqJI5pxrHc/4lcz3/74
         ZtSk8mu6YjKP93DPPvVr/3oda+1FgYbd60iAY4p6wzJRMEuKjKsJEPJqsDn0MAKsLaLU
         7FO0DuP94qVc4Ln1nYX9J2JjjWRfEJr3qeFB+oPHBDaNE6yM6Gr6P4idJu3mUd/RkPwo
         9lrA==
X-Forwarded-Encrypted: i=1; AJvYcCUgR/VafMe4ra5Jukv3b9pObU2AcaNpGzBGXjffKYHWhTmSoO9BIEaY+EEeO7AH9SXzvBkOJrTnQH1ttwhgdToPxJdtNaQmnL/zCQ==
X-Gm-Message-State: AOJu0YxyjIjpuEhuaxYuKgyBBf3UG0vVdQrQB2qijteN3XjCVqr939oM
	Gh8yBidcnaf2UK2HPhgPjdazb23KcXnwBLm6fQHtQYTQfNF+Xuji9ZOezg7qEm0O+z0/Bbv/c/Q
	+B0rv82MMxCDNiLiCyaEyEbSVJrmWCvKdqbwRZw==
X-Google-Smtp-Source: AGHT+IHpqt7WVprMdgDUXDj2HfXpkMExj7EZqboVSsy0vCvMNy6esVauMuDWv/acQi58TDCcoWCPbUaQEY1kCjx06I4=
X-Received: by 2002:a25:2f45:0:b0:dcc:8f97:9744 with SMTP id
 v66-20020a252f45000000b00dcc8f979744mr3219750ybv.43.1709241006597; Thu, 29
 Feb 2024 13:10:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240229-mbly-i2c-v2-0-b32ed18c098c@bootlin.com> <20240229-mbly-i2c-v2-11-b32ed18c098c@bootlin.com>
In-Reply-To: <20240229-mbly-i2c-v2-11-b32ed18c098c@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 22:09:55 +0100
Message-ID: <CACRpkdai_-FyXc6+oxLK00Esdw+akg0==YEUv+B5nBcWafN6qQ@mail.gmail.com>
Subject: Re: [PATCH v2 11/11] MIPS: mobileye: eyeq5: add evaluation board I2C
 temp sensor
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-arm-kernel@lists.infradead.org, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, 
	Gregory Clement <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 29, 2024 at 7:11=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> Declare the temperature sensor on I2C bus 2. Its label is the schematics
> identifier.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


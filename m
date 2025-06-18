Return-Path: <devicetree+bounces-186994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 40971ADE702
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 11:32:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9B3E40305D
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 09:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7093E284687;
	Wed, 18 Jun 2025 09:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vqkAXk1W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95E70283C9E
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 09:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750238905; cv=none; b=rhVeOTirsN0H0U0Gq/G9cuOeYEGy7tZ+wIH7IbwypJq30PEbOtlHghqzUw6PV24C88fmia2WIw9eojc/Ekny2bCkbREZWTPWd2eE+pUzDi9ZvIxed7pcz86e6XCf0cP49ek9CltYJp9h0WnQ5Ei3AnN9suCQqsRirayqM4WUtnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750238905; c=relaxed/simple;
	bh=BdTd86rD8wGBkEGobCd3dIkyDDHb4Ycg01Tusl+Lv0Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f3eKeUsaOzqL9fBpDSSdA2h1EcPCJ5B5Fy/eGIK4bMsfZo0me5vtmDNqfl9f7B7w2i4cv+AuXsh6XuJIzd4nhK/7p+FFETnOybbDht0ZhKYakzNe5Ll7KC5ENWPaoTE4wAQzt/caO+87qKXynqobsXDc4Dk2bLNJm2VFBC73R5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vqkAXk1W; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-553b3316160so4201222e87.2
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 02:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750238902; x=1750843702; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BdTd86rD8wGBkEGobCd3dIkyDDHb4Ycg01Tusl+Lv0Q=;
        b=vqkAXk1WN4j8C7WfZ2pxXm/Ee8GQntNeRJ/0UOFpmjihDoEUU7TQY8QBVmPRFtFS6x
         D6tdUVKuxDSmyrffgKiZ/zJiHUICj3kooLzbXXijH6bPZnS/CUQ4WJbW2oAsic2malkv
         7TGstFzXDWREZjnkIylBm4IKd6IqfZ2AIcVAY3rnTUAHC+y+qoMvaEHbtDP4CY5tT+DC
         j0YiOdJGUfMSRYo7lI7KcPWwj3bloTk09hc0/7dgezdthMN96xkBmuxjo7OxUj4Vzdt1
         skTWhFRlNS7+C77bODAOtskqOHrnddKJ3fK9qMw93y2g8arjeflNO70/IPSTuFKeOJUf
         L0kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750238902; x=1750843702;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BdTd86rD8wGBkEGobCd3dIkyDDHb4Ycg01Tusl+Lv0Q=;
        b=bHj6r/9B1DpeIc4nL6FXvav2co9iS6eiR942SdH/CWfIhVXP79q0aw0gFipCzZCbc3
         3ueHpekGWWy2Z45vUtu1Lj925fzHgQLnHqwUvYS216vsxMlzE2zyxq5Y4v4U4Y0ILnou
         SXkOYmXcQGAkDy870RQns2Sc3wRZ5m9aCqCOn+yCT1qdpDtJE90TEhEnyynol20jNcO3
         y+REXxci854K7LFhm+U9XCG2NB8gW1GFa1s7aAH3geaYIpy0ZgvaPb58L2o2h7O9o2wU
         nfqAoH7WBKhTC12eSJoPXBrctPf8/XwChtFqrjfIflrPpuA2svIuP7a/cATtsKr3nbqi
         XqdA==
X-Forwarded-Encrypted: i=1; AJvYcCXr2VABRttcIZ2qR6yZ4twxpYwKlZZIzcJ7rfnbwKcr3JTlCx4Fc+qwETxaiJeA8WG3GO1BX3nJ/OGu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9zkUFdgCJdl+EC9/TVusj5iaIH98RpSUyFo8/DZpHmOQx30tg
	LbhGQnTNhjO50Oea18NZ6OZgMQ/+v1fBsUOQY4Df2SHtnEHW5RpH9xFwOe+fQFVdGArybqUGYfO
	WymDwj0vTiXiJkhk2n1+yCfaDHN6L1jJ2gydERPJPLA==
X-Gm-Gg: ASbGncsirPX5TAUqHXY7VocUxIf4J8EE9q4gvmlZVi7qVooLvXMUJmyD7pQZwRbT8DN
	1TAtGWMpOsmyHzcTDHmemBeqYLGPVLHTcqrOgbL9Lwe7WFJZ5vK783R5l2+nKZHWsrJHwAPDXeZ
	acn3pgop6C9ETr7vefkY5OgMjMH6RTwIhCv29Iv6mKFDk=
X-Google-Smtp-Source: AGHT+IEqIwMIpDCAfC/mp2g5or4udP4zqxj0H5Z8NfKN9pZpGaYnyn1sPYmydRm3962RKwUckswXX8mjoIzWXQbsVfs=
X-Received: by 2002:a05:6512:3ba5:b0:553:25f4:695c with SMTP id
 2adb3069b0e04-553b6f4470cmr4666950e87.50.1750238901764; Wed, 18 Jun 2025
 02:28:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250609220900.3035642-1-robh@kernel.org>
In-Reply-To: <20250609220900.3035642-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Jun 2025 11:28:10 +0200
X-Gm-Features: AX0GCFtHdJldExb7osATG0sE9yc28prRhU8fIk70sNT-r9whXSNHnrPKGLd_oDo
Message-ID: <CACRpkdYea5F5pvQY1Sv=u3Oe9Bv5bp31Jwvo1uftQYbwF0U1rQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: arm,pl011: Drop interrupt properties
 as required
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 10, 2025 at 12:09=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org=
> wrote:

> It is possible that the PL011 doesn't have any interrupt connected and
> can't be an interrupt provider, so drop the interrupt properties as
> required.
>
> The LG LG131x SoCs are one example of this.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

After changing all PL011 to PL061:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


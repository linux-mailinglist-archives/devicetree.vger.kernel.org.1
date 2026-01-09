Return-Path: <devicetree+bounces-253302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6A4D0A73E
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:39:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A73F7308A408
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 13:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 413D135C1A1;
	Fri,  9 Jan 2026 13:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXlvPg28"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6833370FE
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 13:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767965654; cv=none; b=D2IAkPvQQhQPIrnt4bc10q9C6Tnqa7wySjHe5lBZFDuqDvOQMzQiwqP9QeivteXVkHi7iNld9N7FiaU3P1zPWiQ46ixgI9xBZGjoNYaZg9opD8DySUB6utzz92ks0mQdaF87bV6yztBdXZPKhdnOyjfNDjeuse3ZRk/HcDv/aNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767965654; c=relaxed/simple;
	bh=qWzvjygcuLwzEIaEHIXEz9SaaWzpXF20ANBBtTSJsrI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CCSfBzwrxoS5kve4cLQkbfiby6/hX/ET/OcbRmbY6nGYEjkDOETQnG7l7Il5ZegDOFFWV5i3iCP4V5gezkBkxyoK0Rd55fJsBdObmqAC9Sy6OTbUVwx0A7A8Lxv6Wv4K9B7DEE1sW2X1iHswaDi56mRgafpwvIKT8+rPdZjfxso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXlvPg28; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 028E1C19423
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 13:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767965654;
	bh=qWzvjygcuLwzEIaEHIXEz9SaaWzpXF20ANBBtTSJsrI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=pXlvPg28ROYATVopjWOzBg5vR6kEbc/rx+T7qI0QvP2SRipywjvuMEbt9KtaaxSYT
	 xe41Bh4rKblR4UC3fgonuJIUAP1Scoti7w7lySstIJj1IljhPDfFwqgyMSZ5hkLhkV
	 hDwAKsaAklZBG6nfOBwnm/d727a3L+w3tVOlc3+2qmrFxxXMG9NSreOu1PRx0ID/T5
	 Sk06jar9d7TVaM5zvynCh40hUwRb9JggexRF+5nrKi96yMZ7+CqICc69PeGzLkg8zg
	 xqItjYKcEsy1nJZ42n/xGyGJudNUYjzO3ZEDujQGxtFPI33Kj01chsyagXJ1g1FxNG
	 AfDuGE1XUDtzQ==
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-78fcb465733so47310667b3.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 05:34:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUo4TWDMxs16tUUsbCaWMjj4HdW4Mss5hh4fvXO71oxmZVrXFIZSv4u4yIuVEK+fKToL09xYWupCKh/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2zbqURe5KlU8WayNQnT3zNNUnE/IEUoSmoJ4bz3q1Lr2P0orG
	BtB+pDiG/cmm4xJBXKVrmeP7p3lw0xv564Txoy5Q5RP3BZt71rToby+vUSnzV3zIfvFYzYLDxfn
	RriUS1GtvAYI6JiqfUGdKQIlcNVRCoVc=
X-Google-Smtp-Source: AGHT+IFesI9TgGv8pGaGDvBFA25rqPyYSWQ/7ybS7ei3jmEtj0pUiPwxVn1yVv3/z2opC7z47lsPIXjgx7XM38IPl5Y=
X-Received: by 2002:a05:690e:118e:b0:640:d31d:6ed4 with SMTP id
 956f58d0204a3-64716c67b91mr8452143d50.51.1767965653394; Fri, 09 Jan 2026
 05:34:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251211-dev-dt-warnings-all-v1-0-21b18b9ada77@codeconstruct.com.au>
 <20251211-dev-dt-warnings-all-v1-2-21b18b9ada77@codeconstruct.com.au>
In-Reply-To: <20251211-dev-dt-warnings-all-v1-2-21b18b9ada77@codeconstruct.com.au>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 9 Jan 2026 14:34:02 +0100
X-Gmail-Original-Message-ID: <CAD++jLk=9P3SaPgeuD46O_-D5xTKXiefRKenq2w8HVcv5rUdxw@mail.gmail.com>
X-Gm-Features: AZwV_QjuVx1piuHcehHbUq1Xzc5Kt25GKCC_RKdVxx8gfqJ7sqje1Z1f8fkkuKU
Message-ID: <CAD++jLk=9P3SaPgeuD46O_-D5xTKXiefRKenq2w8HVcv5rUdxw@mail.gmail.com>
Subject: Re: [PATCH RFC 02/16] pinctrl: aspeed: g5: Constrain LPC binding
 revision workaround to AST2500
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	openbmc@lists.ozlabs.org, linux-gpio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-crypto@vger.kernel.org, 
	linux-iio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 11, 2025 at 9:46=E2=80=AFAM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:

> Discovering a phandle to an AST2400 or AST2600 LPC node indicates an
> error for the purpose of the AST2500 pinctrl driver.
>
> Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>

Patch applied for Linux 7.0!

Yours,
Linus Walleij


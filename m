Return-Path: <devicetree+bounces-47152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F9486C51B
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A6381F21507
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 278E25B694;
	Thu, 29 Feb 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q/0qOpCI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C1A85B5C5
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709198896; cv=none; b=Tl+aV8uQdWUTrxC1ooRFGQ2oKIeWq+UaV9CRQ9VO2VCbinJ+pTKLKnhIpPKSQnj1m0bmEsoPBf3Fz2VmMY2R7shXhu8rc/HuEIlRBBhy1pcBwRyrn7aREm7bkyZD28kDdT74zYoPugb235OyJXm5gdsjvjnsLQSplgpVfscgRGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709198896; c=relaxed/simple;
	bh=Sp9hVYy8RvwknY8xaF2NY4lfQDm5hhrVThxfCUMJdRE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Mo8qQ4w7CDtCZvk3jwjyb8Uev48j/Y8MVNeQIRunhylfwTzFUvnGf/91LLKVCeBUj9cfli931HEGqqTP7q/q8D1EL3eU+zHfk5qqyJgkfw2El56QAlFio4OHtJT0s38vftKskH/+quIMLzWs04ueevbxZeoKK8M1EZc8P9k73Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q/0qOpCI; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-60943ad307fso6675127b3.1
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709198894; x=1709803694; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CkcK/kWoc4VLSEGC0rvaMV9x9NBCtROw8bD0RDsj9V0=;
        b=Q/0qOpCI7qIzHaFIqWO3X3AGxHH6Nw/G2aA5OoyK+t1ubbYoYKX/uNXfOuhL2LXqop
         EzSmmKZnEn0CHhzK76z1OOBEZLSnnmMedZQBlWf4DdeZdldeZS4lytFOfschebHw5qMb
         GWZkttJUH6LwGxcGi/bxze5jnQhomkzV0sYaKd8bC5IJfMj6xpjduAcSyNuJumFvODON
         ZjXdAAgRj75seWcL60WTp5s8AzORhUpNSFoZ5h1f4l4y2GkLKVEQMPYBoOlWaxtmxtxX
         hH9MrRivbG3QxiJnUreGDZwODPOUTOlqi3Q3uorNHghSPYrP4ajrRxPez4heZ8+mvr1z
         /bXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709198894; x=1709803694;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CkcK/kWoc4VLSEGC0rvaMV9x9NBCtROw8bD0RDsj9V0=;
        b=ni31CnzF3yaMl6oFFxBOfuHnocOsf/gAMUFRpuVoDmda0melZYWRbYiBk5P8ET/eTn
         GcLTkP9dOSp/bptzRBhzvMavBDt6JGsGqj/0I89HHzh2iqDHeaRtduKgtd1F6CzEv5E4
         iYSuC/ev3fuf+aPNDgaqzRGmClqLV7VDK/gQper0LAEPhv6CSu0zJoQ/i5Fa6T31uLsi
         dDNsZBWqWOxTJQE+qZG8AqkVhK20Q2z3vti/ODdVSAVYacMDuNjoHialFZMXtQqhvz6t
         PRbbU64imdICqEzRx983Cov9KUKoOCvhX7MvJNJV1nusfgvWHSwJAkUxoGqzEZZS9ur/
         zXWA==
X-Forwarded-Encrypted: i=1; AJvYcCWRooGpFTnnAr07owzTX1CJ4PAF26Iou8FAgXfY1vV3uWFm0ojCjo4Q2/XTCc92muyJ9V2yPzBCJB4DoX7bqZa5Yx2uKUZk8dBU0A==
X-Gm-Message-State: AOJu0YzBNa9PGe+W2/xws8AekWWm7vSncBsfKF+xzl17Dia7yLoeuJAH
	DkMcdSfxF5k8xuSso6PjJu+P1lrHcjsIUqO4+Sejp2NwyBccPPZKubC1d8hu00kNXwSZ/smCbk/
	OaUHnQlC56XMenL4rp51itkpDm9zl+zh1RzJKfQ==
X-Google-Smtp-Source: AGHT+IH8fx/8sF1vAbE79BjOykSbpKj5al5QkwqPE1sPBuzrG4OGX6e2BzTUyjAs/nf9MZJ3L+YJycEaQmhpHHeon8E=
X-Received: by 2002:a05:6902:230a:b0:dcd:6c0:da64 with SMTP id
 do10-20020a056902230a00b00dcd06c0da64mr1763073ybb.58.1709198893879; Thu, 29
 Feb 2024 01:28:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-12-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-12-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:28:03 +0100
Message-ID: <CACRpkdYjHq=RKS6OT3K6xaTPKDp3xx6qq950KeZZOAzGuxpK6w@mail.gmail.com>
Subject: Re: [PATCH v2 12/30] pinctrl: nomadik: follow whitespace kernel
 coding conventions
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> Fix strict checkpatch warnings relative to whitespace. Message types
> addressed:
>
>    ERROR: space required before the open parenthesis '('
>    WARNING: quoted string split across lines
>    CHECK: Alignment should match open parenthesis
>    CHECK: Please don't use multiple blank lines
>    CHECK: line length of 103 exceeds 100 columns
>    CHECK: spaces preferred around that '+' (ctx:VxV)
>
> Before: 1 errors, 2 warnings, 38 checks.
> After:  0 errors, 1 warnings, 16 checks.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij


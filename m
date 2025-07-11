Return-Path: <devicetree+bounces-195606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6392B02422
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 20:52:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 910E63B10D6
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 18:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B1C91D88D7;
	Fri, 11 Jul 2025 18:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pYUoaaE7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D31BA50
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 18:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752259932; cv=none; b=gW1tbFQLsIYuuNRpB7r833OX0iW/qVv3y4Fs9kEsPYWFwRk3OAzoykSuou9PHGDk1YANgfn8L39uP5AbsMniNyX7JxagFvM9XTsBT4TuR4z5a9636MgB19dpsaxv+H2VjL/xypUfP7VFoo0Zv0t7FOCtCzSBfPItSoJpqW9ZwL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752259932; c=relaxed/simple;
	bh=GQ5fC4S1mkqPz2zMh5GTicpftwvZuHxi2EaAug21viY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SAI0bHYozlG9v3ewll2OHjMjZu4U7SgLxvGkEbOYqZZ56zrlju1ksyxXTr3DYJ22UIv3JMY5w7mAQqPe9VRglxqoAR7eimSsk/nUCESnvukiYGfQkJmkCRYr2qbwemDEzvmrElhSSlHaLvmdZRgBnbSN79HMYPAkSm5qo/7DCXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pYUoaaE7; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-717b580ff2aso22203887b3.0
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 11:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752259930; x=1752864730; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y0H6HqwurK8du4Yig7CnNYD3RLplnogpWij/DKV6wnM=;
        b=pYUoaaE7s5OynAQAH/ehRj8upc1P3MrELvCeLvTeWe9LmthIRYlGVNU2240rJ+FGIb
         qQZzxQCXRirLxEEztEvv0Liopvr0r/wSzJuzJDvbIJY0DXauYnEX3KQgwrkDHqrrzpz8
         Z/6I5dXfJsKhYpkIGUn7lPNXjF9VHUfLwvuYGGVa2MciYZKMRyk5tWhk3o/xfqxzW2/w
         Ps6DwPi7dzioSOVPKUjJkmL9gf8HcMLvFcSvE/dOAjgjl2h3bkEq573qDLpoLqqQragI
         2GlQKVAC1ddvcgp9ET5GJBIMXJLMS1YrcViEjI7AH7iwZJBainQI8eclCO4clelcKLeJ
         QYDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752259930; x=1752864730;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y0H6HqwurK8du4Yig7CnNYD3RLplnogpWij/DKV6wnM=;
        b=CsS92Gm4v1++SQK65wKZTRqDcBISP9jJJsUflL28Gz2D6LArnYNIi6eDiO+l8ljbuY
         kRGmBzUG0W5l28CYMUM2BWzf1B1zlVqLK+PbxW6BCpqhnt9dyVBwgAr58yDrdInxezbB
         OF3vrStm/ZtEuh6ywVH3XnWLM9KewJMFnuSi8Da0vqtRvf3Oi0fbPFEng9DIumaUKu56
         kxtW7aYAMzXP/ExocFIhdP8vJfcchSvexC7UFocaEfXppNpAFlqwwSoYbSN+P3jxuGlE
         4UNmLeU/79O27SJI/BXA+KlJh9ta7bQeA6n1zkVL4ghs77kgD4L0pJkFrUCxMuk+0CjR
         lPlQ==
X-Forwarded-Encrypted: i=1; AJvYcCX497RCIWgHNQ7a5o+iXv1ovGLgI12N21g64RDTSvmfJu4Q9foKSB2ou2k+xdd/d7JQzYC32aRd+eZY@vger.kernel.org
X-Gm-Message-State: AOJu0YzZNkPqlx/VDOTlRqfyOjY5NPLcvzJUpdbVAsFpnRO2Monjx4Op
	4OmYu8T1NrN+ucMWgmXnH/r47TjMFHZjRZedq3WxYQFtehiSWxAisAn00qeObXTEz01NIu1BGma
	Irp7fXS68+RIHTmdCRkWrUjce0WTBt2e4F9TN2nyRvg==
X-Gm-Gg: ASbGnculrSamzrdKi8rJ8VVuzSlmUx+5IfCpJiARY9KzK0wWLARS1cd9KYBPlGl1dbc
	8CLNSn53ag7ThcvSV4RoYT1webiSvEaOpSuI+kBzc9N47PKA+EcDqq1CC8GudpePMODb17VQVWX
	G6JyK9tTLa7ornd4VmUNsae1nnEFa4sd/52OjJYIw17jT1KpDRJHVefNMuRFXW3S6RHXAS/hKXa
	RxQ5vM=
X-Google-Smtp-Source: AGHT+IFufbqtAPFq7ox05U9WlMb90rIorTP+4zmeOZAsbdsvZ9oDhtS+8uVsO137m7BSFuFbQhKQyBmLxkmw/Jfm0ww=
X-Received: by 2002:a05:690c:6ac2:b0:70e:73ce:80de with SMTP id
 00721157ae682-717daeb302dmr49577697b3.25.1752259929914; Fri, 11 Jul 2025
 11:52:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250711-hdp-upstream-v7-0-faeecf7aaee1@foss.st.com>
 <20250711-hdp-upstream-v7-1-faeecf7aaee1@foss.st.com> <11a49801-d187-479b-865b-810ca5adbf00@foss.st.com>
In-Reply-To: <11a49801-d187-479b-865b-810ca5adbf00@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Jul 2025 20:51:56 +0200
X-Gm-Features: Ac12FXxNxgzgzDBEHJS_Xpef7MtqDivB9Et0gKV7kxfFrSfbv0PvRNxLHxkuJiA
Message-ID: <CACRpkdYXQRGO7BrF9+08StWyOkDoqLhNQdgk=bhoccg1BogpqQ@mail.gmail.com>
Subject: Re: [PATCH v7 1/8] dt-bindings: pinctrl: stm32: Introduce HDP
To: Clement LE GOFFIC <clement.legoffic@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Antonio Borneo <antonio.borneo@foss.st.com>, 
	=?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 11, 2025 at 10:04=E2=80=AFAM Clement LE GOFFIC
<clement.legoffic@foss.st.com> wrote:

> > +maintainers:
> > +  - Cl=C3=A9ment LE GOFFIC <clement.legoffic@foss.st.com>
>
> Oops, need to change the mail address here too.

Don't worry I fixed it while applying the patch.

Yours,
Linus Walleij


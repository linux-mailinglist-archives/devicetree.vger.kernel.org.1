Return-Path: <devicetree+bounces-157524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73093A60F36
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 11:41:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E4ED7A61FA
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 10:40:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B5591FA243;
	Fri, 14 Mar 2025 10:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NLY7fyiJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8B21F3FD3
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 10:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741948859; cv=none; b=mV3TnlNWcGPppVkylcUeoTuthzn2xmvUIJDgzL6aGHJ7H7kFc13gjQmT+M/uhL8j3GsumQ038WzCw7xs6Z3Q6AHfGGlEer8qLiUmh4yfMlKbgzahNX6ZL8R2z2nFUtcERKwsjpWX226ifbmlohjtnsNNfRiD/HhFpBvO1bqKp2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741948859; c=relaxed/simple;
	bh=7Tabw9Z4bIh3i478fwUir3sqjYhIhXJXxI7g2bFV4tk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UbbaV8/aScbXcg7bC8DAQO09toGq/aaK27WbQgHi6lfErIMGFGjrZJSlR4368FVEKP4z5TyiXnOvMh8YUS4G4iiHnl8xxuEGbETeXJrs0/kZw5Vef4a6TPMKR2fp+qD4mo231+bfHOwW1hM3vVnTUvAtzJV9SvAASXKMgvfq5yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NLY7fyiJ; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-549967c72bcso2202212e87.3
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 03:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741948855; x=1742553655; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Tabw9Z4bIh3i478fwUir3sqjYhIhXJXxI7g2bFV4tk=;
        b=NLY7fyiJkeLn6pr9e4N2PdnDYnshP8G6vTlmXFZbDt8JwzN+e35XZVeW+14Fn0F4zR
         IcPMhkJ3CTI0TPgp6WF1thIJ8rv32PYOZVOuSUP8TFsSLX2Jd4508G3q9pVfzo5n6OrI
         qVJ/qg1iLx4S6TC/I1uX72Z0sYO7+q0I5d6X0GhSbPbUkwHtq875Tl4axgUx4Xfo93Jz
         FYlS/FcEedMBKYFTeCqcDqTqQ5oh6JNbnEfwblGTBAShhu3DZnNUUq//sa6y3gUuTPs4
         iqyCSdLYzH4XJ9fpeOG+LgKrYqUkeAWGfi95JplNgmzQmeTyv9qS7NaACxksEg9G2lVT
         K7Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741948855; x=1742553655;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Tabw9Z4bIh3i478fwUir3sqjYhIhXJXxI7g2bFV4tk=;
        b=PLAt6UoSzT4xOHKYcNnh7ZpjpXN6dzMzI0um8jlnfJ6CrUre4v3vFwvVCa+/AVRJ0A
         yCbHDdSMM+OjiDbSFk1VBT/EhpCj/ddlfhtsE2EhsrQDgqJbYlCzbYAqCePvTGwkzlT2
         G1nfwFELp3BkT+BtqD8kB7TJw+ItDP0IBN2aMrCC1JilT/beTRg3gdKM0ESCu3HQVmar
         bwo8ChIsOZaB9/wkbx7UihOjdmE5t75H24FP36AuhMiQFEKsRdbJanfMSY2FThxfYLSJ
         lg9IvxAaHxogXsG0XrTS8i2HceEGTMw0r/Ww4e9ETOTR8ws6bTeQQnBh1l0FPB6bNsgZ
         AbmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDbsAsF+z8SCK/3PohD6a+KIBBhkDAMLzwGiGc/q9IxIPhEcjT+rMr31cdHIoy0Z8cO+chZm3GyQB2@vger.kernel.org
X-Gm-Message-State: AOJu0YwPa+xiSHWMml4d/bUXWuAHwq4VOZl8FDcmXpoq1BZGHascCtpb
	8FBELmDYdvh4puKPnN8TyyGAKN8LqtUU5pkckgkJd5XFOO6IUkk5IiTYAKWVZ9Sxfo2m5F3Z0xv
	6GeTsLUPSdo7wR/5un5w91NdsuNdGOiX7OJBTkw==
X-Gm-Gg: ASbGncvJX7lE7oGAyJeCOgxFH+7DqQGDkbg1A5LD0MxnunN3XmppRhHAp2EJ+3jWHFu
	Gnw9zLaRTPKerWyQsAMuw47A3fdNNq0UCJpX5QNddwPAVgErICvNzEJMtDo+W4X0DXC0Yp9gd1M
	+mDASVNAhJUkKqRjBE3Mv5I88=
X-Google-Smtp-Source: AGHT+IGA8lu4+YUGRbMGDeqXVRC8S3Eh82gixaqk7ULSw2GQfS2l/K24FNsAjmYoMd/QI6TcqRWxeO06lBY+iwQoWKM=
X-Received: by 2002:a05:6512:b0d:b0:545:154:52b0 with SMTP id
 2adb3069b0e04-549c3911fdamr634456e87.22.1741948855425; Fri, 14 Mar 2025
 03:40:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250307-en7581-gpio-range-v1-0-de1262105428@kernel.org> <Z9CYEZloamPhVdBS@lore-desk>
In-Reply-To: <Z9CYEZloamPhVdBS@lore-desk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Mar 2025 11:40:43 +0100
X-Gm-Features: AQ5f1Jrsfi01k9a9ZZG_NbGUIuQtjx3Ff3ESsGiVH3198fMHG_n5Ix8wLorhDCk
Message-ID: <CACRpkdagLPe8Mt1imjeBhMuxn5rUMMgsF0KceQpGyQE9ECoJGg@mail.gmail.com>
Subject: Re: [PATCH 0/2] Add gpio-ranges property for EN7581 gpio controller
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 11, 2025 at 9:07=E2=80=AFPM Lorenzo Bianconi <lorenzo@kernel.or=
g> wrote:

> is it fine if this series goes via linux-mediatek tree?
> en7581_pinctrl node is only defined there for the moment.

I applied 1/2 to the pinctrl tree.

Take 2/2 through the mediatek tree.

It will all land nicely upstream and works in linux-next.

Yours,
Linus Walleij


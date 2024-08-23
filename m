Return-Path: <devicetree+bounces-96224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C96E95D304
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 18:19:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9B53B2408C
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 16:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91D81189BB8;
	Fri, 23 Aug 2024 16:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mYch5VwA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EEE18DF7E
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 16:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724429847; cv=none; b=DMGnpgKKtQVnDh7kVb7QdMvgDg5WDhZrWM46zR+eLiu3EzuGi5hYl6a2oL26dYiCSgVdo/slef6FlMM2TOYEKtHmI7fbibHshsA91PSFB5mJoRxwSlu4TG5uvpklB5P6Nkqw5lMboNeyV1j3stsAh6yYJ8MuW+rLJrPFznJJmY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724429847; c=relaxed/simple;
	bh=/1JOykmGcfsMrRKEjdQMplOXVRMYxg8kAzDE2g75ZxA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qMIFI6svRJHyhfPgf6slJufcWanhNqawAvWqF6BLCnQp8sXT5HRwgG4x1AOQ9oiCGOCiwJq+qAssGmF8tk6sciXMPWKUVm30pdVYRDny8fKNfrN41HnaVZmXUeC2efswPhQ30FosiNlSe8BisamFarK9EVzk3lcXxS7N7+bnudQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mYch5VwA; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2f3f25a1713so23008191fa.2
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 09:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724429844; x=1725034644; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/1JOykmGcfsMrRKEjdQMplOXVRMYxg8kAzDE2g75ZxA=;
        b=mYch5VwACiWu0+mGTMVSGmyAGPeYlVwpPtVahWXYB5rotYQMFt3ySo17ngOgUMEXoJ
         3OEIo/Ko/wU0YAJYKuNz+VsWDpu3O+Pmx2gGNzs3Uxf0VkRNnYpSHviAQWARtDjOHR7N
         XHqPm6pYHhz8NBPG1feN3QxzNsKnoFlaxqq20dPLoDfILIBQ2AJXhuLrVEcPfwnk4Y0W
         KETT3EZpo1GjzcIm8WngFvWiprYIqdZ27COghW5z9FRQgy9b94UunqiRZ2pGhEe4P+OX
         AvLyCmuB16J8zC61dAEtJ0v2KiaIZ49ipNqbBBSOwcTnp6jCY0ySRBo531bV6FVp8oLC
         w5wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724429844; x=1725034644;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/1JOykmGcfsMrRKEjdQMplOXVRMYxg8kAzDE2g75ZxA=;
        b=mH8eHU6q58BqYUz3RMHMrCkBVivgb6HmEv4+2bQjAb3bxrEK4cGA1qUHDC3TMK3ogQ
         fGGx1vJkkiFhlsqzlhWHAnDXuVDSQAw55sKO9vEagqITPBYnJefA8f5SETwVA1rSp9qs
         iL1SnSiu+Cf65QHx73dUt7Ij04HyMcwo2aag835kMLYmkgJ7YrRSW2BP1U5bELfOqkNb
         xwIQsqR56i0RrfpXz/eTIgM1Aa8nXFyiMAN4xflamhLJ7fdrBkr+5M5W9g0HKPZqtDQX
         frlR/g0/QF/wWZKia+ETkF7MCQYms8vYdit72ljBxhPagQn7TXgHvyGXQxzAvqQfF9wQ
         9qkw==
X-Forwarded-Encrypted: i=1; AJvYcCV9hILeElO9A82A0mJZCr96BvxV20h+W6bYsJjaS5jAbbH51tAKh6YkZdqIlwiJMCHurnBMyioc7E1+@vger.kernel.org
X-Gm-Message-State: AOJu0YywyX4I3ixVFUmZAWNu8EtEioE8hZVTJBk3dK+vbqt1uJBCYir3
	RkW5Cn/sROmLQ8ElfWNFCx7r26vA7D5yXKUScFljCnKS1YZpHLUvvI/aZtdcUA8R2Q/jEoIGNX3
	9lVnHM0sRHykyy7ivfW4N4aVmXu/V7zgXY5vUXA==
X-Google-Smtp-Source: AGHT+IHLTFfhA6TdgZm/KA1Q+nJVzjfMKVt+DdJhoOP99yU6MeYeiEX9vrhl+Fo+VgEsy05TJol7hRdrCPfbxc+wBDI=
X-Received: by 2002:a05:6512:3ba3:b0:52c:e01f:3665 with SMTP id
 2adb3069b0e04-53438783dd9mr2043263e87.25.1724429843683; Fri, 23 Aug 2024
 09:17:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240528191510.1444068-1-robh@kernel.org> <172345744173.104566.7784022936514071509.b4-ty@linaro.org>
In-Reply-To: <172345744173.104566.7784022936514071509.b4-ty@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2024 18:17:11 +0200
Message-ID: <CACRpkdaFMv6udzNdmb+VKG4epxvsDwWsNhX3=LZmJnw3NJowZw@mail.gmail.com>
Subject: Re: [PATCH] arm: dts: realview: Add/drop missing/spurious unit-addreses
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"Rob Herring (Arm)" <robh@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 12, 2024 at 12:11=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On Tue, 28 May 2024 14:15:09 -0500, Rob Herring (Arm) wrote:

> > Various nodes on the Arm Realview boards have missing or spurious
> > unit-addresses.
>
> No one took this patch and it waits on the list for very long.
>
> Applied, thanks!

Should have been me, I was too busy/lazy.
Thanks a lot for stepping in!

Yours,
Linus Walleij


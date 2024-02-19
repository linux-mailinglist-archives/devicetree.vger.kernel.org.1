Return-Path: <devicetree+bounces-43435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD1D85A5CE
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:22:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A48B91F2647A
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 14:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BA9337700;
	Mon, 19 Feb 2024 14:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QK8+8CNN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5F3376EB
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 14:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708352564; cv=none; b=qB/H+3w+qo/nY8qHQruZ/3zIOtS8GnmH67VpBL1OJ5Re7wak8RSDtZMlKWTZrgebhB40tKCs/jjndtLBEevE3f0EruRp5Pkq8QOnbAzp5l7hjDpc7ECEYfLZb8TWMwaUhw6if2TaVjaPmW9FQ8qvVtF5JC46dPwx0Ij+AJtl2mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708352564; c=relaxed/simple;
	bh=/6PWkDSKkw93KI091rp+ZKivJdBGMc4Px963+IBDBT8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jOsv9gmLKof8jp0f7rw/gCUaLVfzzf1xIWLbmhAceUVp9wLOdFMk1c71HsMczMcgZtd/Qr/5F5qvBnOrhFZpa+HsGiBwdOeqxHSZP3QosvhlzuUweToXdX1RsorRe1djFjiRNbxv6ecS5E7uN1uwGxdlZVkccyrjnuT9JZGDgTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QK8+8CNN; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-607e54b6cf5so25052357b3.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 06:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708352561; x=1708957361; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/6PWkDSKkw93KI091rp+ZKivJdBGMc4Px963+IBDBT8=;
        b=QK8+8CNNnTfN1raQMq9SGwcCDv94HK4cl1CPPMwtichxmoLfdE4jrnY1b1dEp6pANF
         dA0zchzFSNfBrAKQR+UDGBnvJr0xYWi3PDSoFDbapanJX8q7bqFY5WxzwZS0shgzBoZl
         PRJN2/t8q/r61pdGNBjK8EU/Ws7XKfnsLUrdcI6xKvRNZU6qGGxgJxgF6Tvh1wObtwDW
         INZTj5QqDeT/FCo06uWXKI5VlyGMQWhOhZhwFQCFXjqM/VwM8TKUxPseunrFmzpq5RcU
         HVASwkHo7+5vgO2E9qGu0FpV9niN1CwxzZRpAtZCJWdHZNDTVwDObCVYEpyOoowspzHO
         zJng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708352561; x=1708957361;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/6PWkDSKkw93KI091rp+ZKivJdBGMc4Px963+IBDBT8=;
        b=hS1YKziiKBgBHAMMQhoOwAfSwu/SWLHAoX29tDlwOGwnxW8JwNQtXRkSrrNqDLpENb
         u2McEUqBFP6YdxhvTi/DV/WW2fOfikUva4s8JCNBD93Fyiv8TYP7bwTXmoIJp3ucRhAh
         L9R+smc7OkeI0k5meIelVC0KNPMh/Z8grtts544h+Z0ZA6uMcGgYEQWhr54VR48enXjb
         yOoS/MkTdeqCZ+1MhVkpHXupsHJEFcBjKqPK00d9Wk2jL74dpkxuEWzMITngasYgLW8z
         znInnpGQwHuqw6VuipQ8VHA8AAxiPc711IylPiVhGicQBTtflwaf7FZpDAlkxk98ypmz
         fiLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUECsL5/jeX9GrkYB3YSVPQAHqCoCpFsN9YnvJwKHZJpHwFHYvK5mfRE8qsu4WSHF5t/DoDOXVPkvYC2g1mTPgGakcLdLNNR/VlOg==
X-Gm-Message-State: AOJu0YzoKVgljjVDx2iZRWj+7qT+r22E95/ALXZVbFZLBFkq3j7QV7BO
	1JXJ3CHmRg3owbll43w5WD4BMJsPT1AQLyBsNZrKV4hYheD09koGusW5dpS+PMHL48A8sGaHu6N
	APm7X/CrcZx/L594AhNm7Y88nomGqNlV+8pOfIQ==
X-Google-Smtp-Source: AGHT+IHfGO3HzVvde7/SGBe6Nu45IRUjxZfAmy7HegMXKV9VObfO53W61JP8jP6VnQ6Ovt+OnS9AL46c8cvPyPnGIzg=
X-Received: by 2002:a05:690c:16:b0:608:b86:7c9f with SMTP id
 bc22-20020a05690c001600b006080b867c9fmr4632737ywb.7.1708352561399; Mon, 19
 Feb 2024 06:22:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240215-mbly-i2c-v1-0-19a336e91dca@bootlin.com> <20240215-mbly-i2c-v1-9-19a336e91dca@bootlin.com>
In-Reply-To: <20240215-mbly-i2c-v1-9-19a336e91dca@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 19 Feb 2024 15:22:30 +0100
Message-ID: <CACRpkdYWi6kcCnS9EGwp-Saa7ZXQvRN+Pn9gOLetT_6Hbwq0bA@mail.gmail.com>
Subject: Re: [PATCH 09/13] i2c: nomadik: fetch timeout-usecs property from devicetree
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

On Thu, Feb 15, 2024 at 5:52=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> Allow overriding the default timeout value (200ms) from devicetree,
> using the timeout-usecs property.
>
> The i2c_adapter->timeout field is an unaccurate jiffies amount;
> i2c-nomadik uses hrtimers for timeouts below one jiffy.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Once we agree on the binding name:

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij


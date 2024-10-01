Return-Path: <devicetree+bounces-106848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D947898BFCF
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 16:24:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9AD22280F38
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 14:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC5E31C579F;
	Tue,  1 Oct 2024 14:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D9PUZspV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106A91C1733
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 14:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727792661; cv=none; b=SnQAIkSMsH1Vy9M53FNqyrHDU1Sjtdvl5j0toTd+K2Y8daRkMeI3yGfzRjd7lbGw1lTXZzobjGPRIM75lBQCkFSzIC0FI5HuNU/AkhEt3BJwevGy3RBZ4hhBL3k3jwYOjPQgM2acGdIbgmB819Ky/ULEBr4dztUPdD3Oooi9/UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727792661; c=relaxed/simple;
	bh=l5BM5b5k2TCeltBEWllLsPAl1pVOeHprS9AfvY9vl3M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bg9NxrT+Vw6NM1IXu9AmLYXJ06LeKeNM4Bs5sLNndbynI3qLrEhRgTI0//dQ/rCj53CcVFGPoBatFwQP/KGNmRGYDeZNNshMhT/VJ26Hqtwn5hna3ondr12wm+aVlklhmGDKslrxVfZ0/5BcefJtjPN1Uk9cJFytREa2ySqVG60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D9PUZspV; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53959a88668so5039909e87.2
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 07:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727792658; x=1728397458; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l5BM5b5k2TCeltBEWllLsPAl1pVOeHprS9AfvY9vl3M=;
        b=D9PUZspVorhQtsRqfM5wsx/gttEoAbJ81qsgaxxtysDkPGiodxQz8tX82vPdKVbeh3
         UHeKYdcWoeO4nXam/lPEgxs2G/CnBJxblUOAhvopKeKQUw3rxSudWwT5WqZwt+U2g2mm
         G/QBEXgpXTVoEm50FBllIsX3RM9EifxGZGMIFfnspvCTeegjANensnwRotenaT8YzyZh
         ODbH+bxye3rkhybmVKjo1RJAsPfprhgTXaKLBzqcrwP+n23ZCv8zY8F2ELOaDkmiMu/T
         B0YLrawa8BOmi4AnKVhe9f2YLkRh7+1aVsgSXEGAqTqNUN0roRI2CsjRCsa8PMR0aQWK
         UWXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727792658; x=1728397458;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l5BM5b5k2TCeltBEWllLsPAl1pVOeHprS9AfvY9vl3M=;
        b=XZVOHi8Z70M7ZD9WnDOwTCFaqqT6/M9r1Ult8Nn6xeIb3GwK8fUloIA1jL2Um3ZS5r
         SrrZF5lZIq1dE4j4zf97bVN9vvoZTxaFv5jii28qR5FJnqrApYLvuRpUuDIkfP9yK2MH
         c35IEVjwqOEr+BZT+0ULYEx8mnhsd7K9HrKMDUzE/TNl2jRjvusy7iITwmtroda2YGWu
         JQCrQ64EtWayujnmnc7bn9qp4YP0JzkX6HsLR7gkKit5FKcQP8FNMFg78KV/O1Xd8KrQ
         YEa913Rlvls6CE8i4JGDzqqU/15islHoXQhTK1RGu/mDpurK4L+44ytAxoeir8W+gcNI
         fYUw==
X-Forwarded-Encrypted: i=1; AJvYcCVu7rd721ahSxaUjZcgX3AaVD7kjB5D+/wh3RDM2qwHk0WXVu3xNI0+CixzJTXVVXOhD4tj54TZhtO0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8EPLQijrOZ7Z6kh19qzH+5DaD4vGbbHDHyysWHIHSgT7g2doZ
	eAiKMZRxosAE+GI6xT9fh5lWHENL5sKO9+gXM48p78EAz7TNyCPNsaM67byXCVMgu1dWFNjzjTa
	17jE4TOzswYhpel7dni7JRQR7QnFFlGo+cLCB7ns5gfgfFTyN
X-Google-Smtp-Source: AGHT+IGh+SAH0HiND+WOSGwD/VcAkilCZpxlY30ljLulS1hHuVO95SRQIQeLKJV15FnjaJtEFiG6shIsDh0YJ3psq+g=
X-Received: by 2002:a05:6512:39c7:b0:539:918c:512c with SMTP id
 2adb3069b0e04-539918c5352mr4435735e87.57.1727792658142; Tue, 01 Oct 2024
 07:24:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240920154508.1618410-1-ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20240920154508.1618410-1-ivo.ivanov.ivanov1@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 1 Oct 2024 16:24:07 +0200
Message-ID: <CACRpkdYoVnG6dSpawFvkj-2KthNKWnfo8h_icx+-5_JLoHVDcw@mail.gmail.com>
Subject: Re: [PATCH v5 00/10] Add minimal Exynos8895 SoC and SM-G950F support
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Rob Herring <robh+dt@kernel.org>, linux-samsung-soc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 20, 2024 at 5:45=E2=80=AFPM Ivaylo Ivanov
<ivo.ivanov.ivanov1@gmail.com> wrote:

> This series adds initial SoC support for the Exynos 8895 SoC and also
> initial board support for Samsung Galaxy S8 phone (SM-G950F), codenamed
> dreamlte.

The pinctrl stuff looks OK to me but I expect Krzysztof to queue it up
and send me a pull request, he keeps the order around the Exynos
pin control code and bindings.

Yours,
Linus Walleij


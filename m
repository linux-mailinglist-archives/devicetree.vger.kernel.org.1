Return-Path: <devicetree+bounces-106789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F09D98BBB7
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 13:59:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C5761C21FE4
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 11:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F75D1C1AC2;
	Tue,  1 Oct 2024 11:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s5dwuVri"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5963D1C1725
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 11:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727783941; cv=none; b=n5Hk3rMZlbjfnoUo+TyeT1bF1HRP0p6hvawdmeRiV4U71QdZk07WIObv+VIskvUZRSirwmFhDna9rB8AmBm8zg8yuDra5TGZYiJQOI6Evq3KskGV5Y+qnWLF10SDQA5fAnaHH3xb1ZKnlJXHkSPokwKyZqD/nH2ByEHgPhRSD4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727783941; c=relaxed/simple;
	bh=tT3uNe+7OwJiWl6dOd3zCd4RwjUbE0KVnThqCE7dP4w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pKcA4mkoAuRWw32/bCVOxjz9bkrNq/obXEL5wGlybxK3n+YTTu5rwWAPCrr1eHKDDDDnUmcEc0IbMZT+1Dcb0L9t9j47VEUGUnSa7T59zSZZ0ykHbDZDGusAxG5fbe1JDXpUu12EbeUdcAKYmOHJBgy1CIzkg0Bg5stqls5kORc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s5dwuVri; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5369f1c7cb8so6647785e87.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 04:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727783936; x=1728388736; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tT3uNe+7OwJiWl6dOd3zCd4RwjUbE0KVnThqCE7dP4w=;
        b=s5dwuVriiLT9PY5kTmOvohth7wSiLhztspRypJI12NVtFer1FkKSP6ire7gzXZW11n
         xTU5RHrRmTl/LUuMhqp9eRaBI1PaDi83b5ozEj/YViQYDNDalZ5r6j64RcHQG2cup1nI
         TmW7h45WfAAKE209ymc8AbB+HYcEJwTeSdDP5Jn5Mu/gCFlh5wtSiV75VMpK5ZHtZB06
         zERlJFCPf/Eva/zCdWvLr3H3P7CdAzGYk/P9gYGXAfEQm+wwqV5l1eWZNCTBraD5z0KO
         YgeOQJZPaUbghMaiAp2BHS+MoB+kj3PxOsMViY63nK41q5RByjtMVSa7aeO0EimH9uaz
         WTQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727783936; x=1728388736;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tT3uNe+7OwJiWl6dOd3zCd4RwjUbE0KVnThqCE7dP4w=;
        b=IyN94KskeaWTtyUCFWI4/12rLiIbKmhPqhOWy11qS3dEGKbCJPXeKqhnyNMdfvmElV
         0M9e8jJz7nNmEiYlRooSeZ61Q2HNIELQMHpzHzHGP4j+iKbc0y5nB+wle87NFKPNSFPf
         acPX/R5BUQm6HYPOs66Ukbn1yLjozDH6P+MRYEsi6k41vaQ7KlaBZag0whbrYL/YTwcb
         UbptzVambKqSdWcNGJWI8Jv4SGuQAqO4aQO9263KzYmbcmaYgfkhidegZz7uwvJp0wKi
         mQIqN/7wpB5Az9uqNBf6ohSaXwN81l/SYudqk4n6xZilFfTmyUOrQLN6wGgQWto1i5l1
         sScw==
X-Forwarded-Encrypted: i=1; AJvYcCWSBeUk4+BsmOmFmA+tBW66gLQde9iCi7A/t/xfZOjYFXP9d7U95p3QYNJ7mcOv/0yQxVYeDRaws0AA@vger.kernel.org
X-Gm-Message-State: AOJu0YzYErBAG7QgENakk1Zo7aXoO4btXMEsI19m0SgoZ12EKJq2Mo8y
	XgRv2gwosym2jHdE5+JAnfB7qfjZB7OUe69y71+UTgAmsuW3pOFJnUwPe3e9ApHbKS+zquv0eNi
	whjdRE3hvMWWj3DbkMFN1Hg4VuqlA0Mpv+DdMLA==
X-Google-Smtp-Source: AGHT+IF1aWSW3u0bVeF7TKArbk/atdczzyQVZ7HJ+FgfyXMEiW9tWm+hcgU74jnyncTE1uZzGRzCTWRoyijV6XUmu6w=
X-Received: by 2002:a05:6512:1054:b0:52c:e05e:849b with SMTP id
 2adb3069b0e04-5389fc63377mr8318002e87.39.1727783936401; Tue, 01 Oct 2024
 04:58:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240917-lan969x-pinctrl-v2-0-ea02cbc56831@microchip.com>
In-Reply-To: <20240917-lan969x-pinctrl-v2-0-ea02cbc56831@microchip.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 1 Oct 2024 13:58:44 +0200
Message-ID: <CACRpkdZWp8W5W0BLzCJ6hHoqMUwCr4oZ7XZS3RbZ4YYNp__h2Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: ocelot: add support for lan969x SoC
To: Daniel Machon <daniel.machon@microchip.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Lars Povlsen <lars.povlsen@microchip.com>, Horatiu Vultur <horatiu.vultur@microchip.com>, 
	Steen Hegelund <Steen.Hegelund@microchip.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 17, 2024 at 2:46=E2=80=AFPM Daniel Machon
<daniel.machon@microchip.com> wrote:

> This series adds support for lan969x SoC pinctrl by reusing the existing
> Ocelot pinctrl driver.
>
> There are 66 General Purpose I/O pins that are individually configurable
> to multiple interfaces. The matrix of available GPIO alternate functions
> is detailed in the pinmuxing table of patch #2.
>
> Patch #1 adds compatible strings for lan969x in the dt-bindings.
> Patch #2 adds support for lan969x SoC pinctrl.
>
> Signed-off-by: Daniel Machon <daniel.machon@microchip.com>

Bindings ACKed and no reaction from other maintainers for two
weeks, so patches applied!

Yours,
Linus Walleij


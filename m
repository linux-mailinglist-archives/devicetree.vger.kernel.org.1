Return-Path: <devicetree+bounces-47139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5B486C4CC
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:19:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17AE328831F
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D69059B44;
	Thu, 29 Feb 2024 09:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LUXV0xe1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCFF5916A
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709198371; cv=none; b=SK4jdhDr+HDqpZlidYzbOKqGykeqDwfNmKpoikCuNKauxhrlxnTlLmgTigsydt+dQWCT2wnuwmp4TQWJ0XsZF+PPuvnxipcBLCr+BaLsaB1TL7VBbJ5E2hLDGpc11A84RSu0Q9EiMox4Hs+G8h20s/xtZA2QYcBt8vc6DF4qJhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709198371; c=relaxed/simple;
	bh=pd7O31OoVM5pjtqR6jWDKsWHxIHkwVJ5MmL+qrRcT54=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JhiIyjvsCBSxX8bHEcLb8wjCaOSQYmM8xF88J6xSh2/RvZLHb4iTFoQJX136CV4uhnZvrydv/NyQs4nlhkhahE5N97IQ4cef67Y8TBetCxc/lbocO9Crig1TlpNM/xb7QM8ysRUiWpIgQ2DA/oEnQsr+mChPJh9HkZiGUXF9jLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LUXV0xe1; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-60821136c5aso5112497b3.1
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709198368; x=1709803168; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pd7O31OoVM5pjtqR6jWDKsWHxIHkwVJ5MmL+qrRcT54=;
        b=LUXV0xe1r1AqE6ly5WOsEdHJZ5LHl1guQvrYPda0LMPjteHes4dgukD4Lrg0hsR9zU
         8p/DUWbg7/1gJyOAjJHFFsnMcj0yuVVn2bSfs73ryf0NeNG8cDQ00rMwXXc/RIUn/ehh
         92bPN8YXcDWaD+Xf9OdNFz/KekpHy63+jDZ4SfRl33E9xMes5AWavUeB0w9otJM0t5o6
         QoxwqopNUk1PtPbXzi0owq6cgphN4d2e7lfTODFU7Q8C4PBzvOubrhNsnyawpiQpHvNn
         /cygLB1TQeAhW79dtQuMSHLCaQXyipZlUjaeFOV5lMFEMf1CDpxW9SBWR6v30kbjD3Rb
         vJrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709198368; x=1709803168;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pd7O31OoVM5pjtqR6jWDKsWHxIHkwVJ5MmL+qrRcT54=;
        b=A9OAYr5I6DQr1kpjMHf+W1W/wRANod6simKZhnMLtkI9QCY/bJ0XvO471rdXlMOyZg
         A1VFFMFleqfCEqktTNE5A0ZhX8HIDYZNjMqDB0NldbQaT3RaL7cjn8mUAdQAvIoWAolj
         lfc4NVQLmxUbGLN6JUsX3VJF3j/OeTyLXOIIMz+wfrWY0/pgbTpOCj4MQ4a227W2U4MJ
         3f/FOOKb3+FEs2QYRIvPFhod1K5M7cvK8y9QNcBVADOI4t7DYBssUGIQb1kP85pVDmRg
         HqVOLjSm4wTYw+dnlR0NVHeYjuj+Eq2txiJ2AOR6zpFXd9tOe66gYhKEUIrSjV+0UhPc
         7tZg==
X-Forwarded-Encrypted: i=1; AJvYcCWBxc93tuod+vQdeyQ8aciYfsLV4fkTkn5YL9UUQsQcpnYdIFGSjss5wR0QPvEkg9pD0XJbOgyQjPHvaAK3g3rg6nsDqLpQHSPcpQ==
X-Gm-Message-State: AOJu0YzE6nunfzh01HwrnBPc6K4oKcwVu7hAOoZso2MHm3UfREM8gVP9
	+isbAj43FAhnZrjpvADx5CfttqeAVJB86gflP8Feb0UyOZmiFewwm96Azo9vLMbOnZ9hR178K2i
	I03Dj4MhvfBSSzuBSD28LOlQNXp/GndZbgnNL7w==
X-Google-Smtp-Source: AGHT+IGUUUHyg9k4vKfAIsPW9cd1IXQd9qIZJFAmJvzhRw0WTFVStIY4EDLh0PcIjB7t9aRLQC/qFzrG3sS68keJZuk=
X-Received: by 2002:a05:6902:2193:b0:dc7:4b0a:589 with SMTP id
 dl19-20020a056902219300b00dc74b0a0589mr1984253ybb.55.1709198367880; Thu, 29
 Feb 2024 01:19:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-3-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-3-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:19:16 +0100
Message-ID: <CACRpkdYVNCL29rwjfsepSyB9vHmLfTcP22yagM8B0UGLSXpYtQ@mail.gmail.com>
Subject: Re: [PATCH v2 03/30] dt-bindings: gpio: nomadik: add
 mobileye,eyeq5-gpio compatible
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

> This GPIO controller is used on the Mobileye EyeQ5 SoC. Add its
> compatible to the dt-bindings. One difference is that the block as
> integrated on EyeQ5 does not support sleep-mode.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij


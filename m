Return-Path: <devicetree+bounces-132259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F24A9F64C8
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:24:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 12C0416399A
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6681919D087;
	Wed, 18 Dec 2024 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GWnEBthz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 942AF19CC0E
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 11:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734521033; cv=none; b=gUF5+9m+uyH5RMp2hHnIbdGmQUi+PKXQuec+VXQXEnCjtGEjGYsGWLjs5Z3cQKzVxYOZ4nps8kmH54Ta5iYiKFzDCeLUft+J/7H9ESy68lrhafDl61CTMV1LczpuL7MkXa2qYjCYXXiWhSRWJCNd3mR3NCWmcLfiBT/qEn78zdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734521033; c=relaxed/simple;
	bh=tym2AV8qbCJIfj+aXCTqvrXH+7m8n9qXgoHbX1jTriA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hrx5E9g00l05Iv2026542gkGvLbO+Xrv/W9GNZwmhy8Pc3o91bg/DbeA9LwmWpw+j41H/oN8KNmTX2j28ZIY0LWm2xSiPbRG1LFOwVHV2RfXTM70DFVuFiM/6oz/rDaqW0xHzBjWYPUXZy7YLsDZy1u9FIbWFxhTB7tIkhkGxlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GWnEBthz; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-5f31d3b4f8cso1428932eaf.2
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 03:23:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734521029; x=1735125829; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wGDd3GsS7X/LEUACNFlLUz77SGjMRwi8NjI74LtUWbY=;
        b=GWnEBthzO6ahjiBjpMQ3w1OiPV9K8GdZp4c3D2dBENnPcQADM/BjW+fxQIXugQc84z
         lBlaPmklnr5N73kOHQuuhj2qcDQHYC5D8GGWA3hy7ZRKmTHKRzf8vZKIPZn+7c5LybXZ
         2CKOCuTncfy89jG+PVbGF6RIM0POYPWxarb6vlP7VmFw6JfLjDNoiILn6GSqTCOd8UXD
         3tPNhhrjorlWu9WkIJgOFKTTIWztPfhjeDUZ08QjSC33XRCUl+b2N+SxXcwvNj3l4k/B
         RitDK4THfvzERUvvmd2CAXSksd57UkdTlckufCg/frWeDfvTm8+lXNK88FEe1aGKGrP/
         /J5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734521029; x=1735125829;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wGDd3GsS7X/LEUACNFlLUz77SGjMRwi8NjI74LtUWbY=;
        b=DrfckIxiSpVnKfS+fkwB7555s3EBTDM8P+uisFUmdc58VFq02LrA8svDFHCtbXawQm
         Vh1C8BytdlAQIt1ONKzY/1Uo1gcRnlXxQhWf0wmkXTkReBzScem10Pa+IAfjhB6ngl/q
         5FfCt9bLJJ+G5erk1iDBRsxxKJ465B3zDFrXoOQ+es+3/T7pL6r6wGB+5TQv7FUHWJ19
         ZmHNaoZoJ5QNCmVYk9rK8KiDmjUw5Q3iZXWJUHd0vAfE5bg5pyFiCtHCqWtVF3i4G/RS
         7frNm7rMs9i1ooOI02WVsdTmPW1TA1fx8Uj3HFmFdyiDRyBxmzRXe6TYXOF+J9VvgEjg
         +f7A==
X-Forwarded-Encrypted: i=1; AJvYcCVxHkPQ6MEsVVCX8PoGBY/4XkIwCdXzKDT9x/0MR0wfMio5IwLyuHLMVZQGfyPM7nb7OHmxyyc5kES0@vger.kernel.org
X-Gm-Message-State: AOJu0YxUiKrp02WYZHiwNjbPTtLsQDT8Pdt1rGKKnXPbHZZl63MSUv89
	bebzuPY0PEM2xUoeX9B8oPWp2HpJg/tgtODz7wJK4oP3gsjD5ootTFE8p8NwgV10HNLwVbN70wc
	BjNu4wTv06fitquy34ggHcgkAK/dE1TctcWureQ==
X-Gm-Gg: ASbGncutTCo6wbPr64FFrcVYcfseEvZMXqf0YuthNtGKDmsy0nCimL71kOIy/0t5SS+
	sgZd5dbyLBplv4xDqLfmdrXbyOgrQsyEi/1KVv0Q=
X-Google-Smtp-Source: AGHT+IE0SxJTQLNEo9P1nttPQbjieAU87Qbz/OG3Tx1qyRFpKK7F0I23DhhsjQFVOLFLQOC0Fg1O4vAzd0y7cFEiLlo=
X-Received: by 2002:a05:6870:fe95:b0:29e:51ca:68b4 with SMTP id
 586e51a60fabf-2a7b3145c1bmr1357208fac.19.1734521029643; Wed, 18 Dec 2024
 03:23:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241217-acpm-v4-upstream-mbox-v5-0-cd1d3951fe84@linaro.org>
 <20241217-acpm-v4-upstream-mbox-v5-1-cd1d3951fe84@linaro.org> <wlvvuq2ldv4funye2ylnccq7soyrqkqggg36oimnvmhxbbjvnl@yyy4y5nyruzn>
In-Reply-To: <wlvvuq2ldv4funye2ylnccq7soyrqkqggg36oimnvmhxbbjvnl@yyy4y5nyruzn>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 18 Dec 2024 11:23:38 +0000
Message-ID: <CADrjBPq4mTsvCivBJPmADP3pfUORBV8hGeP5GrTg9YxASJLHXg@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: mailbox: add google,gs101-mbox
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, andre.draszik@linaro.org, 
	kernel-team@android.com, willmcvicker@google.com, daniel.lezcano@linaro.org, 
	vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"

Hi,

On Wed, 18 Dec 2024 at 09:29, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Tue, Dec 17, 2024 at 09:40:20AM +0000, Tudor Ambarus wrote:
> > +description: |
> > +  The samsung exynos mailbox controller has 16 flag bits for hardware interrupt
>
> If there is going to be any new posting:
>
> The Samsung Exynos mailbox controller, used on Google GS101 SoC, ....
>
> > +  generation and a shared register for passing mailbox messages. When the
> > +  controller is used by the ACPM protocol the shared register is ignored and
> > +  the mailbox controller acts as a doorbell. The controller just raises the
> > +  interrupt to the firmware after the ACPM protocol has written the message to
> > +  SRAM.
> > +
> > +properties:
> > +  compatible:
> > +    const: google,gs101-mbox
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    items:
> > +      - const: pclk
> > +
> > +  interrupts:
> > +    description: IRQ line for the RX mailbox.
> > +    maxItems: 1
> > +
> > +  '#mbox-cells':
> > +    description: |
> > +      <&phandle type channel>
> > +      phandle : label name of controller.
> > +      type    : channel type, doorbell or data-transfer.
> > +      channel : channel number.
> > +
> > +      Here is how a client can reference them:
> > +      mboxes = <&ap2apm_mailbox DOORBELL 2>;
> > +      mboxes = <&ap2apm_mailbox DATA 3>;
>
> This ordering assumes there is channel "2" in doorbel and in data, so
> two times "2" and of course the same for all others. If this is
> configuration of one channel, so "2" is either doorbell or data, then
> type should be the last.

My understanding was each channel is either configured for doorbell or
data, but Tudor can confirm. With Krzysztof's feedback addressed:

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

regards,

Peter.


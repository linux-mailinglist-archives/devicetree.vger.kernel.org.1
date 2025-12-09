Return-Path: <devicetree+bounces-245382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EACCAFDEF
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 13:09:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4846E30194D8
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 12:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 589A5320A33;
	Tue,  9 Dec 2025 12:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L+1QO4MW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C200306B14
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 12:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765282165; cv=none; b=BV0Io2Y06MGq9tyjoXlCXB+BPgwGMAAMnGf/CrM8HFQ3Vmc3QRaffJIB2g96zaDmAHvJxS72uacA6hQmP3J741B8evI/u5o1lW/pogdkaSLKH7zBQsSK6ixTYTLqgWFyepgxK36MH7lKfC7HN5n5HEdX00zUUECsWfIBqz93A4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765282165; c=relaxed/simple;
	bh=yCYVKKoXCSoQtguNvJbzEOrNTHKAVLyyZ77IrMgfBjA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QXcLyhUDCgA/cELqe9lb4ViRGk1/o9cTi71A9TnASoU/VrcDdlqyl/G+TUh5ffJASyC4Y87fdmWe6uYg7aZ/X9vFjcDPYZE1Ff8ecF40wzGYSXO+wbXVVwIefNv/qql04aLZ5hI6KsRRFjKGz2zNssEgo+fMzO9p6vgIQvv+Uo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L+1QO4MW; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-78c2e5745bdso34775417b3.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 04:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765282162; x=1765886962; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BzmLw97ilOLn2bX7GqaP6PaM9f0k2YjRWtrW6v3bqsY=;
        b=L+1QO4MWpFJ7MqAH/Tx93IwelJOKMdhNQec5V8gYrLCRSMp88O0gw3QhKuJSpBqqnd
         iOX5N8QqzePnpcWr/AmS6De1R0QD+A9wKlzU3PNE9j8L+dqmeSL5VL4Y4vOD6PqZlNPQ
         wqRedtQZl/HXRP9woakUMD8TDZvt8kTiWoXYOUvztmt9Cr48fSIedkAOnKoI3Kn6F5Jg
         xGe0Vh1bHv9FQ1fEFJrFscXXW67hLwgZFSNKuuI2AptNVf7Fo/93Cl2nweAmT571N+lK
         Mlaoan8fjYkrIgyl3McVIvqxx55ibGmn3g9m/+vSBR9eNUcxhIbeNTDW0vua1uwlIbDn
         Sg5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765282162; x=1765886962;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BzmLw97ilOLn2bX7GqaP6PaM9f0k2YjRWtrW6v3bqsY=;
        b=S2rd/o7c+9narJFFh0AH3SZTGkJuVxw8BefzV8yqd0pHg1U7ccl2WegfJM/hnb91ba
         YYXa6PNT9JbBeEjYC/pMED7qWEms0cXlX9PUnslXRX0TVrxtIkJVkXP7bJqJmmRM7uVq
         kcQ6Mghcvp323Qxdqsb4T2y/wFIGXOhnFbbw7WRW7+8GJ+FpcAW3Fi9HNAxgTiKcIxhk
         ydBshIT2RL9qQ3JbbtJG8vinicdU955IQLiM5nbalqAjrT4tvHHV1GPTfZtGXFHimCwt
         PPjl9XeMWFRogLJWmpTV+znnVuPQrrO5FCyOtmEqkqRwIMUk0RSCvcuX1kxDrqqh5uxV
         a4Hw==
X-Forwarded-Encrypted: i=1; AJvYcCXP6yeodaE1qDOAW8grrlclvArLjDOvsRZZtWoaPyggVTkw3P5Xkjdt4KXaKuRBGNcoiQ8TMmcHnUta@vger.kernel.org
X-Gm-Message-State: AOJu0YzVoMVIjNLGLz0+pxSy8XwCXGfA7TgVFw6aDnsHl0Tz0c4fWoIP
	Dzcs5C/hYlhri4xPXaUVcBHpIv9lzHH0NnLQXfeWeoTJHULPGBiMyUaUvP37/bA3won62ctgMv2
	Fvdt0oG2SOF3s98wywdWsgJBeZMdMLeZMKpm1llM4xw==
X-Gm-Gg: AY/fxX4BKgyBUnJA3Wp/ag4r0PjfmvE527aU0AWR+m+8mnqMoeqM3Q2v7Ybg5Z+wpsK
	nQVZFRS82t4P+ZmNFpPtKwZcWJN1qoBFu9fCuGx+pEEmALg9EjjUFkG2VBEwgOHtpkofFetpc1+
	t2JywPcOqcr4jTJ6/y0blP45OqEsvWDa1BWDmyFNfmfw0sZAPruCC/1Uob6hcPqUQZhe5HRnxrj
	17Hvw5+dzMtqg7l+YLKqrg1VYRj4OncsdaH7hDkC7hMMRURAjaRS9Kbn+91LLhdMUf8Pr8D
X-Google-Smtp-Source: AGHT+IHJMvrdiHL0dzxlye43tWxemqNsj3XKbdM5WF7g7hOQydSkyf3phIxwFJPbN9jPlEGazi0aDHDzYf+fYMSmjhQ=
X-Received: by 2002:a05:690c:7306:b0:787:f2c3:7164 with SMTP id
 00721157ae682-78c339d1c77mr192573057b3.0.1765282162456; Tue, 09 Dec 2025
 04:09:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201-rz-sdio-mux-v2-0-bcb581b88dd7@solid-run.com> <20251201-rz-sdio-mux-v2-1-bcb581b88dd7@solid-run.com>
In-Reply-To: <20251201-rz-sdio-mux-v2-1-bcb581b88dd7@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 9 Dec 2025 13:08:46 +0100
X-Gm-Features: AQt7F2r1lyAuAvPl8XAr0oXpaCyrxw65vCWYOlOZTELJxwXwUotYjVniauuZrmM
Message-ID: <CAPDyKFrD2x0U49w2Fpzrc98wKXtyyN-B1P69OMJk27+0Yzsg8Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: renesas,sdhi: Add mux-states property
To: Josua Mayer <josua@solid-run.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, Yazan Shhady <yazan.shhady@solid-run.com>, 
	Jon Nettleton <jon@solid-run.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 1 Dec 2025 at 13:31, Josua Mayer <josua@solid-run.com> wrote:
>
> Add mux controller support for when sdio lines are muxed between a host
> and multiple cards.

We have the SD, SDIO, (e)MMC interfaces with their corresponding pins.
Using "sdio lines" becomes confusing as it kind of indicates this is
for "SDIO" only.

>
> There are several devices supporting a choice of eMMC or SD on a single
> board by both dip switch and gpio, e.g. Renesas RZ/G2L SMARC SoM and
> SolidRun RZ/G2L SoM.
>
> In-tree dts for the Renesas boards currently rely on preprocessor macros
> to hog gpios and define the card.
>
> By adding mux-states property to sdio controller description, boards can

Again, please don't use "sdio" here.

> correctly describe the mux that already exists in hardware - and drivers
> can coordinate between mux selection and probing for cards.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
>  Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> index c754ea71f51f7..754ccb1c30efb 100644
> --- a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> +++ b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> @@ -106,6 +106,11 @@ properties:
>    iommus:
>      maxItems: 1
>
> +  mux-states:
> +    description:
> +      mux controller node to route the SDIO signals from SoC to cards.

I suggest we change from "SDIO" to "SD/SDIO/eMMC".

> +    maxItems: 1
> +
>    power-domains:
>      maxItems: 1
>
> @@ -275,6 +280,7 @@ examples:
>          max-frequency = <195000000>;
>          power-domains = <&sysc R8A7790_PD_ALWAYS_ON>;
>          resets = <&cpg 314>;
> +        mux-states = <&mux 0>;
>      };
>
>      sdhi1: mmc@ee120000 {
>
> --
> 2.51.0
>
>

Kind regards
Uffe


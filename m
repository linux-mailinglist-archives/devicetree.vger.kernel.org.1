Return-Path: <devicetree+bounces-74182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 441AF9023F9
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 16:21:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 388C9B218B4
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 14:21:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAA7B82D9F;
	Mon, 10 Jun 2024 14:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O+KSrTCa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D3E12BE91
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 14:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718029279; cv=none; b=nwLxyGBGeXEK8JcelE8dATKQMroq+5XogpwI73BTT3cED8mvmJKaHv1412ivdXWPBIUmpGtvwKIK8BkiLgu4fHatDmZMtHwz6k33PvqKldbbP9/oM1fTPzXC7eEWw9XQvlIBCAGneHp5xN5Gx9ZAz9RwdgN5MLzeiIj9OcWmCEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718029279; c=relaxed/simple;
	bh=AGMqVFffoxlZnc4UMQ2rh9ctrwKxHdLKuKeIt2AGAnU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dOBr9CqvxfLt20RRpdv3DliiUUdjSCWC7MooAPqmjKPmulZuz2NV/nhb95GTBNe+ILEqId5hpPUviKPI+j+NYVFGL5waN4QiPkLwol0FmmyLQ94KeS6NFRThMnBAF4abqnP1fUEgkukP/2AUMWqvYo52LRgeMMds5r978hPA8/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O+KSrTCa; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dfb12fe6f96so1595244276.1
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 07:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718029276; x=1718634076; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=609nhEks7Zh1KnZUal4usjWqxEdaNAgYUODDdUetHO8=;
        b=O+KSrTCaoTXxEKNfTQgOWGIeJGNoipf2C/xrcpNje3t4B7Qc85a2Cb7a+5+RVFW3Yw
         GDS1hxlcoSMoG8fUEeIzGfnFBbME6cHyat0pGfTH4/3HyKh1K5uVGI8DXog0zY3U1NIT
         qmwtBwf4UDYTaK5yQFkux3csnJu92JSZS6cDMqJ5YMR0MMvu3vUHftPJ/XASWuRHw5t9
         1HRVAUANnV/hgLTQsGTLgZaCKK9ZguawojWumBqDmJeW6V7rdPEzxiiJjvpr/ztWyM1B
         Db3UZbOeF4TywnaNSYcOTEd76S6GQ9sNIAXPjAqmV6rV+chG3cYyqNZ/RDs6N0GFcQL8
         FkUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718029276; x=1718634076;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=609nhEks7Zh1KnZUal4usjWqxEdaNAgYUODDdUetHO8=;
        b=EQVWhjUa4bv7/xNf+h0b5AdYhvKThCv5Z1qkomCCMGv7nAwicKAAhk0afGHoCTi8B+
         h4uOKstvmKyqy3/f56ktHS9XYLiwWj6ScUJPU2VLKC2vtGAmnVYichY/UUd/V9icZFSH
         01R/o4pTioKwCkCXvL7aNt13J+QIKOADZcP29bg5ZQUU8Kg7YtUm3cyA0+AoxOADzg8i
         wJIEvRBDiXlholHx8x2xts2mQ4GwrY2zDyNcvsNg6HOmBOcd5m/dELEg12d5u8Om5gOq
         Zj7YZg6W/k5Y8TVzjYLXo2laKQC/SwUgGEVjTaTVkMRmp8eSY1+fuP58ko45wXYwsH3+
         LCeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOnMn/M+E75MHDP1x5ARjb0vW84NwpV5QCy9igwr7vFEffKibTTAfUesMG7Q+m8j6cWMTG3fSuiIaXfkeWQ72GU6BYuXU8x3bL4Q==
X-Gm-Message-State: AOJu0YxRoVeVe79InMnScDGFUu+zQNLrp3UKLDh4c+EEgA3zQorWfIzj
	tRxol+SaLMp+u7EFq/rlxqh9Iofjc2xaRqhG5rmBbbfDHJdKFASoSnQsJdHmAAk4DO6IUavKWQW
	BB70OjZ00aHZGDYSe9glKUeO6m/8QIDwalUubhA==
X-Google-Smtp-Source: AGHT+IHoLwnHudRkBd9FlzoLDTTCeU9TkBRvSaQLs0M46ytBLEBxCuzZWLLsA/eXcLgbGrm/YTtoVzzDIcGtxZj8s10=
X-Received: by 2002:a25:c744:0:b0:df7:8fdd:1ca9 with SMTP id
 3f1490d57ef6-dfaf65f730dmr9276763276.1.1718029276379; Mon, 10 Jun 2024
 07:21:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605-topic-amlogic-upstream-bindings-fixes-power-domains-mmc-v1-1-4acbb8cc2626@linaro.org>
In-Reply-To: <20240605-topic-amlogic-upstream-bindings-fixes-power-domains-mmc-v1-1-4acbb8cc2626@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 10 Jun 2024 16:20:40 +0200
Message-ID: <CAPDyKFrNGzNqTfsYF6bwbZy8kJtRTcBJ3Xr99HFumtOGZOpxtw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: meson-gx: add optional power-domains
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 5 Jun 2024 at 11:34, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On newer SoCs, the MMC controller can require a power-domain to operate,
> add it as optional.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Applied for next, thanks!

Kind regards
Uffe

> ---
>  Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> index bc403ae9e5d9..57646575a13f 100644
> --- a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> @@ -51,6 +51,9 @@ properties:
>        set when controller's internal DMA engine cannot access the DRAM memory,
>        like on the G12A dedicated SDIO controller.
>
> +  power-domains:
> +    maxItems: 1
> +
>  required:
>    - compatible
>    - reg
>
> ---
> base-commit: c3f38fa61af77b49866b006939479069cd451173
> change-id: 20240605-topic-amlogic-upstream-bindings-fixes-power-domains-mmc-a94d681d2e69
>
> Best regards,
> --
> Neil Armstrong <neil.armstrong@linaro.org>
>


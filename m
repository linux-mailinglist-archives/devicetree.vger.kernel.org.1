Return-Path: <devicetree+bounces-35745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F281E83E9EC
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 03:42:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7DB81B23D01
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 02:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76E03B65D;
	Sat, 27 Jan 2024 02:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bd6hJAUn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9D73BA2B
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 02:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706323367; cv=none; b=XzGsjAywvTy/HhFUECSXppKUzwbAbSnxhD6Woh+kuhfyZL+EfDCgj12BmEIX2mYlPKZnPJgOjxvuuneLsL/gdX4eGji94mrxogjokGkVpytmLPK+6tmEapTTnDtoaTjG0uSKdH6oW50pArNR/9E9LqyjHNSydGdpgPyC67Vsvek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706323367; c=relaxed/simple;
	bh=TnRkg9YGAMzV36PzYApm/o0Nz4O0TWszbHDaIw2yvJ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TqRxivoKBUOMpYSC7PR5SlgekjqLzCiqcKoLlz3riaDa0qliuTbojZA3UPHyEIFFkjzen8RxZfOuKrGR+UIKy2XSO+pUMrBE+huzHQr+cweYbenKFpc10xqgjSXBYT70+ZO43Oa6WiP8zCMV9LFyz1dNEFQ1ubUAqaLTHFRrnvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bd6hJAUn; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-602c91a76b1so11526107b3.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 18:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706323364; x=1706928164; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zf45TsL/1FBpc+V5HKmqZ7dALipphhxtwIfGvzGgYB0=;
        b=bd6hJAUnRGvIKdCIzdDvoeg+h+kfjaOTHi+ig6VAcMMQzb7J8LDoFsnwqVhw/Hw6KI
         MiSodAVPB486QpCup7R0SJgbtwb9XHC8Jm0ceKyiT9zb7EhDOhpHSSZNV0MC0/iclIMQ
         Xe9tr3SXTIq9c8Y+YiSAE2IeIVcR1tmE3Nz++Tq7Tte3GbTQXGuyNhKwIIeUu3BM1Vx8
         n3zSBGnSi0ajp6T2aRZJ90AQDIycUDfyrgu3VUI9hSJXrJIS9eotwXWXkucg9ghF0+ij
         fGaCuI85y35BLj85jwza7eEJvYtmRyl73mv1k4QoFpYlxzoLdzV6C3nQLOa9JT2M8LET
         TrIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706323364; x=1706928164;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zf45TsL/1FBpc+V5HKmqZ7dALipphhxtwIfGvzGgYB0=;
        b=PF1a1qBziFq4cdAmFTLnGMd0Htk9ncWC/h6Dv0pPsdHGneO1sG76XQX3WTZheVMnLF
         pfoXV9ymo/xk9qNQDaCBKtwomP1wqPEXwkHRLvkJeWnRM+kBHOWMo8q1ht7NsNSDgZqX
         YC/aY+pxIh1eQQyLA7Hjl07cdmcbarACJ9UWlphykfZawkIEKzT90XO5Dvk7YpE6AtFB
         f1O2ZKXm6dqb6WsVkMS6qx1kFJiVH2WwhpUlIC8mKSWrCLKoVKvq8XOpRcsKOmO/M9nj
         z9TOW3Hvd7JZo/ATa+lcJI2HPdZa6Cwp0Ud7kXJh/w27FRSdUN8edZO8ksmKZb7OOnaH
         hmEw==
X-Gm-Message-State: AOJu0YyDRRzUKiFJd6ns96BUMDxA2MKIRuixwj8mlr1nHCsxzuSGQhvp
	tQvkBKq/P2qwgG0rmhNzQvntgsF+Mw9MQehNk1Ue9yx2vC+hN30ssUssgB7vJ5wkXwIb2ydJT37
	VXlQtarXEB3opngDufLH9EPnS/jY9LMyRN1qoWQ==
X-Google-Smtp-Source: AGHT+IHRZPdhgUs/BZGvmVBOvQRD+JgpezMtVZsrlzFangPEP9tjCbmnm9ccToRn0csAj1ZBk6Dz9HZ3cZhVHRwsFEo=
X-Received: by 2002:a81:7e08:0:b0:5f6:eb69:5e1e with SMTP id
 o8-20020a817e08000000b005f6eb695e1emr932145ywn.57.1706323364675; Fri, 26 Jan
 2024 18:42:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127001926.495769-1-andre.draszik@linaro.org> <20240127001926.495769-2-andre.draszik@linaro.org>
In-Reply-To: <20240127001926.495769-2-andre.draszik@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 26 Jan 2024 20:42:32 -0600
Message-ID: <CAPLW+4mcTHyoX85pTCEkNf5ZonJm62NLSg7Q+wBKPrr1QV7hbQ@mail.gmail.com>
Subject: Re: [PATCH 1/9] clk: samsung: gs-101: drop extra empty line
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, willmcvicker@google.com, alim.akhtar@samsung.com, 
	s.nawrocki@samsung.com, tomasz.figa@gmail.com, cw00.choi@samsung.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 26, 2024 at 6:19=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> There is an extra empty line here which doesn't exist in any of the
> other cmu code blocks in this file.
>
> Drop it to align cmu_top with the rest of the file.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/clk/samsung/clk-gs101.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs=
101.c
> index 4a0520e825b6..27debbafdce4 100644
> --- a/drivers/clk/samsung/clk-gs101.c
> +++ b/drivers/clk/samsung/clk-gs101.c
> @@ -25,7 +25,6 @@
>  /* ---- CMU_TOP --------------------------------------------------------=
----- */
>
>  /* Register Offset definitions for CMU_TOP (0x1e080000) */
> -
>  #define PLL_LOCKTIME_PLL_SHARED0                       0x0000
>  #define PLL_LOCKTIME_PLL_SHARED1                       0x0004
>  #define PLL_LOCKTIME_PLL_SHARED2                       0x0008
> --
> 2.43.0.429.g432eaa2c6b-goog
>


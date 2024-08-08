Return-Path: <devicetree+bounces-92226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A53494C4D9
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 20:47:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56B1C281A66
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 18:47:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F052513D2A9;
	Thu,  8 Aug 2024 18:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bszYXO0E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624B54A1E
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 18:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723142872; cv=none; b=jjkXBDgYR+DqfvUFtJlR69c3JD8S+y7T5krqD6TNCdSCYvw0OYOAdzFWmXcb/ytappRp3uyQ3ai0w3/y6/aAEvtH8rNw3x9TlDrgma06MTHIUr9q9WQXUGq9OuYHKO9VBm+PkIYu31iplD63WCUhfmoeOwXbCKufOsQ57MdWSc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723142872; c=relaxed/simple;
	bh=DxAhgJ/3bbQzplbG8zkMxDwOCad591X4kdiUjx5+Qxg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I3tqWzIsgfxsNhGpSNaAysMvGbjeCwQWW4Lm5vXVtHNEjiwf49TgEbZigGGOvyXiCUksZJ/H7qpWS6WweXz7dsZlBtyv5Rq5JbUVbs+k1rUyuoIpSGMkz9pXDkwSIg62MuPvfgwz2RPGrN4qOe84sbmantE916sZs/XyfsTuYTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bszYXO0E; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-264a12e05b9so844330fac.1
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 11:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1723142870; x=1723747670; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Aayk2Lttmn0wD83xXMa7bzpsBk9VzLksOrAAh6yDi/8=;
        b=bszYXO0E3sr9l1xf7+4I3OEHGnjeA560DeQCj7H/mDNGx2Jv/W3TOpk6LRoBedlBTA
         2pPDMk8CG/cNwgHW99sis4xXhkjr/Qwn9qC0uM31qHzC6kKN23bu9sQFQ/5QKh9M3dRK
         eszydkSpAWgKhoKDAqMNF0c0d14PubeeKODXo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723142870; x=1723747670;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Aayk2Lttmn0wD83xXMa7bzpsBk9VzLksOrAAh6yDi/8=;
        b=qFMTBsrKw88DNFqtJIX4QLKuYOx3ht4LVgWYUgW2O0SloYFWb9KBuubsPlpwdaNKCu
         x05xsh7Rc6rDsmlicUkZC56R7aD+jHrJeCxT/7uquS18JbW+VmeF/TmjbiRGB9QGS3O1
         GbdeD+pEScHwviquk7D5gZtZDQWey46HieQGHRrzk1RHWS1VHbBCYnIQFUQvfP7CUCeq
         iWD0Uk6yX73sPIkJLXHpTPI3+A5AVkr3ElGGj6lCR/2n7t/mHDx63327orTuBPyxgdoW
         DaEoNXriEjXkoOr1X7MNAqygbeMbM4hrFfh6xLnoLDo4OcaYQ1ZGBNyYw/BkSDS5ZbEF
         hjRg==
X-Forwarded-Encrypted: i=1; AJvYcCV3SldFFJsTSsbw7Pbq/pnfBqgKcyo6NdUmjABhnlupILsi6BpfB8GUcDu84KMeYUB2FOzJQZC6Kvj7bvMQE1KyDPRRWFtZvudLpw==
X-Gm-Message-State: AOJu0YyOuTX2akoAnxpunFj5qLTD72hFYl5uYcYU4ChZV4BVRa4FXve3
	HjgBIH1iLMA/R6qLAxt92MNtbuoWJSFYWxeBDtr8yrM4yfFuXpKQmD9O1hqIi65FRNQxGZEAVb+
	76PPi6gszPSLJhJQfa4z9malciUTP498618/u8//XYUt6cY2qnA==
X-Google-Smtp-Source: AGHT+IGcE9MOFmsH0Ui6LQ5gDODf1sP6ILA52lvJYyRoqrcSMR7DavF+iykCGMACE/oztRceFKqzbwHJtLPCcEEwgLw=
X-Received: by 2002:a05:6870:391f:b0:25e:de4:9621 with SMTP id
 586e51a60fabf-2692b69db3bmr3285147fac.24.1723142870500; Thu, 08 Aug 2024
 11:47:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240808114407.1.I099e8e9e36407a0785d846b953031d40ea71e559@changeid>
In-Reply-To: <20240808114407.1.I099e8e9e36407a0785d846b953031d40ea71e559@changeid>
From: Rob Clark <robdclark@chromium.org>
Date: Thu, 8 Aug 2024 11:47:39 -0700
Message-ID: <CAJs_Fx7GN1_2xAM0Qg8oezQ2Foxy2smOXb3zMhNiJxCDMPUNug@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: panel: samsung,atna45dc02: Fix indentation
To: Douglas Anderson <dianders@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 8, 2024 at 11:44=E2=80=AFAM Douglas Anderson <dianders@chromium=
.org> wrote:
>
> The yaml had indentation errors:
>   ./Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.ya=
ml:21:9:
>   [warning] wrong indentation: expected 10 but found 8 (indentation)
>   ./Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.ya=
ml:23:11:
>   [warning] wrong indentation: expected 12 but found 10 (indentation)
>
> Fix them.
>
> Reported-by: Rob Herring <robh@kernel.org>
> Closes: https://lore.kernel.org/r/CAL_JsqLRTgQRPcfXy4G9hLoHMd-Uax4_C90BV_=
OZn4mK+-82kw@mail.gmail.com
> Fixes: 1c4a057d01f4 ("dt-bindings: display: panel: samsung,atna45dc02: Do=
cument ATNA45DC02")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Rob Clark <robdclark@gmail.com>
Thanked-by: Rob Clark <robdclark@gmail.com>

BR,
-R

> ---
>
>  .../bindings/display/panel/samsung,atna33xc20.yaml   | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/panel/samsung,atna=
33xc20.yaml b/Documentation/devicetree/bindings/display/panel/samsung,atna3=
3xc20.yaml
> index 87c601bcf20a..032f783eefc4 100644
> --- a/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.=
yaml
> +++ b/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.=
yaml
> @@ -18,12 +18,12 @@ properties:
>        # Samsung 13.3" FHD (1920x1080 pixels) eDP AMOLED panel
>        - const: samsung,atna33xc20
>        - items:
> -        - enum:
> -          # Samsung 14.5" WQXGA+ (2880x1800 pixels) eDP AMOLED panel
> -          - samsung,atna45af01
> -          # Samsung 14.5" 3K (2944x1840 pixels) eDP AMOLED panel
> -          - samsung,atna45dc02
> -        - const: samsung,atna33xc20
> +          - enum:
> +              # Samsung 14.5" WQXGA+ (2880x1800 pixels) eDP AMOLED panel
> +              - samsung,atna45af01
> +              # Samsung 14.5" 3K (2944x1840 pixels) eDP AMOLED panel
> +              - samsung,atna45dc02
> +          - const: samsung,atna33xc20
>
>    enable-gpios: true
>    port: true
> --
> 2.46.0.76.ge559c4bf1a-goog
>


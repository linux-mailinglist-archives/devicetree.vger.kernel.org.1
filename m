Return-Path: <devicetree+bounces-57252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6594E89CBF6
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 20:49:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A431B2A816
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 18:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8FEE144317;
	Mon,  8 Apr 2024 18:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3DtYl5ac"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB3C1420D8
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 18:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712602138; cv=none; b=IVpkS7IrqTW1mCNokZeAjiRtDlf99o5Jq999d54ZhlHc6s2SBtg8gpCKfmMgXOOq1ypBOrhrZBmDzWms3fJ4SXZub4Quv0Q07jGXNLaJeo4+Ge/hDP6oO1nUrCTk4qyxYbak1/kDRSHllsGKzbUO2dvEPHUApqVkmSMG8pI3VY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712602138; c=relaxed/simple;
	bh=qtrTZPVJnDWvjZ/bNpqt1kAPUsC/tYujbJUF4w+jUBw=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=Qdgektd+Y2im9/zoU+9X7KRfYmII4NGwli5p747FOnuRvMggKwUyvZQmFpa1zN7EbgKmoHv7mXzveIFMER0e5RMd3xYO4D4JWU4480Ei0ZUoY6wgd1yDKs9V6JpkxQUBhGY2wlToqdlSBs8Z88rdP/frruAE4jqaadBCCHiDHWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3DtYl5ac; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-343e096965bso2427874f8f.3
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 11:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712602135; x=1713206935; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=/5O9U718NHGvhBsjamAS1sHo9zrNE6S5TEc1aVEiLaU=;
        b=3DtYl5ac1yoh7J8kHGQOF0ZM90DGc6yvJynBnaGtrxL7yOaYG+02GXrgDj37MxKpFA
         ev/FSvvixxDjpxczZXNitqWSgCdBtYj6q4TwDDRfxO990a6WW0t53s05ZL24ZH7nEJ4u
         P/2+7KlMXUyO6lQsqG7i9wfksxCeEDkyEauTNAzHa9GUBrAFKeKu6ofUkP9ShE6B+xjP
         l4hNhheAAXTN3gdRD8jywiRw1uORSa/yPciFQwU3KzJmPxdthb6ey0BMVANECf7VWiXw
         0kIhWcgxz9dbF0jG5xdtnfQCtwyxURX5afOBtfd+XYBw8moctxc3r8kTh/lM3xq0DqjH
         w7aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712602135; x=1713206935;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/5O9U718NHGvhBsjamAS1sHo9zrNE6S5TEc1aVEiLaU=;
        b=Ih5tG+DCo1PdPgi+K9ah405+60fB6FdDU2ao8zFec3pLaILo8m8GH+nFdnzjqI8DUh
         yPZ1HyYxstWv+584bA/hDcLjoQhdlRuKw1XJWpbncZsozPkc45c0lAponmIMx4vXJsiO
         hJrTW1AjOD+xNpEJZnvbfHcAUhejlkjpl1fz8h0pVoYD5xdxv4AjXHPCjUVisGBi6aJF
         0XA9QqQk36udHBRyRdKLfaAk55VdhmA+7eSZYN06qcX0hQyn/37oqy6nLxwbhZPCePpS
         di4ZBp6XpnRtUaHPeQmfZCkFRFQeVN3Ul1tXY2WbK/Dj365x1RjpRYLArlW6yKGQ8no1
         r3/w==
X-Forwarded-Encrypted: i=1; AJvYcCWLYseKHxpMZYYYNF+VycYMDzek/X2+cUIJbp+u8NOfRqkgI2J1s7dbevGX4uusv+y/ETUqOpnI8rro3KGU37gUufUesfLdTGqvCQ==
X-Gm-Message-State: AOJu0YzoPzE3Pz/B98M7PbFTY52n7vy4NzPiLmRo1vq4s9qlBkhAVIE+
	Ou0NdjykcD7HA7gBDvEAGVNtdA/8wyRPz9OyXGmRZuPJUiGt+0ENe/MlNvAVtcU=
X-Google-Smtp-Source: AGHT+IG3Lg7mm8hPe5LwKDEb0DtuBWPIrOCUnl2T2Z41lBT6Pyv73n0DcdIqqnsFwOJp3c6VQ0kGmA==
X-Received: by 2002:a5d:64cf:0:b0:341:d7b5:27 with SMTP id f15-20020a5d64cf000000b00341d7b50027mr8950388wri.6.1712602134884;
        Mon, 08 Apr 2024 11:48:54 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:90bc:1f0d:aae2:3c66])
        by smtp.gmail.com with ESMTPSA id m6-20020adff386000000b00343300a4eb8sm9561770wro.49.2024.04.08.11.48.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Apr 2024 11:48:54 -0700 (PDT)
References: <20240408164947.30717-1-ddrokosov@salutedevices.com>
 <20240408164947.30717-2-ddrokosov@salutedevices.com>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: neil.armstrong@linaro.org, lgirdwood@gmail.com, jbrunet@baylibre.com,
 broonie@kernel.org, conor+dt@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
 khilman@baylibre.com, martin.blumenstingl@googlemail.com,
 kernel@salutedevices.com, rockosov@gmail.com,
 linux-amlogic@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 1/2] ASoC: dt-bindings: meson: introduce link-name
 optional property
Date: Mon, 08 Apr 2024 20:44:36 +0200
In-reply-to: <20240408164947.30717-2-ddrokosov@salutedevices.com>
Message-ID: <1jsezvofl5.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Mon 08 Apr 2024 at 19:49, Dmitry Rokosov <ddrokosov@salutedevices.com> wrote:

> The 'link-name' property is an optional DT property that allows for the
> customization of the name associated with the DAI link and PCM stream.
> This functionality mirrors the approach commonly utilized in Qualcomm
> audio cards, providing flexibility in DAI naming conventions for
> improved system integration and userspace experience.

As explained in patch #2, I think this change is wrong.
The names below describe a possible userspace usage of the interface,
not HW. This does not belong in DT.

The only valid name for the interface is one that helps map the PCM
interface and the kcontrols exposed in userspace.

This information is already available through dai_name, prefixes, etc.

Using DT for this is bad, in the context of these particular sound
cards at least.

>
> It allows userspace program to easy determine PCM stream purpose, e.g.:
>     ~ # cat /proc/asound/pcm
>     00-00: speaker (*) :  : playback 1
>     00-01: mics (*) :  : capture 1
>     00-02: loopback (*) :  : capture 1
>
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> ---
>  .../devicetree/bindings/sound/amlogic,axg-sound-card.yaml   | 6 ++++++
>  .../devicetree/bindings/sound/amlogic,gx-sound-card.yaml    | 6 ++++++
>  2 files changed, 12 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-sound-card.yaml b/Documentation/devicetree/bindings/sound/amlogic,axg-sound-card.yaml
> index 492b41cc8ccd..46774a3e4b1d 100644
> --- a/Documentation/devicetree/bindings/sound/amlogic,axg-sound-card.yaml
> +++ b/Documentation/devicetree/bindings/sound/amlogic,axg-sound-card.yaml
> @@ -66,6 +66,11 @@ patternProperties:
>          maxItems: 1
>          description: phandle of the CPU DAI
>  
> +      link-name:
> +        description: Indicates dai-link name and PCM stream name.
> +        $ref: /schemas/types.yaml#/definitions/string
> +        maxItems: 1
> +
>      patternProperties:
>        "^dai-tdm-slot-(t|r)x-mask-[0-3]$":
>          $ref: /schemas/types.yaml#/definitions/uint32-array
> @@ -137,6 +142,7 @@ examples:
>  
>          dai-link-0 {
>              sound-dai = <&frddr_a>;
> +            link-name = "speaker";
>          };
>  
>          dai-link-1 {
> diff --git a/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml b/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
> index d4277d342e69..975c148f9712 100644
> --- a/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
> +++ b/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
> @@ -52,6 +52,11 @@ patternProperties:
>          maxItems: 1
>          description: phandle of the CPU DAI
>  
> +      link-name:
> +        description: Indicates dai-link name and PCM stream name.
> +        $ref: /schemas/types.yaml#/definitions/string
> +        maxItems: 1
> +
>      patternProperties:
>        "^codec(-[0-9]+)?$":
>          type: object
> @@ -89,6 +94,7 @@ examples:
>  
>          dai-link-0 {
>                 sound-dai = <&i2s_fifo>;
> +               link-name = "speaker";
>          };
>  
>          dai-link-1 {


-- 
Jerome


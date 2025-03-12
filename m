Return-Path: <devicetree+bounces-156865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E0EA5DB79
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:27:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8093E1776C4
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8F0E2459C1;
	Wed, 12 Mar 2025 11:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gG+nA5gF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD308248861
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 11:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778738; cv=none; b=CnyqVwN9Eq0ywwauni+iOW9DVCaCvo9tLosZu2vWnHVUnlSoeeKjktEAV2kwzpQyJRT2QF22vM7EGlQUOv4zZHXfIX+48UkPzE7nU4nGn2hPDZ+KBwf/Vh/1RE9mv1WK03MW5TcMp/dmCYCC6GlKjmqleEdcr7PNYeAzgFbTIWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778738; c=relaxed/simple;
	bh=zKSN1MPByApvA+OUlh27K1FJwz3QmJ32fWxe2xd1RGg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fwNBNblJjM/AadQCw6WhFFP8+YS/jDH1aO5/PQ6ceFrUqkZkoOUVif5eKyGyjlgyTiWrjKN7dvCDkDbpKJOBveR3A+PFNjsHqE3Nkleh6M1LeVerRyT2uyiJkXWoM8z8kewuBVLWhN887m8qJNKeCMglzk7fhR3vRcwxgPcGxkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gG+nA5gF; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6f768e9be1aso7975447b3.0
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 04:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778736; x=1742383536; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oMmWW278S3Hwy+hLP82+XTpci0VAB4ee7BNXBj9aT9k=;
        b=gG+nA5gFGMz2R4SdyWQuaCtp8g2v2CEodV1WJcKH+wGfbQCeSscdnGkGFVMsnZ1uLv
         e/DOYpg1YEmS+ZtIPwPPosz0F+PIW2rFhhkqEgfwhEJzloohV9dpMxk1V5czDjLffHZc
         6bEBKnLNRPZYpwtOEXuk7ToGAAmWCqq7Mp4e5GiYq4g2U1po+JiX/TQIGXTWBX6IPHpa
         JVRi/Xen+ahRyvHQcsK2oCQxswMAA9lyPsYLS+pELkfRE0KBwNaOk2JpgDFssfgk+gEh
         r0UZvU45kZA5DpgwmWLDAB54tmo8nU6iFmYGSB/8elSirMxLZaLSTmbL4v3fcZK9+fJJ
         KyzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778736; x=1742383536;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oMmWW278S3Hwy+hLP82+XTpci0VAB4ee7BNXBj9aT9k=;
        b=HCSsiJQGSg0Cseaq8jB4JT3Yx2P6V8zsWIGkUbjuM7pUEc5YjmUwXdGh7VBp8XqiH+
         UU6ltOycjeo9BGy+C8HTMsDAl4WXMv/kQHJEWLcS2MOeG+H4AiYSxBsWtnsOYV36EBU7
         Mz89RHb/rOKgvYOKS8dhkHMRnLzxeHlPPy0ykdI2SdzWyYIKnsoWLD06ZsUCgeFbMjM3
         UCqRrq62YE0Ejt4KRZTqBKTP/kapR6WwV1nXxdGTsovMZSYKcpkHYek2jE4a6PMGnsDN
         3HibhP000Eun77T28QxcCHWrCTDTYSuiT5Kmjsuhk6rteOpyeml6dM0fwTBzR2F2YiU8
         /vLg==
X-Forwarded-Encrypted: i=1; AJvYcCURdYmSCBRYkLosKPljspslhm7+OQ3eE5z5glQivYv6NOclzoU7UkWSbWjDn9hhoszLQODsgKAcCheo@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2oAzGbfVbBhqkaQvQnmfHrmMVskMefZhxH4qFcfBA2zJjg7ex
	j8m6t07AdDuCnat2BtuNmtmZ7mq9i+wdJWTKGl8TUSJRgnYWtu5aEhQomC+8SZ7hNBLCV/hZ83a
	qngm5HtEcovXajxrfwVRIQhlIZxZLYbbNp1Ub0SaHsgQl1p0t
X-Gm-Gg: ASbGncupyryDP/rEZ0wYE+XXiadE71xYxqlHbaUOLlrNHfT8x/c/sGehZDd86jTk5g4
	ycOnz6z0qpvB1is40WLirDNUzvqJxVu4z9qFn8KX6KSrYHQkAoe4L49B5e5HHwj+1PBDGdtKgsW
	SDR06BwJ+2lxNTCmonHl8HwxuBgxU=
X-Google-Smtp-Source: AGHT+IF+2TUj0AijHF6r+vPxRqI/7rfE3ie+f/dBAlUG+gV7qBwbChu82fS6cFOmTtK6ezNyic5kn3RkBhCY6+/TI2Y=
X-Received: by 2002:a05:690c:7207:b0:6fb:b38e:207e with SMTP id
 00721157ae682-6ff0a33c8f8mr83949777b3.14.1741778735829; Wed, 12 Mar 2025
 04:25:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250307005712.16828-1-andre.przywara@arm.com> <20250307005712.16828-2-andre.przywara@arm.com>
In-Reply-To: <20250307005712.16828-2-andre.przywara@arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:59 +0100
X-Gm-Features: AQ5f1JoiQnCX1EBg93UaXE5EJlbj1n7TONyL__Rgw9VQ-gzhs1UrEpRxnqBou7Y
Message-ID: <CAPDyKFpFgNjy+Tu7ZKB05m55HAf5RQ+AFPgk+6Q8_g1xu0akng@mail.gmail.com>
Subject: Re: [PATCH v3 01/15] dt-bindings: mmc: sunxi: Simplify compatible
 string listing
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, 7 Mar 2025 at 01:57, Andre Przywara <andre.przywara@arm.com> wrote:
>
> New Allwinner SoCs only occasionally update their MMC IP, leading to many
> pairs of compatible strings, though there are sometimes a number of them
> being compatible with one particular SoC.
>
> Collate the compatible string listing in the binding, to group those
> being compatible together. This makes the list more readable, and allows
> for easier addition of new SoC's MMC devices.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  .../bindings/mmc/allwinner,sun4i-a10-mmc.yaml | 36 ++++++++-----------
>  1 file changed, 14 insertions(+), 22 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> index 0ccd632d56200..8e4c77b7e4ab9 100644
> --- a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> @@ -30,38 +30,30 @@ properties:
>        - const: allwinner,sun50i-a100-emmc
>        - const: allwinner,sun50i-a100-mmc
>        - items:
> -          - const: allwinner,sun8i-a83t-mmc
> +          - enum:
> +              - allwinner,sun8i-a83t-mmc
> +              - allwinner,suniv-f1c100s-mmc
>            - const: allwinner,sun7i-a20-mmc
>        - items:
> -          - const: allwinner,sun8i-r40-emmc
> +          - enum:
> +              - allwinner,sun8i-r40-emmc
> +              - allwinner,sun50i-h5-emmc
> +              - allwinner,sun50i-h6-emmc
>            - const: allwinner,sun50i-a64-emmc
>        - items:
> -          - const: allwinner,sun8i-r40-mmc
> +          - enum:
> +              - allwinner,sun8i-r40-mmc
> +              - allwinner,sun50i-h5-mmc
> +              - allwinner,sun50i-h6-mmc
>            - const: allwinner,sun50i-a64-mmc
>        - items:
> -          - const: allwinner,sun50i-h5-emmc
> -          - const: allwinner,sun50i-a64-emmc
> -      - items:
> -          - const: allwinner,sun50i-h5-mmc
> -          - const: allwinner,sun50i-a64-mmc
> -      - items:
> -          - const: allwinner,sun50i-h6-emmc
> -          - const: allwinner,sun50i-a64-emmc
> -      - items:
> -          - const: allwinner,sun50i-h6-mmc
> -          - const: allwinner,sun50i-a64-mmc
> -      - items:
> -          - const: allwinner,sun20i-d1-emmc
> -          - const: allwinner,sun50i-a100-emmc
> -      - items:
> -          - const: allwinner,sun50i-h616-emmc
> +          - enum:
> +              - allwinner,sun20i-d1-emmc
> +              - allwinner,sun50i-h616-emmc
>            - const: allwinner,sun50i-a100-emmc
>        - items:
>            - const: allwinner,sun50i-h616-mmc
>            - const: allwinner,sun50i-a100-mmc
> -      - items:
> -          - const: allwinner,suniv-f1c100s-mmc
> -          - const: allwinner,sun7i-a20-mmc
>
>    reg:
>      maxItems: 1
> --
> 2.46.3
>


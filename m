Return-Path: <devicetree+bounces-29217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2555C821FBF
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 17:57:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6F67283C48
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 16:57:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AFA51548E;
	Tue,  2 Jan 2024 16:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FKc1lGke"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8211114F94
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 16:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5e745891a69so77937407b3.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 08:57:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704214651; x=1704819451; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5wk4N7lmV0VhLdq0PkFpCuSEzkzGL6KduOmoT0VC7jU=;
        b=FKc1lGkeg8eQUAf6ZYO/awJ698ZYqSDZ2eMApS3EYT9POdtFRO8JKtdj+IhE6KUKxs
         6lvAhdxSdYQXdM7n/oW3kG8R2qFPRN8c5AY31V3Q1WplllbLNC67xUDAZbvAYDH+YfIN
         od+62RTT051UjPS9eUETm7Nq5wTcLdUvW1n1frbXLxETqEb8Vh6B7GLKiB5ENRnSmMsn
         JWkh3MxePMCjielYxJTqYiPNLG2VWWAxbG3dpvpwcYV4Tcro4cuDdf70ppYQTrCK31bk
         QfU04h0Bz8s1qGsqeVwaTTj91gr4ZjRhX8GLLJhj9Llu2CTBfsOOGERJJ6n0WN5EjzQU
         wYdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704214651; x=1704819451;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5wk4N7lmV0VhLdq0PkFpCuSEzkzGL6KduOmoT0VC7jU=;
        b=EwTi0QhRAaFFzGALfE6LUPkFJQ/vTAQkskqaBglHIUHR9jLd3KgHjHvKMcTr4B9/se
         bc58XW4X69tE2YafaZ3UqcoBp+N8IFaGuOwH0PDJOQSA0JM0CKZQMmz9Xrlo420ZGeYv
         WpN1gcwBkU20NsNMls2Tfw/tzc7Sh10Os4Ncwyayy4QaUhFZJPdC3mZPPYBSnTPhLIR5
         vK/fuZkb4tGUUYsRMq6d3cdEA9jGWH6CURwO+KbQBPa+U717dfku+DSz5ihxPy4EWuVR
         zWO0MVGWhbz4TgPmMMAWHZuM96aJiLwiXR1gN5/rhDCQ390P0tTdLkfl483EnF7nbHRw
         1tyg==
X-Gm-Message-State: AOJu0YxnSGHN7AxLEG973FvLj+x5on1zi3W3jdViuQHJYShXDgUcD8/+
	d9VJogyNiv0Xsp9I48EWqxk1AUh0saFq3xLI5WiO5eS0pdxKqQ==
X-Google-Smtp-Source: AGHT+IEjtOPKsRyajYMxbHL80czYGam47afsRAbV0f6T2b+vZzSF+3Mk2d2iP/UGzBJAnyxqycP9y0gExlgC+LvRYdI=
X-Received: by 2002:a05:690c:12:b0:5f4:c40:1265 with SMTP id
 bc18-20020a05690c001200b005f40c401265mr466633ywb.68.1704214650754; Tue, 02
 Jan 2024 08:57:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231209171013.249972-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231209171013.249972-1-krzysztof.kozlowski@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 2 Jan 2024 17:56:55 +0100
Message-ID: <CAPDyKFo6xh8k_NjAziEEuj_us_n9GMgdwVGMKXodVLHq-TbS7w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: synopsys-dw-mshc: add iommus for Intel SocFPGA
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 9 Dec 2023 at 18:10, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The DW MSHC node in Intel SocFPGA ARM64 DTS has iommus property, so
> allow it to silence dtbs_check warnings:
>
>   socfpga_n5x_socdk.dtb: mmc@ff808000: Unevaluated properties are not allowed ('iommus' was unexpected)
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


>
> ---
>
> I assume the DTS represents the hardware, thus iommus is real.
> ---
>  Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> index b13b5166d20a..a6292777e376 100644
> --- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> @@ -35,6 +35,9 @@ properties:
>        - const: biu
>        - const: ciu
>
> +  iommus:
> +    maxItems: 1
> +
>    altr,sysmgr-syscon:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
>      items:
> @@ -62,6 +65,7 @@ allOf:
>          altr,sysmgr-syscon: true
>      else:
>        properties:
> +        iommus: false
>          altr,sysmgr-syscon: false
>
>  required:
> --
> 2.34.1
>


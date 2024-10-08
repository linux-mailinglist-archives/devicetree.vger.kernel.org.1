Return-Path: <devicetree+bounces-109073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2239951F3
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 16:38:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD0511C2472D
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 14:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA8D21E0B75;
	Tue,  8 Oct 2024 14:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O7pvYWal"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A791DFE2A
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 14:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728398205; cv=none; b=X8Q4mos6avFmDpu7rw1seFPpCzJaRExU/pnNBwXo7zdFvCGabVuSx3y8EJu+7an+qs7mlgiiyjwdYxHUZy5nOL4Tec8Bejdt1jJTupbMxXuhGOYEt3tiuYddNJ8d6UTe2AFv1nHde9cUmERGmoZEaVLtnHrJOpMiooTOKeJveSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728398205; c=relaxed/simple;
	bh=eiBVahTw3pcHmt4RBSpt/Ftosqh8bsjEAx9y76i535g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JCHo4cmGt+9vDKu5EmoUIY2QsR0XQD/2z2qb0vRFbZgZpAYpoKs3kyy+CDmdSpXMsjL7Nh0OUMvnljqTkG337Qx+9o5iqppsXVH3pTqBgsNXaT1O7GzD51579cGR7WjBd+y+ZJ3BV3aMkalwzeNCuYKPTrcjrQ685PrVq7wyBgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O7pvYWal; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e28f1491eb6so595198276.0
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 07:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728398203; x=1729003003; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WNZzKdQArnf8YLwkRp6tlekOryWYH/w6bCKp6uUyEzA=;
        b=O7pvYWal1CQuQPyMAlI9M5wjRm5JpV8qaGz/lzrwimGIvOjOqNbURh/flZ1I2Gnur+
         nCF7RtdhvxgZWXeBsv79k8vax4TvhJaPkjVMFkChzamdn1aoEcis74x3RnXALYYMbPMD
         zJ8FQZDApzgfoLB2zmowj23o6gSu6zg7KwwlSWpk6w/P0E0rhUIFIlg+wcwJehk33Dxt
         VwBs8kKOQ8vfcelQl/BKdCJ8nGrGBVv1AeEBJs/nrf6c4eUUQh/zq78Gi2n7M8LJvIA4
         7uUOCn5+o5pY2u4DNFjLcfBTW7WgnjSGp1qZxqBXMdf7BdbKFVDp+x1xQVQdTVuWjKBx
         ahjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728398203; x=1729003003;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WNZzKdQArnf8YLwkRp6tlekOryWYH/w6bCKp6uUyEzA=;
        b=TtUT0ssTSGxAAviRaVyULzEh3M1U2dEDrL/pH9wxyFGN1Euvrch8svKI7cJUfRpokL
         4KWQ1Gi7Zd6Jo4VY9fw1D+fvoXM0Jt0r3hDNTC8zsDg0TWNScSs+FkiYHlB3zdyMxFVk
         KB/2o5ERkoDBDL48ljjmmchRG7QewDVY37U/l7rqllzLPJoDt/vPx2KII8hQTUSlC2Hx
         aDO6TMSRzfb7VMKMsx/BC7Qn/Xni7qZl6nMMgphmL4q4PqVB99LcvPCn2sj87MrG0Oyu
         5BOtMGQKyhbdX1iczecE6vIREr06so7ebQJXrMay3FAOPBxsmFaZETF4Vf56p6KMxJxI
         Fqtw==
X-Forwarded-Encrypted: i=1; AJvYcCUqMshg+n72blmU0kU6OFqaiiKloj1s98KcOYpPd9LAsqcHt0w9Mnm6KvvstqrOMWPLPC7qxRqpgrCC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3AZok3qOXc33C3+85qV38Ive8eLkAHQpcYlR5OPLcveqY2sPu
	IJjppBn7zg/yXI3lvIfO8IbE0azYguO4zldcgIAQvB9YuhLjDKiDScBbiNWp+fKBMsenWiqCeRl
	bbChWH3zl/v/6hDZ3K2hx7PKIKFA6/y9ntgWOxw==
X-Google-Smtp-Source: AGHT+IGpk0fkikZLIUB8Xv1LRK1/jbL/DWVujOUGdacoTm8NQ+nTWOMi8y8fhtWL/4PN4fQZf2hYlGAC3o0z4YwCACg=
X-Received: by 2002:a05:6902:a86:b0:e28:eee6:1cf with SMTP id
 3f1490d57ef6-e28eee60288mr1785573276.48.1728398203049; Tue, 08 Oct 2024
 07:36:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240930095449.1813195-1-pierre-henry.moussay@microchip.com> <20240930095449.1813195-12-pierre-henry.moussay@microchip.com>
In-Reply-To: <20240930095449.1813195-12-pierre-henry.moussay@microchip.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 8 Oct 2024 16:36:00 +0200
Message-ID: <CAPDyKFquF3nj3BxRqc418xC9_fFasHipDePdXsSBFLJwrO-UKQ@mail.gmail.com>
Subject: Re: [linux][PATCH v2 11/20] dt-bindings: mmc: cdns: document
 Microchip PIC64GX MMC/SDHCI controller
To: pierre-henry.moussay@microchip.com
Cc: Linux4Microchip@microchip.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 30 Sept 2024 at 11:55, <pierre-henry.moussay@microchip.com> wrote:
>
> From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
>
> PIC64GX is compatible with cdns,sd4hc without any additional feature
>
> Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> index 6c40611405a0..ee3a838f7f06 100644
> --- a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> @@ -15,6 +15,7 @@ properties:
>        - enum:
>            - amd,pensando-elba-sd4hc
>            - microchip,mpfs-sd4hc
> +          - microchip,pic64gx-sd4hc
>            - socionext,uniphier-sd4hc
>        - const: cdns,sd4hc
>
> --
> 2.30.2
>


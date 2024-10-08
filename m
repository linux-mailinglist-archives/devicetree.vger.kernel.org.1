Return-Path: <devicetree+bounces-109074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B479951F6
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 16:38:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 301A01C20E3B
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 14:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4B6A1DFE3E;
	Tue,  8 Oct 2024 14:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DVzfV3P1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9721E0B95
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 14:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728398209; cv=none; b=PqxUTwbXlExz3/fqEEDHK3HAxlGVYX6CmkhZTgyZzlaoTrbbBJu3p6JL4eEJf1ihv8laikwBFUeSO/SS9r9VTM0J7+749eRZkgAHsDEDkAJRJz8MPfKkZ9G5r1HdT/qR+obKwNvVcw8nbK6k+IvqcTkmXV33DMWRWl5vDV9dafs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728398209; c=relaxed/simple;
	bh=0Z1JExvdy9ZeQJ6p0A/0vey3LiyAqfmOE62rwLJZmTM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nnVl28SqMPwS8zFIm72AT/RlP6j5X56iOiFHrF344ap/Vhk805vLbqk82gtsAwogdCOy9FKIXY7bdoCgPkEFb6OzZ1XOX1Flvm6xpA/EuOZrci0OZY2nNRY45V0UDMF5q/IWI9bRrCYW3eXi9dHp2eY7kgLm3OqdnQNlz/njW88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DVzfV3P1; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e28e6a1b11eso1354284276.0
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 07:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728398207; x=1729003007; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iwY3r5V9M933BYc/JpXLz8VpdD3oK06DMiHe6qdoa+c=;
        b=DVzfV3P1/xELASKTE2Y6d8IlVKVLot8vmbVzfzaw2Rs4gDpNTHkVRJHYnecJEsRCsY
         qL1Y6uQmUtHl5rHUbQLc5HhiQc3spJpTiqS3gdpBuXNh3G+Zt1MdtfW0TJZxmyTNdO8D
         aq1Q9DRW1kcvaFqilKJg3z8UhhVFFPidFgy3E/+JNFcZe2VRMzwnExKJWL/QUj74DUt5
         B+ibSxco0i2maIs60/tvOTn57sSWN+oqhFu1OxopPju73hX20BWia2XsxeJSFl9N/O7A
         Ukn21nlLqOOhZ0s2Zrk7c0UtmfB0i2aLu2mNYcPk2IzC6rAIrrHAnoamOk5WYlYErfp9
         /EHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728398207; x=1729003007;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iwY3r5V9M933BYc/JpXLz8VpdD3oK06DMiHe6qdoa+c=;
        b=cLh1HM7MvKRCKrUOd63D3gulrNPZ03fHRxbwrBOWWH08qr5zDxb5WH+qm+8nAfRcZI
         Xr3PyfR9xG+QOMf/wWwEtsLVL4fv6J4yJjh2g/KjcmlbmLAy1I4Y089I2hUYfwVo4eVM
         tCmL0ws3TgD5MjRxolga+Ffb4AQj0BxFm6ze1S7EO2u7CjVK2HmEVfycNGCuctQsk8Zz
         kYu9fXxy4sZo0z4Inwl221g6N28j4VBkgewyO5iqzf0A1WzA7qMWRdfJrXtqZDNlot+N
         r6zdEglnH/cSQEZ81YC54ulRfzc++vuRrfrlJmUkeRhvQTmqqAVfunCxoVTj3PuVeTkG
         U/4g==
X-Forwarded-Encrypted: i=1; AJvYcCXP9LiQuXciHHRqBRCi3I1oWj3Pda+7Ye1LeP1XCvmYFt3NItsXPDDPrIBeH2PAHqOEH7NUJjTytTfO@vger.kernel.org
X-Gm-Message-State: AOJu0YxCet+8hEHJQlvSKVr2C9RnNfnyAYNwlZ4kkjzwdG06eLiyon5/
	iqEnIjz7lp6JrMNQeewJ+EBEh/hXXXjfUjXZaWw5fKKfz0WNcEWHgcckQzmmlwF19Gzr0iqXo2d
	INWOQp9xRFLrLJ6w8VFNpGLiPgq3cgtsSeWuMPQ==
X-Google-Smtp-Source: AGHT+IHCEE3cQALhziR76pWxSHYgivNkdxDE7czzTvB21/L8ltLPROWzkDkpEip7V+fuz0HUO9PqM2K24IAxVFHk8Es=
X-Received: by 2002:a05:6902:1b8d:b0:e1d:8a06:86c3 with SMTP id
 3f1490d57ef6-e28937df468mr9516417276.31.1728398207480; Tue, 08 Oct 2024
 07:36:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240930095449.1813195-1-pierre-henry.moussay@microchip.com> <20240930095449.1813195-17-pierre-henry.moussay@microchip.com>
In-Reply-To: <20240930095449.1813195-17-pierre-henry.moussay@microchip.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 8 Oct 2024 16:36:04 +0200
Message-ID: <CAPDyKFq1HZxKSd-V_VnmpbQTftMDmF8SkPf11N_ELcahqo16QQ@mail.gmail.com>
Subject: Re: [linux][PATCH v2 16/20] dt-bindings: mmc: cdns,sdhci: ref sdhci-common.yaml
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
> Since the Cadence sdhci controller is sdhci compatible, the cdns,sdhci.yaml
> should ref sdhci-common.yaml to use 'sdhci-caps-mask' property.
>
> Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> index ee3a838f7f06..0432cc96f7ca 100644
> --- a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> @@ -121,7 +121,7 @@ required:
>    - clocks
>
>  allOf:
> -  - $ref: mmc-controller.yaml
> +  - $ref: sdhci-common.yaml
>    - if:
>        properties:
>          compatible:
> --
> 2.30.2
>


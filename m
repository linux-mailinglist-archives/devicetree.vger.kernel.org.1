Return-Path: <devicetree+bounces-126166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 785769E06F3
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:25:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E94628145B
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A172120969C;
	Mon,  2 Dec 2024 15:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k5Lk6NCL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA888209675
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 15:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733153050; cv=none; b=AWl46CskcidGTpyW2aoVewZ4Dp4GZwpJIchL4Q+gOfumEta2LVACqAE6qcw7yFE4R8BnI8xCCDhHT9pN/2ownAeMCgfusalFU0sOcosQxPY+s7jUj0adpD5hccjR3qQSFrjU8eD7OSKnU31Vcshutwd4dubGm0q+omi9Facqb58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733153050; c=relaxed/simple;
	bh=+Xl8s91uz6z0166yhunqPMLThqhGtXNxm6DGP1hGyaY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aU/o8Fd8D5OOl80PxWjz2ttYgnbfFs57vW851tVfUH2ImKiHqvgAztcvDNhD3m48XeUJL+vEig88w5iDfyVvybCBPzMQIKzY6VZaBeXjmfHqskQdCgEfX/bLlYab5JAypkoI84y2J+PYm05qk2sA78Fn6crwkuOOVRSZD7IueoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k5Lk6NCL; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e398273d6ffso3020843276.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 07:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733153047; x=1733757847; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XMx9usLc+8H+1O3Ux5r/Qz56sk5GB2iRle+hBCjO6+0=;
        b=k5Lk6NCL/Q9S2n2SD7XUQy3GgjWsjcXzD2V/+giR9rhAUrOGGCsMQ/r8/8dAPLYGsW
         ulCSdELHI1aTBluKfiDycsvm82o8sgvRyGtiXYSAGP0/WxrT27xmDDDgbwE+M/CCvKEd
         0uh4t60+ULG1Ks4uJ4LNZYFklbSa+BPzal9TSB/GfYKX+XXRNKkYMor2pa3wur1kOHlS
         FwhQtAJpO5o9tSZUZtX+ynvGl4TSVftm5BgyNchSRDtjBsudY0vkHF6+9NmXWz9zclq8
         x8WgYa44Bx7oS49t0Opu8E+xUy/9ma+sg7UrILv5kSFdznhmNNCq9kHIJbfa2juCgfhX
         oyJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733153047; x=1733757847;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XMx9usLc+8H+1O3Ux5r/Qz56sk5GB2iRle+hBCjO6+0=;
        b=DtrdLIkLt9mqmbIfgmKMpTImCEXRYFzSwj3KGb0QUWlYgWjokTofN4sbL6r5VI+t82
         W7KNnTBcxAy2ESY1KTe7VzcDbVvVtsCOHx5J/a7ODNkAjkqu0bTkVTfe9SoP8z4wJoX3
         zukOnE/TxLbhIUUCAooMUQx8XR5Z+1tfaKciyXq8Y7Rxv6ulSzzbBNx1tDx0UVnEc+Qx
         mAj0ajvAKWFqtNYPyHVQ1/xVeiJh5Px+WXDhY1tzcRQ0sEhEBQRy/JTBb0a/r8HcrcOw
         RScjmZWT/6z7F/qwSgLDoJRZJ0Pg7R4MmRYrKJ4yf8TU17xqt5G+BZnGxUy5+NOKTZhR
         oXnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXB1mDVIdevo7jGk2U9g7YpveozVIQ+G+2imHkqZfs3hlM4smoaHhBHP48wHSwE8L1/UviJS03SU74f@vger.kernel.org
X-Gm-Message-State: AOJu0YxxzooD+pUypkPnb69viKOX/Jjo6/CrSJ99N8if4tXPFGRoJfFk
	DfnascbSkUUoQtXlpzCYx/1zbTmXl5kL1hViVdydX0glrY7OJF+0p7gDvXU42ZAk7djFnQIl6YG
	z4AtRXWC9jtXT9CkiW08LiyoDieA9rs0mqHaXOg==
X-Gm-Gg: ASbGnct6+YHVRJkStWuA7S2Bl9jhHpY9j3f1MVvbYvgcqjDTmuuqg1Ecz/vji2UUp4C
	kjnU7AfJgcsNNZXPSs4AT/GY5ctIBflI0
X-Google-Smtp-Source: AGHT+IEGJdd9IwF7sSUzoqqAWgtWCRY1a0UMhBwb88ErQOHU8BaxnCWHnPMW9+ru+41yFpFYGuJqHhtoLonEK76JtT0=
X-Received: by 2002:a05:6902:1895:b0:e30:c614:5c3a with SMTP id
 3f1490d57ef6-e395b869b78mr21357729276.3.1733153046692; Mon, 02 Dec 2024
 07:24:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1732030972.git.Ryan.Wanner@microchip.com> <e9e9e4cf0753422706bdc44fe7d20ca3a686ce7a.1732030972.git.Ryan.Wanner@microchip.com>
In-Reply-To: <e9e9e4cf0753422706bdc44fe7d20ca3a686ce7a.1732030972.git.Ryan.Wanner@microchip.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 2 Dec 2024 16:23:30 +0100
Message-ID: <CAPDyKFpN-2kowdi_eCtbW1WEdc5OKh7tj60GfbPPBR0Hbpyj5Q@mail.gmail.com>
Subject: Re: [PATCH 04/15] dt-bindings: mmc: atmel,sama5d2-sdhci: add microchip,sama7d65-sdhci
To: Ryan.Wanner@microchip.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, 
	claudiu.beznea@tuxon.dev, mturquette@baylibre.com, sboyd@kernel.org, 
	arnd@arndb.de, dharma.b@microchip.com, mihai.sain@microchip.com, 
	romain.sioen@microchip.com, varshini.rajendran@microchip.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 19 Nov 2024 at 17:42, <Ryan.Wanner@microchip.com> wrote:
>
> From: Dharma Balasubiramani <dharma.b@microchip.com>
>
> Add mmc binding documentation for SAMA7D65.
>
> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/atmel,sama5d2-sdhci.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/atmel,sama5d2-sdhci.yaml b/Documentation/devicetree/bindings/mmc/atmel,sama5d2-sdhci.yaml
> index 8c8ade88e8fe..ba75623b7778 100644
> --- a/Documentation/devicetree/bindings/mmc/atmel,sama5d2-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/atmel,sama5d2-sdhci.yaml
> @@ -22,6 +22,7 @@ properties:
>        - items:
>            - enum:
>                - microchip,sam9x7-sdhci
> +              - microchip,sama7d65-sdhci
>                - microchip,sama7g5-sdhci
>            - const: microchip,sam9x60-sdhci
>
> --
> 2.43.0
>
>


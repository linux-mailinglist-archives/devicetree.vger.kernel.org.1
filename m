Return-Path: <devicetree+bounces-46849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C04686AFC7
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 14:04:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 349D0289547
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:04:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE7114D426;
	Wed, 28 Feb 2024 13:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ybwxBiXI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BF814CAC4
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 13:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709125443; cv=none; b=fSIYrkj4c7zMTf4YUCTpw4zn42yQ2PjJ11QIjszGw63FiworGRT//3Z3RRbp+NXcvy46y3VwTzOOSX6UjuCUdXJWv6vBF4qN4JIT+VZ4voA6fojIYg+0g8fEN56OJFg3h+bL8pgyKtwcT5tnLUwOXwENsepFh9b1wxybFMwxoq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709125443; c=relaxed/simple;
	bh=vFTpKydtyiDddUobygfeyVWyr4s0AkGFJ6e0BY5C7PA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WdjnIn0Hqio8Xmv4EA0QjG8wk4Us7srOovhe5/DU6L/d+R8BkPrsk2LzmQeEwCtYnE1WC4dBimk3k6YhjUliWCEqNnA59GcUrAjl2w9jno6Kzx1j6IS3mX7t80+RG3SjL97DOrGHO2nbYyL0jK9DEU/Ppv7sUV87l8Lbszhv6Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ybwxBiXI; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dc6dcd9124bso5713419276.1
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 05:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709125441; x=1709730241; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X4xrPKeqtgEGV9Q4IBEmk+WaDilZyeoAcRRC9Axa6hc=;
        b=ybwxBiXIRXB5RiLEhGRthnkei3MMShfAuSq4rpub29+ACNPlYcJNGepRlhAeOx+0x2
         9lXVSoj3DuPlJ/wvjH9Smzdi4YW/ILbbKmow/F+shWX7dOFkPfoau1kWYlRFnfC0CP3x
         dBJve3sRmnSw6tCnqp/iAJdzluc5hVAkGoLrgRLzUzKdOZ20Tg/u7mn8mjmhnTZsMZzH
         asC46cXmOjus/h2kwSiDjRZ2UowcBmAA/WEjH5Tn/+rx/g1PwiFr9R5nQbu+OjAfKDEH
         V9koODHEsb/JKOj6M5+7yLjtDStqR1TZIDPd2H3KFYV8Oxi9q76QhEDz0aJck9V0dsGk
         XRAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709125441; x=1709730241;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X4xrPKeqtgEGV9Q4IBEmk+WaDilZyeoAcRRC9Axa6hc=;
        b=O3MXEBR23PHdNHmScNppJ9g0U9LgnjnbmdmQLMv4VUjE/lvgNkckIUE0GcQQPDmsUb
         eAUj7Jh+PsjmeRYBta03HVepyWsjq9rP5huKJ6bkn0xCbcm3VlGX7QlTFHTgoUjuwCz5
         fZt6+CHCLrEIkH6nQTKk/8D5WH+mocvkUrUMjSWQk7yJ+z+RzCKq13Pm0eJp96+/RpLO
         F3qm7jpS5JWR7grp1Hv3jKFDMI4no6vxjExvYSaIfw4hCfxwASweq36siUM/vGK/i8q6
         I1D85g7YNkCN+mdAnwXkRyIxf0oQaOC8ZQzLXpI+HSaMErBW7qPuImOQaEM7xpE1eegR
         Xwcg==
X-Forwarded-Encrypted: i=1; AJvYcCVE+Pp7UcpWv5kFQavY35MdAn8IKY1cUs9/7ypkWrblQsnpXrEayMhXNRDGFbY8STPofguLN+OlZIKLqiuH6urzhtSCIszltOBxgg==
X-Gm-Message-State: AOJu0YwL3oJzKRXvZbeKs0zy8kMv2y7N5HCQbIxbSx/3E7nJjgAb0BzZ
	cz3zbBtUMfzmz+vrbO4h/rmYhLS1nuStXX/343zO43p9a3NkamJ1D0zYHZloopMpuhNpvV4zDyT
	tjbxQeDlW0DI48UCPCqjhnEN5WxXGaZ+7mHrT6w==
X-Google-Smtp-Source: AGHT+IGfbfWQ26vfcOGPm96x3PWRIKRsRzOqFj+BnyrgrRljfJCRT/1aUOwJAvx2MvOjZjDrvH/UChy9Nm4zE+AZOHU=
X-Received: by 2002:a25:9c02:0:b0:dcc:2f94:591a with SMTP id
 c2-20020a259c02000000b00dcc2f94591amr1934963ybo.12.1709125441193; Wed, 28 Feb
 2024 05:04:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240217144202.3808-1-jszhang@kernel.org>
In-Reply-To: <20240217144202.3808-1-jszhang@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 28 Feb 2024 14:03:25 +0100
Message-ID: <CAPDyKFptc2K3PfrzQxzWctnCNbqRZVOmDDLDe9uWLUPp1Q7_Vw@mail.gmail.com>
Subject: Re: [PATCH 0/2] mmc: sdhci-of-dwcmshc: support Sophgo CV1800B and SG2002
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 17 Feb 2024 at 15:55, Jisheng Zhang <jszhang@kernel.org> wrote:
>
> Add support for the mmc controller in the Sophgo CV1800B and SG2002
> with corresponding new compatible strings. Implement custom sdhci_ops.
> Currently, only sd card and no-1-8-v is implemented and tested, I will
> try to find a board with emmc and sd/sdio sdr104 support.
>
>
> Jisheng Zhang (2):
>   dt-bindings: mmc: sdhci-of-dwcmhsc: Add Sophgo CV1800B and SG2002
>     support
>   mmc: sdhci-of-dwcmshc: Add support for Sophgo CV1800B and SG2002
>
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml      |  2 +
>  drivers/mmc/host/sdhci-of-dwcmshc.c           | 66 +++++++++++++++++++
>  2 files changed, 68 insertions(+)
>

Applied for next, thanks!

Kind regards
Uffe


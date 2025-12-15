Return-Path: <devicetree+bounces-246661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DBDCBEC1C
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:51:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87CD23015846
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25824330B0E;
	Mon, 15 Dec 2025 15:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LY/hFd7x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B442E03E3
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 15:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765813465; cv=none; b=KphxGc2fl3+dHX1NXeasPonAwp/eKS5PEotPFNTsPqpmtt+o2XegFxRKBpv6XvnPiTio/4NlCsjPukopxrw0KomT6DgBkIW3Xq59w4iwdCNANTGfEr3xTFM4lvVoFAgPCPkMJ3BWRXzxI0hZqu049jBMiSx/OdmH50c+of7LKBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765813465; c=relaxed/simple;
	bh=8iKNv5PQEpmKjIAUgM1w+AdyIYWdjSQeOABuH8TkxsA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hBSw2oCR/6wvoAq+J2aPfKJrodqU1A50eun9pE2oacZFZ/yqdoD3TAgZBVU0ZuKgxGMu5vKovf6w0eHMHWmQTWgLWGXi2Lrsc1oWSn3gy7kbM1UvqL+dLEoef2QNOvWa1neAqBYL3ixEe/OhfybAaXWkfapQ/tUYX6QFOWozE5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LY/hFd7x; arc=none smtp.client-ip=74.125.224.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-64472121ad5so2861441d50.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 07:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765813462; x=1766418262; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=K3EiCf37zmh6OYCxevsK3wYl1l2l0yO8i3lRu2zzoOo=;
        b=LY/hFd7xvQLOwN+S0mEgPP3Db+sBku8dlL9JWgstaRGJEuwgvH8X8tAfDmpGBiXSrV
         KyIkPYfBYCYG6jqgHL7Yx1Nn0KNrD1G8T/ZLbed8x1EeOGKy5UKjNOLPT+G5HmWkJMVQ
         dJxT6myPtwfQ/v/uCtS7ICinkT+hTXb2sBX0KEH13UqFiNWOby68Vi/CqfSFa99pclyv
         zReD1c/vR+idOTpMySj3jutUbZQpoXn5x1jdlxJqqR/wbONHUPAcUmvSmdVReg9uhoSo
         HUkg4k6HPwqRO5jdzYqfQNMKroOEPnM5Ou1lbfyHxgk9cJkAt1u0ZfDOcTc+uqIQWfVh
         rdWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765813462; x=1766418262;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K3EiCf37zmh6OYCxevsK3wYl1l2l0yO8i3lRu2zzoOo=;
        b=rWKQEMMksvgUD+tiIniUwnF4H1nNFXoFciuYmlNsaRx+oRFS2TfXarxxOF40kHyodz
         KPDScCTzwoTXYKn7o7/Li+x0lw57/HdclPbMyikSc8vcgPEB0hSNvze+UaUY69yYkfn4
         3YPCBUE+Hb1qUBUDMV28lmgHJ3vfG1V9LgaEGY4qtQ47DrfMkdItemb9OAzsXLxfjVBk
         O2gPAAkseGPIlIQMCbVVHnzX3b7YiZKJ9XHVaaet0xlZqOgnQ6NGzLjgTnb7/tMpcefc
         t7aTGVmwCJMnjXTDx57KKaqR4wqr3ZCGFYzGunoypkFtqdtxEmc2Je4UCjMSK6YYy2Lf
         Sh0g==
X-Forwarded-Encrypted: i=1; AJvYcCVUCuleKo6+2h+52hQS7AZqGvCsuMMbGK4Ro/tcQ0wLJL9/FPPRVhjCd5tAFx6Gam2Wl4SFbojXjmTO@vger.kernel.org
X-Gm-Message-State: AOJu0YwX0lsgSJIuLd5m3pgFY3QsK2zvJvDfwYL+WKAlk09IO7ypIGJg
	XSD1Y/5iXDNfqMuUTNH572kO1G1fXc8C/xx4ITubbMXV3JyXRTqgo110UHQKczvrjVnmyOHL3tq
	9Bfu+3IFOnvIOt5u8zt8+bM/4Ki/54Ft0LDwof02MNQ==
X-Gm-Gg: AY/fxX7MybjAsIT4rKe5OILahAr3iutJj79c89zdAdjnMzUw8+yhlST1RzoTCdYyn4V
	R+3zURO3LoFqkOmDqt1zYLQK9WQUbpEoXy3dTRT9U4g0DfPXNUqkMxN/SVD1YNxSQA4CznbVfMG
	G6WSvJ0bmSH32HcbVjM5b7fBL1kKrQ8FIgbWzQ5fO0bTsYXBT0OiRPagCyuxotoD/LFWFOHb9g6
	2ovIeWmn0Cv9jYlLpp6Ni3Eixfji+dmV0rGZOx4htz+Xgl7j1cGmVDjXbPdh6IG+lEzKNKR
X-Google-Smtp-Source: AGHT+IGoFL7q8HvVv9KIvA1/iDdDg15+gVc1fqtWPGh45LUtRp806bxzNvgl8df7HOVfQLqABF6bjGbmgvq2nhhi7vM=
X-Received: by 2002:a05:690e:dc9:b0:645:541a:4f11 with SMTP id
 956f58d0204a3-6455564f24fmr8169644d50.49.1765813462393; Mon, 15 Dec 2025
 07:44:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251203-mt8189-add-mmc-support-v1-0-f5ce43212fe9@collabora.com>
In-Reply-To: <20251203-mt8189-add-mmc-support-v1-0-f5ce43212fe9@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 15 Dec 2025 16:43:42 +0100
X-Gm-Features: AQt7F2qLO5M-hmnWGiTMCwqz4Oz4UGYnEMVnkbdBTh1zCvxxkv8BxBAberyOD40
Message-ID: <CAPDyKFoXoO-rpEK4Y-FZyWhpOumiwir96-XfLOOR2U1h73ADhg@mail.gmail.com>
Subject: Re: [PATCH 0/3] Add SD/MMC Card driver support for Mediatek MT8189 SoC
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: Chaotian Jing <chaotian.jing@mediatek.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Wenbin Mei <wenbin.mei@mediatek.com>, kernel@collabora.com, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 3 Dec 2025 at 12:45, Louis-Alexis Eyraud
<louisalexis.eyraud@collabora.com> wrote:
>
> This patch series adds in the Mediatek SD/MMC Card host driver (mtk-sd)
> the support of Mediatek MT8189 SoC and its variants (MT8371 and
> MT8391).
>
> It has been tested with a kernel based on next-20251203 tag on the
> Mediatek Genio 720-EVK board, based on MT8391 SoC, using both onboard
> eMMC storage and a micro-SD card.
>
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
> Louis-Alexis Eyraud (3):
>       dt-bindings: mmc: mtk-sd: Add support for MT8189 SoC
>       mmc: mtk-sd: add support for SPM resource release control
>       mmc: mtk-sd: add support for MT8189 SoC
>
>  Documentation/devicetree/bindings/mmc/mtk-sd.yaml |  3 +++
>  drivers/mmc/host/mtk-sd.c                         | 32 ++++++++++++++++++++---
>  2 files changed, 32 insertions(+), 3 deletions(-)
> ---
> base-commit: e47d97576181b31291cf58e77d737d21def0e160
> change-id: 20251128-mt8189-add-mmc-support-ff6df8f89e41
>
> Best regards,
> --
> Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
>

The series applied for next, thanks!

Kind regards
Uffe


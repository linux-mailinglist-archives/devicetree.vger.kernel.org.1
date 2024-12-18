Return-Path: <devicetree+bounces-132341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D14799F6A8E
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 16:56:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 35E0E7A47CB
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 15:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 105AD1F427B;
	Wed, 18 Dec 2024 15:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k/U0UMZC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FF71B425A
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734537355; cv=none; b=osWLUtXru8SGbNN7r3+wypK7vebnCDpzIu7Hg6pgoWEJQFO/ZKP/TfuSZaFs1FmCI5isvA6Q04rNsN1ozneVakhqVe1gYphdHa0MW+aHfBMTxCfLsupp8zBjT7PpxJ3bIg/0DfnZFlcoEH586sPhq8o1y0St9QehHUqSbdYSo2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734537355; c=relaxed/simple;
	bh=F7jezGqSJCsBtR1rQIVfjrM6urgTJZGr0+njMCAYou0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YbuQawl7atIm3mPL644JUD81DIAbgy46iK8OxC2LlqWhsfWDIeWwKs8g3JWoLpG+Y+U1awj2frhhpPRdFAcg3lz/bCVrGufxhpcNUr23/eAcehU+9aFx3mXzOC16fPaUZvi1mGqEcGTePF6QycfjU7v8pjXNiHLeJ7pDPD9eZUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k/U0UMZC; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-6ef81222be7so63374287b3.3
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 07:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734537352; x=1735142152; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kP77otwR85pohU1u8v+U6/CSHDJCnIQRrPv+NibxSx0=;
        b=k/U0UMZCjNMhfD4hbkzKdDE9DyX6DFphan+APVi2CB7Apoox4CNv8cOwAhHQWNSxMI
         4Db937mE2zIorm+6iIIV3Mtb9ElNxKBnMTzbWaAoG7DPVYxpiqPPiIiDtdikYulCE8U/
         dBItbvKN3mGmPWXEpuT/X6C9HDecIRN5DDyAeCgl14aAs9k/JNbu044LreJYQx7nx92J
         fCoS5YCqkdrBrzhpZ1c56xXfe9Q1Ns8yGoMS4hUt/plk6dbjoCxMwBqZ0POYEZ27lyfD
         xZUEGku95yPcLJcURu+VSXoMj4q6yxoJgVqnHYjGr6ZVty9V/s8DKm8AlEIbsWFKPF7T
         tsDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734537352; x=1735142152;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kP77otwR85pohU1u8v+U6/CSHDJCnIQRrPv+NibxSx0=;
        b=owVKITUa1MJLqyyQi0VRF6Qieb94d4Wi7NVnKPgN4XiYpHR6sAYTfHYWdnPk8CIR65
         Qyf4VouqmPQ3q0JnaWXYCBIk73ARn/KVvchczKEEU98xqWwh7M6lvWznwh0oRSHUu50B
         pApfpc1CZZ42rhtQn7RP1y6URj3zl4f4XmTLpwoZhV/3gVeeKXZnMbl9gM2/BeaJllrN
         PblVC3dl/wvK5rZctKjSY5tOvtW33OcGDf5fEcNYSOpZQ9K78gxFrI07tqauTtaLW+WJ
         NtrIiSPe6sDPBo4ShuzOU6GOdzpp/hHBFK5kIhPdmf7cWGG70Llz+8IWvuHos8svI33U
         rrNg==
X-Forwarded-Encrypted: i=1; AJvYcCWrmNveBbL2ka4/HUBxByFfDW5XMBXdM4DsXgNrc3GeCB4EqDfLz3gFruTStG3fC5uWb1iOBAhczWWI@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ97tgYWEQF9XTXZew5SYIAaxGSv/AT41/ML7+Jp5piEpSdCz3
	Ev+LimS010ISaqG118/u9kEV7wzoYD2Wi5x/wn2+ThKrwaIb4ueK5T34yDOIsGrvNK3lic64G0O
	YPvdktH3VZkBpKm/6dLwdtAoESLR1SsVou7+Aaw==
X-Gm-Gg: ASbGnctSQHzRm8k05jEkxw8aa1FX4wVMU+fGozlDWajoOZqmy2mJGrXT7kBsjV1NYfR
	nZYWdfGexP2f5VYj+GvBN1VtsLfYXAcoqka+Baag=
X-Google-Smtp-Source: AGHT+IFcDjIyutnN38PrfueeZkhwflHd2lPy0n6+1NpWzd1eHmYno36KM7bQpYPz6FkOWtp55zLwUusqOGk7tdB2RlI=
X-Received: by 2002:a05:690c:9a8c:b0:6e9:e097:7191 with SMTP id
 00721157ae682-6f3e1b30fe0mr1408447b3.9.1734537352351; Wed, 18 Dec 2024
 07:55:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241210073212.3917912-1-wenst@chromium.org>
In-Reply-To: <20241210073212.3917912-1-wenst@chromium.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 18 Dec 2024 16:55:16 +0100
Message-ID: <CAPDyKFrJYvMvBby5mhOAsyp2_Dx+KuOEnGaELMydKBHFcyO_VA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] mmc: mtk-sd: Limit second register range to SoCs
 requiring it
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Chaotian Jing <chaotian.jing@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wenbin Mei <wenbin.mei@mediatek.com>, linux-mmc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	Frank Wunderlich <frank-w@public-files.de>, Andy-ld Lu <andy-ld.lu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 10 Dec 2024 at 08:32, Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> Changes since v1:
> - Added MT7988 compatible string to list that needs second register
>   range
> - Dropped comment about uncertainty of MT6779 from commit message
> - Picked up Angelo's Reviewed-by
>
> Currently the usage of a second register range for MediaTek's MMC
> controller is seen only on a few platforms. However the driver tries
> to grab the register base regardless, and then ignores any errors.
> This makes all the other platforms that don't need it produce confusing
> error messages.
>
> Instead, make the driver only grab the register range for platforms that
> actually require it, and correctly handle the error. Also fix up the
> binding so that validation of the "reg" property is as strict as
> possible.
>
> Please take a look.
>
>
> Thanks
> ChenYu
>
> Chen-Yu Tsai (2):
>   dt-bindings: mmc: mtk-sd: Document compatibles that need two register
>     ranges
>   mmc: mtk-sd: Limit getting top_base to SoCs that require it
>
>  Documentation/devicetree/bindings/mmc/mtk-sd.yaml | 10 +++++++++-
>  drivers/mmc/host/mtk-sd.c                         | 15 +++++++++++----
>  2 files changed, 20 insertions(+), 5 deletions(-)
>

Both patches applied for next, thanks!

Kind regards
Uffe


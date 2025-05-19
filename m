Return-Path: <devicetree+bounces-178419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CCBABBC23
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:17:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BA84189C62D
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3710926982B;
	Mon, 19 May 2025 11:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vDJ05K+e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1691272E51
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 11:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747653469; cv=none; b=QWfK2UzH6ahEtaWEorTUX6BPX7S9GLSOEz96uWstwRg9zUBzSAOICSy+AAkFzXLCKg17pwYnqg6IVDhWTm7hcCjl5BTVftFF5PYO3DC8jBcXazTRwrG3eQxxEzN+SSMsfr0vxTKVP6VO4hrSIXLddxR24g10iByNrwiaKZePjZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747653469; c=relaxed/simple;
	bh=BBa1p+93rbInkHFD7cu4NFc1HnCPbuyMOY8gIKSTD6U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LJTUsIKKllDgWTgExYszNawOHyG/nttszBhl9AsV9nLUF/jJMKsJKraq57qWtxrm8Vp1RcGXnL6jqd0w6TkcM6Pdw+HFiiyBQPucCXot5a97tJa+5Cu3CqM7baFyfjcYgFWpooXV3ZZhLn38lbK4Y9moGUc+MmIBKH0uPrh+1TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vDJ05K+e; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e7b7b4eaca1so2282971276.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 04:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747653465; x=1748258265; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ByMrX1Fxu6vn5FGyTRQj4KFvlAc0MJvBBAYMSrSilHY=;
        b=vDJ05K+eaEQ6xuWO5XObaku5f09p9BRwHpCT2+NHMF33dAm4Etu2i+PCAREKXMZTQ9
         kC4MzOyAKmh8Fy6sesZL8foWBx/SJF6a73mattmgM4yMz5dCshX66Mmcy2Md3IljGV2s
         RAkV0jIWXxaVjVcDCSdHxQkOleXGUyXCxnvKNbjEgUqjJ4veEgwyfhjpWWKbbbC9kJUp
         iN3mZQ7o8zQ+8q7hEMBJHJcBgisIie1hYQAVhtvqLL6QhcSK3hqaAx7yEbAKTuP4e7dX
         biL2l4lhE7rbkgfGiO8VsFl9fZoone8LkQCNuGR2TCBtByDJxdsebptkYDxwGO/+5WTD
         5wXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747653465; x=1748258265;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ByMrX1Fxu6vn5FGyTRQj4KFvlAc0MJvBBAYMSrSilHY=;
        b=qOnfAm6sbJl6xfULO4uY1bKo5F3E3mWNpL1LF43ZojLSL5Lrpt9ZhY+UGCBhK48WQ3
         0kGvnEtsCgIuR760PSikWkB/u/QpgNzxO1yqXIIIWn84Fi+ag861Xe4Qm4eICmyWBqwn
         WjE5K95QIu4tdTB9x6cgOgmnZoN+C27fa0dHYE0ccHkTlBLIssYo8N84e/Babnqxwi2I
         VHxTgCjN5fIgsvlVEpV1Toi5dEw82NRU1ieZw0hEKt52cYvSF7VaNHTb0kqoLVSlIGwQ
         kfuW6XoMiakhL6SCMxq+vccJDdRXvtJHEWc7zATw2aDU3HbxUK1G8dqqS08pT6aWD04b
         GJxg==
X-Forwarded-Encrypted: i=1; AJvYcCWmEUxIPT7+PBIClAJYuFLxmYLv6a5rIf9QJ6q8nr03ARwIcVgCjP3JDfuq0RSHPilgiXKMhlcvoq/Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyVkxoLpTXE6RFgz0lol9kostrX3AilKs0vokDVOB5JuCxuVz40
	o8TJCQaXBUVGZeybzlG5uxprXeqt/6z5ktGHqQhX0G5AHsY+5M9V4Lc4QATQZAy72e4Hen9R1Wz
	pKW1pvx4vU3dPQTmuhLbRlG7xNZgt9SsbdAjZI0zLrA==
X-Gm-Gg: ASbGnctuLyuerEhGO3Er6bOs0fbaN70JEQnKUEoHujtey/mVZO6XC5eU7OTn+JFFvmI
	2wUGWAazTRnB/Z97j9eMTCMPbzyzlqbjYrQpZHgcvB10TNGUJXEERsK+rTOqQZGNf3pQ4vLzmP6
	HCroFRxfzCOiNYGUB5552y75Y3hvUJ9g/NKg==
X-Google-Smtp-Source: AGHT+IEKnaIepG8Xu8dXigkseIQg2Elah7K+s02DVYBTys+Y3pqAA6EVTrbsP8cwn+bjFmdEtTTVIsP4u/Z11dsLsQ4=
X-Received: by 2002:a05:6902:2190:b0:e7d:3b61:e24a with SMTP id
 3f1490d57ef6-e7d3b61e544mr2112278276.32.1747653465642; Mon, 19 May 2025
 04:17:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1746581751.git.zhoubinbin@loongson.cn> <704447268706b1b9f25bbe9d15459163d0ac3404.1746581751.git.zhoubinbin@loongson.cn>
In-Reply-To: <704447268706b1b9f25bbe9d15459163d0ac3404.1746581751.git.zhoubinbin@loongson.cn>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 19 May 2025 13:17:09 +0200
X-Gm-Features: AX0GCFveu0YoTJh4AI6kbpPNJ1GJA5WZq95nOMrbprGfHNrxs7iIBViE2fZiSTI
Message-ID: <CAPDyKFo4n=K5-SeKFpCm-0u4Bbk-E0XqUrx+KSK1yuZa35a7ug@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] mmc: loongson2: Add Loongson-2K2000 SD/SDIO/eMMC
 controller driver
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 7 May 2025 at 09:28, Binbin Zhou <zhoubinbin@loongson.cn> wrote:
>
> This patch describes the two MMC controllers of the Loongson-2K2000 SoC,
> one providing an eMMC interface and the other exporting an SD/SDIO
> interface.
>
> Compared to the Loongson-2K1000's MMC controllers, their internals are
> similar, except that we use an internally exclusive DMA engine instead of
> an externally shared APBDMA engine.
>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>

[...]

> +
> +static void ls2k2000_mmc_fix_cmd_interrupt(struct loongson2_mmc_host *host,
> +                                          struct mmc_command *cmd)
> +{
> +       int val;
> +
> +       if (cmd->opcode != MMC_WRITE_BLOCK && cmd->opcode != MMC_WRITE_MULTIPLE_BLOCK)
> +               return;
> +
> +       regmap_read_poll_timeout(host->regmap, LOONGSON2_MMC_REG_FSTS, val,
> +                                (val & LOONGSON2_MMC_FSTS_TXFULL), 0, 500);

Can you please elaborate on what goes on here?

Note that, the mmc core uses a couple of different options to manage
busy detection monitoring on DAT0, for those commands that need it.

*) MMC_CAP_WAIT_WHILE_BUSY - if the host HW and the driver for it
supports IRQ based busy-detection.
*) host_ops->card_busy() callback if the HW can poll the DAT0 manually
for busy-detection.
*) Polling by using CMD13.

[...]

Kind regards
Uffe


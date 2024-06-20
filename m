Return-Path: <devicetree+bounces-77828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EED1910149
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 12:17:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 321561F22F30
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 10:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C2251AB350;
	Thu, 20 Jun 2024 10:17:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AE71AB346
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 10:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718878633; cv=none; b=DgGhYnUbZJxTsXttzorsFLe6Cb9OFEb77r4HIaooeyJRir7wvneEr50CilEPAYI6ZxzGJRbekqmng4ZBnFtXkMNFLTFxCLHo5q+keQjjSG8OsPhXZvQXCI74qplaR6sCPVz0QHyyvVMfVbgqBTk7FSnSskh33s8llyhMvU+wce0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718878633; c=relaxed/simple;
	bh=I852Ejxeh6UBMbuDlX5f1x21bZJ26MMuC54Ks2Ixqy0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q447sk0wuunG9Wwz5J/YCg0wOuiJPU7+Vzva/spp0cTgPQtuJngMSxoE681k5YxnREAsKTVaja/qD3DmnVZ49V+ExT8XVGPt2ZY0YKxkrBTYNMYOCX2HfUwzETO+vK747cznfbf/cCTvurHxLcQbOlKlxkogasowxXc5ufRXA74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-7ebe019b9cdso23052839f.0
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 03:17:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718878626; x=1719483426;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Ii5+G2KJSVTDisMBcuARMzoZC7l2YVn4JwkkJV90oQ=;
        b=Y4hWYUp67GvEtz9D/BAhZMzma36oUH/IkUJJoLJGhIcUM/kpoe4z7MJIGZcOwe6jDe
         X7er+PmI8znS4NXv6QJZDg3gR5bGg5Gysjq6XpMBJx8eg30pBL0vhVadOVc2EgTFcQCF
         lRw+VSe2iEz7B4EHinm5Jbyb+m8FH52znb0hgVHxoWnjX/MCW4ErwpEXikp9HbzmAwFb
         PxejcPDMNwQ2vflEJ/M8lMMha5XAmdnYG0AcN84D8x+FfREeqE8awLrF1ZfM6TOItY8Q
         Tz3VTvR1fdq6NICM9S1dIFehIgmcxvq1ZsQyRwWl1AkMQNeMe3SpjfghRUwKSZVWEZMO
         7YVA==
X-Forwarded-Encrypted: i=1; AJvYcCUihjxDolY1U1FKTe2KDnJS4wSsXOvDocnKqFA1UHhX5jx4NYp61bQeKQkCycZN7VpaT31rzQPBl8Ot4LgoQfMnhFKErdyRB7ougw==
X-Gm-Message-State: AOJu0Yxmd5D06LDr37VhF0V6aQGG7Ez+Mb3JEKQKCneoqZOsPSOApSo5
	UPEvuVrl3dVzJkCIQlV9mQqLV3S90iHhasa9UtFcQ537wnkcvRF+/2jc8xN6IcBsig==
X-Google-Smtp-Source: AGHT+IHdUZpY+ss8gcPIJlLYVW9Ab7QtmzFsB3UfabhpyIBCMdxIhKc+5UPT10J4mxBA5U3PJYgRDg==
X-Received: by 2002:a05:6602:3429:b0:7eb:708a:3264 with SMTP id ca18e2360f4ac-7f13ee0f2cfmr516632639f.10.1718878625901;
        Thu, 20 Jun 2024 03:17:05 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com. [209.85.166.45])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-7ebdba37b01sm367644139f.12.2024.06.20.03.17.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jun 2024 03:17:05 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-7ebe019b9cdso23050539f.0
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 03:17:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVZloiNW/6ABZ/JcYrJhr+jqekjU5Ky1hqUKLDl0ohJIZ7w1RzFEQ/I9FfxXibnzYm8MnMM+emOg1TD4GjQrUwco/bb/wGVby2yPw==
X-Received: by 2002:a05:6602:1347:b0:7eb:2c80:5329 with SMTP id
 ca18e2360f4ac-7f13edde6e4mr577440439f.7.1718878624678; Thu, 20 Jun 2024
 03:17:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240616224056.29159-1-andre.przywara@arm.com> <20240616224056.29159-2-andre.przywara@arm.com>
In-Reply-To: <20240616224056.29159-2-andre.przywara@arm.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 20 Jun 2024 18:16:49 +0800
X-Gmail-Original-Message-ID: <CAGb2v66-a+BOB-V5Q+YOS3M=QTZ7VMG73N0yFtRo6p-xh=muTg@mail.gmail.com>
Message-ID: <CAGb2v66-a+BOB-V5Q+YOS3M=QTZ7VMG73N0yFtRo6p-xh=muTg@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] iommu: sun50i: clear bypass register
To: Andre Przywara <andre.przywara@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Ryan Walklin <ryan@testtoast.com>, 
	Philippe Simons <simons.philippe@gmail.com>, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2024 at 6:42=E2=80=AFAM Andre Przywara <andre.przywara@arm.=
com> wrote:
>
> From: Jernej Skrabec <jernej.skrabec@gmail.com>
>
> The Allwinner H6 IOMMU has a bypass register, which allows to circumvent
> the page tables for each possible master. The reset value for this
> register is 0, which disables the bypass.
> The Allwinner H616 IOMMU resets this register to 0x7f, which activates
> the bypass for all masters, which is not what we want.
>
> Always clear this register to 0, to enforce the usage of page tables,
> and make this driver compatible with the H616 in this respect.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

> ---
>  drivers/iommu/sun50i-iommu.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
> index c519b991749d7..dd3f07384624c 100644
> --- a/drivers/iommu/sun50i-iommu.c
> +++ b/drivers/iommu/sun50i-iommu.c
> @@ -452,6 +452,7 @@ static int sun50i_iommu_enable(struct sun50i_iommu *i=
ommu)
>                     IOMMU_TLB_PREFETCH_MASTER_ENABLE(3) |
>                     IOMMU_TLB_PREFETCH_MASTER_ENABLE(4) |
>                     IOMMU_TLB_PREFETCH_MASTER_ENABLE(5));
> +       iommu_write(iommu, IOMMU_BYPASS_REG, 0);
>         iommu_write(iommu, IOMMU_INT_ENABLE_REG, IOMMU_INT_MASK);
>         iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(SUN50I_IOMMU_ACI_NONE),
>                     IOMMU_DM_AUT_CTRL_RD_UNAVAIL(SUN50I_IOMMU_ACI_NONE, 0=
) |
> --
> 2.39.4
>


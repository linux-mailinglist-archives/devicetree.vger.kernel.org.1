Return-Path: <devicetree+bounces-63943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 414A88B7252
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 13:07:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED42928198E
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 11:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D77E112CDA5;
	Tue, 30 Apr 2024 11:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j5oqDNOQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6145412C819
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 11:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714475224; cv=none; b=WxS7al1oMzemagI/hDuQt+sFiTzrmv8PWUwQQ+p2V6YggYy02O6NuSR52WekmJwHoiyg+JXoXlr0v3NJ8/bXznLBKU+WHx3Nc/Te5cOKxcGu/ML/SZS1ziV4fH1xCoefZmN9vGxSLyC5pPzns3HSjSBC92vAPrl1N3t28gdCbzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714475224; c=relaxed/simple;
	bh=+6cV7rhQy0tyqmlQOhmCF7WmeVnptWzEPHeS6lT3oBA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mY6YYXVOQPsCEu5yiLxQXJxjEMqu2b8p99pP6q7B6OVkwceKo4JJIUDidqsNnwPRaczqbmTk8iIpO9/Rp0MROIOglJby1cAbxRjt1R7q6sL/z5mYAe1F0FAuUfcLy0esYvHAQnr6Kahzcpf5ZvZI0iXGs+kRhA8X0DP70RLmtsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j5oqDNOQ; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5aa400b917dso3683905eaf.0
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 04:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714475222; x=1715080022; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JlFLonT6AbxZce1grlaceJ+UmWNTD7jKyAmm8+eZz5A=;
        b=j5oqDNOQqQauMBOj/sZxhKQI62RwyUm8Zb9wcuXvP+wlTiuuDEq3rzLJezH3nL9KML
         WTKx4SJfCmnwDbF8x+ncK2/RIocgcPiV5/7ZQBoyPlylR+YL7Cnpz9hkJkKe82URr405
         iaErhH7KEpAV1kYDg2m8Lw+WcSwDcb5e18K1aOJpHT0zBUk5JoPhhNqoMFn58VwbZWTr
         lbmwfRTU6lis+Mgwia5l0iokmf8GfaT5bNftZoa7OrSimoKrjNDfAhsRHlploRnxSE8s
         zvA2y3L8zQ+5GzwxrbRnj6oiL/dDoFXRPKHzbT8VRdM/cSpjzY86hSqfNZxvCcgAkHT2
         44Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714475222; x=1715080022;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JlFLonT6AbxZce1grlaceJ+UmWNTD7jKyAmm8+eZz5A=;
        b=nqiWysASjJQxRtNNZZZsQlou6q7W9yl57NBmrK+foN4eDyDDEUkE0ebosIuvxdXHi/
         nh21QAGXnvCTLE4eLHKNv9ztaD90fOzvKJKaeqTbmF6K7gn7Y7vi4Jnfy7ka5ohdTxWo
         asWIGIHWQmX0EBsI1fh00mvV2bVHRoYB9s+U14v0+yPHBuIYTJfA/+ox4e41kvZ++ltv
         nMcXuTZ3f0E5keTEY6+l/wEEhJFHcnvaTdMheWWxox5Qj5jil4IzK+tiNFAA+ltBL0vw
         mcR6XPlV/W8LrytaxbbF04pSibpAVHGKodcYgZ56fqbowH6O1EJ2t7pIqPic95ZpHG7D
         8VJA==
X-Forwarded-Encrypted: i=1; AJvYcCXB0ApQiOjcFmV9dy7Y4rqu6t8KPuk0/wzBA+kKn3KG8Z+szgU84h2mb0ymSg/+X4W7yWgUUkzXwdQwjfcgzWvuRFVWqrqpvOaL9g==
X-Gm-Message-State: AOJu0YzeeAElsvnPf5penr6NQFu8nEMhcI8eT2R2wn80dbDczBQOswYv
	XvR85IGD7FTCCU0wlkcscPHfNOOVsNSQOk3ink3ahEX1qJxxDVy882YGVSBK8iTgNcb0uAcuLXb
	jNlO3weT3oykp6YaQURuyJe5ln3hYhDGOt0683w==
X-Google-Smtp-Source: AGHT+IFhPeJXeV1s//xKAbfSLFyLypE5EQb5yNM836B9rqVy61LRxN3Mxm8oY0UDLV94lhjAp+2c4sfuf0XgokC2zZQ=
X-Received: by 2002:a4a:d46:0:b0:5ac:c39b:3a7a with SMTP id
 67-20020a4a0d46000000b005acc39b3a7amr16090427oob.1.1714475222500; Tue, 30 Apr
 2024 04:07:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240429111537.2369227-1-peter.griffin@linaro.org>
 <20240429111537.2369227-4-peter.griffin@linaro.org> <8b3c9d34-15d5-4aac-b725-4cc25e469a58@kernel.org>
In-Reply-To: <8b3c9d34-15d5-4aac-b725-4cc25e469a58@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 30 Apr 2024 12:06:51 +0100
Message-ID: <CADrjBPrSLpjsgHBncYG5cfh6nnnFMv-vsk3Uq9PXsBa2JHRf7w@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] arm64: dts: exynos: gs101: Add ufs and ufs-phy dt nodes
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, tudor.ambarus@linaro.org, 
	andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Mon, 29 Apr 2024 at 18:30, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 29/04/2024 13:15, Peter Griffin wrote:
> > +             ufs_0: ufs@14700000 {
> > +                     compatible = "google,gs101-ufs";
> > +                     reg = <0x14700000 0x200>,
> > +                           <0x14701100 0x200>,
> > +                           <0x14780000 0xa000>,
> > +                           <0x14600000 0x100>;
> > +                     reg-names = "hci", "vs_hci", "unipro", "ufsp";
> > +                     interrupts = <GIC_SPI 532 IRQ_TYPE_LEVEL_HIGH 0>;
> > +                     clocks = <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_ACLK>,
> > +                              <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_CLK_UNIPRO>,
> > +                              <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_FMP_CLK>,
> > +                              <&cmu_hsi2 CLK_GOUT_HSI2_QE_UFS_EMBD_HSI2_ACLK>,
> > +                              <&cmu_hsi2 CLK_GOUT_HSI2_QE_UFS_EMBD_HSI2_PCLK>,
> > +                              <&cmu_hsi2 CLK_GOUT_HSI2_SYSREG_HSI2_PCLK>;
> > +                     clock-names = "core_clk", "sclk_unipro_main", "fmp",
> > +                                   "aclk", "pclk", "sysreg";
> > +                     freq-table-hz = <0 0>, <0 0>, <0 0>, <0 0>, <0 0>, <0 0>;
> > +                     pinctrl-0 = <&ufs_rst_n &ufs_refclk_out>;
> > +                     pinctrl-names = "default";
> > +                     phys = <&ufs_0_phy>;
> > +                     phy-names = "ufs-phy";
> > +                     samsung,sysreg = <&sysreg_hsi2 0x710>;
> > +                     status = "disabled";
> > +             };
> > +
> > +             ufs_0_phy: phy@0x14704000 {
>
> Drop 0x from unit address.

Thanks for the review,  will fix.

Peter


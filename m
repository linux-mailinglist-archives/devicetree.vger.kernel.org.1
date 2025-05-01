Return-Path: <devicetree+bounces-172775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90126AA64C9
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 22:34:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4852D9A37BE
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 20:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2605822172D;
	Thu,  1 May 2025 20:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="suVW45fC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D62319F10A
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 20:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746131681; cv=none; b=XuaqAqKTJQPuVpHP6FEeIlOHJS2zrtrrKXQzoeGZUmOKumJA/eMlTQZER7TdNvLp46T2wj1ssGJfiEC6xMjqYzJez3Iq5DHZbHgdwrsgPLhZwEILR6wkF8IohVyCgau/rT3nMh27NeWsFtJU4X9M2MQfjicGsmgJS7+DTq/iDVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746131681; c=relaxed/simple;
	bh=8pF1wWpVwTMd7z0FTKQe8nYgw+2TdAxHhQ+Tcw3TpA8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PbHEkikwxMtjTuWPRg/etB91dRoYtfsMRKm7uMYFYJAWBR5+y4lxBWNH1LeyA34OvFjfEpyPeQ+MjI0pNliEqiCJ+pHUtXIR/EyTdVrFn/YzmcubEAUdHpgFao+s3vIKHNMNpVZxn0z/MuDiCIwGgryfcD1NRtQkm0wtdCzdcns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=suVW45fC; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-2cca475546fso745404fac.1
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 13:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746131678; x=1746736478; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=s2/TuQL3kQKm2Ps4XEUaXLRCzG1Av6dinL8AdUC/eeo=;
        b=suVW45fC2QAOMX2j/ERCAKJ4AkCkIlmTD19KOe9xxQduwjhLEWOOrSmugompilQfyL
         mYToKXYBINzSUwB7suMoA9wwgAzCTejNCKdtbnHdJ7kbOVCDmugy6FxMD2uQmhYpz+dI
         yk6u+MUYxZ5WRc4svO+JX91J92X9c6NZw6bEpCNrfpgU6B6oi7mARNe83mbg1mehSiuz
         ydoU9mzIV0JCRtUud89C51cN5zEajESLmRUi1ZDqwJJZxczWjvZ26h1kl9N5VRK25X4P
         pWtSeIo8Wk+V+CT7q1acuD4fl/30T7Urtbq+qkMLcCkj4yNA/hgbrXUIqf873o26/puG
         UGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746131678; x=1746736478;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s2/TuQL3kQKm2Ps4XEUaXLRCzG1Av6dinL8AdUC/eeo=;
        b=NnP41FjcESEiaiNkQqP92gLgPzzsE++udtF9/OqSu25pEroR0bqwHICFPimFZGZqQf
         dPOzxqmhBxSsjXV8hs4YSXsrtbUKYMleJf9mv1hznQ4u+p5ZsrnM7duetQNAPFjNNMFF
         kif+LdB+0iwa1ITHGqNDp7S8YDMAbqGKBdmQKJPU1kNPhagaeMHzrxSgiHLSLXWTZQKl
         2vRv/eGWt9uWGz8M+iklrDw6C3xjr0GTAI7ZTDI01/NOqWrzoPRQpNb5BX4FKpunoQgc
         gkAkYXaQ1OJ1SAuZgJKKe0iHwjeYYSu1ulsU7KOorVnze3m9Vt3dReqecyraWtU7xImK
         6psw==
X-Gm-Message-State: AOJu0YxQ7jSKpM3QZQ6zwLRoUU46uiltQtEZJ3QTjlGKs0LeAEBtXADn
	gqptA4bMI0TbBw66bzYYYAKFx5Rmqf1y6JH05LZeV6GUvadnn1HDnd+I07T2JMTGHJ+V+Ro9ovS
	MHl+XamVrQRMHYdbB9VBM69stfApi9Gv0oz582A==
X-Gm-Gg: ASbGncuBmwdAqbe/w8GINqOxEq07ym54BKcTInJ2zS3wMEcSbr+wh1xzCgf35lEzyH8
	sODI8P4sWAkP42vvx9cVMNJMgJS2mqd1vYcnAjU4DjYzh5qs+NRmuJJMN+nf8cHLZxU4O8Y3RK6
	q2tEYeIqiZKjdb26ZTpoHpPA==
X-Google-Smtp-Source: AGHT+IF6bq7NXLJi5546fpk08Q9+VHouk/Ivf8VOZeleLm+nJv5PjsAxN/cnoxBRn6+mutu/ZCv+/Az9E+zhUFk9998=
X-Received: by 2002:a05:6871:7419:b0:2d4:d820:6d82 with SMTP id
 586e51a60fabf-2dab3313467mr143467fac.26.1746131678613; Thu, 01 May 2025
 13:34:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250429-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v3-0-1bcc44fb1d55@linaro.org>
 <20250429-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v3-5-1bcc44fb1d55@linaro.org>
In-Reply-To: <20250429-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v3-5-1bcc44fb1d55@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 1 May 2025 21:34:27 +0100
X-Gm-Features: ATxdqUG_Q1uY69qq7IbymtjMCwucexqjDWrXAetFETrm0a0bcDxzCmS7-g07qNE
Message-ID: <CADrjBPrRmQKvuTMZXAF+gVgMzkDs1=9LkwrW7CHGVEYG8c8bsg@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] soc: samsung: exynos-pmu: enable CPU hotplug
 support for gs101
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, willmcvicker@google.com, 
	kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"

Hi folks,

[..]

> +
> +       regmap_read(pmu_context->pmuintrgen, GS101_GRP1_INTR_BID_UPEND, &reg);
> +       regmap_write(pmu_context->pmuintrgen, GS101_GRP2_INTR_BID_CLEAR,
> +                    reg & mask);

I just spotted a typo here in this patch, it should be
GS101_GRP1_INTR_BID_CLEAR. I'll send an updated version.

Peter.


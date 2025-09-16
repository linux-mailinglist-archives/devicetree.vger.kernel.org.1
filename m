Return-Path: <devicetree+bounces-217851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE828B596CE
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:01:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9105A3B47A6
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:00:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C3630CD9B;
	Tue, 16 Sep 2025 13:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DCKrlMsK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3CB3112DF
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758027618; cv=none; b=L7iG7FfMpV7o7FkFam506w3K1dJcKQXD6T3CdV4gxwc3ARHmXdhc92q6+LSrkr0Ypmpsupdr6t7vQNneKAgVMOTnisFkUDTgqHcdfGI1Y9B6O//9pcXscgYXem0efxeMNZuMuYYsVTNCcZ12VQ+Mul4C5B51z8jLf6/xLg1qsXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758027618; c=relaxed/simple;
	bh=oURn0Fx+wSdAWTFWUBDWKfggMfG/xWAXZ0heza4f4z8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZJnmhfaPkTjnLDCn3JuqciAkXfYcvUkydlkiMY8F6oWEaA7MwAPUvGRodvXNczxi6FdqSTb8KlUPeQU7zd8VHu8s5oegzEyf9gY7+jfKUSD3mjKoOMrlGf7s3VYodvNjJkVbroYyM8Nn1y4BNFXypaP1ImrAkS9EfxTQHlVco3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DCKrlMsK; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-32e34f472d9so1440097a91.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758027615; x=1758632415; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=enWPnFF9uqlsgFFLjvBI4bv4xem3PSExDu33Ls8l+7g=;
        b=DCKrlMsKWaRXnRTZJ53Gef6kxh5bs9RWW7pSjQhchoa/P1O1Lb9YieXragGIGCbbv2
         PGOb6trVnLHgPNjoW+TwmCrRe18kRSA7iI1joFre8EXgNwxvOo2rTbiLeSflrrSC9afL
         Bx1rdkpGisyVK4Cn96hmolDQVF1eXUVrZiOKlb91rmYeVdkmhwKaYZUNiSvM78/li3oV
         xJR9Y1vUsKPcfsmXUtZZfS4mPfAvlPMDcyqDu1HmPdV0KpqY7ndr2tkef2cs6XKgn2cf
         guXDMnwDl0PJngbHFN2UqeCOZ1L7wGgEP1o8dQ1uW1v9osN5FS5wnIVtlDdu7T6c8rNS
         Ls8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758027615; x=1758632415;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=enWPnFF9uqlsgFFLjvBI4bv4xem3PSExDu33Ls8l+7g=;
        b=dBOzDcCD026HUmKvKmA/mlrhBk2qqKzR9bPIawZgEhc00CoFmwUNf57c5zNpBwFJV+
         T5KZNLhib6LgGNdLfjg/5DhcZXYARpD5nCuvYpSnuaBHMsJOn6N9qQ2BrKDWuckO8bL/
         CSoH4CsYQYpeMfP/A3m9owPjA4XCIfjn8D3NYsh0yZy6tr5cvTrUDhpNV8PcE/dBbw9a
         pFE8kJn2eC5HNWGhGjeP2Pv7WVwheolbhVAaHZe/IuwEmfutMBGG4PhdMY664G0wnSTD
         6hWM9frx+0t1J5+iIk5cHI5f4DIZCwLFKGuIgDyI8WDk3rJkPjVRsfr9pLpP2qVPBrHY
         dYCg==
X-Forwarded-Encrypted: i=1; AJvYcCUMRGQs3bUy2FV6LKda+xIo6bzgHDTwIbRd6o2p1HDFG9tEHb/m/rR3GPItanIWqJySFMgHUHd0eWsC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv5b1E2XUbRsqjXnEZ8PzCLi7LiOoKykY0RLzRqEPoCVQD5vWz
	xtLxJnLksRLqFIQCeth2Y5O4GIMtXvbaIsYYRaTsNMLRc2KwKaoCX/fX2N8Vq+pL8psKZpStEMK
	LXJO17a78Rsu8D+oZ/J1tSB4otG4bH2Q2CCOfdYy3Mw==
X-Gm-Gg: ASbGncvg/xc31e+BoHTDZ7hCLP297YDFBklIJqeex8wZ2J0Cp16FBM9PheKhasyOXhV
	SOaGWnS0zJ869MjTytYuQCxV5P5aOqZaVH+tr/OQ07QE3Cl49DqPLinuPHoTk3WAqOrd1WYLqpd
	nBaLfV+5MnkCQetjBPS+LRSAc24oA/tA7x5V/g6cGMZV4Wtr3RxYS5c46m1DYo7G9A6/l3MwSXH
	b+a5CDZ
X-Google-Smtp-Source: AGHT+IGuQ/ohyWphuBlOtHx2+flX1KQCvCuCmbUoGGofMYdbPyzMKkQ4xeZzDRKvWShPxbaO2iXYgl4CZlPA5sTwbe0=
X-Received: by 2002:a17:90b:2681:b0:32e:b87e:a961 with SMTP id
 98e67ed59e1d1-32eb87eb05amr1186270a91.5.1758027615318; Tue, 16 Sep 2025
 06:00:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250831-itnoc-v4-0-f0fb0ef822a5@oss.qualcomm.com> <f9d3b3ec-dcf1-42ce-b925-70e5543771ed@oss.qualcomm.com>
In-Reply-To: <f9d3b3ec-dcf1-42ce-b925-70e5543771ed@oss.qualcomm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 16 Sep 2025 14:00:04 +0100
X-Gm-Features: AS18NWBql9OifdFvQHUMyc5To4QvLJzN5-WAsAMzlnEGRTrG8ZguYOFhnqgDcCM
Message-ID: <CAJ9a7Vivhrx2zss_8Ti+QS1dzakp+4CrAsDj00RKojUaL_t7Sg@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] coresight-tnoc: Add support for Interconnect TNOC
To: yuanfang zhang <yuanfang.zhang@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, kernel@oss.qualcomm.com, 
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Leo Yan <leo.yan@arm.com>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm a little confused as to precisely what this component is.

From the description in the DT - it appears to be very much like a
static trace funnel - multiple inputs, and a single output.
The DT describes the inputs as "Coresight Trace". What is meant here?
- if this is ATB trace then this component is identical to the
coresight trace funnel in functionality so should probably use the
normal CS static funnel driver.

However - if it does not appear on the AMBA bus - how are the
coresight management registers read - these are a mandatory
requirement in the CoreSight specification for any coresight
compatible component?

Thanks

Mike

On Tue, 16 Sept 2025 at 03:35, yuanfang zhang
<yuanfang.zhang@oss.qualcomm.com> wrote:
>
> Hi Suzuki,
>
> Could this patch series be applied? Is there anything I need to update?
>
> thanks,
> yuanfang.
>
> On 9/1/2025 2:58 PM, Yuanfang Zhang wrote:
> > This patch series adds support for the Qualcomm CoreSight Interconnect TNOC
> > (Trace Network On Chip) block, which acts as a CoreSight graph link forwarding
> > trace data from subsystems to the Aggregator TNOC. Unlike the Aggregator TNOC,
> > this block does not support aggregation or ATID assignment.
> >
> > Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
> > ---
> > Changes in v4:
> > - Fix unintended blank line removals in trace_noc_enable_hw.
> > - Link to v3: https://lore.kernel.org/r/20250828-itnoc-v3-0-f1b55dea7a27@oss.qualcomm.com
> >
> > Changes in v3:
> > - Add detail for changes in V2.
> > - Remove '#address-cells' and '#size-cells' properties from in-ports field.
> > - Fix comment indentation for packet description.
> > - Link to v2: https://lore.kernel.org/r/20250819-itnoc-v2-0-2d0e6be44e2f@oss.qualcomm.com
> >
> > Changes in v2:
> > - Removed the trailing '|' after the description in qcom,coresight-itnoc.yaml.
> > - Dropped the 'select' section from the YAML file.
> > - Updated node name to use a more generic naming convention.
> > - Removed the 'items' property from the compatible field.
> > - Deleted the description for the reg property.
> > - Dropped clock-names and adjusted the order of clock-names and clocks.
> > - Moved additionalProperties to follow the $ref of out-ports.
> > - Change "atid" type from u32 to int, set it as "-EOPNOTSUPP" for non-AMBA device.
> > - Link to v1: https://lore.kernel.org/r/20250815-itnoc-v1-0-62c8e4f7ad32@oss.qualcomm.com
> >
> > ---
> > Yuanfang Zhang (3):
> >       dt-bindings: arm: qcom: Add Coresight Interconnect TNOC
> >       coresight-tnoc: add platform driver to support Interconnect TNOC
> >       coresight-tnoc: Add runtime PM support for Interconnect TNOC
> >
> >  .../bindings/arm/qcom,coresight-itnoc.yaml         |  90 ++++++++++++++
> >  drivers/hwtracing/coresight/coresight-tnoc.c       | 136 +++++++++++++++++++--
> >  2 files changed, 215 insertions(+), 11 deletions(-)
> > ---
> > base-commit: 2b52cf338d39d684a1c6af298e8204902c026aca
> > change-id: 20250815-itnoc-460273d1b80c
> >
> > Best regards,
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK


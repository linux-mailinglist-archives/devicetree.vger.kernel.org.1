Return-Path: <devicetree+bounces-152265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B168A48820
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 19:48:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41AD216A28A
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 18:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 053461F5844;
	Thu, 27 Feb 2025 18:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tWqiHQel"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47DF1DE3A4
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 18:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740682099; cv=none; b=GM1TA4pc1BmEm30Co2w827Y9woC5G/sNoRbBuXIG1Z1AUvo5xmAh7KPHUErQlRS/VjkambNVELb1vyyn8L8nQc0d9Mrcbo5JLHEvcghRR90Osh9AYNNDGnvyPgL9QPT2kVVzX9c3YjigPhFzXbq9jd1SVhCujtCf7tHHnM6cC+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740682099; c=relaxed/simple;
	bh=Htmc6kuxWi2eizHOPH/z948eIEA0rcPXX8El+BENUM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gNqNbHYTkjkJLmakZBMJV9uXpKRh7KGnP1ubxI/jgjvK5qWixB48sffm7loprgxOiKH9nrYJ4VbAXLbO7BL6qApQUydf3NfOc0c2SCxPLy7BUbJTZB0f+B0VZDwfkQl013bm3T2S0VW0Q2m57Tt8Zs8z+kNY4fzetgxCg4w8ido=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tWqiHQel; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4394036c0efso8883315e9.2
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 10:48:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740682096; x=1741286896; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Bb8KXZX3ANfGIeTHJHU3o05Jpgv+u6AQgRQwt9Zi9Z4=;
        b=tWqiHQelNy4cfMxGOJ+rkm1AOU5UpKjCz9ajupBYL5cDcdxdlz+DKLuYYEYg8KFcNW
         wGNqAp37N28v5jWiHRpjLYVgpCQZs34CMKmAmFSdr9PRN7rBA/Kv5bCYMzFEWvhMLgNP
         HzttUEgzA5qm3iZcavj4lyFlwuqIOtu4zb/Cptq32L14tQCNJQFtES+0ljhySiwqmrOq
         PjcaPkVk4KLsmsptFCsbdO+Bmo6XfecvAeOvI2wKZnt4qcVUCbwK/7FQv61mMCZhtEUK
         dOc1e8Fg0LJrETdnAeTi1Zpx4Kotk4lDG41woT3dlpcEs+4kVrnovFcX/o9k9HO6LHj0
         d6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740682096; x=1741286896;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bb8KXZX3ANfGIeTHJHU3o05Jpgv+u6AQgRQwt9Zi9Z4=;
        b=Pq+o5wx+YzF5zCW11ugo12j8HjDrLSLE4uCnLbLbNJ85/N/aUMcn31foQXJShlBJKR
         Ds0pr8EQHhfJeQF681NroVTB83mdP6HIwBw7AtT4sqO0dmEQBSZ5C2dhacDGWbZ/cDlg
         zfFQaxloPTaZexJetgg2py6o6p4ZxmRBd9m3xyqGqOzVUixtJKES26IugesLMo00uZvE
         9h1ZYk8dPM0V4agT1TPTkwOscF8BFCwKlwLt0AmSxsmCFCSfAKSt8pBFtIBvJvRR2Gz3
         ibEF+tVUZf21ukb1UOfXg99e1BK/ifl44khVc437gzjyZy1TB4BA709wj87IRsrMko2S
         Zgfg==
X-Forwarded-Encrypted: i=1; AJvYcCVznzAlQ7eVcxKXxJf5kVQym1P9zUWWcx4wPVGc+zgnDVmOUITSp3wp77ui8Y7G5yHpzWMjfT3SiVpg@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc4VH68wAoJ9LUtPK7P/NSrXe0h4xYEAvOQKz+DuEQ5wm2mr+X
	0Ihb9NrmuDMjkR671B+VvSsiAVfH0u2J7Np7JZHETF1C+npFgrgcOjpc3ZXgIRc=
X-Gm-Gg: ASbGnctjjSE6fX5MKMswtjQoOkUlur98NS/CLSxus293wZJU01t5RG3dYzzaKD9g2pz
	YJcHhnNYUalabGRhqHxHhieCqYMpaU04que4/gpyQ6PK6vTqkCF+xgbHAt0EB0meJguVnGtybk4
	mmqLtIqvWfPsOIXnQFR+xxadEqpaBram5OEm3Iej+uV9JG1nswyRHQ6lLpz1P8nqMyJRU9eK0tW
	WAVZEAbIRUm5biSP7iK9nc99o7u2LuDHqw+CzvyjWq5xJQDhlFr78MMpIqgH8d/XO2hziu8MXST
	ZdDnnLLUE++2bZL1qQURUz6GVDInzs+KfCyVaA==
X-Google-Smtp-Source: AGHT+IH7I6OW3lREJS4GrA2RHi98FtxVjQEk2Xg/DMwogBGx+loLDRbFTnwNdW1JjJJdWpL7kZTwIA==
X-Received: by 2002:a05:6000:184c:b0:390:e50a:af81 with SMTP id ffacd0b85a97d-390eca64d7bmr259381f8f.53.1740682096027;
        Thu, 27 Feb 2025 10:48:16 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff21:ef30:1269:a239:cdb3:1db7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4844c0dsm2758577f8f.80.2025.02.27.10.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 10:48:15 -0800 (PST)
Date: Thu, 27 Feb 2025 19:48:11 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/3] arm64: dts: qcom: sm8650: fix PMU interrupt flag
Message-ID: <Z8Cza7ZZxy3fbBC9@linaro.org>
References: <20250227-topic-sm8650-pmu-ppi-partition-v3-0-0f6feeefe50f@linaro.org>
 <20250227-topic-sm8650-pmu-ppi-partition-v3-1-0f6feeefe50f@linaro.org>
 <7535057b-b6fc-4831-ac5b-b68903083747@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7535057b-b6fc-4831-ac5b-b68903083747@oss.qualcomm.com>

On Thu, Feb 27, 2025 at 06:50:31PM +0100, Konrad Dybcio wrote:
> On 27.02.2025 5:04 PM, Neil Armstrong wrote:
> > The ARM PMU interrupt is sometimes defined as IRQ_TYPE_LEVEL_LOW,
> > or IRQ_TYPE_LEVEL_HIGH, but downstream and recent platforms used the
> > IRQ_TYPE_LEVEL_HIGH flag so align the SM8650 definition to have a
> > functional PMU working.
> > 
> > Fixes: c8a346e408cb ("arm64: dts: qcom: Split PMU nodes for heterogeneous CPUs")
> > Fixes: d2350377997f ("arm64: dts: qcom: add initial SM8650 dtsi")
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > ---
> 
> I couldn't find anything to back this up, not inside, not on Arm's
> website, but downstream agrees, so..
> 

The GIC doesn't really have a notion of LOW vs HIGH in the programmable
registers. This is generally a design time parameter, e.g. for GIC-600:

  Level-sensitive PPI signals are active-LOW by default, as with
  previous Arm GIC implementations. However, individual PPI signals can
  be inverted and synchronized using parameters
  gic600_<config_name>_PPI<ppi_id>_<cpu_number>_<ppi_number>_<INV/SYNC>.

  https://developer.arm.com/documentation/100336/0106/components-and-configuration/redistributor/redistributor-ppi-signals

For Linux it shouldn't really matter, because gic_configure_irq()
ignores the polarity and looks only at IRQ_TYPE_LEVEL_MASK.

If you still want this to represent the actual truth, then all hints
I can find only back this down (not up) I'm afraid:

Arm® Cortex®‑A520 Core Technical Reference Manual
Arm® Cortex®-A720 Core Technical Reference Manual
Arm® Cortex®-X4 Core Technical Reference Manual

  17.2 Performance monitors interrupts
  When the PMU generates an interrupt, the nPMUIRQ[n] output is driven LOW.

  https://developer.arm.com/documentation/102517/0004/Performance-Monitors-Extension-support-/Performance-monitors-interrupts
  https://developer.arm.com/documentation/102530/0002/Performance-Monitors-Extension-support-/Performance-monitors-interrupts
  https://developer.arm.com/documentation/102484/0003/Performance-Monitors-Extension-support-/Performance-monitors-interrupts

So please check if this patch is really needed, otherwise I'd suggest
dropping it.

Thanks,
Stephan


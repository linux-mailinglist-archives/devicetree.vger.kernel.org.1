Return-Path: <devicetree+bounces-207639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C837B3021C
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 20:33:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EEDCF605BBC
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 18:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C86C2E2829;
	Thu, 21 Aug 2025 18:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="KdTQnqvO"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99AD2580ED
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755801168; cv=none; b=IU9AHgPv4zvd1yHO3HN19+Rp//MX4VepX/St1TeTyrxw5r70NZ+IA9WlDOzOLyM9VXT6ttptqzM3W81XH14KLVIFsaOwV65QQxDXZmofMwhsBmedvlGFDgXNCTy4kforNkWKirCDP49v64joX4076PWyeo0ObBCxN6PTIedPbEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755801168; c=relaxed/simple;
	bh=xmFoegaHOnErQaDfGoJTZzEBXqlmEwNm+xf91HfBQDo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K80/EYEyxE0hMInBcBrMvy9elmI5IHb3lePsXAzZf0WMklpuPh159rZzOsfr1098fIzhE94AVAT4SE7FXS3FoZ5uD0GkDP0+GJPfMpmA6fojYgB+ZU2p6LBM8nyoYThVjjwFHH3NR3cDgK8UA3Nlo4oJ/AYQ6m3CWXQyagQE6r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=KdTQnqvO; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1755801165;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KON+Q6whUKmJdJeXPPkBBlZNmW3IaSDriSZEFUK+R2Y=;
	b=KdTQnqvO/YQ+ueqFA2tkcWwHwUNk5Xe/8/XwrzqKxIF5LVHMJ/yqS4yZiMQKuftIlFVl4K
	OvDa0GXQSEtHW2toMcqhHnX4kNnI95gkY9SXQtUtnF9lkGBdjr/TJkZh7wrFONitIQgi1a
	KNDbCXIGjZP+0kFJm3U9RIntmBIMQhI=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-624-azKB0anwNfmpH5mYKEwcZg-1; Thu, 21 Aug 2025 14:32:44 -0400
X-MC-Unique: azKB0anwNfmpH5mYKEwcZg-1
X-Mimecast-MFC-AGG-ID: azKB0anwNfmpH5mYKEwcZg_1755801164
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b0fa8190d4so60696391cf.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:32:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755801164; x=1756405964;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KON+Q6whUKmJdJeXPPkBBlZNmW3IaSDriSZEFUK+R2Y=;
        b=QZgFQT6fnAke7EYgZibC/S6H67oEY71WgyOy4qquKForjb37GB4t0ajyNKvQgrKoTF
         r047N2pGFFL1Xag7ycwL360JiR78zT3dApL3kwJ6e1gSI6j8RbBXP1V2EMq3ygOd9FmE
         K2EdH7D1WyWoT3ueA+lcDGexqbKsdq0ml5PmEbibvT7ObDxnyW5plJFGm9DhPM2p+QYn
         akt030KOiSCqAfaAVcBAQPUr8Snx2N2P4rx/d3baSjba4HcyPbEvHZXAIgxTgiY0VA3W
         E+Tz/V8cSOZruNq0uq2VH8tFAT4Nh72FVgx4JdNJ9PVcUt3liWw9LIrlvcKBG1M/fg3Y
         0a6w==
X-Forwarded-Encrypted: i=1; AJvYcCUYg7Z6pfVBPqDQA++5E/DOWPbS0BruysGZKr2Lyt+1MpKuLdgzKWm+JapnorI6W/UalFT9DTIOmA2z@vger.kernel.org
X-Gm-Message-State: AOJu0YxLmEVD5rTgL8vd1g3Jf4XGvAdL8qxSYqvPl60u9/KQByndfzXT
	3KELALzhIyMSdcDwnfkihe3zrDflfqVNVdHq0CN5Q+pviJDWhQNOYwjM5K7D7+NxczvHP2dptpf
	JCvVOKg46ZUJlS4lnW01z/pBAg0EdNXsleGK8Vn/ZXiHbToHHh5SCe0cYI7EILoq2tsxe4IU=
X-Gm-Gg: ASbGncuSGUBOa2cX0L7tDKJhE/xEjHdiLusAvibuXJtvE0ksWF2nqMuCLPWw5PWQ/ib
	sUyR9BUcJGGcftbH/I7ufiXOCUhK+ibInnlnsdbnoto8ewnrnlHHaN8nYGGWtE0dZEnAH3cOv+c
	zPqMY7bsjZob16EKFIb+dI12J8jPDeSKJ7CXGqRRPFTez13wL607uWltfI+KX+rWQKxz3Pq69Dl
	8e2BZ31imwhYgRe39LXTuZWCe1l6+UQMr/dGugBfoFs++UOett2U9yoR35h5mARGggwbpVvae6Z
	GxorzjREoFc6cTDlExId/UyyLc55qTZy+NcgSXEVWtV/MVOHN+jTNLmMmmu98GQ=
X-Received: by 2002:ac8:6f14:0:b0:4b1:1109:6090 with SMTP id d75a77b69052e-4b2aae2cc8bmr2120621cf.4.1755801163658;
        Thu, 21 Aug 2025 11:32:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8u9mZep+thwTChGyaQOwVjhjsZ4znq9OEsEjARCqM1Fbessm7gFZ796HVd8qGyD2EqIFVpg==
X-Received: by 2002:ac8:6f14:0:b0:4b1:1109:6090 with SMTP id d75a77b69052e-4b2aae2cc8bmr2120031cf.4.1755801163034;
        Thu, 21 Aug 2025 11:32:43 -0700 (PDT)
Received: from x1 (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b11ddd693asm104533501cf.37.2025.08.21.11.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 11:32:42 -0700 (PDT)
Date: Thu, 21 Aug 2025 14:32:40 -0400
From: Brian Masney <bmasney@redhat.com>
To: dongxuyang@eswincomputing.com
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	alex@ghiti.fr, linux-riscv@lists.infradead.org,
	ningyu@eswincomputing.com, linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com, pinkesh.vaghela@einfochips.com
Subject: Re: [PATCH v4 2/3] clock: eswin: Add eic7700 clock driver
Message-ID: <aKdmSJtTrs6n7ZXI@x1>
References: <20250815093539.975-1-dongxuyang@eswincomputing.com>
 <20250815093720.1088-1-dongxuyang@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250815093720.1088-1-dongxuyang@eswincomputing.com>
User-Agent: Mutt/2.2.14 (2025-02-20)

Hi,

On Fri, Aug 15, 2025 at 05:37:20PM +0800, dongxuyang@eswincomputing.com wrote:
> +static long clk_pll_round_rate(struct clk_hw *hw, unsigned long rate,
> +			       unsigned long *parent_rate)
> +{
> +	struct eswin_clk_pll *clk = to_pll_clk(hw);
> +	const char *clk_name = clk_hw_get_name(&clk->hw);
> +
> +	if (!clk_name)
> +		return -ENOMEM;
> +
> +	int index;
> +	u64 round_rate = 0;
> +
> +	/* Must be sorted in ascending order */
> +	u64 apll_clk[] = { APLL_LOW_FREQ, APLL_HIGH_FREQ };
> +	u64 cpu_pll_clk[] = { CLK_FREQ_100M,  CLK_FREQ_200M,  CLK_FREQ_400M,
> +			      CLK_FREQ_500M,  CLK_FREQ_600M,  CLK_FREQ_700M,
> +			      CLK_FREQ_800M,  CLK_FREQ_900M,  CLK_FREQ_1000M,
> +			      CLK_FREQ_1200M, CLK_FREQ_1300M, CLK_FREQ_1400M,
> +			      CLK_FREQ_1500M, CLK_FREQ_1600M, CLK_FREQ_1700M,
> +			      CLK_FREQ_1800M };
> +
> +	switch (str_to_pll_clk(clk_name)) {
> +	case CLK_APLL_FOUT1:
> +		index = find_closest(rate, apll_clk, ARRAY_SIZE(apll_clk));
> +		round_rate = apll_clk[index];
> +		break;
> +	case CLK_PLL_CPU:
> +		index = find_closest(rate, cpu_pll_clk,
> +				     ARRAY_SIZE(cpu_pll_clk));
> +		round_rate = cpu_pll_clk[index];
> +		break;
> +	default:
> +		pr_err("%s %d, unknown clk %s\n", __func__, __LINE__,
> +		       clk_name);
> +		break;
> +	}
> +	return round_rate;
> +}
> +
> +static const struct clk_ops eswin_clk_pll_ops = {
> +	.set_rate = clk_pll_set_rate,
> +	.recalc_rate = clk_pll_recalc_rate,
> +	.round_rate = clk_pll_round_rate,
> +};

The round_rate clk op is deprecated. Please convert this over to use
determine_rate.

Brian



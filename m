Return-Path: <devicetree+bounces-257146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 66699D3BDDC
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:12:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 55A724E0D99
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 03:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 808D83161B5;
	Tue, 20 Jan 2026 03:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SRNmEjNf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0853B3002D6
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768878752; cv=none; b=t9y8WMmejnKNWO+MFfNSQ1ildYJN/uhu9aM/LzyP8Stpnt2fE5cy1PO79cimF59MgHADHK3uVXz67jTiFeZAbBsLhDCIvYlro2+VFGzIn+O7joQ/+od58x2H1KrOu2sJxt7Zdr7p6ehfq/eTD5ecNc++NSzZBpdv6gwhoq309pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768878752; c=relaxed/simple;
	bh=su3uEXlT84BJihz2o9XFbF/J8Fa9DMBq2JoIbnsewPI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MADU238cFWrs48BcItmtd3+ow+TxLL7rFuXVEmKbedrFRmmHTEhD+WzvaZYQafWyBF1JtKNnrXi4cWlqBhxrTw1QLF/8kKPMEoJ1fKjtvdYBY7nLh8sxOqj90xec+KIU2KSdwYZL2mzNsKtuFz/VK8FaPSq46sj/IEl+mA4uVT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SRNmEjNf; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-93f5761e09aso2964548241.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 19:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768878750; x=1769483550; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gv5G6VMcszifsvErGVwkIh6g0xPeD3R1+Dyj40SWmEo=;
        b=SRNmEjNfWEXfWDXUz1a/3opKMBlqzx8kRJmYzBB4moRP/rvxlBsmhaIukHW1W7Atii
         OOCvp6gcqs+6MzROeaAAEFQx31V7FuVERgdA6PhVF5lw1mLiZLYUHQVHRoB1vGTqMfAI
         6LYQVXV45xCP8raNtDrGsy5Jm4F3KOYEi+wRCpQ3lKTuk7TtBAlP1pT79YPQmLXgSLcN
         8Yr0CBQLa7X/KNNtwwIrmGfvSBQ3qAj/jUOvAyqvwPH8n8FfH3qNJd6GS7Qg8sFJxXrb
         0E+ZwRqXioL/3Q94eMCG4IF54zVbKcnZhpatw3GvwvqjrlNM/A/1M6rGbRHMkOI9XsKN
         W4DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768878750; x=1769483550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Gv5G6VMcszifsvErGVwkIh6g0xPeD3R1+Dyj40SWmEo=;
        b=ToDO/ULOuxqfOiA+Epmpi3J88YZHENdxk8C+dhejM9YXaQ8/dLoUSPHz5n3EbFdNDc
         NOFub2R37cC8Y9oXseVz7B37Q+WX8QqsmRUmEojbDNr9kBcgZQtXWE2qU3JlIFyxRa7t
         rkqZPj5x2kYLaziYCR6hCWBYD68ITFuIBboHaMkZxWIvuI9exyXu+dMvyYjC+lxlJeIz
         Py7kWcevAw6lVHC/z1lkS0f4SKZqyJxvvM4VIREW/ViZWGDe6Hm9q5jCoomLM7LOrZlU
         645L8PqofBJIynwiLcSPmGW8QGMzUcOTSKO9/Fe2glJ7Q67zMMp0AVTqxeBsUGPcLa02
         Nwsw==
X-Gm-Message-State: AOJu0Yzh1EeCdUv2UjJjJ2YU6NClxL7VJrh1ZSZCrUefX9mp49Xt7W7c
	NqAhaTOl4Z/vkhav/9CSBf8B/tjesHozYFaOatpnDXAIqoAgjuMQga+FLkToZECa
X-Gm-Gg: AZuq6aKuE4NFhc27QJR8cIaRTyLXPlwWwmQWCS6VAvCDt0ZKXUSS4cfs2JX57kyJ4sg
	Hmm6m/SWLruJ52HRyQEd9ac1cEvS499tVPy1iRBiOjP5EqN07e9I4/zpnlTlflPSHjbyZkn7QFc
	wDvOKPv4ulkdChf1F4gZc/k+lsRYQyJ90ZXxWocCC5QUPj50CIsGoTUv2xyqpUAZsEp5AG6z1xu
	RT+cTGKAMAKFw1TmMTTUGhx26wFyQ3QNuOVc+1HukpAU6UkdUsqbvyHo51eVSzIOwjP9ZDDlAK5
	4XK3ZNeOWkr8D0fOSV38RLccQhayxMMP5LB0R/t0u/tTusIhJYiK5BKUBV2wnOVUeKsC33u7h7d
	5MUE/54z/QnxNPJd3/l885PmlJ7poWvse++/RoU6rwsLy9DbNj7K3eK+P3dG3xRfY7XcfNapt4r
	K6Uikk2pgupg==
X-Received: by 2002:a05:7301:fa12:b0:2b1:7910:b0f9 with SMTP id 5a478bee46e88-2b6fd7c5909mr186113eec.42.1768871788943;
        Mon, 19 Jan 2026 17:16:28 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b3503a30sm16787462eec.13.2026.01.19.17.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 17:16:28 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Han Gao <rabenda.cn@gmail.com>,
	Nutty Liu <liujingqi@lanxincomputing.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Zixian Zeng <sycamoremoon376@gmail.com>,
	Inochi Amaoto <inochiama@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH 1/2] riscv: dts: sophgo: Move PLIC and CLINT node into CPU dtsi
Date: Tue, 20 Jan 2026 09:16:15 +0800
Message-ID: <176887176535.427065.12899087990982068409.b4-ty@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260113023828.790136-1-inochiama@gmail.com>
References: <20260113023828.790136-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 13 Jan 2026 10:38:26 +0800, Inochi Amaoto wrote:
> As we have a separate CPU dtsi file, move the PLIC and CLINT
> node to the CPU dtsi file. This will make the sg2042.dtsi force
> peripheral devices, and make the CPU dtsi force CPU related
> devices.
> 
> 

Applied to dt/riscv, thanks!

[1/2] riscv: dts: sophgo: Move PLIC and CLINT node into CPU dtsi
      https://github.com/sophgo/linux/commit/5e6836e735f9c9c5e8e1d1dce02dfed5fe566e8f
[2/2] riscv: dts: sophgo: fix the node order of SG2042 peripheral
      https://github.com/sophgo/linux/commit/ebb87dd74c34a76e1e93041e9329cf9269be35ed

Thanks,
Inochi



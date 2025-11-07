Return-Path: <devicetree+bounces-236119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F11CC400EA
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 14:12:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D9C63AC5C6
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 13:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D4F72D4B71;
	Fri,  7 Nov 2025 13:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmUk856L"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2CF2D3732
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 13:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762521169; cv=none; b=KODVWuMeOZDSbGkapHrsViwy6qEDkqL0GQwmJ9ffvYZGCiZ8dbRTD6Ia7oTOnRUC4n7Gyqa8mXYglLe+yEhISMU54VlCIDLS47xykepGNeKUz4Be45/88+moqRWa0yzdz4reTZXcl/DlTRSs4d5aQMzGtesWJhcaX1b77jOxCAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762521169; c=relaxed/simple;
	bh=FWO/8gHk53RYXD8wsffSK2ke0SFZ1bG9gjIfGIFTJuI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EDFXPF1JrTqb/0FJMon/ix+V563vWr3VQsTsXbXc3tZTYogsTdYP0sLejb7JZIbq7qbiT4Knx9G1UB//W5IagxvwJjGwBW48+xoBr+5VW0pQO393ua3wOrlZ7HxhZ2cCNUDxAQNvosxAAeGeAEHK8sqyH66igQ8mmi/QyCw6HbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmUk856L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 780B0C2BCB4
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 13:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762521169;
	bh=FWO/8gHk53RYXD8wsffSK2ke0SFZ1bG9gjIfGIFTJuI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=VmUk856LB3Ktid9JTM1p/HRUccXaDtTvjP+q4dhPWT4wSln/qPkV/VQu6vernisKV
	 TOiBfbwqozLZk5euuhK+PjZQPMezUhrIMdpfuKw2WKuqOZ9jIxlM+qYSwGmHlb53q7
	 YFWTsYSshNNpUqj4G0nHtU6ckASu72pJffLn1WR8CTKW3neiXm4XGYq8wXTMRuiXF0
	 YQTpO7XP/wsIoQ4PycZ9vGqeoMSSJWdUR0iew6wB1xUFKvfd1ZL3P5VabnSdmxy6IY
	 Em8ZkCAL4zE8XdO+35qZJIBafvwOzJSsIhwygOORffdFKPGIo4jxcwhjKvwckqScZx
	 kHA3V9Bh9hbtw==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-37a48fc48deso6842061fa.3
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 05:12:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWvYdMIm2/TjSRZDlNZmh6IdX1UEGoyQ+EUtBCHruFoIVm+pDCycSqncZuMM0UAeO2vgTI0WPYI7ps3@vger.kernel.org
X-Gm-Message-State: AOJu0YywYLt0SkGbYe3JKNEvaP6DPsYvdE4Dk/1gAYC/oo4GRG1xtB9F
	6txyaefgdyz52iTAF2JvT7GiCnZNfl7b3ZjfJn4j77MQRenGsFT5Da3wE9Ky0TMcqJpDEm76/kd
	weOt7gdomuAJZQvEQAkRXxJvXcLt3qts=
X-Google-Smtp-Source: AGHT+IEi60U+MS5fuwhOECte6O05g72+EAD4tfI6rsUD0G2v7W8zO7uqdgB+Fmi8wi+riCfy3k40Cuh7KGFUeVlePak=
X-Received: by 2002:a05:651c:4014:b0:373:a675:cd5f with SMTP id
 38308e7fff4ca-37a73335a70mr6546391fa.39.1762521167522; Fri, 07 Nov 2025
 05:12:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251106-b4-of-match-matchine-data-v1-0-d780ea1780c2@linaro.org> <20251106-b4-of-match-matchine-data-v1-4-d780ea1780c2@linaro.org>
In-Reply-To: <20251106-b4-of-match-matchine-data-v1-4-d780ea1780c2@linaro.org>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 7 Nov 2025 22:12:34 +0900
X-Gmail-Original-Message-ID: <CAGb2v65fcCEqJEdSuH+n1BFtoBxSCxEXaxAk7norRWzpPoT2cg@mail.gmail.com>
X-Gm-Features: AWmQ_bknqHyNaA5_RcBhQtheiViI_1Nkl4lCccfeS9SBJtkNwcoPaIb-tzaunfo
Message-ID: <CAGb2v65fcCEqJEdSuH+n1BFtoBxSCxEXaxAk7norRWzpPoT2cg@mail.gmail.com>
Subject: Re: [PATCH 04/13] cpufreq: sun50i: Simplify with of_machine_device_match()
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Yangtao Li <tiny.windzz@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede <hansg@kernel.org>, 
	=?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
	Daniel Lezcano <daniel.lezcano@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	platform-driver-x86@vger.kernel.org, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 7, 2025 at 4:08=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Replace open-coded getting root OF node and matching against it with
> new of_machine_device_match() helper.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Chen-Yu Tsai <wens@kernel.org>


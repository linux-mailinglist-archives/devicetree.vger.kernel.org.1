Return-Path: <devicetree+bounces-171043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC6CA9D14F
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:17:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C98487B3EBD
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:15:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0FC221A434;
	Fri, 25 Apr 2025 19:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="AX6+kZK6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F1917A2EA
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745608612; cv=none; b=eHkHxenXXEVGKwhwQsUWT4yaqV4S6+QW615iVG6tFnf1I7DJq++MhmT3j1UcUG6lpIYUvPfMQ++hDIYLkC8G4YKBPKOWbEm3yi7/42qLRlFjD5GnUuRKhIyGINfXqGvZ/ZDWQyxzky20alSKsRypq5KpUMC6JjrPDB7zTuAUgIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745608612; c=relaxed/simple;
	bh=aaF5KoonwPXnBEeEYX5de2+bpxSx1NBVU3iFsDtiboQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AB32nm7gAiERzO4ss3v5mxWFhR9BLN1DxIDA1fQ87Y4Ft6ZfkShmRJ+/gtwFp6n4NKV0c7Q3McUi/+jHwVnbCGMVc5jMYqsJQZxQ25JFAYYpQosk+O6usMJO6n2orQBuUbAZKRetuw+LEMgcqR+Vf4c70Xdf6ygCZfkdC7QJ068=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=AX6+kZK6; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-22435603572so32363095ad.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1745608609; x=1746213409; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XNI+wkZfospHmLOr+2+jXX5pJdTmqRckjghLYfMtBgk=;
        b=AX6+kZK6ovgYV1OXg4LN+fg8H6PBJfhIUQTz8JijOzGPflZA1GuWotgMtDF+ppDsPt
         hrOrCgpu+YWTVnnXYJYXnnNmxciITMZGPTnJ/XK69nSJh2VyAwMCMqliDrmdszKnkaLr
         QHGcYS0EkDoWsvobRcvCSwmIKh1L0RuLTOph3rOOvmUZaT4KFWbZEidBcdA20HH+TLES
         krPH0yzYlT2TPvQqQgNSI4bJS417IH7jp5A0AZZv/vfx9nb5TX9mo3lteFbLr9UsAG35
         RmqEnWcZT2IgWiZsIDhB07k0RYQALhdTY0jtw8UYOK0zRKIKcfhSeRKVxecLcWRCg/8x
         jO8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745608609; x=1746213409;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XNI+wkZfospHmLOr+2+jXX5pJdTmqRckjghLYfMtBgk=;
        b=K9KXqptVHukBiCdztAmuZ34KsENh+JaHW2uQ3XrjSzWfAIZsvGMD8g6lbzN7DYLXGf
         CXo9bq4MEWJBf7ULA96WsDJgxZjax+rjwABK9wPOWaNuLu5OCXiXi7IONh7rcWSkZQPd
         FVwbMad4ZWhUmLbdBDmSVaZn3fzC1mhlQdxed5SYIs1jlErIcHv+Mv70YvVwUiU6I+qV
         rv/skB8vfipJ5fBAAWcy9id9+zY487tiQvUqaie7L+IRp3Ym1i4N6itacjOlj1kg30aE
         B+axDNFyFZhCFjMyZO24AyzwPCeEnuKxJVgjFZoTwMexesu5FS2/suFYOTrwZanQVei9
         gYmw==
X-Forwarded-Encrypted: i=1; AJvYcCVPjBkHwiwYT+up/ToUls01Dk+Q0DMSFb7p+1fI+4HJYcagZrGXo2dxEKr30D1UKrX76CstHnw1hGZ0@vger.kernel.org
X-Gm-Message-State: AOJu0YytRMhhMDMs0+XAOh/ZZoOHTfxTgnYuUgTW9fSqpXWwaP6Cs6ZD
	rTGojlXQes5H/EC525N553etw3y2jvTDGk6zGXz+8gRUEaMhBlj2xgM6EC0FbzI=
X-Gm-Gg: ASbGnct8NFHl/QO4hBsGHoVjJyj+UMYFcOXKbhZ+zH8k7ctFEFrcjwXHJh3lYPE7HZr
	9x6DDCjoFShM0rF0T+HAi8iWt49Ihnu6iyjMyQ4mzXQa1sIX2wJmJDGaVyzzZM8SYaTqY5DPN8n
	p7VAXLqX8MrRTuRdPD4Zu7wE3hi03OwzA3ODsD8QYjUFL+yADfIlh/FUOltV2WaU2EXjaEzAuce
	J2X9PRhGveAiLPGJtXU4lqcB83znRIlElSb0uIcKiwvUsq1ZOfgVhyJlcvkqjTYOGxrn2YgQRpm
	Si4ICrKtQ7s+LhSzMuk7b4lqi8ArhH53aFJq3ho7UhHiCfc=
X-Google-Smtp-Source: AGHT+IFhMLeZWxbEN2BcydszBZXCVk7gJnHRAGc8GbZQro6UfqEPZMk7uHs43lBLaNwzfikdBQk+ag==
X-Received: by 2002:a17:903:1cf:b0:224:721:ed9 with SMTP id d9443c01a7336-22dbf73e8bfmr61560135ad.44.1745608609541;
        Fri, 25 Apr 2025 12:16:49 -0700 (PDT)
Received: from x1 (97-120-122-6.ptld.qwest.net. [97.120.122.6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db510304csm36179535ad.204.2025.04.25.12.16.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 12:16:49 -0700 (PDT)
Date: Fri, 25 Apr 2025 12:16:47 -0700
From: Drew Fustini <drew@pdp7.com>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, guoren@kernel.org,
	wefu@redhat.com, jassisinghbrar@gmail.com, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, frank.binns@imgtec.com,
	matt.coster@imgtec.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	simona@ffwll.ch, ulf.hansson@linaro.org, jszhang@kernel.org,
	p.zabel@pengutronix.de, m.szyprowski@samsung.com,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v5 20/21] riscv: dts: thead: Introduce reset controller
 node
Message-ID: <aAvfn2mq0Ksi8DF2@x1>
References: <20250219140239.1378758-1-m.wilczynski@samsung.com>
 <CGME20250219140316eucas1p29a76023868946f090f261bf78d5103e3@eucas1p2.samsung.com>
 <20250219140239.1378758-21-m.wilczynski@samsung.com>
 <aAP1BW3RmMb/Irya@x1>
 <81e53e3a-5873-44c7-9070-5596021daa42@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <81e53e3a-5873-44c7-9070-5596021daa42@samsung.com>

On Tue, Apr 22, 2025 at 09:47:34AM +0200, Michal Wilczynski wrote:
> 
> 
> On 4/19/25 21:09, Drew Fustini wrote:
> > On Wed, Feb 19, 2025 at 03:02:38PM +0100, Michal Wilczynski wrote:
> >> T-HEAD TH1520 SoC requires to put the GPU out of the reset state as part
> >> of the power-up sequence.
> >>
> >> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> >> ---
> >>  arch/riscv/boot/dts/thead/th1520.dtsi | 7 +++++++
> >>  1 file changed, 7 insertions(+)
> >>
> >> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> >> index 474f31576a1b..6b34aab4b455 100644
> >> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> >> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> >> @@ -7,6 +7,7 @@
> >>  #include <dt-bindings/interrupt-controller/irq.h>
> >>  #include <dt-bindings/clock/thead,th1520-clk-ap.h>
> >>  #include <dt-bindings/power/thead,th1520-power.h>
> >> +#include <dt-bindings/reset/thead,th1520-reset.h>
> > 
> > Are you okay if I omit this hunk? My thead-dt-for-next branch is based
> > on 6.15-rc1 but thead,th1520-reset.h only exists in next until the merge
> > window.
> 
> Yeah, I'm not exactly sure how to coordinate such stuff, obviosuly it
> would be best if this chunk would make it to the 6.16, but if you think
> it would be problematic then omit it, no problem.
> 
> I will then update this patch series v3 [1] to gracefully handle lack of
> reset, as the 6.16 will not contain the required reset line for sure.
> 
> [1] - https://lore.kernel.org/all/20250414-apr_14_for_sending-v2-2-70c5af2af96c@samsung.com/

I've applied this patch to my thead-dt-for-next tree:
https://github.com/pdp7/linux/commit/1b136de08b5feca37ebdb6d28db3c9c6285aba5a

We should be able to test with the driver in next once a new next is
published (which I assume will be on Monday in Austrlia).

Thanks,
Drew


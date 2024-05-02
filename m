Return-Path: <devicetree+bounces-64581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B30778B9DD4
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 17:53:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 539FF1F2120E
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 15:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A056E15B969;
	Thu,  2 May 2024 15:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="XXRv0S7M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB4915B554
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 15:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714665189; cv=none; b=Fyf1ErYBLhv6PGopBPvlA6pLX6RbpmcJU0qjQcgImSFnus1o5RDLcxc29bYeQefVzJ93IN4zAERcuvHwfPb+MvaoGvG8dHoI7oC8pbdmu9cehKhJi9zdEu04aalvEkKw6EJcWe+Q8gF8p+t0W+W+TrWbzvYg+gtJmAAOwIgm0UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714665189; c=relaxed/simple;
	bh=hgLqQsUmbnlqSKDOOFDfYvGL7hLvkqrTWQ08Fg0yZ2c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EKU5NozyUrsJqgc5aCXtwEUiXcII8zEoCQQUtnuAGcXox3/44f9ONNgGd6oph/W8gIpyy+9ewnQXv2Orj0BovXe2IfUb0OlGIfyROCysgY3cT8NrLYUfZ/P95MdzS32c01YCHOkGsm8wFzG8qka3YgMv8isjSUg+P8wJ/6h4l78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=XXRv0S7M; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1e5715a9ebdso68244935ad.2
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 08:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1714665187; x=1715269987; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xrO+BzTfAqGrVSW6gaAM1uVW/UhYnHc2qIbuASzSIck=;
        b=XXRv0S7MFTlv3u2OhC968Zki0V1ZqmbE8lL18EQVLpE2J+GRo6VUd2rFmDAVLUoDI7
         RH1LkBOnS3AwTa1FBTCt2W4v6Pvav2gueoZrvWdPN5tTPku5V+YP28JkYAQmG/LH7IOz
         nlfLZW2YHtALHKxTpuqZOkLRh/U6PQciMJI+anpzID3lWjxcgM4q9dju31eQtTZgwilv
         1Ywn+yLzK62CRFJ/WRED2NqBctu0HiNd1zpgRCnINVReE+JsJzMYDN6dxYBEHgEUicAV
         ea12Hlh8u9pGF7cCQetFrW4iE2kLy6q0i/m6Jox6t0JPnjIHtbHI8cnheNLB2zBIiIGt
         FmJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714665187; x=1715269987;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xrO+BzTfAqGrVSW6gaAM1uVW/UhYnHc2qIbuASzSIck=;
        b=TTIv9jSlphTcRv9S12jecy5Dfk4CMEf01PjhSUtGcV9tBHZnnGjzH9m8S1x47Ebfgj
         gpYt/SkzBiv85wAe1hV/RMAy+A5t08ovz/VTnhgWK/KoGvBgnXsi4rvdDM29AYCEHGbu
         S9DqQcmo8/oD4qhs3L1m5xT9Cat4OAUku4/+tZnLnuAyQi/J+tpHeemDIenoWkQXuOgM
         EzRfx3Yt1j8Vn99uY1kkJq9ZgXZe3pOihz/xUWUtbPjtzHvPpWcHWT3jtMR54pUqweCe
         OD5KzVRT0+dYlJHaTmnxMqxGH6uyCrhCcyqGH1zJtC3eFQnD44UISnRVppp3JnSA1WTP
         9CZw==
X-Forwarded-Encrypted: i=1; AJvYcCUK6zJOfWc1KcaS4pAwN19RN0+VN4MyPPgiGvY11OtDt0n4NByTdWzG1M2Q95CZAKi1dbl8opZesR1CZyPGsRQMPavEAP7/S25lUQ==
X-Gm-Message-State: AOJu0YyGI0x5Ri1IdW+uBlDHRdFOUZ95uVtP8YHkaiKrtGuiMAm57wqJ
	t6DimbXlzGgVMqkI30xj/1xy2Crosbk26PZqo9ET5UmSUA5zMBaRlBTpFe0bcP4=
X-Google-Smtp-Source: AGHT+IGrW1OPSdicmml9TYEIm0yY7aapvxFGT0j7ToPXTRa7G6YIhicWH6kAZGYVaA97W1Sg6HV2lw==
X-Received: by 2002:a17:902:bb8b:b0:1e4:5b89:dbfa with SMTP id m11-20020a170902bb8b00b001e45b89dbfamr28506pls.41.1714665187388;
        Thu, 02 May 2024 08:53:07 -0700 (PDT)
Received: from x1 ([2601:1c2:1802:170:e8cc:54a1:83d7:2ef1])
        by smtp.gmail.com with ESMTPSA id m3-20020a170902c44300b001ec2e620b1fsm1447508plm.273.2024.05.02.08.53.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 08:53:07 -0700 (PDT)
Date: Thu, 2 May 2024 08:53:05 -0700
From: Drew Fustini <dfustini@tenstorrent.com>
To: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Cc: Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Yangtao Li <frank.li@vivo.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH RFC v2 4/4] riscv: dts: thead: Add clock to TH1520 mmc
 controllers
Message-ID: <ZjO24XikkqNAnbti@x1>
References: <20240426-th1520-clk-v2-v2-0-96b829e6fcee@tenstorrent.com>
 <20240426-th1520-clk-v2-v2-4-96b829e6fcee@tenstorrent.com>
 <1444dac5-c725-4bf7-8843-469a62c3abf1@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1444dac5-c725-4bf7-8843-469a62c3abf1@bootlin.com>

On Thu, May 02, 2024 at 09:47:43AM +0200, Thomas Bonnefille wrote:
> 
> 
> On 4/27/24 2:10 AM, Drew Fustini wrote:
> > Change the clock property in the T-Head TH1520 mmc controller nodes to a
> > real clock provided by the AP_SUBSYS clock driver.
> > 
> > Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
> 
> I experienced that, when the I2C clocks were correctly configured, the UART
> stopped working, likely due to their dependence on FOUTPOSTDIV.
> Setting up the UART correctly, for instance:
> 
>                 uartx: serial@xxxxxxxxxx {
> 			...
>                         clocks = <&clk CLK_UART_SCLK>, <&clk
> CLK_UARTX_PCLK>;
>                         clock-names = "baudclk", "apb_pclk";
>                         ...
> 			status = "disabled";
>                 };
> resolved the issue.
> As this would be mandatory in the future, I suggest that you configure all
> the nodes currently set to a fixed clock, not just the MMC controller.

Thank you for testing and discovering this issue.

Could you post your device tree so I can be sure I'm testing the same as
what you have?

Drew


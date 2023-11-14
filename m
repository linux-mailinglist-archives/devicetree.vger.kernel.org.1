Return-Path: <devicetree+bounces-15764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FAC7EB957
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 23:30:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F36372812BF
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 22:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 909F910F7;
	Tue, 14 Nov 2023 22:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xKbUDYIr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185E23308B
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 22:30:31 +0000 (UTC)
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86E74C2
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:30:30 -0800 (PST)
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-42135f8e08fso38890201cf.1
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700001029; x=1700605829; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4XST0nJe2LTZ4oHvfVDx7eyej+3hWOw1VagBLPa3XUw=;
        b=xKbUDYIrLlOI33Sp9f82M2rt6VNkOPlg5ByrRzr26yt/7G5zFKeYH1O6pBoZqAkfH7
         vKZ4JGZR/azgL8e+X33N3ktQ29+Z9QmKdG0A94VsDCdmgDQeMkwrSWGWuNfCc/vyE7oH
         45uVlJJaWYakhWIItOtwWtSKLt1242WiI5vqPfT6Zykwb+yeSz0KXhnMnbMDkZtQgYZ7
         LJZqc6tcuZEFy+XY0npgygLf0anZN/l+rLqAFkSpWuWyXtsY2UKvXid7Szfb0S1VkO/l
         tBraPztCx0bhucOavgCxrmPVW2npCP/QLMXkMuZqoq00yxVAAQALwqJ7XDiq9Tu5dU4g
         SVww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700001029; x=1700605829;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4XST0nJe2LTZ4oHvfVDx7eyej+3hWOw1VagBLPa3XUw=;
        b=vxbBiF/u3zUGQCaRwSKHujX79zevvOvtHCdK8D/qhk4OYHDIaGXLAqPNINbh3cORma
         vCmUa3uguCROL30ls7McFPGK6Uhv9R4YMrwUVuMu+GwhGmtYhkqTfahs1RcaBzQsZI1m
         /IvVqqjhUdv6hESvgX6lEJOfxsDas6h/ENJ8y33Kre3wDGBrP7TBBdI2QHvLDW5gPCz5
         by97soj9ev7ob7YR++ecIDT38kNKkNVVVt5a1wo7xtYn3GvWI05ID5MuU0tmkBucE0H/
         1oJYMujpCAV8hPqDhkyY6AWMAdLsf/mdBL3ZW6xGXnEm19YELKv5o40GI8IkSF9jtOWw
         vtdA==
X-Gm-Message-State: AOJu0YzuW1iBkWS9CPMcO6+coO4CevoqzKylDPKQbaUULFqVcpLHb8zs
	jWhNGRkp651I3jRCot69SIIWbw==
X-Google-Smtp-Source: AGHT+IFMKHaDQrXdjPlVZanAMM7n0JSJwglGmnqidJ3M4rjzD/Zj6FS0kt5MVg8MvJG467X+FEDorg==
X-Received: by 2002:a0c:f9cc:0:b0:66d:5dd:26f6 with SMTP id j12-20020a0cf9cc000000b0066d05dd26f6mr4147253qvo.25.1700001029699;
        Tue, 14 Nov 2023 14:30:29 -0800 (PST)
Received: from x1 ([12.186.190.2])
        by smtp.gmail.com with ESMTPSA id c14-20020a0cd60e000000b0066cf06339bcsm21546qvj.0.2023.11.14.14.30.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 14:30:29 -0800 (PST)
Date: Tue, 14 Nov 2023 17:30:26 -0500
From: Drew Fustini <dfustini@baylibre.com>
To: Conor Dooley <conor@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v6 5/7] riscv: dts: thead: Add TH1520 mmc controllers and
 sdhci clock
Message-ID: <ZVP1AoosripWj3gs@x1>
References: <20231114-th1520-mmc-v6-0-3273c661a571@baylibre.com>
 <20231114-th1520-mmc-v6-5-3273c661a571@baylibre.com>
 <20231114-starring-swarm-0e1b641f888c@squawk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231114-starring-swarm-0e1b641f888c@squawk>

On Tue, Nov 14, 2023 at 09:27:44PM +0000, Conor Dooley wrote:
> On Tue, Nov 14, 2023 at 04:07:59PM -0500, Drew Fustini wrote:
> 
> > +	sdhci_clk: sdhci-clock {
> > +		compatible = "fixed-clock";
> > +		clock-frequency = <198000000>;
> > +		clock-output-names = "sdhci_clk";
> > +		#clock-cells = <0>;
> > +	};
> 
> If only you had a clock driver to provide these...
> 
> Is someone working on a resubmission of the clock driver?

Yangtao Li posted an initial revision back [1] in May but I don't think
there has been any follow up. It is for sure something we need to have
in mainline so I'll take a look at getting that effort going again.

Drew

[1] https://lore.kernel.org/linux-riscv/20230515054402.27633-1-frank.li@vivo.com/


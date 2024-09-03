Return-Path: <devicetree+bounces-99283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 532A696957A
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 09:30:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F39221F21D9D
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 07:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDC15201260;
	Tue,  3 Sep 2024 07:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Hdr2IS2b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143C11DAC53
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 07:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725348583; cv=none; b=bslJYvPNwrqLVqq6LBvwxKj3UDqMAmwTHtjDKYkbDFEm2wSvO0CDNEv1c9Zzkvsra+2Axs3BNI/OUsKofASGYyRj2VnoVsQB79LOOs6kPSQSx7nany9kNA4kjHW1iEd0sr7gLZi2IryxQH35t/mFPz4XbdFNOoqXqfA00iMGUwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725348583; c=relaxed/simple;
	bh=OjTvpAAXrGTGgptUXOR17snuqDSOhkzcn0L67rJb/BM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bjWYSEWRjJFd41APqs/MXYGHe0Q2y/xTjic7cU23Ad3fUnQDlHinYvSuhIAwUc+yuvmxLGzvIj+8HwBPPAG3+VPBM1j81A/XbSFI2VW/YaReR/1hNYQccejQK7Pw1BjM4gayaLnMUqtlLty1EHAVPsyekevZjnj4Gg2xAnOZQRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Hdr2IS2b; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42c7856ed66so23387515e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 00:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725348580; x=1725953380; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OjTvpAAXrGTGgptUXOR17snuqDSOhkzcn0L67rJb/BM=;
        b=Hdr2IS2b3As/nKpzPm5F3y4sTGkodVUE4Qm8RBF4TQSPS62pM6hhBcuU8OZVBL2FFL
         WNZJSNutIoid6vhdfxG7rhQu7kO8HV/0fh14GRZJ3XVtyeYwGCPdnIPGjWuij83MVEPi
         A/wbbHE5orRu5hJlDDLl6RzFJa7REmZ0/JTablnMSZqJQscybLJr26GetXwlPeBNRuNN
         hDTgjsMnqykhmbGJDMM9KETTqDZRV5BWcb5/Q9FwCDF0E5bIwW5E0a1kfiWac2JD6hWV
         Q+ol9zgY0dZhPuTPCMV+1LdK+2SXvE2iwkaimGs0pa6/p7675FNIG4SOJrlWJLloYX/7
         5Muw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725348580; x=1725953380;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OjTvpAAXrGTGgptUXOR17snuqDSOhkzcn0L67rJb/BM=;
        b=O8jmwLM8+jzx8u8aQxYNlnU1itzApuC2GqZnMUHBkKF8uPEMC+j21J8KZ08PfMX0XK
         1laLujcY33uL83wILu+S6Lsc0336b3dr0NM4xDQ3pgTiotd3NjS6IA8m+FGYeiKpLz25
         71H+cg/MRpI+P/iCx5tY/rWQW9CAqmT2lB/ngKNsNyCUpDyYDVt4AuCj3ltsAeKqKbfV
         Q7GVjQK7gGI0DY/NJ9z3POYvNAgp3lSQA2+JDlhuwdKKE6qXoLL7japRFaCbyl/2wS7v
         jSdp4Ktq4GQaQNpYX63oQI7wqqj2SSedZX/8BCEW9ik5i0j6tmqWqkCKA+3aO8PKVR5g
         KvJw==
X-Forwarded-Encrypted: i=1; AJvYcCUbL/E6vDA6Mh+AWJR/T/Fwps2o6FaQkE7vQm5xw+ei5USl/d7jPF4pgJdvJgjJ9VFKicT1y7oDAJjv@vger.kernel.org
X-Gm-Message-State: AOJu0YzKPyldndq79erj0MLESUomruHPjWlBFIOt3lDY40ewWCAqtSF5
	BnzcAKlojbPT2DKZPigrbLYl3/jyqJOPEywokEfynIF5FqUigQ5+HbAQkvHfzIY=
X-Google-Smtp-Source: AGHT+IGhGflCAt3iq4B1lbWKcdTsZZUKYcwm75P51VoYgK+6+yVr8U4256jHMWzi1AT2+olzh4gbWg==
X-Received: by 2002:adf:cf0f:0:b0:374:c2cb:a3c5 with SMTP id ffacd0b85a97d-374c2cba4f9mr5068543f8f.62.1725348580241;
        Tue, 03 Sep 2024 00:29:40 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42bb73e20b7sm161574845e9.14.2024.09.03.00.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 00:29:39 -0700 (PDT)
Message-ID: <04b80600-1d87-43d7-913d-6940b0b53e36@tuxon.dev>
Date: Tue, 3 Sep 2024 10:29:38 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/12] rtc: renesas-rtca3: Add driver for RTCA-3
 available on Renesas RZ/G3S SoC
Content-Language: en-US
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 magnus.damm@gmail.com, p.zabel@pengutronix.de,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 kernel test robot <lkp@intel.com>
References: <20240830130218.3377060-1-claudiu.beznea.uj@bp.renesas.com>
 <20240830130218.3377060-7-claudiu.beznea.uj@bp.renesas.com>
 <202408302225417622f1e7@mail.local>
 <a7f0a36b-3169-45f8-9169-50bb0c6c04dd@tuxon.dev>
 <20240902202819e2bf5630@mail.local>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240902202819e2bf5630@mail.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 02.09.2024 23:28, Alexandre Belloni wrote:
> Thanks for the detailed explanation. Can you add a small comment, I
> really want t avoid people cargo-culting this behavior as this has
> already been the case.

Sure, I'll update it in the next version.

Thank you,
Claudiu Beznea


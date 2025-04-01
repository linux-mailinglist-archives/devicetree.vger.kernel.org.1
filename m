Return-Path: <devicetree+bounces-162365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06867A78076
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 18:31:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 998B9161DD1
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 16:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58DCD20B7E1;
	Tue,  1 Apr 2025 16:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="G/Tl31CL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75381C860D
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 16:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743524886; cv=none; b=deWZ3lWvIDc79Dcz7NzHn6yRLeu+ayDEoQefDazRy3ze5N32TItQ9xUsyxnyLAto+wywhbGloe++7f8WgXSgsHiXGLH+tSgXU5wZgDKEU/RIvF+3FM6echKp0HQJZhiri3GxnMk8BerEJbizEHJid69tYo77+vq4DLJWDZXzwLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743524886; c=relaxed/simple;
	bh=QyvPwe2n7SMJQvY20lH5qrJm2IZrAH6H92ENM40f7x4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m3jUS0UmtxZfzfsZXKkAWTbjItuibAHZfK/Z0awyPgAhxK7h/CcrtsXkkHU0nJ7ZtYb+2i+MHVv7F6xAqTi8kN2xJDD/FaYBf0skMB77TYwR9uQl0RRtu3sVTjCAgF9+oteTOYY+oJBQ2gUvpOFPf/ru7ZwiwJIU7iRta3u+RUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=G/Tl31CL; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-226185948ffso112420935ad.0
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 09:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743524884; x=1744129684; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sEr9LMvpLbHE893cIqhG/JU8h0Dt2xG4p+araqhsX+g=;
        b=G/Tl31CLaQf9aFz7+CTDTug+UVm1CNVsHhLnpWq57mdwnmnAOORtjDSe5bqeniH/Li
         61CeBh6vIylSUqtFueMX0T1ZzVommA5WRDHoLCxy8wPi+T2+/zeKt1KWsYsWtewxEND5
         56OdweU6OmmQv9R9YLsYJf4FLnq9r9n0dW2RKIU71IFJKiThjMYj48ZvR7mbvapRBK92
         9xAzRBM0YT0dTAtHdOyhC0eGJOd1u/nFOHnSYTauAzEQ3ZFqsGV6pS+rAHLwI+R5Urq5
         1XhMfrcA+nddSbsFs5fBXLKkHvuuLgdieZbPQmt43fMHKg1HaJuKNAwtBCyXHRgoY4Lk
         G9ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743524884; x=1744129684;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sEr9LMvpLbHE893cIqhG/JU8h0Dt2xG4p+araqhsX+g=;
        b=w2AIaQo33S6dA5NUKXbzuLqUtrLyykMiAgwWaZWaUc7a7kxs6uvljaRfZCjNmemhm+
         8uG5l9AtY/perQQaLyIx8OJVxyKO5tES2DcrhM3pELy4KPzBcZ1j/Yh2kKUJDsrsetd2
         bxPkyzZ8PFeg7X9nXJHpLWvwDS2Ag/6+VHBBxZRecEzo202bn34UVtIC1RqfCgxUAw0h
         FVPNIsrhBxzr5VBIwT4pcDROppHBRd9BJBseWq2Nh95yGtz+UrK6Oe3NcwuKA7zPecbc
         nFoaelE01h9HCvd2bQJOBHSHEkJdr7ZFM/HBzaZDNq8VyxK7zttwdZalmbKY+uyi5Uif
         n2iA==
X-Forwarded-Encrypted: i=1; AJvYcCWsOJBkpjbjk5PB8M4hYzavbpWzN3W4KWPqC1J/VbebZbQirsVAzxwe1Rtqa3uoDpk0zIF82ie+I9rY@vger.kernel.org
X-Gm-Message-State: AOJu0YzazFE1jH6hdGi4Icxavs39MQsYtDVoyLmr5MTmAxe2yHUOZmpa
	0Ve9H8lUr8rX4BX+EwwH/FCZHYV9AXfl6aFWRJcFAlScUIFbSsHgKBixypEk7A==
X-Gm-Gg: ASbGnct/oZjBMBzP/Zc5X+H/DievwTiJkAObCgz5wD54Z+8q6lb9N3Bav/57J8xnPwi
	j8fbmHmuRkClIngIW7kH6KrLzEgQVz/IE7KoevuyVXt3/BvBWrvBaJUja02m4oxKpK1H1f/uXWp
	zWQBBv6yI3P7GR0MVraHojRawpL4RtuwyaN+QT4Fs55Wlm9C6DLAs2bIsGNQSfNeDrgMORfrh71
	2ptTgf2K8k6GuRy8Wygjuhko95KS0FM4Y6J6mwekEwSGmfDZcxHrjKzZrkpADlyc9m2N7UCCYrS
	n2tvGjDbYYXIt2rY6IRM2RCo9BF2bKk/uLFgoSFNqhBjLRzBb+JWSa5yYgG4+xNPH/651SxH5MW
	/z51CWotE2a0/G40=
X-Google-Smtp-Source: AGHT+IEyaXPv9oHXzdX7kp5aOc8Pw45evlmKNFGJN69UA0/YokAg60Q/XphIOEUon7k6t8bnNWSYvA==
X-Received: by 2002:a17:902:ea02:b0:224:216e:332f with SMTP id d9443c01a7336-2292f9fc054mr220540675ad.48.1743524883898;
        Tue, 01 Apr 2025 09:28:03 -0700 (PDT)
Received: from google.com (198.103.247.35.bc.googleusercontent.com. [35.247.103.198])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1f7376sm89939395ad.245.2025.04.01.09.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 09:28:03 -0700 (PDT)
Date: Tue, 1 Apr 2025 09:27:59 -0700
From: William McVicker <willmcvicker@google.com>
To: Rob Herring <robh@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Saravana Kannan <saravanak@google.com>,
	Krzysztof Kozlowski <krzk@kernel.org>, kernel-team@android.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
	Donghoon Yu <hoony.yu@samsung.com>,
	Youngmin Nam <youngmin.nam@samsung.com>
Subject: Re: [PATCH v1 5/6] clocksource/drivers/exynos_mct: Add module support
Message-ID: <Z-wUD2GGMRfJwhSu@google.com>
References: <20250331230034.806124-1-willmcvicker@google.com>
 <20250331230034.806124-6-willmcvicker@google.com>
 <20250401023001.GA3186122-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250401023001.GA3186122-robh@kernel.org>

On 03/31/2025, Rob Herring wrote:
> On Mon, Mar 31, 2025 at 04:00:27PM -0700, Will McVicker wrote:
> > From: Donghoon Yu <hoony.yu@samsung.com>
> > 
> > On Arm64 platforms the Exynos MCT driver can be built as a module. On
> > boot (and even after boot) the arch_timer is used as the clocksource and
> > tick timer. Once the MCT driver is loaded, it can be used as the wakeup
> > source for the arch_timer.
> > 
> > Signed-off-by: Donghoon Yu <hoony.yu@samsung.com>
> > Signed-off-by: Youngmin Nam <youngmin.nam@samsung.com>
> > [Original commit from https://android.googlesource.com/kernel/gs/+/8a52a8288ec7d88ff78f0b37480dbb0e9c65bbfd]
> > Signed-off-by: Will McVicker <willmcvicker@google.com>
> > ---
> >  drivers/clocksource/Kconfig      |  3 +-
> >  drivers/clocksource/exynos_mct.c | 47 +++++++++++++++++++++++++++-----
> >  2 files changed, 42 insertions(+), 8 deletions(-)
> 
> [...]
> 
> > +#ifdef MODULE
> > +static int exynos4_mct_probe(struct platform_device *pdev)
> > +{
> > +	struct device_node *np = pdev->dev.of_node;
> > +
> > +	if (of_machine_is_compatible("samsung,exynos4412-mct"))
> 
> Your root node compatible has "samsung,exynos4412-mct"!?
> 
> In any case, add a data ptr to of_device_id table and then use the match 
> data rather than comparing compatible strings again.

Ah yes, you're right. Thanks for the suggestion! I'll update on v2.

Regards,
Will

[...]


Return-Path: <devicetree+bounces-230090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BCDBFFB2B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 09:51:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9315C4FB949
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 07:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27C532DE6F7;
	Thu, 23 Oct 2025 07:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="DdadXaCA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C1B2DCF5D
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761205857; cv=none; b=IRvNS+STHTwmzIaoyNFtzeX3udrkbiYJ34iGAmG7jv02pZkSQB0ugPufi4yscOlI4XcrrtZ8MjdS15ExiWLt3SIoLyg0y3SAFHyc4aEonBzRD8aOi/VJd19uAQWYkM9Zg14mxv/vmu+zYTDgPxqgj63rOY592F0rdeZe166fycE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761205857; c=relaxed/simple;
	bh=1hywAO6OmglGEJDv4dlqj7DVBEZf4btWfqp6klm/+u0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jefVouPEbonqJ1ah0l4IrMFQlWqhDy4zlNP/yFEc37XPh3YGADQ6KurnkKV1LEhqq8+7Y22hTwy6c5PYe2SIeEDJeA5Du2wbh8/aWzJp7RSQUSKTri1i9qeXo6HJ05lW32B5WKuMGcdN5yQHdyXZSKVlQjbkwgkfejDL2n3aUq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=DdadXaCA; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-33f9aec69b6so727226a91.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 00:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1761205854; x=1761810654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ckf+WA/vGci5TKMGOHLvpH1kq+z/6nk6A9B9djwZ1Vk=;
        b=DdadXaCAsxeuRsSpN+Sdnn37yPc/OkFEl63jtTq/z8UFhC8nMrDu66q7IGiP/acqFV
         yANWLN1mFfSLl64lqnzKWdnVpSkTIcvKWSKhuiE2HIyaorhgIPuRz7Hjd+vzbjT9fqZM
         n15WKP7SOO/BoWlphq9F/IE/x+S1tZlnyQ3Zt1vtoBxo6nOfvoTs7k4dO7hrJeII6E9I
         6wzEFkoRCV0JA9LIfkLH5fyj4kOIBIgLQZXr12cOdRjIwJrUvyUpwHq86VJQE+czGytL
         TXY6aLh9GDUO9THRDwGPgcylt5FfsPu9apzDEhzanJS/goOHGiO8sBft1bwWUwOifoXX
         4O0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761205854; x=1761810654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ckf+WA/vGci5TKMGOHLvpH1kq+z/6nk6A9B9djwZ1Vk=;
        b=rmywmGoPvBqYnebVPseP3R0Is0FiBsEYnkOgVxIlEBbSqv61lpjexF9oiqJxONFlnp
         ri9FXJtbSlR8xOKT6iQ9WEBvtKT7DXILYA5DeX31RQiI/J52NUxMSUa1fAMuw8bA06EE
         ABSys9WXUnxk/wP5Q9R3F+1cI2NdJ52M9k2r5O/08pjdGvTYaVsFGzXveaR+yQHo/hUi
         w3yDSAzBZ9IZ8EpTmei5LDMxGHawzacOcDIq7bMvy80pdoy18JaI3Y1DGPZZTD6Gq/GG
         2wLo9rGCARtjHHN86TjRFIaXT/tlUrqAPn8SWHs2tnxj6mcnhnuaDQTNki9DAUd0CFj2
         tCeA==
X-Forwarded-Encrypted: i=1; AJvYcCWeHjPu5FIdZqVOd2+0idkJRI2wtZC0RkClLSIWNla5YF28rS6xw+TqVmRnBvs3i7eRiNl0TDsrpp5E@vger.kernel.org
X-Gm-Message-State: AOJu0YzVt8nL4B8zoT3SSI0Ure2shPYzU+rIFnpAzGPMXZFu4yTYB6iS
	56/HnpHzGpewVKQ+8TT+JmH0Z5pNLowgFpDNSBgD7oOKHjtO75OtldGstWT9SRZ2HAM=
X-Gm-Gg: ASbGncufN/SFV5oAv8NHr4Yin3j+NyxtQuEnTFS0CoASex7PQGk/8RN+moQxnTK/PIZ
	lgYM+D8G86Z5Wqn7YQTzq85W2F4iAdi/OQasgID5xNkPvSyss1+W32bRYUV0YxDAjfzvGvVI89F
	nKBWRXYLpv6ru4hp7ZSQOJQWFMeRfvOVCPBNL+Q7KksY1h9n7n7ZoOdVc4BGjpLl+EfF+Xs0y+3
	jE0mXc7YzgRjFTEgL+QGbojwZbFICewozdyu+ESf74KzgoOgZtEqp1ViXRFwJYURVPhw1Cl9p12
	0s9QUrh53hsnT77ITbQj31k6GMYwIpuYXfnHtIxtkdNjtp20YGtsnw27mE/x9fzJmenPUn4n/Fa
	wirspZCIic4jXowGw11mUT2y8pnKhPrDEBzE+ZJYKEqJ/x+4vLl5X7yeLkeFLfI6V9vgrO/8jdI
	RYBslq9C0doUeYcLlAeg==
X-Google-Smtp-Source: AGHT+IGxBmhQYX3R+zPm2DZoyJZbHJDy6/9CVQ6y+y0VxQf1BMG2L8qFAVrrjtQYPgaGrb29h3irDw==
X-Received: by 2002:a17:90b:44:b0:32b:623d:ee91 with SMTP id 98e67ed59e1d1-33bcf8fd82dmr28272717a91.27.1761205854513;
        Thu, 23 Oct 2025 00:50:54 -0700 (PDT)
Received: from z440.. ([2601:1c0:4502:2d00:2035:6c3d:cc34:bc90])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33dfb1dbddbsm3809280a91.0.2025.10.23.00.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 00:50:53 -0700 (PDT)
From: Igor Reznichenko <igor@reznichenko.net>
To: linux@roeck-us.net
Cc: conor+dt@kernel.org,
	corbet@lwn.net,
	david.hunter.linux@gmail.com,
	devicetree@vger.kernel.org,
	igor@reznichenko.net,
	krzk+dt@kernel.org,
	linux-doc@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	skhan@linuxfoundation.org
Subject: Re: [PATCH 1/5] drivers/hwmon: Add TSC1641 I2C power monitor driver
Date: Thu, 23 Oct 2025 00:50:50 -0700
Message-ID: <20251023075050.254998-1-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <be691214-bac6-43d4-be62-daa57c833fe7@roeck-us.net>
References: <be691214-bac6-43d4-be62-daa57c833fe7@roeck-us.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Guenter,
Thanks for the detailed feedback. I will address it.

> Please send a register dump.

Here's register dump after init during run: 

tsc1641 1-0040: 0x00: 0x003f
tsc1641 1-0040: 0x01: 0x0253
tsc1641 1-0040: 0x02: 0x0dc0
tsc1641 1-0040: 0x03: 0x0053
tsc1641 1-0040: 0x04: 0x0250
tsc1641 1-0040: 0x05: 0x0033
tsc1641 1-0040: 0x06: 0x0000
tsc1641 1-0040: 0x07: 0x0000
tsc1641 1-0040: 0x08: 0x01f4
tsc1641 1-0040: 0x09: 0x0000
tsc1641 1-0040: 0x0a: 0x0000
tsc1641 1-0040: 0x0b: 0x0000
tsc1641 1-0040: 0x0c: 0x0000
tsc1641 1-0040: 0x0d: 0x0000
tsc1641 1-0040: 0x0e: 0x0000
tsc1641 1-0040: 0xfe: 0x0006
tsc1641 1-0040: 0xff: 0x1000

> > +
> > +	/*
> > +	 * Disable alert mask first, then write the value and enable alert mask
> Why ? 

The idea was to prevent potential previous alert from propagating when changing 
the value, plus to only enable alert when crit/lcrit value is non-zero. 
But given your response below this is not the right thing to do.

> Disabling alerts if the limit is 0 is wrong: The limit can be set
> to 0 on purpose. Only unmasking the limit if a limit is set is just as wrong.
> Either limits are enabled and reported, or they are disabled and the attributes
> must not be generated. Mis-using the ABI to declare "If the limit value is
> 0, mask the limit. Otherwise set the limit and unmask it" is unacceptable.

Thanks for clarification. So would you recommend then that all alerts should 
be always on/unmasked for this chip or to add custom sysfs attributes to control 
them, since it has this capability?

> Either report as standard voltage (in0_input) or drop entirely.
> The shunt voltage can be calculated from the shunt resisor value and
> the current. A non-standard attribute to report it does not add value.

I'll drop it since the shunt voltage resolution is 2.5uV and it won't give 
accurate information to report it in mV.

Thanks, Igor


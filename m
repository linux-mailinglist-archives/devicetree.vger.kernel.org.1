Return-Path: <devicetree+bounces-111555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B9C99F462
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 19:50:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABDE1283BAD
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 17:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37B41FAF04;
	Tue, 15 Oct 2024 17:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="aBVTrr8l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FDB1F9EAC
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 17:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729014597; cv=none; b=cGNbwfZqMhUKjULiHYmh/yXlI5fjGj19pWq2x05hO9GmTW85TpUohhs6qE9svgZE1B/Qx+CF7NvcUMR6tkimLf1hGu8BankQWk356qRr8SHh8EYi1NS2+ltxkYU9ArHX55e3aI4FvQGEux+7hyyGczhD8Sx9dIgoXTL7xyQAlSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729014597; c=relaxed/simple;
	bh=PVFCK4VcmlNPvXlYeH74spwk3OVg0+JICEV8l2QoxB8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CbLczSShUwZtU2Vv7kVZTAa/UXjvLNlrHEOY6kgk4NjZZGgA+dzViKtNeNS//Wdq1imwWdgCIS8N0veXVvsWFASo5t9y04F5zkxJMbihHqwnblSQmVrv4m6h0T5wyIPWOB1upbFhHm5P75zOxewBFUSpkg/819iZerpirOSkdlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=aBVTrr8l; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-71e580256c2so2120554b3a.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 10:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1729014595; x=1729619395; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rmroNsuhTr5GGQwwwUhm6ACalGPa0bysvUdakBT6cRk=;
        b=aBVTrr8lTEsQHQ/XFwQfN1DGHeeAkH9YJMihy2GtwcPNM+e9bZBkvJ2kR8T9En3vxY
         pP6qMWiQS2o4MFBxdKD+XCYUd2ISLXMxr58WUOOz8gBaGplYVzFhg6uHQDaS7H1oHA5R
         LBG3yERhQ1J2d91IT5SB4kZR3oSJ6xBKvnrukxyjVjPYEBd7cWHkHIj6Pj5CA/zksTcT
         oMIl5+uqIB/RjWIxui+9DHZebMOzVwfb6sQq94kDowMCpYU5FpIGvdYZhwIjwLwnwyPD
         cBZy4QcAmvoS/qPAlthqNeNOH2hengqPJ42T+tcrbq3m1wwGmj3b67FDQ1zYvQggLdHq
         tFpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729014595; x=1729619395;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rmroNsuhTr5GGQwwwUhm6ACalGPa0bysvUdakBT6cRk=;
        b=rjUjUFE2DfInGngOi2o6I4giBAPTA3ylGnsFhg9LH5upQMb40IF2wn5G0TzBnBKone
         MMwbqhYwrp3gRd+/G4CLREbQOtc0a2RuLCuTl9jQ5OSDJ7yHhihNNsWhV4KYKXPVH73y
         PCyqHdYM2VFOvjswqE3OXpeG3O3LQiD0x95ZPNKez7Hp4LlN2bS9Yc76eLv4EUJH8Ggs
         vQEnNk6PaGujiSktGcFJZNu2cTeow0tw82vYKxJpAkrAdPxegF5EU91EgNhxgeUGYUlG
         e8x3tovvie+QWeeakPlvVWUlcuO08Un9NWa8yVByICVso13mNgmKNP6wfAtQF5SbcPeC
         CQTA==
X-Forwarded-Encrypted: i=1; AJvYcCXFW9tk90w7EA2hxa/uRHo+Syxk6eJ0T9QfL+EkQ9xD+7KsWV1hhLdnAKadiyMKpiLY7cor6yHPrsMJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk4uQJdR82R0zvkMYIwsgVNgY4jkda58+2aHUWFyvr7rVcoiQE
	B/X+i5WbF0ciypkG6AKtO/mUnDTmcpBuXvBgiP3QA3l3l9C6u49OD20CTT1dua8=
X-Google-Smtp-Source: AGHT+IHJ9URbclwa1UMVWESY6/yNe/xtbyrLfud2FYj1JvuzArclf48eM4tw0OYTtNis0lmfQocyqA==
X-Received: by 2002:a05:6a00:1390:b0:71e:ba5:821b with SMTP id d2e1a72fcca58-71e3806bfefmr23908680b3a.27.1729014594684;
        Tue, 15 Oct 2024 10:49:54 -0700 (PDT)
Received: from x1 (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e774a431bsm1541943b3a.137.2024.10.15.10.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 10:49:54 -0700 (PDT)
Date: Tue, 15 Oct 2024 10:49:52 -0700
From: Drew Fustini <dfustini@tenstorrent.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Kanak Shilledar <kanakshilledar@gmail.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/8] riscv: dts: thead: Add TH1520 pin controller support
Message-ID: <Zw6rQF+2SUtXi8Oa@x1>
References: <20241014-th1520-pinctrl-dts-v1-0-268592ca786e@tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241014-th1520-pinctrl-dts-v1-0-268592ca786e@tenstorrent.com>

On Mon, Oct 14, 2024 at 10:54:17AM -0700, Drew Fustini wrote:
> This series of device tree patches enables the TH1520 pin controllers on
> the BeagleV Ahead and Lichee Pi 4A boards.
> 
> Patches 1-7 have all been cherry picked from esmil's th1520 branch [1].
> They do not have the issues pointed out in the previous series [2] that
> I sent out which contained out dated versions of the patches.
>
> [...]

I have applied all patches in this series to thead-dt-for-next [1].

Thanks,
Drew

[1] https://github.com/pdp7/linux/commits/thead-dt-for-next/


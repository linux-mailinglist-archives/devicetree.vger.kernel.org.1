Return-Path: <devicetree+bounces-196177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 28922B04545
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 18:18:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E9BB87A15E2
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 16:16:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F0AA25F97D;
	Mon, 14 Jul 2025 16:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Oxz9iZa3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84EC225EFBC
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 16:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752509894; cv=none; b=a+CkXjz9N3tiTigotV+0Ly+zTcfxvvdcaZRMk5z3vudrSXLWWBUQGX60JdJMgnrZvJarL1tcIG8JXYqqO+UjTd7e9/VzpRNG0Xw8gFeoiKEDCiFY75klM/cn3ISg3uXAcSygdvIG7H4OU8YnMftnHHsXbEc09gQPTi0tY1QFrZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752509894; c=relaxed/simple;
	bh=pdVayYs4+ZkLExX/qHuVNHe3Vze439YlELoMOMvEfOg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o7ZY4HeIObtXkwYdGpd7PYzPTeIfVTVdAucdOfxP2h8+60uDMDdGrtGDIaEI/4OkbJZ+6tWxfYhpcCCibWJPLd6YtJ5Awl+spD8O0GUNp5A+tj5xehcKLpQf1Zuujl2hprjsrOUHkqKv+ehqCmLlrHez7hmcWFhn2GrMtTCGajc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Oxz9iZa3; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45622a1829eso2577025e9.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752509891; x=1753114691; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wC6A1qDuM61Boa2KQZ/UgUYnzAlF4JWnuO5cBexQuGM=;
        b=Oxz9iZa3pwPtY4ia0j4EjhfSDwe5rWLZVl4eMHkpU4ac0EOQLSPKNXZOYPsd/IKBVG
         sgaYlkGn9rHfewQTuAhUqpemYcTODk3tjNunX4aRxjOCp3WjPXmW7FW2X/35zfWlSCzk
         UKt7aGLYf+RNBra6NIhm7HHPdCE7MJQfHHekrg4cx2UMBmomxunWlEvHq31qHPYD4Fq1
         g1O+uZp/pR2po59s8lkNoh1uIeGmlmjpW7d34esn73n8ZUlHFuOd/eTYOT0AfQ4td0cT
         uGoSnxzFKKG/om8fSKZbHZ5KAPgngQ/0qRTZT3GkEIwENay5oq+kUIE8O2hq5osMjs8E
         UMDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752509891; x=1753114691;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wC6A1qDuM61Boa2KQZ/UgUYnzAlF4JWnuO5cBexQuGM=;
        b=iuxhH3J52JRxyLq7taNy2sjcG/lMaH8pW0uE426PnyX5dZ+GR+3NMHEVJhMroVN8rn
         Oiw6JaGQ9c17BRNnL5CiHBDAhX64zEMxpoWU5C3tVVZRG7rauv6TEkgI9Rb7IvOxllYw
         p/OVw+hx3EirU69zJKaEAP2Hoai41Kf/lP3CTXa6eX+oKD0jXJ3Kmg6lzmVv4EnjrIIm
         EDfyinq+bl7bXVDQkcaUSz4dyuwFyKLsmjixK+6sTE2Tz04UKL/TlBoyXFrP3VLCK6xN
         d+i7kEs+8yCwI59p5GF1dZfnSmgo4kG+Pd1cIOTJKopWCnMpwzNSgLHjBuXnifh6Y/3w
         ymfA==
X-Forwarded-Encrypted: i=1; AJvYcCV9uvrASM1ayYGWXIW1RoRbw+Fn+rx881IE7YO/nr3kaN87mcY2J7yXrt/1KW4XsG0Um8uXeWC0C39i@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4+JvXB1/nZ5G9qC2n4o8zGFQ2frIEk9a4K8S+dfLb+kgZeGoG
	KMaqKUNrEiSw6fgWxQm4YXz7MH0/oEQ7Aa1DlkTkSHHkhWhWIq1CGfKaDUPtzMrYerQ=
X-Gm-Gg: ASbGnctChNSoNm468wE+qGcNT4Q0REXaAAbubQvKkUrS8s2jksHS4LlwY00L9eZmuOI
	ehlmMl8JFh8Zp05BwA2FJl6E423s64bLImi8OAHGZHc68Y4iu4iSmPj8Kvoj1uQlGBwCV1zVdVg
	IISOy+xc7W0SVOxHqd9rcg10JGV9fGLkmurgVkNbweRegATa7wtu1COkjMzeaElt85ew5dS4FT1
	AmsCldCBFDJXo/FvtECjuguIDWN85FeW0xCBM78EjGIUWHmEKvUyOj/2sw4oJbWO4vaqqUQPJZX
	02hw7syB7GtUtvDL16taLUucIrENJe6DEPqx5sfRZJKlfyxLaVSduERijSXmB4SQVllWyl7EFZM
	4UK3rYEkCukX4RnG02aojKWtgVpGax9msqV6H39Qa3ihOzyaoCp10gEf5Vmdt
X-Google-Smtp-Source: AGHT+IEkmiG1TNOouwwaTX0kWCFB9A80b7BdQ4qTqaPbflHAQ00Io1IBCtMbf19ehPEJdtKq4KcxZA==
X-Received: by 2002:a05:600c:5406:b0:453:c39:d0a7 with SMTP id 5b1f17b1804b1-45600771e4dmr84656845e9.5.1752509890844;
        Mon, 14 Jul 2025 09:18:10 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454d5103c2asm173612365e9.33.2025.07.14.09.18.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 09:18:10 -0700 (PDT)
Date: Mon, 14 Jul 2025 18:18:08 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Ben Zong-You Xie <ben717@andestech.com>
Cc: arnd@arndb.de, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, tglx@linutronix.de,
	prabhakar.mahadev-lad.rj@bp.renesas.com, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	soc@lists.linux.dev, tim609@andestech.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 5/9] dt-bindings: timer: add Andes machine timer
Message-ID: <aHUtwMnUwHIPn-sD@mai.linaro.org>
References: <20250711133025.2192404-1-ben717@andestech.com>
 <20250711133025.2192404-6-ben717@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250711133025.2192404-6-ben717@andestech.com>

On Fri, Jul 11, 2025 at 09:30:21PM +0800, Ben Zong-You Xie wrote:
> Add the DT binding documentation for Andes machine timer.
> 
> The RISC-V architecture defines a machine timer that provides a real-time
> counter and generates timer interrupts. Andes machiner timer (PLMT0) is
> the implementation of the machine timer, and it contains memory-mapped
> registers (mtime and mtimecmp). This device supports up to 32 cores.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
> ---

Applied patch 5/9, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


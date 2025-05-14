Return-Path: <devicetree+bounces-177311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1561CAB6FCD
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 17:30:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 685AC9A2A09
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 15:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B7CF1A7044;
	Wed, 14 May 2025 15:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DrfcIG0h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1FE1A0B0E
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 15:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747236078; cv=none; b=ZowgB6YnkQGppaiwf2K5itEfOUdQRDUeq+jGv5LLtJvCbhmQ3MiLvj9b5HynMbSWFotdjqqKCSp0yCoXIQ2NWt1fwK6uhENQhoVyCzHcY6juDfs+5z2HELSVW0yOcHC4KlWZaRbPvRHui8AAF5pDHNrSkWYOuTqIvRX3E/mFfZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747236078; c=relaxed/simple;
	bh=LJZDt5Jt2glmNZ/wOhrOamQWBH4PbWPLnCGN7Nze7uk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IjNCTgauDaLBDOwMPBIHB2BWgTBTt5Wrdw40+5PtFz47SUyA3vJKjp4A9vQHZ6M8M+TShMKL/bV30dVP4etYlvh7Cns6Dy2pUzbKd4fRO7qQpdtEAFXAFHT9dlFExKizx7dkhP932t9V2yCmU8Js51jxxhuR3iyGUqmgjfcn6jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DrfcIG0h; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-442f4a3a4d6so5375365e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747236075; x=1747840875; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KSC7AS1sDT3kiP+IimhJbkxckYibl8Clt4YmfXjLex0=;
        b=DrfcIG0hzTyrs6zcbm9K+lw72n/R20afOyB/L18a6OsH+GeNLpT4G1oOBoXrL3lcXW
         muE/GtpXPvE6bvrOulPJCs/azgShKn5PtLeEs1LL4XpBAY3m1OPzACX4RzuxKNrYjGbW
         HAknvgt4G2kLx5nkedYXvpD2Upx6qKK20ie/Uegv445ZRDJseUJ9adTL1Pf/XLzLluyW
         +aZ4VSzFmrF66Xx3c28MUYf+YPMAoHrpxktCUVwNoIRxo38hSjL8eIq6OttbgEYOPqh7
         6YptkuZAx490A5sTQYQjClF9nY6MF5GpC+CI5UUCA/IY05b4lPDlDfVDNtCAR+pW3XvS
         tb6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747236075; x=1747840875;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KSC7AS1sDT3kiP+IimhJbkxckYibl8Clt4YmfXjLex0=;
        b=gOi4SKZg8jIJ/5VG9UD4/IJqHWW3EzLHjsf0bUb9swyI9t3YJY+Plx2Nz0oT4pb9Ao
         b+hjPXciKf8lzeCY2zxOzxgfM+Deh+Z4SqAIZUA+VMudOFewwG6sSFmN9MMl9TRp9DCx
         CsnI9Lbnn6Rnf3vgoJZbzqRZZL4pPHk1eo1BIUxdIyj0573peOpCouIrDwtrfDcLNWJM
         3yqMV8x0u7drzZtiSrY2prAGg8vX1y29/9Rc/D4Rsxo4AxdnEdjG4vtLzHqllQ1Pgai9
         CA3TjJSANAknymm1LNX/xePzIfObctUdr4MlhOPWNJmmJwYWIYhs7atg8j0TRYua3PRt
         b8ag==
X-Forwarded-Encrypted: i=1; AJvYcCWlqYDFMOTcTKfAUSlJp4g9DMMgGmNK+WtSHlBKJkrFnRwP5Pr5dMLHVjXJ46ap/QBQu0yYxMJxi4Nt@vger.kernel.org
X-Gm-Message-State: AOJu0YwX7BTUHtRxYZvy++FEsU1llATbOVNfYN6ECre//2EsscpuW0MF
	E3a93IULDBSK6lFtAOfo+1F+yxYeyowXzfShRgOgpApuQ+yuKijbQycD9TDhbgU=
X-Gm-Gg: ASbGncutTP02vCk47ISNM9DhMJvbIKU5RUw9NjUoy05yzvUdweEt3pMsaqHX/0/saRA
	RVA1xqxtnvDssJflwNah3qWV07sADmWSjNIYTSChKxXtrhPXANfCrZ+GDZuIT6lwAPkDlo9GTOh
	b2sKPw4Sn8f1Qu9GbLKdx/7+6DnpmfBAb09cbGirI4BCOztM9zo9B4o7QEYJhTPjEU9vFj3D1ml
	ouQF2JiAcYXKtGcn6e+4O2CX9sZo0xO9yw8j4UAkRE3QwJncPsehGjX9rDT/BeJPi3QUruCss9/
	AjoyOG47DWaWvBUXRQkOgGKEb31IglI/tzVA2c3Eci89v+lsFKFrXEPSPBBOyHXlQPJF6AV1A1y
	rF6/Ljvc7j/gVTA==
X-Google-Smtp-Source: AGHT+IGe1ne4Td1Ml7Z+Wncf1fBtA4hEtl4bvauo0/AxKZED1m8DaHt11KVpSSf0ZkBUNpGoY5FUfQ==
X-Received: by 2002:a05:600c:c0c3:10b0:43b:4829:8067 with SMTP id 5b1f17b1804b1-442eac9f98cmr49562565e9.6.1747236074746;
        Wed, 14 May 2025 08:21:14 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f39ef81csm33273325e9.34.2025.05.14.08.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 08:21:12 -0700 (PDT)
Date: Wed, 14 May 2025 17:21:10 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Ben Zong-You Xie <ben717@andestech.com>
Cc: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	alex@ghiti.fr, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, tglx@linutronix.de,
	prabhakar.mahadev-lad.rj@bp.renesas.com, geert+renesas@glider.be,
	magnus.damm@gmail.com, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	tim609@andestech.com, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 5/9] dt-bindings: timer: add Andes machine timer
Message-ID: <aCS05j9ZYqga6dIO@mai.linaro.org>
References: <20250514095350.3765716-1-ben717@andestech.com>
 <20250514095350.3765716-6-ben717@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250514095350.3765716-6-ben717@andestech.com>

On Wed, May 14, 2025 at 05:53:46PM +0800, Ben Zong-You Xie wrote:
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

The patch does not apply on my tree due to conflict with other patches
of the series on the MAINTAINER file.

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


Return-Path: <devicetree+bounces-165608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA1EA84BA2
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 19:50:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE5717A8BE1
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 17:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E02621CC6A;
	Thu, 10 Apr 2025 17:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kkphNOJk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E23E1F152E
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 17:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744307414; cv=none; b=Kyk2XqTLlCnz2ci0eLwUSlFB+W3fUlX1a0aDTlVRyIo4pk85ZDps1YjmviYvpAuNY//3+haNlnTL+o7r9n7npMWmpG5XaDpjQ8M0Ol9m6Fo46/97uIs+7c/DJQakRP5AryDLBU5z3+ea4FJLerUhiSKHagWu6GrzaESjVYrJ7WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744307414; c=relaxed/simple;
	bh=lY9Y1px5P/T0puiH7BaGtKHUBDN6WoqTLWKxNXRuM/E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZTb47lJznht7Tc4zq375DzqDDwkV7tg0pncsLS1tPyP2PwJIT9Cy7A2sarriz56wIpfS9iN0PYSADmsdZM8zIldm3No8LWuj3xOvFyMbW8kmgrm6TGNHp4QQRURDHEAXRZ9VNgQwPnl6dYvlgX9QkP8fZqJht2e3f9qfgVWBxDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kkphNOJk; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-224171d6826so17043535ad.3
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 10:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744307412; x=1744912212; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZFvKBztlvaO+hpuywxVFq1Ch6C+gHqQXzW5kBxcM2OQ=;
        b=kkphNOJkIM3PK9y5ytq7EZKAjnuuZlCqbwdk9/HDnmyvn09DKUPpQcmUxPDMxEUQGN
         VBmZm0I30wEfuWj+teFbNQgf4XaHVXBUykXacx5l3/YJYeQtmxRRt3sMS4j5pgbfBh/1
         yKsOFqyv1Ga5xG0tfvDT85l9/3kVavlgL2zz0iigz+ZrD7bux/MuOGzsBuXl2RH1yE7g
         6T193yNm7ynjZUvPVu4N4lJxKHRV4PdA4ULKjpuEfNyTP8Uhu12jOAL/Uis0F64FaAvr
         t2tPCn/cZlGXtIPX3wGiYNYdpShZ2jMxfoc24CIX7264OCIjXu5KqIdOHsKbxNujCDmI
         GI0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744307412; x=1744912212;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZFvKBztlvaO+hpuywxVFq1Ch6C+gHqQXzW5kBxcM2OQ=;
        b=X+a1FpYNEjfW0u65qFE8al5U+j7iyW+His4j8o5tHZOcgaOMRo7iwLGke3UEreCdnP
         WJuz78rrEwF6eg8vcnCCYo8eUl2d0ENdI/X7ALUZ2yag/4c6r0P9RTm71ECkAsNzwxKM
         JsyhOWIQ0NgL6XuojDB/1e2YlOwBZ0jnZv8gjBdNtdmmGEvfrt6c21RllV0z92PaDdoS
         SMsZf98M23gvOyVSEB+QKhvRR/jkH7UkZTT/WQVzp6XVrK42nYGonXGRWfMsq22MC6Dc
         WqtO9Dw9aEvMOEdgktkicYjSj1tIaJyHc+WXziS7IquCKeA6lrl2sknVMbCmXpGOUg/K
         o4rQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKYRV03/BAmWTaQdpYYGfbIt6nsiH/4MnwfjHRCbBM229/VeGTFYFrbWWM3LseBzxrgtkTsArvB9EA@vger.kernel.org
X-Gm-Message-State: AOJu0YyffXCqROcGvqRND/p2SEFJEUlIccQUAEkwfQq9J8Ca7DO4X1Xy
	emeIlOMC2eVhJwQSFrIdITO5+RhXXvVvCwKoKSy//xochg2c45+4zaukRX09O9c=
X-Gm-Gg: ASbGncsd1871Ohv65GxPoVbFMpGuz4zpDudvTFyrGamXJmgLKgb829Y79uGArx0ELRC
	l23B5gnhN7VjiJSz+G0ATx7J66+sIFKIKb5LlRrTNe2iooSvOpfsxjRY4zX6TaKeLMfSQsUrCDS
	T7fDWmO5+fWm5i7Vf35fHXNwtJtYP1YZQfYdCGmH3H4hRkEVjbAHdjF33QO4hPYUZmXUv78jn/8
	NYlhA+rrwNGzEzIAK4N3N/O/adSemA65qvm9TWDBg8a0v99wRxuRGBK2VrSJVe3DAumuZ70+O2R
	A1Xm7Z6tmwB2K0XThrssKZYYhMcXK6vAJjHAQKwJ4gr+TmdztVNoPkwCf9Xs9zM9T2ktXO92kmg
	iBH/OLLwsF9E=
X-Google-Smtp-Source: AGHT+IFQfLjl5b/4pxjR0AKJRtL4njnVrLI7qc5hXSk6wBYhGK6iLJeFS3Z7hjVwQHKFbPW7UQz95Q==
X-Received: by 2002:a17:902:d50e:b0:223:517a:d2e2 with SMTP id d9443c01a7336-22b42c6e367mr57462235ad.53.1744307411718;
        Thu, 10 Apr 2025 10:50:11 -0700 (PDT)
Received: from dev-linux (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7b8bce5sm33652735ad.90.2025.04.10.10.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 10:50:11 -0700 (PDT)
Date: Thu, 10 Apr 2025 10:49:56 -0700
From: Sukrut Bellary <sbellary@baylibre.com>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Tero Kristo <kristo@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: clock: ti: Convert to yaml
Message-ID: <Z/gExA95AnQzxYmt@dev-linux>
References: <20250404014500.2789830-1-sbellary@baylibre.com>
 <20250404014500.2789830-3-sbellary@baylibre.com>
 <20250409111002.5b88a127@akair>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250409111002.5b88a127@akair>

On Wed, Apr 09, 2025 at 11:10:02AM +0200, Andreas Kemnade wrote:
> Am Thu,  3 Apr 2025 18:44:58 -0700
> schrieb Sukrut Bellary <sbellary@baylibre.com>:
> 
> > This binding doesn't define a new clock binding type,
> > it is used to group the existing clock nodes under the hardware hierarchy.
> > 
> > As this is not a provider clock, remove #clock-cells and
> > clock-output-names properties.
> > Though few clockdomain nodes in the dts use these properties,
> > we are not fixing dts here.
> > Clean up the example to meet the current standards.
> > 
> > Add the creator of the original binding as a maintainer.
> > 
> > Signed-off-by: Sukrut Bellary <sbellary@baylibre.com>
> > ---
> >  .../bindings/clock/ti/clockdomain.txt         | 25 ------------
> >  .../bindings/clock/ti/ti,clockdomain.yaml     | 38 +++++++++++++++++++
> 
> I am wondering whether this should just be part of a converted version
> of Documentation/devicetree/bindings/arm/omap/prcm.txt. I doubt there
> is any other usage for this compatible.
> 

Yes, OK. So, do you want to take this with prcm conversion? If so, I will
drop this from v2

> Regards,
> Andreas
> 


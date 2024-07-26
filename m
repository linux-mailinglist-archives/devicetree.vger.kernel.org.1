Return-Path: <devicetree+bounces-88241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E1693CD17
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 05:52:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A15D51C215C4
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 03:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F81A249E5;
	Fri, 26 Jul 2024 03:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="JoEuYOPd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BE51BC39
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 03:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721965950; cv=none; b=b16UY37WNqM11l4Wc46FgW1uv8KKDCZee4rdYmj0SAyKg4fP+Qbs3k+ZkKheqfBskig26WTaClmpkb6zrPKf9DbmYxvu75uvnoOQcuvU0njIOlowQnsJFLd3y3jneJDu3lz2tLpes3i71P1bjYngs7hNaKObZThszYH3vTHV5Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721965950; c=relaxed/simple;
	bh=bMf9YP8OrOfa827DQXIBqNaiNhmnzAgz4ckgyPunonE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I6t8GSnXiC5pfam26sOEqAsS5RYucP4XRxxeKhTa/9dqlEqJTy9VLmrjiDLf3q/UkRC+eB5Ny+8Huz3becUyKi2pZdSPMCRDqCyzhHgQCZLv/+FoK666BN5i6l95ex2U+fOld+PIujyBTCOHHmtOebHlZ7zaN6T9TQ7kSBN/T3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=JoEuYOPd; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-70eae5896bcso475300b3a.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 20:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1721965948; x=1722570748; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YMMjoSAK7IYa048PDOKabvStWi4pCjyCqdhBNgqeLE8=;
        b=JoEuYOPdbmgWSiOLHNA76vUgzuq7WOQlfYqhHl69slVvS8GXVki3SrYk8GdX6pJaso
         25hLZeIdv7Pt/LEvlpjNPKQF6k4084axNfs2jsP/MXwWPCvAhCElHpQwdKYHBnqcZtPB
         oQtGgto+8Gz2sNr5tNjk8C3EGIwD4q/ji2gtGoMGYYcWW8jbvbNYxVh5j+7aegCEFXd3
         8uFnXy9EA2pLiD39A1c1511yRsAGwI/DSNY5KIBQVuPbqn8KcDSD9jUdNI/PnfQZmPhQ
         ZTSwh2LxzKMOHuxABHBcaWh2SIUAcnIF9w92opw7rbJiWHlifzrDMLQOwTOOkA2D0bqG
         oZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721965948; x=1722570748;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YMMjoSAK7IYa048PDOKabvStWi4pCjyCqdhBNgqeLE8=;
        b=jGmdO5JbmEVtn8junqhleZUsTAQCft1seME/IeXHSKrWqNQmI6DiKM+I1x2o9p4V/A
         uUElxYHXhgQBSU3008DKe46ttapOPILwCIScnaUAZG3v/x98r/HcCQGVp8bPSVkOVwXk
         XIPvcrFDYHiZ4FsAomfpsF76iXv1sO/xco8gkzyM9laJF0x04O3nAv6LDhk3zIFmH0eo
         2n0p1MtIBXh5u8W/MCF9ap2IoKkFv13/s/7+1AyafRLLXlk65osrUDOsX8ODhT6222lQ
         uuDilBX/9JGEpTryfrINoAhXfKhq5UAVXk7/tE7YSBqX4RSO4v4xc0/G5Vdf1rXvguvV
         E93w==
X-Forwarded-Encrypted: i=1; AJvYcCVzc/rwXWjH/vpglWnrVLwGaWFgTEdKunBrwBSD0ybIhCfKQ9VhrhUfGLsX3DrwAwGHMZ+EEMVN6vlBrzYFxwB7LtmaHCscYOD8SA==
X-Gm-Message-State: AOJu0YwIjVW4ogBmY/kKhtHtWoSlzvVaYRUuOv99g0XolCQfq2w8qleM
	g0ThQMsUTjd6JjmBfo2Mhhdm/QBrDe3V6T6vDBROZ2M6p2ZTB0eJkjknNJxO/B0=
X-Google-Smtp-Source: AGHT+IE1UrodZkcO9IjOZvKHUjR+vdMhcCL5thros1OpINm+KvmZgxt8vZDmV2QGFum74/oMFOgFLA==
X-Received: by 2002:a05:6a00:4fcb:b0:70d:191b:5537 with SMTP id d2e1a72fcca58-70eaa89b96fmr6197079b3a.4.1721965948227;
        Thu, 25 Jul 2024 20:52:28 -0700 (PDT)
Received: from x1 ([2601:1c2:1802:170:f62e:7a83:ff8d:7ad6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead8122e8sm1831703b3a.139.2024.07.25.20.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jul 2024 20:52:27 -0700 (PDT)
Date: Thu, 25 Jul 2024 20:52:25 -0700
From: Drew Fustini <drew@pdp7.com>
To: Kanak Shilledar <kanakshilledar@gmail.com>
Cc: Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/1] Add basic SPI support on TH1520
Message-ID: <ZqMdeTrV5GE0TVUV@x1>
References: <20240705093503.215787-1-kanakshilledar@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240705093503.215787-1-kanakshilledar@gmail.com>

On Fri, Jul 05, 2024 at 03:04:58PM +0530, Kanak Shilledar wrote:
> Implemented basic SPI support for TH1520 SoC. There are two SPIs reserved
> on the LicheePi4A, one on the SPI Flash pads that are blanked out on the
> back, and one on the pins. I implemented the one connected to the pad.
> 
> It is using a fixed clock of 396MHz. The address and clock frequency was
> referenced from the TH1520 System Reference Manual [1].
> 
> [...]

Applied to thead-dt-for-next, thanks!

[1/1] riscv: dts: thead: add basic spi node
      commit: 0f351f8c4f4ee87b729cc366917e67e3eee2d3db

Best regards,
-- 
Drew Fustini <drew@pdp7.com>

Link: https://github.com/pdp7/linux/commit/0f351f8c4f4ee87b729cc366917e67e3eee2d3db


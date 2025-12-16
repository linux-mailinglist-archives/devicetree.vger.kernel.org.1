Return-Path: <devicetree+bounces-247149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A9FCC4D65
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 19:19:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF1BE30F0BC5
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 18:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C86033451C6;
	Tue, 16 Dec 2025 18:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nzic8FCr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A583451BA
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 18:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765908320; cv=none; b=Z2Qz5+jPq8Xt40A/3oc85uOrGo6QI+KfA3GDJaKhL58EWcTlG5/MMz10XnJpZ7gyKOjLSw/qKl8SkyhgltlKEYgR0/+OxPFs6f5s3Jk/5NaiRAQnoM1q7GxafCCSPlTapwf56+QoAgo1wvIXH/46lzRBzokNsJOf4OKRwIuEhJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765908320; c=relaxed/simple;
	bh=G11yOThvw8ivZMg6xvJnmxWZPCz5hKcyxYMZzb8fEaQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=upF4kBCbpJqhfRY0SflAXnhcDVAm3U2okCC4b4Pp6MyMT4LpMI2kP/EsgfYrK4TbpUMB5slgPFFp13oR6wztC71c5ykvVDWhwZeFGtl8EYlj/m/uJHZsYLyC737haW5YutGhdddkiqeLFgoIgRP5qhsbCyIT1z4s9YvxOyqhjPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nzic8FCr; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47aa03d3326so12300895e9.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 10:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765908317; x=1766513117; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wOVTvVNdR1FG9BDCa9ncqVORVzbhxwnhnkEQ2N326Mo=;
        b=Nzic8FCrZFHDVfMCu32HLPMF/Z+bNeerHI1t7uewzMpOAMyF3HDdrHK2vVLUuuV3h2
         CYx/bZ7ALePqduluYTeraCreqx4dv5dG8bgyqwrzr02QTkuFBINuo3DkYHyrWo0tXiM2
         8UTKmTYh24dFei5DS1YZr5OUU6tb6bm/+nuZwVGgWRIw/ybc2IVledgQTFhBsA8vlYoA
         J4cZKitYoL5CoP9kIyIGUPWTue/LXbiiYOcRx0PB6MiZHh/QzktX636Fv1trvB+NxSQP
         w4YEeqt3uG+9vxqC+wYmyRJ99ORYvE8WkqdoXI+v9b2UuVJxwVxVyGh/NBeS4j+Ugghn
         LO5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765908317; x=1766513117;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wOVTvVNdR1FG9BDCa9ncqVORVzbhxwnhnkEQ2N326Mo=;
        b=oUXQ1EqmxWYl6/nYFKJYFRrcDQq1kZ5OTHJ47q2OhIlpIupS2hQpusib7Hq5EK6LuL
         AV48FWOtHZeM9/rAqRi9/t34pO2NImtWjpMaKpyPZbqvty2TxYBsrH4fcRo/K4O7+qdU
         gjVIybH5SehqLdXkJe2y/5A+OxFLDkWKYmdZG6GP5x+fd8XptKbH4wgKTgt84mcgoIZW
         B++fyYAekzqOidxQAtDFcBPngSb2JF+1wdHZ+yJ+Jvu1JmFz29Hz7VLqDWm/p5qNulZK
         Usq2e+BCTRAJPVxhGb+jaybfKh+pJrOUF4EVSiZERAG3V5fRsInPCxo+sdmlEqeMHLAw
         yoJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbsiQ+PUOZFQUziHbjUaB3mtTj1fL/FPYfK+RnC4ClD237a/c5iQnkLHuKCKph5GL+UrxfYc27B5nP@vger.kernel.org
X-Gm-Message-State: AOJu0YzW4MmTjJ3caAjK7bq4jQ4OEa9HPHc3a1OZJpz4QW1NkCxRcZ2C
	9LcZ+/ujztBkXPcver1C14S0uX+NQLAqFmshWZrv0ayv11ZbFbbZ/hc4
X-Gm-Gg: AY/fxX7G150J9bN7EV34ajhJiIHwcC+sdkGDVoAZCrNuFFnTgNvCaHGl81cidfBbkcX
	eylMmG199QjXBhYygUkUrUF1s6IrvalHcunAAloBM9Y8OPZb4I2BuEKmd11j9go/CXV9AH6rS9K
	Pok2TDgIDr4fJT39H0w1yah8rRarbt7qjDmtDLcXvvTP/o8ztkFY0dZ0ONiRK0AorRr/t/Fnkbc
	6eZeNltspzyO0oE3l3LXs+n24wpzK0reNyT9GmvAsw8QjIksLutGgaqXxbKgPoiDOdg+Mv+cVLg
	9O2FTc34Opys12tyz/8c/N4VddIALc9GjAGWFbE6bdbFfSPr0b3Wr/aTvUUCdtd0V3luoTXH5U2
	C0VoOVlNWyvhCVQMI4fT4JUN8HBuTR4Da6gwHQWJGbDVRB8CdUUAGnX8Q5ogg3Tnm5aRGS602Et
	JsGEE8atPSKxn4sl5XQO+K4tm7CnuSabUVItDyjLf1jDUoAxNU+qnm
X-Google-Smtp-Source: AGHT+IHcp2kh+mNII7OE1JHRsuXQc+60t2y2lkbG7uOLLemuoRbIqLfM/QxfUUFPTPf2nXNDwVnhkQ==
X-Received: by 2002:a05:600c:4f90:b0:477:b0b8:4dd0 with SMTP id 5b1f17b1804b1-47a8f905680mr161568895e9.17.1765908317137;
        Tue, 16 Dec 2025 10:05:17 -0800 (PST)
Received: from anton.local (bba-92-98-207-67.alshamil.net.ae. [92.98.207.67])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bdc1e1ebasm1784605e9.8.2025.12.16.10.05.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 10:05:16 -0800 (PST)
Date: Tue, 16 Dec 2025 22:05:12 +0400
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: Chen Wang <unicorn_wang@outlook.com>
Cc: Inochi Amaoto <inochiama@gmail.com>, 
	Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, Longbin Li <looong.bin@gmail.com>, Yixun Lan <dlan@gentoo.org>, 
	Ze Huang <huangze@whut.edu.cn>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, sophgo@lists.linux.dev
Subject: Re: [PATCH 1/3] dt-bindings: dma: snps,dw-axi-dmac: Add CV1800B
 compatible
Message-ID: <aUGels35MP_BNjRC@anton.local>
Mail-Followup-To: Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, Longbin Li <looong.bin@gmail.com>, Yixun Lan <dlan@gentoo.org>, 
	Ze Huang <huangze@whut.edu.cn>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, sophgo@lists.linux.dev
References: <20251212020504.915616-1-inochiama@gmail.com>
 <20251212020504.915616-2-inochiama@gmail.com>
 <A0AF03A6-1F0B-462D-A088-3B4DF6BA6292@gmail.com>
 <PN6PR01MB11717B13B2AE78DDD36D2F0BBFEAFA@PN6PR01MB11717.INDPRD01.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PN6PR01MB11717B13B2AE78DDD36D2F0BBFEAFA@PN6PR01MB11717.INDPRD01.PROD.OUTLOOK.COM>

On Sat, Dec 13, 2025 at 08:53:34AM +0400, Chen Wang wrote:
> 
> On 12/13/2025 2:48 AM, Anton Stavinsky wrote:
> > > The DMA controller on CV1800B needs to use the DMA phandle args
> > > as the channel number instead of hardware handshake number, so
> > > add a new compatible for the DMA controller on CV1800B.
> > Thanks a lot,  Inochi. I've tested on my Milk Duo 256M board.
> > Seems to be working with the I2S driver, which I'm working on right now.
> > No issues with DMA interrupts anymore, DMA router used right channel.
> 
> Thank you, Anton. Could you also add a "Tested-by" signature?
I've tested the v2 https://lore.kernel.org/all/aUF4w9sO5lmU9T6v@anton.local/ Hope this will help. 
Thanks for pointing me. 
> 
> Chen.
> 
> 


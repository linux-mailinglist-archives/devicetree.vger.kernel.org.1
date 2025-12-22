Return-Path: <devicetree+bounces-248930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED72CD6DD8
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 19:00:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4EA83301C910
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 18:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97302314B75;
	Mon, 22 Dec 2025 18:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TpO35qJk";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="c3FHLG6d"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEDE722F767
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 18:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766426445; cv=none; b=eLJIZu0GDynKpneqfqVj8Cuq5Ocda/ACWtYqGcV6bGjxaOC1t9B5bsicABh5poadz3FDo2r16xqCL5tixz7qpmCRCNJnCpwL4NQheFkjhVoxY6JH89qHVR3p1u9qBscmnIzzd0hSOEje+SckN7TJ0KATUsFhZT4Rh468JDxyKuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766426445; c=relaxed/simple;
	bh=cbyuGkfXpqUbhzcI1BkQa3K8cyZUe/N+4bGTpsNbH5I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FEQmZHEatB0FJWoyE0CsbVjLwRjbYRzk/5+Zp3KH78F2fBMqoYwaMtGJ74SR3xw4ek6JBAw+5JHd6uPhas+eH0fuidYKJ1e5TLhp80Qi/NTPwIi5NWdWQpvuw3apkT/Aej7QbjI2NANfySpcWCRRwqOuJKLHd9TlX6qLrM3fnio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TpO35qJk; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=c3FHLG6d; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1766426442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=dXo0XmPhzaeXOxCnEx9hH+u3QjRF1RyUWpvNBcumJRc=;
	b=TpO35qJk4993rLDqjUjdhUf7crwbGJiwAtG3djDZvH2Yaw6FaKdzkhEExZClOqspUqcDeV
	fyPozRoteZQKhW6oF2hjwj5OWY/6B4cebANZhCzTkcde5UMfXho+KmpztpA4DlAl+89hwD
	rbmOLWDPupX4r5CAPPFo5Me6lB+DDQw=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-400-St6y2L4TM2OKjsfo8g529g-1; Mon, 22 Dec 2025 13:00:41 -0500
X-MC-Unique: St6y2L4TM2OKjsfo8g529g-1
X-Mimecast-MFC-AGG-ID: St6y2L4TM2OKjsfo8g529g_1766426441
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88888397482so129848906d6.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:00:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1766426441; x=1767031241; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dXo0XmPhzaeXOxCnEx9hH+u3QjRF1RyUWpvNBcumJRc=;
        b=c3FHLG6dt1utePC4BAhCOu9bsRZBsYxoAjdwgugSfG2kwnsR9xoQY2c8lm8j0YrcDy
         M+lX19ls1AlHMCcFSvHxmN/kcFgWd7SwRSVd1zydUqsiVTZaMKn0/FpQpUBXX1vWQw4S
         M6EfyBys6JvnnpynZbpenEdTazny5H+3wqe78ZD7tS9lpqpsWKv8JPlEXO+78QhPd+H5
         dfoSALSttX1C+oo+nbRg258lBYwWPT/zRcNhuuCCf8HNOZqgnCN/+s/RX7088DKiIipn
         kLPso4ZirxBnefCbTOV3GFWgojQWRrfEQ92GtDGfz7M1Ni2zO6xZGNq6mQpGtaSuVHbM
         tFqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766426441; x=1767031241;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dXo0XmPhzaeXOxCnEx9hH+u3QjRF1RyUWpvNBcumJRc=;
        b=oe/T61PL/wPqQxrpnN2j7yes/rnFexT/NgfsSXQDMfQrzf8Tc/Z/LXZ43OA5Yn+AM1
         hV9GVeHi3PnNMqjqy211Cfwa9J3j5iLVj+KDaZMuqHjHdCHxp7EflKbubJAAKH0TNu+8
         Tf7GjApefaEHjox35pmAowpk6M2KG4M01+4XH6xEUwZjQ2LQouVHWCi1vyPF7OrxgEYn
         P0kTXvG4UfFUzf+KiClFzlEmMSjDEFAU9oOMQ/iz2vPUf/xXhlKwWlnent12Nvk5Ifey
         c7jvloAD4P36rM9zCH7Y5kMLq2b8SD4bBpvVEBPRRl11IsnsxCcACLy3tO1cf0KRmxqO
         Dgkw==
X-Forwarded-Encrypted: i=1; AJvYcCWDbbb8Vapu5/SKVPqLWE+91viH+YMPuwn0mVHrZA2h64LS/hkgSP4xKSrF4SQO//KAa05YSvWQYYBe@vger.kernel.org
X-Gm-Message-State: AOJu0YxWig5EWg8AHq3jejZ6czN3oInakmNDQJqVPp1H6b/1nGO8ly56
	tTIf+3FvnqOT2EybA9mMft/rWrXHCWTvzChIeCtvqZS21wH0pkx5xFDkWN2XquCaUmLQr+oDqHO
	r6fCxK9/YJMXKwbt+xBZf6A3Bl8iMSJTp5sMoYdXtUD6wWqTLRn8fdusjFN/hVWI=
X-Gm-Gg: AY/fxX4QmzqDOmvCDmm6BYVjQOLg1epMyR39VbNQWGySdTcYPgZAt1pFa3PuBLyWPOy
	nbcTg2hbwURPqHvjCEnGJxmpr6v0Tb//yg2HNqkxv6dmH4vJggi3oZeA2sf1vcHcL3W8J9idK5O
	Gae4/v1Ok0NCSv0J3ZSKA7zBHA1qbeaKFT8/OaoRZ82UJ+8MeNUrUcsEPSjBxCUqCBMwj8eF7Fy
	0sQJ1AspDzzPrcBocYh0A5DN5VL0an28vYNFeqgE/XP4v/8mnuJbLZSK6I8v7BcyLO8NwuxCHaF
	KGZwzas5i3XFw42z3mNKILsIrUD6r4s2z0c/ckS39TJ9oFb1CxAk+dkvBG1iTeNxt5HJ1B2hSF5
	6sxdxw/az+l870xGW3Z994htmNjdM4goLmdA+c21gE3jU
X-Received: by 2002:a05:6214:27c6:b0:88a:306b:820b with SMTP id 6a1803df08f44-88d83d670e7mr209995286d6.57.1766426440637;
        Mon, 22 Dec 2025 10:00:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFShBd6/ILCtyh9OhdnIzWfY3dp9JmiO74dGqZBOXDUCJ4lowAybkSiEsS44d+2GsPo84wwMA==
X-Received: by 2002:a05:6214:27c6:b0:88a:306b:820b with SMTP id 6a1803df08f44-88d83d670e7mr209994116d6.57.1766426440046;
        Mon, 22 Dec 2025 10:00:40 -0800 (PST)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d9a63e296sm86625536d6.52.2025.12.22.10.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 10:00:39 -0800 (PST)
Date: Mon, 22 Dec 2025 13:00:36 -0500
From: Brian Masney <bmasney@redhat.com>
To: "irving.ch.lin" <irving-ch.lin@mediatek.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Richard Cochran <richardcochran@gmail.com>,
	Qiqi Wang <qiqi.wang@mediatek.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org,
	netdev@vger.kernel.org,
	Project_Global_Chrome_Upstream_Group@mediatek.com,
	sirius.wang@mediatek.com, vince-wl.liu@mediatek.com,
	jh.hsu@mediatek.com
Subject: Re: [PATCH v4 04/21] clk: mediatek: Add MT8189 apmixedsys clock
 support
Message-ID: <aUmHRCXNy45PrVLG@redhat.com>
References: <20251215034944.2973003-1-irving-ch.lin@mediatek.com>
 <20251215034944.2973003-5-irving-ch.lin@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215034944.2973003-5-irving-ch.lin@mediatek.com>
User-Agent: Mutt/2.2.14 (2025-02-20)

On Mon, Dec 15, 2025 at 11:49:13AM +0800, irving.ch.lin wrote:
> From: Irving-CH Lin <irving-ch.lin@mediatek.com>
> 
> Add support for the MT8189 apmixedsys clock controller, which provides
> PLLs generated from SoC 26m.
> 
> Signed-off-by: Irving-CH Lin <irving-ch.lin@mediatek.com>
> ---
>  drivers/clk/mediatek/Kconfig                 |  13 ++
>  drivers/clk/mediatek/Makefile                |   1 +
>  drivers/clk/mediatek/clk-mt8189-apmixedsys.c | 192 +++++++++++++++++++
                        ^^^^^^^^^^^^^^^^^^^^^^^

This file, along with others in this series, is not listed in
MAINTAINERS. This is the current entry:

MEDIATEK MT6735 CLOCK & RESET DRIVERS
M:      Yassine Oudjana <y.oudjana@protonmail.com>
L:      linux-clk@vger.kernel.org
L:      linux-mediatek@lists.infradead.org (moderated for non-subscribers)
S:      Maintained
F:      drivers/clk/mediatek/clk-mt6735-apmixedsys.c
F:      drivers/clk/mediatek/clk-mt6735-imgsys.c
F:      drivers/clk/mediatek/clk-mt6735-infracfg.c
F:      drivers/clk/mediatek/clk-mt6735-mfgcfg.c
F:      drivers/clk/mediatek/clk-mt6735-pericfg.c
F:      drivers/clk/mediatek/clk-mt6735-topckgen.c
F:      drivers/clk/mediatek/clk-mt6735-vdecsys.c
F:      drivers/clk/mediatek/clk-mt6735-vencsys.c
F:      include/dt-bindings/clock/mediatek,mt6735-apmixedsys.h
F:      include/dt-bindings/clock/mediatek,mt6735-imgsys.h
F:      include/dt-bindings/clock/mediatek,mt6735-infracfg.h
F:      include/dt-bindings/clock/mediatek,mt6735-mfgcfg.h
F:      include/dt-bindings/clock/mediatek,mt6735-pericfg.h
F:      include/dt-bindings/clock/mediatek,mt6735-topckgen.h
F:      include/dt-bindings/clock/mediatek,mt6735-vdecsys.h
F:      include/dt-bindings/clock/mediatek,mt6735-vencsys.h
F:      include/dt-bindings/reset/mediatek,mt6735-infracfg.h
F:      include/dt-bindings/reset/mediatek,mt6735-mfgcfg.h
F:      include/dt-bindings/reset/mediatek,mt6735-pericfg.h
F:      include/dt-bindings/reset/mediatek,mt6735-vdecsys.h

Should the entries to MAINTAINERS be simplified to the following?

F:      drivers/clk/mediatek/
F:      include/dt-bindings/clock/mediatek,*

Brian



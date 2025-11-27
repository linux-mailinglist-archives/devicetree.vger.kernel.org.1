Return-Path: <devicetree+bounces-242806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF7FC8F500
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:39:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2589E343EE6
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 15:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E6F8332EB8;
	Thu, 27 Nov 2025 15:39:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B69236437
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 15:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764257988; cv=none; b=C/dqZqVyho0WuW7v6JeeoDq0lCwxfhzLzSJYc4vcNpMZZU/JfyJf5+q2uD1SHj+f3Lbr9oCY3aiUUoYzOlTAATXQ950OG2dFqPi+SkrNxqTp70rkiLwwPpiOGC3ajQsxAPrhD4ikRu8TXbfqiXbCLnWAVgcE/tyL2ugiRF7e4bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764257988; c=relaxed/simple;
	bh=5LssjHCBdyOYX00Kp42YDjZkb/QKpvt2mnLjPvJZhgk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IZ/iaXZMRmWOVG7jftZaJbTCCCyjMSd0ULrCMg1Sy5XyNaS+/gRjtc9C+cfKBDCb2VyqX5eQag/UOjJ6plc2OyfahHh5ej8PlWBB7XCzKNl1H+ION4v06ZQyuhB1I9b2kdI7vRj+ucabY2ccPL+8/jBA9ixT3Klphhm9GteyDlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-8738c6fdbe8so10721426d6.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 07:39:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764257986; x=1764862786;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=reaaXQppM7aTNDTI1IEDn8WDBg5CASf/0DVLYYtxHDY=;
        b=wUW+/kQDPiBt3+mrF65jtJY0pXdx26l0kHkhUZoKlB21zeVPU+tN52NjiuKD42/dYC
         rMEVJI/REdkGCeyEYbBcE4Mz2jHFfEeXvyIg1R71aLwGZIds4C9BQ6K/9bzGP9bIJKxJ
         pw1eo2lsGC0L6ZwpgYENn1lf0BXx+BAcHKp31XCbnAQiUauUGANMQsY63COc6ZdYUKCv
         3cmIkLYF2DBgPxT3/Z+3RA0DY6G4dG6FY+j4lbmzNjuQtBJQyGCFhs9YKzhURRlX9Ikp
         gec+zRf+TZ3uImhslHG9EqSlsq4fLwxTDDTBdb57PXh/lr4svazMNWtpUt5ka4twq3BZ
         GLgg==
X-Forwarded-Encrypted: i=1; AJvYcCXZH1dovEtbFwkWu/AqE/AzOJ8YiVSLsje1qcI24q5wHftVoVBSD/lbzgUAOfy5tgh0ChC3H5r9guWM@vger.kernel.org
X-Gm-Message-State: AOJu0YziLtSNS7A0daBuelBmcNjpQFSQ2noeT7qo9CL6YJkT1c/NIOTi
	xKrwp5u7JRFfzbfIiw3Aj6e3LZ6yklBf+zehMQeztd/RlDOjoJjUe2P3AA8bmmJT
X-Gm-Gg: ASbGncueRD8Og/8BoiYEGqWBEJ44kBZ+2Xky5gW9S7AqX2xz+PSnh/+io+S8ixWd3QE
	pm+iOrIsgXJWN5lbdg2mRsosU4AAxH4mwH/bHKXTQErELCYqMmc/+CYGrZeTctjREWknbQuUc1f
	vT7T1TnfgNUN7ff6N2n1QcOt1a9HIduXd0YZSsmdSlrxHemf7ufLLDGbmG9HYRv/tDpr6vZZCBj
	W5EkU3L2t/tMlsNwVgTMQGDNaNNarJY53p58tKJwh8HmKTCKkhYpoKqUhbkK+CiThc6Om96M+go
	9dnSmA7Go1sEzYKxE0n9mrjHByeadIrMpbRa2TS7cGiV1XeuztR2BauZp6sIwWQo4ZwildTwHfM
	PCLj9x3+OCMeQADLHgPgxiZyHgc2Xc1addrFt2UpvB1b3zjnK7NojS4gBM5k1puGE1AC0uRmLqT
	jXSuuDzIC6qHsQUKedspBusoD4ueJ1C2ThsnGL9/Af8UcqK3iMpG6H
X-Google-Smtp-Source: AGHT+IHYjmnMAnw9dFfYqU/3N5InR3KaONYpe+ucQaQ0sCKcwGuDrbZcUq/rQxS5XVnN7oDEKvDmVQ==
X-Received: by 2002:a05:6214:c45:b0:87c:282b:aa28 with SMTP id 6a1803df08f44-88470083b9fmr427376276d6.1.1764257985750;
        Thu, 27 Nov 2025 07:39:45 -0800 (PST)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com. [209.85.160.180])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88652b6d301sm11202346d6.38.2025.11.27.07.39.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 07:39:45 -0800 (PST)
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-4ee0ce50b95so17747881cf.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 07:39:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUkMV/PuhOnWkJt5Tpt5sjiQQS2XcGGDC0v6UEovyK4ctVOudJvSxAldNCnR4BRI6s+jkL1w6KYCbjU@vger.kernel.org
X-Received: by 2002:a05:6102:4b84:b0:5db:1e4e:6b04 with SMTP id
 ada2fe7eead31-5e1dcfac0a0mr9944783137.18.1764257502521; Thu, 27 Nov 2025
 07:31:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119143523.977085-1-claudiu.beznea.uj@bp.renesas.com>
 <20251119143523.977085-6-claudiu.beznea.uj@bp.renesas.com> <vrtz6pumfpjyis5sez7iia37yyruizl2wz3vb4ojafww5hrjev@pmy5uiknetre>
In-Reply-To: <vrtz6pumfpjyis5sez7iia37yyruizl2wz3vb4ojafww5hrjev@pmy5uiknetre>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Nov 2025 16:31:31 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXSd1Bn0zU+nY8FW4XZQMeLyLQoNSdc6PdcFLq-7xVcqg@mail.gmail.com>
X-Gm-Features: AWmQ_bmQYBZvVFdH1jgBs9beHkHsNQ4PypBPAGFdHNRMUEACr9V2X_70026RVXA
Message-ID: <CAMuHMdXSd1Bn0zU+nY8FW4XZQMeLyLQoNSdc6PdcFLq-7xVcqg@mail.gmail.com>
Subject: Re: [PATCH v8 5/6] arm64: dts: renesas: rzg3s-smarc: Enable PCIe
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Claudiu <claudiu.beznea@tuxon.dev>, bhelgaas@google.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com, 
	p.zabel@pengutronix.de, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Nov 2025 at 06:55, Manivannan Sadhasivam <mani@kernel.org> wrote:
> On Wed, Nov 19, 2025 at 04:35:22PM +0200, Claudiu wrote:
> > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > The RZ Smarc Carrier-II board has PCIe headers mounted on it. Enable PCIe
> > support.
> >
> > Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Acked-by: Manivannan Sadhasivam <mani@kernel.org>

Thx, will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


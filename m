Return-Path: <devicetree+bounces-230097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E14BFFBD3
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 09:56:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F4353A884A
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 07:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6132F2E1F10;
	Thu, 23 Oct 2025 07:55:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C152DCF4C
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761206140; cv=none; b=CqfX9wri9l4y5giFWfrF6T2u6vmic0WgMRBsfh6RxK5TmYVENGAEkEKDGm4xtSIN7+OKL4+rgqGqvxFI46bEc5kFJKAHdDm6jznxlq776YDF5CFji+/Y9hI2HYGDk4euLvqPcUKGpiLrmMEUOxjDw5l6oX6KblXWdYnAYJP3osY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761206140; c=relaxed/simple;
	bh=+fB56hRZm4s/9A94T+9AsJSw3DZkXg6RPZ3NqE6zskM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eg5yjFSbKyo0Gi40tyAnj5QaPFTqaIQw+wPvDIoD91IdnSXtY+3GrK+XTtbEvJ8HVaiIdMqfHK8nCUVGqqkAqoAbpFJFnDmenL2IXqP9hkRrWAS8ijuc1VXFGg2nFI4YyMaZ6RUklREeBd+Mr8HCtHTCpswrhg05o7gCJbz0YrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-932e885467cso411097241.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 00:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761206137; x=1761810937;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e1VWeQnGLaqOMfwGg5f7EVJzLAyxDuT3Je9LnDxvdps=;
        b=uapClEhyd+xwzt716YCzosKzYBZnKgzHXFY4GjkKL6PSIZk1wzeGMxeWm86EmxQ9W/
         KWvSt3cC/JGRZwYEOzbNbEjiYWJZp/VdGCGZHREGgTtBjl9O0tQ8+7RsjkyDxs8two+o
         zzpd00QNgQJfdjb20ChTXa8aOe4FpPaZwNx1T1+LroZPpF9pTHgun4jiScxLu0wcNm/C
         EXvLfAqrnsisAtonjhlm3Nb84nIxVtAfwFVy02KhksESgUb3qWLNOKaWno9my4b0m4sN
         5bSHWRVNdpxt3wHOKVTkHTTmRsB3rnxpMz4dTJ17BwqRF4SmZKsoZYHWqpoYzOITL3tA
         m/Yw==
X-Forwarded-Encrypted: i=1; AJvYcCXMLegDs8p/O7EU9F+ffTQV+/b9wjkv6NG3F1q48dTxYKxsMxBt0FoY3hXLPYfGTnhn3oHPX6RbOEhq@vger.kernel.org
X-Gm-Message-State: AOJu0YwSGqpWH/YjTSKQAE2RZwyeaQR8k4RgPVtkT9RCkwEY/iJG5zoL
	ybyx0LD3ZBGWF153QARJuSMDX2xuQVgYt02586ObGOjQvLXhw/74wiNahy7CD5jh
X-Gm-Gg: ASbGnctOQJalAL+ReUZcj7dyK4YVipRNybO3yIKLjL4OpkfZkKqu+fvUAas69HpauWb
	4oUAf6234yvEBv4thmUKnK65dOKHcla+kaCzaVsuUWX0cIP2gH8G7VLgmUby42v4u32lZkV/9J1
	Q4ug56ylYXQVEFXoGsfe/DOKkZh8JXauq0l+4KX6eLsZKXbEr1YwB6g6Rhdlee02WXSuyrcE3Aj
	3OHL0SWJ6rrzUTT3it0J+jwal8r7T854VyD2YK/4Z6L+YKi1g96HUo3JdvfPR3aEuiglkIrjfoP
	ffhD/3C5nUCUG/z4iSLvp+eLvQtJS0yB/npY81dOnEq+HgE8EiQ89ZUcmtaHAGdC5MUmnSS8AIf
	v2Z7RdoaHVpt1V+MQjFXqoibYuC3ISW+0X3AwpRDxvUWLlUwedO5ZMko8iaxzuV9lLWJM5vti+L
	MhIfjKCbucHuvtD+N1cp0VXd5T6Iah7//AYkz0Pw==
X-Google-Smtp-Source: AGHT+IGM0ONnlwzgl07gZ1hi0FnRQCbARwAQwirmlsjc/c1lxl/PK9sJ3R/XayaWFbdpQlUCrFtlQg==
X-Received: by 2002:a05:6102:32d3:b0:51e:8f20:159b with SMTP id ada2fe7eead31-5d7dd6a0f69mr8964759137.29.1761206137159;
        Thu, 23 Oct 2025 00:55:37 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-557bd8bd3f7sm526530e0c.6.2025.10.23.00.55.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 00:55:36 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5db30731362so352730137.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 00:55:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXiM8UEWvyWAGz/tx4PHc3OMDPiwRo/iRrgBKGVh9eW3qnexnkV39xbhdH8LBF5k2Xu1PKtf70u0ayp@vger.kernel.org
X-Received: by 2002:a05:6102:38cb:b0:5db:337d:65c6 with SMTP id
 ada2fe7eead31-5db337d6988mr173700137.23.1761206136224; Thu, 23 Oct 2025
 00:55:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007133657.390523-3-claudiu.beznea.uj@bp.renesas.com> <20251022194939.GA1223383@bhelgaas>
In-Reply-To: <20251022194939.GA1223383@bhelgaas>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 23 Oct 2025 09:55:25 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVLXd-eVX0UBPYtrzVPbA6VkdD1rHBAWMKgrYKE+Aa2bw@mail.gmail.com>
X-Gm-Features: AS18NWCwdsxUw7zogPqVrxEDzYqaWGHMFOcHzYZ5pvVfO4qa6VaOrBUa-VfGcUI
Message-ID: <CAMuHMdVLXd-eVX0UBPYtrzVPbA6VkdD1rHBAWMKgrYKE+Aa2bw@mail.gmail.com>
Subject: Re: [PATCH v5 2/6] PCI: rzg3s-host: Add Renesas RZ/G3S SoC host driver
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Claudiu <claudiu.beznea@tuxon.dev>, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	mani@kernel.org, robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, 
	conor+dt@kernel.org, magnus.damm@gmail.com, p.zabel@pengutronix.de, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

Hi Bjorn,

On Wed, 22 Oct 2025 at 21:49, Bjorn Helgaas <helgaas@kernel.org> wrote:
> On Tue, Oct 07, 2025 at 04:36:53PM +0300, Claudiu wrote:
> > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > The Renesas RZ/G3S features a PCIe IP that complies with the PCI Express
> > Base Specification 4.0 and supports speeds of up to 5 GT/s. It functions
> > only as a root complex, with a single-lane (x1) configuration. The
> > controller includes Type 1 configuration registers, as well as IP
> > specific registers (called AXI registers) required for various adjustments.

> > +++ b/drivers/pci/controller/pcie-rzg3s-host.c
>
> > +#define RZG3S_PCI_MSIRCVWMSKL                        0x108
> > +#define RZG3S_PCI_MSIRCVWMSKL_MASK           GENMASK(31, 2)
>
> Unfortunate to have to add _MASK here when none of the other GENMASKs

Actually the unused RZG3S_PCI_MSIRCVWMSKU below would
need one, too:

    #define RZG3S_PCI_MSIRCVWMSKU_MASK   GENMASK(30, 0)

> need it.  Can't think of a better name though.

MASK is a good name, as the register bits actually specify (part of) the
window mask.

>
> > +#define RZG3S_PCI_MSIRCVWMSKU                        0x10c
>
> Unused.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


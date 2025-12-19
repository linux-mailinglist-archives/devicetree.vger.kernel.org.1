Return-Path: <devicetree+bounces-248328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEA8CD144E
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 19:00:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 321AE3008D7D
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 18:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40948352FA4;
	Fri, 19 Dec 2025 18:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ZdawEUId"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1675735293F
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 18:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766167237; cv=none; b=j4AF1s17iAwVkbnTqQp3/G/pz8z+il5ekz1vXSOKHou9gMI8edaI2i8D0Cx/8fd5uHlV/A+GbjWLY7cyecNcrJOrdta1lOIq/XIOScVYGRB8Iej/RvHD/SfiWWNjbN5trSx+H423dkwXYQ10Xs9QkKccxIpflA7KuvN0wztxUDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766167237; c=relaxed/simple;
	bh=IeN8zUx+G1jbTedtIXgt7eLgzC5QGdMraxhGXTVl8gI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ba61hRJw37nZvo68U0SO9K930JYEBf7XdxJrZjo3aX7YpXyCXw0XAQnSZ1TBTQPaPQFsFBCrSvDXfaY9HQEQl4vPSMYQzEleHn3lK0/5P81eaWvrLFDQ8tPHDlioyyQFw5t/eV8XrKXbrQHUlRIwTbFL8H/rxy05ZJJcTJrcpUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ZdawEUId; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-64c893f3a94so725215a12.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 10:00:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1766167231; x=1766772031; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CWROIZqdh7NY+GhEeYgWfsxxbuARZe5eIG16YhOK06A=;
        b=ZdawEUIdCJWzL5lRNChbJMPJeZSApq3LZuw400Qjr0QrcT+zaAGBfossmSGeLgCt4K
         VPvZvUxxJ76/YGqNwSwIXmbY1dBQbbflmEDCS4dANvJVqGE+FzVMOrZc7mInQId7rXEU
         w+uVJuLZrQmu/vk12v4doWQbGtK073OdoZkB/le+siJFLDDzg8Fn/8R34X5xWgCLCP1L
         GzgJPED5605SE77Issg37Hkac3u65u1xGt0MlUCFnQqreP7o5QKiszwOWnyVuX85XRHQ
         qC4K2/x52ZAOH3I8XqUzJaujz7WPgpVEMCGC2WYsQ9yIcPEJGOnA9Vz8C7vVUw15KU53
         31tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766167231; x=1766772031;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CWROIZqdh7NY+GhEeYgWfsxxbuARZe5eIG16YhOK06A=;
        b=rO/KIe37x7ib3F/thwlQIcCJgqSh8uFTZGESb6H6mqZiubOzSBvey43EmqhAWGY16U
         fHd/qAFU/gt/VQkzkFefvgcGinZC0udA+AohAWvAfGkOSSps2bDU72YdOx/C2SwV0ZnJ
         d4znBsKhLFYOiT3jGbjznKsp6e1KdBPiEG1QXOiuCCnaHTACoUUtBm9207wU1BMkAEW9
         rcW49s2uDqXyCSTlqTlJqvLgYEdiEEa5vIxqElrTujpJs/ASStqMUoM+z9ysTBWzIq+X
         +uC0ZYBBm+aIs/xbLVL3h/9xbNXKkb80TJAmgAEdyHVj62kRoJmzYJTzgKIcmHRWl8up
         wwBw==
X-Forwarded-Encrypted: i=1; AJvYcCVnJfECLCuOE5LbcItGjGQR3tzvtAAvucpTMHiNL+3WUlvF3PpvCyPvMzoAGmbe3PMFXvEy5HC9JFJF@vger.kernel.org
X-Gm-Message-State: AOJu0YzcRipmCiVt/AUZp+1HPFRbfViSKhSA7If0VIxCcPS8/bFJv8K9
	5ob7mECIsng7A0Sc5SOOsYD8gER4WS8L2BYWfVJyYY3uJPtE2pqxvYJ3IKA8ptMT6UKqxaL6zsH
	WROiF
X-Gm-Gg: AY/fxX6qlimhF9CiJ7bOk3F2XOCG4pAZZEuQBl3OAbT/jcszJ73IOGobBh10yvQwuV2
	f8MFcDSd9cYkbNIFgbtblQTC+OYmD6Hf8CeHSuIOzbq36htPJWpv24s1VHtB5cY7f9C3uerrqDA
	D3zTtzvPiulKCbm+oaW91kVwvxkTyPpJf3hlCAx22FpA4+iF14LeWQ4/Q1A6gwIEXwALB/Eb5A1
	FCZbkTe9XJJbeQc7gyFh1YK2Vz8wRiaR/YQsQykk1q7kt7w/sLTgj+5/QqD2HeApEHednjG02A9
	LkYM2GmzWDBZ85LK21W0sIyZV3nDkNN06jdW4uSvAnhXh8E0U3LvKhkKKMgDUPqFueOzATDADGo
	5et9y/TpTueRurujFahNdOIIO62zBQtwJmSXnLnoJJEOsZbs2hZDk35wgZfUevwC3Bkll1mi0vV
	3rU8OZtWBGuwCVbVG7q3WGC8gwX1Z+Wmfh/s1DDiGNVf91oF3tcEZrLQ==
X-Google-Smtp-Source: AGHT+IFB1zo8HlKSqJotI/3R/mPyDPwY1/7Dys/g2IqzwpppmmBHj14JYqA2+YMimvaGSd5ScVJf8Q==
X-Received: by 2002:a17:907:2d0d:b0:b79:cd80:6fff with SMTP id a640c23a62f3a-b802058e1efmr807466966b.17.1766167230980;
        Fri, 19 Dec 2025 10:00:30 -0800 (PST)
Received: from localhost (host-79-37-15-246.retail.telecomitalia.it. [79.37.15.246])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de10dfsm278513366b.36.2025.12.19.10.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 10:00:30 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Fri, 19 Dec 2025 19:03:04 +0100
To: Rob Herring <robh@kernel.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, iivanov@suse.de, svarbanov@suse.de,
	mbrugger@suse.com, Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH v2] of: reserved_mem: Add fixup function to amend
 corrupted reserved memory regions
Message-ID: <aUWTWFBxe9O-qCci@apocalypse>
References: <625eee03632c6f5c4349d6f3cdfe3f85a8e4c466.1762356853.git.andrea.porta@suse.com>
 <20251114181957.GA3815060-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114181957.GA3815060-robh@kernel.org>

Hi Rob,

On 12:19 Fri 14 Nov     , Rob Herring wrote:
> On Wed, Nov 05, 2025 at 05:08:18PM +0100, Andrea della Porta wrote:
> > When parsing static reserved-memory DT nodes, any node with a reg property
> > length that is not perfectly conformant is discarded.
> > Specifically, any reg property whose length is not a multiple of the
> > parent's (#address-cells + #size-cells) is dropped.
> > 
> > For example, in the following scenario:
> > 
> > / {
> >     #address-cells = <0x02>;
> >     #size-cells = <0x02>;
> >     ...
> > 
> >     reserved-memory {
> > 	    #address-cells = <0x02>;
> > 	    #size-cells = <0x02>;
> > 	    ...
> > 
> > 	    nvram {
> > 		    reg = <0x00 0x3fd16d00 0x37>;
> > 		    ...
> > 	    };
> >     };
> > };
> > 
> > Even though the reg property of the nvram node is not well-formed from a DT
> > syntax perspective, it still references a perfectly valid memory region of
> > 0x37 bytes that should be reserved.
> > 
> > This has at least one real-world equivalent on the Raspberry Pi 5, for
> > example, on which the firmware incorrectly overwrites the nvram node's reg
> > property without taking into account the actual value of the parent's
> > size-cells.
> > 
> > Add a fixup function that corrects the FDT in early stage by adding the
> > missing cell in the size portion of the reg property, so that the resulting
> > DT is well-formed and can be correctly parsed.
> > Since it's searching for 'raspberrypi,bootloader-config' compatible
> > node, this fix is specific for Raspberry PI.
> > 
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---
> > This patch can be considered a followup version of [1] even though the
> > commit subject has changed entirely and the approch has evolved from a
> > general heuristic to a fixup handler specific for RPi5.
> > 
> > A couple of notes:
> > 
> > * The FDT region is precisely sized so I needed to copy it on a new
> >   buffer big enough to contain it. Using memblock to dinamically allocate
> >   the precise amount of memory is not feasible since memblock cannot
> >   be used before paging is up. Also, AFAIK any memory allocated through
> >   memblock will be reclaimed by the buddy allocator and we need that
> >   memory to be preserved since it will be referenced by the live DT.
> >   This could *may* be avoided via a clever usage of memblock_reserve()
> >   and mapping the memory later, but we still have the former problem of
> >   not being able to map the memory for immediate usage.
> >   So I've just used a static buffer that should be big enough to
> >   accomodate for the DTB + overlays.
> >   For reference, those are the current sizes for the DTBs for RPi5:
> > 
> >   - upstream DTB: ~23Kb
> >   - downstream DTB: ~85Kb
> >   - size of the static buffer: 150Kb
> > 
> >   If this space is of concern to anyone we can maybe guard this fixup
> >   handelr behind a CONFIG_ option.
> 
> Can't we just ensure the FDT mapping has extra space. Just rounding up 
> to the next page size should be plenty. 

Not sure, I guess there's no guarantee that memory addresses right after
the FDT end do not contain important data. In that case, enlarging the fdt
would mean overwriting that data.

> 
> Otherwise, the FDT is no longer where the arch thinks it is. Arm64 makes 
> the FDT read-only after calling early_init_dt_scan(), but that would 
> have no effect (perhaps read-only is pointless though).

Good point. Padding the DTB to get some extra space (very hacky, just
saying) would not work because the fw is correcting the amount of available 
space to what's effectively occupied after touching the FDT.

Anyway, the fixed fw should be out in the wild by now so I guess this patch
is not so relevant anymore.

Many thanks,
Andrea


> 
> > 
> > * This fixup is specific for RPi5 and I don't have in mind any other
> >   use cases for other handlers, but in case we need to extend this for
> >   other platforms it may be worth to setup a list of handlers to be
> >   registered so that they can be called in sequence (and on specific
> >   nodes).
> > 
> > Links:
> > [1] - https://lore.kernel.org/all/aO-Q6xMDd8Bfeww2@apocalypse/
> > ---
> >  drivers/of/of_reserved_mem.c | 77 +++++++++++++++++++++++++++++++++++-
> >  1 file changed, 76 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> > index 2e9ea751ed2d..2c278ab91b9d 100644
> > --- a/drivers/of/of_reserved_mem.c
> > +++ b/drivers/of/of_reserved_mem.c
> > @@ -148,6 +148,73 @@ static int __init early_init_dt_reserve_memory(phys_addr_t base,
> >  	return memblock_reserve(base, size);
> >  }
> >  
> > +static void * __init of_apply_rmem_fixups(const void *fdt, int node)
> > +{
> > +	int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
> > +	int parent_node, new_node, child;
> > +	static char new_fdt[150000];
> > +	int len, err, alloc_size;
> > +	phys_addr_t base, size;
> > +	__be32 new_reg_prop[4];
> > +	const __be32 *prop;
> > +	const char *uname;
> > +
> > +	fdt_for_each_subnode(child, fdt, node) {
> > +		if (!of_fdt_device_is_available(fdt, child))
> > +			continue;
> > +
> > +		prop = of_get_flat_dt_prop(child, "reg", &len);
> > +		if (!prop ||
> > +		    !of_flat_dt_is_compatible(child, "raspberrypi,bootloader-config") ||
> > +		    (t_len - len) != sizeof(__be32) ||
> > +		    t_len != 4 * sizeof(__be32))
> > +			continue;
> > +
> > +		alloc_size = fdt_totalsize(fdt) + sizeof(__be32);
> > +		err = fdt_open_into(fdt, new_fdt, alloc_size);
> > +		if (err) {
> > +			pr_err("Failed to open FDT\n");
> > +			return ERR_PTR(err);
> > +		}
> > +
> > +		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
> > +		size = dt_mem_next_cell(1, &prop);
> > +		new_reg_prop[0] = cpu_to_be32(upper_32_bits(base));
> > +		new_reg_prop[1] = cpu_to_be32(lower_32_bits(base));
> > +		new_reg_prop[2] = 0;
> > +		new_reg_prop[3] = cpu_to_be32(size);
> > +
> > +		parent_node = fdt_path_offset(new_fdt, "/reserved-memory");
> > +		if (parent_node < 0) {
> > +			pr_err("No reserved-memory node in the copied FDT\n");
> > +			return ERR_PTR(parent_node);
> > +		}
> > +
> > +		uname = fdt_get_name(fdt, child, NULL);
> > +		if (!uname) {
> > +			pr_err("Cannot retrieve the node name\n");
> > +			return ERR_PTR(-EINVAL);
> > +		}
> > +
> > +		new_node = fdt_subnode_offset(new_fdt, parent_node, uname);
> > +		if (new_node < 0) {
> > +			pr_err("No %s node in the copied FDT\n", uname);
> > +			return ERR_PTR(new_node);
> > +		}
> > +
> > +		err = fdt_setprop(new_fdt, new_node, "reg", new_reg_prop, sizeof(new_reg_prop));
> > +		if (err < 0) {
> > +			pr_warn("Cannot fix 'reg' property for node %s: %s\n",
> > +				uname, fdt_strerror(err));
> > +			return ERR_PTR(err);
> > +		}
> > +
> > +		return new_fdt;
> > +	}
> > +
> > +	return NULL;
> 
> I think we should print some message along the lines of 'fix your 
> buggy firmware'.
> 
> Rob


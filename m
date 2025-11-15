Return-Path: <devicetree+bounces-238958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D765C60310
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 11:04:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5701D3B1367
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 10:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50A39283CB0;
	Sat, 15 Nov 2025 10:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P8HPcQ0P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81C61487E9
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 10:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763201082; cv=none; b=TZVhsnfSa3X4xHujRy6pg1F7LC3yhyX+NLdeM5Whsh6hFaXdw3oPHMrJ5XoQ4z30E9/ie++S8Gu8OvV4tS+rbZsqTm4hTT3/K7yWHm+aYVpTVMVaBKXPBQarRwszTw1iW0ocSGBfnJfvtgnmm8QqhuA6sPnRC6vuwBL9LHl/lkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763201082; c=relaxed/simple;
	bh=zgjl9yCq9rPKjasEHPzdGjgJBDrAOD+3CpouL6oTMjY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K5BGRbJicmEHFeOGQtR6bjpRtqb1CJklBG5RQKC3w0doRBKlULB+rP9W5gIGAsCKwyG1IamJ7PbKOK90Yd97NgEfY8QMUj3USZbuK45r6tD5W0bMhuuv/QTPW9WOk3p4aRlS4ZtMiDNT97DMiHlYEDR/8Sz8ID4WSYhaYIXpTGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P8HPcQ0P; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-bc8ceb76c04so734123a12.1
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 02:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763201080; x=1763805880; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7ZhGFSTWU2Nki77TLqMBxYMwF/Hq7Nj2xup+lQAIdEs=;
        b=P8HPcQ0PRIOdgTyoXEu2GsIk1pmPsBbluE//rwRBzh4NTEYpsPrRy9TyybsnXH7yRD
         WDJS3A67tz0WHnrv+eiNvkqI2BrnCvtxmpea0SIvR/ZloXHydTn2gIsfmnK1UUWCsk32
         js6Ze3ZsjV3yd9FFNg6FGdafFLYyare6Fz4U2/MXDhaVRhZOE/OCk2a5vxU/HFmRrcgz
         T7mhnA9niCi288XHdwKOORn1bj3zT8fkL6/CCsymlva3XSedv59Klrtg7FanTbetEuA1
         /3FlVnqlq2HXwXob/jZ4DqjOzS4WKPzB93+R+GiNDQvXuMOxLo1QJDW5RgZ/4RU5HeVJ
         G5AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763201080; x=1763805880;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7ZhGFSTWU2Nki77TLqMBxYMwF/Hq7Nj2xup+lQAIdEs=;
        b=PrVhvBmSdO151WMC0vt0Qc00E1H3nfn3LpYsLlBBGtrfGR6D5CysACX5mVmRizzG2J
         sLVQ7y68TOf/dyh4PLurCMyLT0HZp99PO8yUFpW3TxBksOKH/ZF/L1MceAKGBjQgSpyU
         TV01RAJVedunj85hY8Jx4r6PhawfcsMuWuiG8RBg/JMaxoTV8HPTrm82msG0L36TPD6M
         /EG0pIVCs53H1d0M9d18YzAzdxWVPRSLNSvesk5W0STjb/XWB7gvoeJ+FwT2fYe6QcHl
         GxyqL/nmr0KdlFG2wyq3OdoCyhLdZ42hB53CB3zsP2UwfcMas1sADC5TP3RJUWzAEQgI
         DeOg==
X-Forwarded-Encrypted: i=1; AJvYcCVN+hsHbbHKWbCsE8nVY5IogsQWMrx7wXp8U1TCwNH6/lZS411eZ1C+fDjMcPaQvGIjES5aI4Xq3tNl@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjq4LISeronn8mOCbXqe6HDC/q4euLC0M7pxj/r5ZAuEzRV8yY
	k3xw1chCGD3W2ts0GtG/Zs7Ou92PaJzBGdVmXMc1rQ9oqsUE16fVN+DASMkg3owv
X-Gm-Gg: ASbGncuQwsaUdYIMQJOfZH+EENNZPbMvra3OnT+GnK9jwbm3qow7YLEupRviQ9I3j7U
	vmWIHQ27muzLjsBU7PP7e5MpJdVqyHEjKx4lKiBBhv6MfmdshftHlDijNwAP0NV995gnlqPn2xl
	r6P7LiGAPkDvYyPgj4Mun5Tzxd1ewGb/EBogPrZXBxjbI5Wlbz4wAq+SMJ5xcp5GxKrudPlLq0Y
	0rtCDCAuSlvsg2aRCaVKqLXkFocQhZ31CMaEnMmDMwewJ0Kdsmk/If3Cquva0wtQZn0VAVZ9APX
	uLaWfpin3Zox99gY9WmGZzt/1065Dltvwa18hIlR7MklfPtoRAbHekv/2NpWeS0WoiFBFWPpAFc
	ePUrnWCNVWNBbbb3O+iH2Bnqcscxy4NNYo4VjLBuJBSqOMQ00qW5NwlajmYjis/xgfb2bz8VMUA
	WDa4aEwnkr
X-Google-Smtp-Source: AGHT+IEN9KE2hfp03GE7uhiO9j7fRJeATScAJLPGVWT9cgl5CZeCVAf71AB1h38u4dnqNvb+75Hfxg==
X-Received: by 2002:a05:7300:c3a2:b0:2a4:3593:c7dd with SMTP id 5a478bee46e88-2a4abd4a140mr2291702eec.29.1763201079996;
        Sat, 15 Nov 2025 02:04:39 -0800 (PST)
Received: from geday ([2804:7f2:800b:a121::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49d695821sm23290090eec.0.2025.11.15.02.04.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 02:04:39 -0800 (PST)
Date: Sat, 15 Nov 2025 07:04:33 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/3] PCI: rockchip-host: comment danger of 5.0 GT/s speed
Message-ID: <aRhQMRjffbeCeArE@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <b04ed0deb42c914847dd28233010f9573d6b5902.1763197368.git.geraldogabriel@gmail.com>
 <c8a6d165-2cdd-cd0d-4bed-95dfa5ff30d2@manjaro.org>
 <aRhNIcGcQKp2ylqN@geday>
 <85d1543b-ea91-5f0f-59d6-e00fcf720938@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <85d1543b-ea91-5f0f-59d6-e00fcf720938@manjaro.org>

On Sat, Nov 15, 2025 at 11:01:21AM +0100, Dragan Simic wrote:
> On Saturday, November 15, 2025 10:51 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > On Sat, Nov 15, 2025 at 10:30:49AM +0100, Dragan Simic wrote:
> > > Looking good to me, thanks for this patch!  There's no need
> > > to emit warnings here, because they'd be emitted already in
> > > the rockchip_pcie_parse_dt() function.
> > > 
> > > Please feel free to include
> > > 
> > > Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> > >
> > 
> > I disagree, I think the comment stands.
> > 
> > Even if we reduce to one line, ex:
> > 
> > + May cause damage
> 
> Ah, perhaps I wasn't clear enough, so let me clarify a bit.  The
> comment you added is fine, I just referred to no need for emitting
> a warning at that point, because it would be emitted already.

OK, I get it now so I think it's time to send v2 with all that in mind
:)

Thanks,
Geraldo Nascimento


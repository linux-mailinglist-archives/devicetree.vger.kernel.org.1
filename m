Return-Path: <devicetree+bounces-250540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7B7CE9D54
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:57:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E8763009FE3
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 13:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A033E23F424;
	Tue, 30 Dec 2025 13:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U3Qr6QY/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3432C23C4F3
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 13:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767103028; cv=none; b=lb5WnJSzVHYhOP0Fzy8F6BlHeYYaSjZMhKLmq+btAdkORk0FRFxxiCXbZ6cfj00lhg80q6Dr+G15gax7Y3Bc11MA3tqXZavu+2so/CgH+L6gcT3bF1xE6NQPO0kl+9/V9LCMd0Sssg9YcD5d8EANRLEDrcnuqiX8iIuxI/oBIPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767103028; c=relaxed/simple;
	bh=0xRAbK+n5H+csItC6n3OEL70ZNfh2mdODm1iNTdA9b0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O5DIK0U8O4CuUwEevXCjPiOwk5Fr3R4+wGTEelyehLVUQxzNl7rOM2BJQxBCHgz8gUCUerZSKeCA5CvdsPK98GaWDAC4bnik/WstT/fTV7BqkvZDM/j/2Svi5qT36SX7yUFx/096xFQlb70sDaWObfK/ePLHCyhk0rEDLynJqaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U3Qr6QY/; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a099233e8dso83003495ad.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 05:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767103024; x=1767707824; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=APWv0N7VAVEafE/tRaAfzsntSA7mb1asugldnCJpAhE=;
        b=U3Qr6QY/kL7kwloGX2keEEEfL38TrFHen48W6x1Rwh0qf35Q2XtZpZ7jWMPpTTfPA8
         4+MKXkdlKf0VgFKZI/CDgsjz70YqcDDQgobvCQQpt5CcR2saLqoa++cefhdAFRllwFGs
         Pxw9bS+fzbN8hiuaVAQ6dV8tawIHKAHzFFnoysErRFoNXXu55B/mqx6LhskoIEfu1F/0
         v/9PPSfLCcbRIBsNby63waQbLJ99NqQR0yPbWIQ3/xg0pDfGwHbMTq+9Xbmm3QQx/zu5
         Zt2TxTeRmqurTalmU3FPgfynqoYJFlTlnQLgdwslfQTXrX2rVikrJy6cZWY3IM5HAI59
         gTaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767103024; x=1767707824;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=APWv0N7VAVEafE/tRaAfzsntSA7mb1asugldnCJpAhE=;
        b=NS2atJCY1EAC+RfAPyxegNgPUSvy+fKpvfaVsEVAcP2xPKByC+P5L8J9UxnBuqr/+6
         W4aOmEfk6TJNeN2CAIv/1T5E2fQqsBMxL6FXyT439QZPcflBucRzUki0WFiYyhgj35pr
         vslmVSBrq5fdoLNhg5TbPCFYBTObavxUtRsgwC6YtVKFI+ys0kAuSOS96VMGQGxde6ak
         XsYhzUAbQIl+JZOK7G1VgT2VV49y0+Wrmfy4MVXoOt+yB/qKjFU7i4WmLVRCdUN8gGHX
         HE0SZR09fKLOSH7WMPMcgvjZjhx9ehCWMvHwNK1AltSHtB6fD7De0eZnIv6HFFjWsKYz
         iMdg==
X-Forwarded-Encrypted: i=1; AJvYcCWZXLXgAgjHcRLE65Tm2Qnylzc1ActcTs+l9E0FU9D81iLtptygvLmtxWfYEaMcnFcqgXq0DgmEwzFi@vger.kernel.org
X-Gm-Message-State: AOJu0YzIVKIa2SCcYCMuqcMj/oQhFq+E4/AEFOnUMwhqppo5K7z9bZA4
	8t5gQXZI9dMz4UVnhoJgdb051uB+tGjXaNXmn/jTHoLkij0xlI6nCg8i
X-Gm-Gg: AY/fxX6Q79ONBpuNoV3E36brKIb/oFgwdksjJwOAD3HSyOMzra00MDDruaEsmwEZFKM
	1+3KVJII9rRRppvjmCYcxIU7NA2/UecIY1HMY0tG+wKZ5MtBo27IZUEwQjfViXlL3insanOOZM5
	GgZSa1Mc63vsBNavdBRJNiCqBWW2PnsqAHkeDDea8hyj4Bx0w+ezcmt2RBKrYa41wiO/ix6r+Bx
	RC0/hGU9XKPJ54BTYvoDXxDsE+fICREGAnTdRsmTa1qUG+xzILG5sIXHOyVdPbXhfkG7zacMuk6
	UOGyh+jPZMSVMzToJlCwSw4O2Hm7SbeX6H4hrkvp/qZjKSHshMSSBti1vdwlZQOLByKSgEwjMWQ
	isq2fi05VE5O85yVW8cnh+jhp3Ccnz8hjM6seKlPZuNcRhRpUXm9/XUvxTbf4gfRhvTm45Rc1Nq
	yoMGOB
X-Google-Smtp-Source: AGHT+IHGfTQHu2drfAKQu53WiG/Gy4iDJrxBQ4VfdVs/FW7w4jXnrnuNi5IJgVAmYtjoOeiIgiSPkg==
X-Received: by 2002:a17:902:e808:b0:29e:facd:7bf4 with SMTP id d9443c01a7336-2a2f2940511mr319051025ad.50.1767103023863;
        Tue, 30 Dec 2025 05:57:03 -0800 (PST)
Received: from localhost ([211.94.234.112])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5d407sm299696265ad.72.2025.12.30.05.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 05:57:03 -0800 (PST)
Date: Tue, 30 Dec 2025 21:56:58 +0800
From: Encrow Thorne <jyc0019@gmail.com>
To: Guodong Xu <guodong@riscstar.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Troy Mitchell <troymitchell988@gmail.com>,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] i2c: spacemit: add reset support
Message-ID: <20251230135658.GA9515@hailin-HP-Pavilion-Laptop-14-dv0xxx>
References: <20251219-i2c-reset-v2-0-ad201a602e74@gmail.com>
 <604e5781-5c59-422f-9c5a-ee4be6f8b329@kernel.org>
 <CAH1PCMag00z2Fp8zjMUPS7AdU6Lgk0UsS+mku93NtNejqjyBMg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH1PCMag00z2Fp8zjMUPS7AdU6Lgk0UsS+mku93NtNejqjyBMg@mail.gmail.com>

On Sun, Dec 28, 2025 at 07:53:52AM +0800, Guodong Xu wrote:
> On Fri, Dec 19, 2025 at 4:03 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On 19/12/2025 08:42, Encrow Thorne wrote:
> > > Add reset support for the K1 I2C driver. A reset ensures that the
> > > controller starts in a clean and known state.
> > >
> > > Reset ensures that the I2C hardware is in a clean state. We cannot assume
> > > that no program used I2C before the kernel booted.
> > >
> > > Signed-off-by: Encrow Thorne <jyc0019@gmail.com>
> > > ---
> > > Changes in v2:
> > > - Replace reset property in dt-bindings.
> >
> > Replace with what? I don't see anything else there - you still have
> > reset property.
> 
> It looks like a phrasing issue. By 'replace,' I guess, Encrow meant that
> the resets property was moved (reordered, put into a different 'place')
> within the file, not that it was swapped for a different property.
> 
> Encow,
> 
> Would you please correct your changelog description
> in the next version with something like
> 'Reorder the placement of the resets property in the dt-binding file.'
> 
> BR,
> Guodong
> 
 Thank you for your suggestion, Guodong. I will modify it in the next version.

 			- Encrow
> >
> >
> > Best regards,
> > Krzysztof


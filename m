Return-Path: <devicetree+bounces-225785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2973EBD0FFD
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 02:44:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 242064E1564
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 00:44:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E4281DA0E1;
	Mon, 13 Oct 2025 00:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X7IlPTXl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C3372610
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 00:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760316247; cv=none; b=t262HJXzDwEiJm/KXwKaUb3G2NO3C061lQaVHuhKrs9ZdIBkyWJeUC/nwhiB1jfZXutv5nJ7BuSzPs8CdJVztLOEcEu45t8S2dhXMLzXtRIq9xI4N0A0MW3LXtiZTxbCUF7yr8qtgURTAPmM8opYsARwGli74En5K9meajZJ2Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760316247; c=relaxed/simple;
	bh=ua47nQqcjG90ipA1ouLjou96IW22yuNv/8wyBnPHseQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I+SzUMsg3MPyMwT5exVp6wo8WFOuUmdD3MSkX+F6/9iMW3yeuB6xk5p9zHlEEm/56t3xqvmHq686ZiDJKzDMaxpuxaHm42Nb2SmUdWzeAIdPR99EXQNqLsCxTv5KogmW6bz2FpFrEdQRRA+cqmbMKvmsMSNcswfaHVPwKzVs0mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X7IlPTXl; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b632a6b9effso2228846a12.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 17:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760316245; x=1760921045; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yPwgPz14QMmJyiGXqsXB/z8FmJN7/401xIlwLm/DIq0=;
        b=X7IlPTXlatLHRTAPz8/bNWz3KAl3rR6e4A3nHH7zD4F4KP9RNihf1Ana9Jd28902b3
         SwgMCdKiTbKAKiZxsGD20+R6MLCztdugQ4IsPxPLwFKzRdKVQHJ1Vh0xcP/qKlVSTWVC
         3qpGzwBJXH5ztBlB7AyOl9goP4+qPUAhmIYkv6dFl6H8EGfaRQ9tZ47CGK5lPkntiz65
         sedA29f+X9Dh0zl2GA/92S2KCYVbZrKPQnmsEvb6WSOPrVC23wJHeucNKzVnZSdI/WFm
         24MGQ220QXk7OE1hEnUGtc/oMaEwsfa8FL/up8gensKRLLGSHKupGQDQBeXoS/huacfL
         eXDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760316245; x=1760921045;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yPwgPz14QMmJyiGXqsXB/z8FmJN7/401xIlwLm/DIq0=;
        b=f9O8zyXFEbrIIWhHW+Gc+z6vOvMn4CYScrL6dTGKk2lB2arHld99/ZyzQPOMTAgiiw
         p2p/ev/+V2CsVRiYu9kpEnm49tefgCw3hgQ/YDEN/BBMh2AY6JZ5WrDNSwT/cvWO1MxD
         sLlaF2HCZYqOTz5tW9ziLRCtR32wfMm2Ae26RTSI5mAVRFFlEH6lm5xiWW6kc69N3E+g
         pBQnZ9Ev+b8Uxhori8abEmUjujKO2Lp+rHtBBw20SoM3yTkdSwg35UlGUiNt5x2wn6W9
         QAFCr7sY/CzpbbkAER8Iok9NmpWAt+Qxy1UKCEOf5yX/FoBsFQzHFl3XOaoVqANGlI4q
         ft0A==
X-Forwarded-Encrypted: i=1; AJvYcCWth5QSaLrt7AcEsYs7A4zLw1VDjm8emzRajPzivLZRuaaK+lwaA0xrtJHz37w7tAEnMhTAdsOTxueu@vger.kernel.org
X-Gm-Message-State: AOJu0YxTvHTDWZMGsFr96RFKJbwKQZIz+e+tg+BNw9QmmYk+Jg8kVp9X
	Cx6FrmA9wLUCs9B2h5EpHWPpoEHdXtIV4t/rkqGxKSnDJRbeLUoy6iUq
X-Gm-Gg: ASbGnctQ6VxU0RfwNtxkzwJFuG7k+eBK5FTuDypwUT/jhyHbTBuuR5uHlk12Fka0f9/
	6cWgBlOQFswhwH4o93U+oqwY3S5bpn0OQx/VNTNtfwETnMuongQOi09p4shOjMkzbz6uMr2RKGP
	scicwH+UzVsxFyJf/s0Ms1dpJbsGd1hl7JLMa9gjFNzd8UtLaCqxcG62D320UGjt8KdqjePE87C
	M5ek76OE0vwi3cdIOLMBYCibryjNaXqCOmXwAY454398KGPFb/w+qEWkwJq9XIiRJFlc75yFYkT
	y09aEEi3gDJ/u69x/8L5ikZRknQOISRHG1pyU7rkKGbO6G2nTcBOf4rNkZk5aoKVFT1LEN9LHGY
	UNH7jnk7wd6iUs5IUwrQJ+Pbh8UIAGVOziRa4VWEP
X-Google-Smtp-Source: AGHT+IECq70NJ5A63ESJRalAid7RnpozwDsfbFxId8ZL43D2ZxgrEq0z+oLu5gMzH/ZQF72Zp3uEIA==
X-Received: by 2002:a17:903:948:b0:249:37ad:ad03 with SMTP id d9443c01a7336-290273ee21fmr266565455ad.34.1760316244858;
        Sun, 12 Oct 2025 17:44:04 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-29034f9d177sm115904685ad.123.2025.10.12.17.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 17:44:04 -0700 (PDT)
Date: Mon, 13 Oct 2025 08:43:20 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Joshua Milas <josh.milas@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	unicorn_wang@outlook.com, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, alexander.sverdlin@gmail.com, 
	rabenda.cn@gmail.com, thomas.bonnefille@bootlin.com, chao.wei@sophgo.com, 
	liujingqi@lanxincomputing.com, devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH 2/3] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <bsol3uim4brrrsdmvuk6f3uzampbki2pyhziap6x4rw7txl435@rwoxrnctkf3y>
References: <20251011014811.28521-1-josh.milas@gmail.com>
 <20251011014811.28521-3-josh.milas@gmail.com>
 <hkdnjyldwr4watvizsju4qcvpvkb3mtt5rathaooembpceyufx@ega5xrqj6v3y>
 <aOqtt7BDXxItrs7W@sleek>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aOqtt7BDXxItrs7W@sleek>

On Sat, Oct 11, 2025 at 03:19:19PM -0400, Joshua Milas wrote:
> Hi Inochi,
> 
> > Only enable device that can be accessed directly. These devices share
> > some pins and only one of them can be used. I suggest enabling devices
> > that are accessed by default (which means it is compatible with the
> > vendor kernel).
> 
> I decompiled the vendor device tree and will match what is in that.
> Surprisingly most of these are enabled there. 

Yeah, the vendor enable almost all, but it can not access at
the same time. The pinmux control which device can be accessed
IIRC, milkv already provides a tool, named duo-pinmux, for you
to check the pinmux.

> I also tried to check the pinouts [1] but didnt really get anything
> out of it.
> 
> Link: https://github.com/milkv-duo/duo-files/raw/refs/heads/main/duo-s/hardware/SG2000-PINOUT.xlsx [1]

You need to dump the pinconf register and check the configuration
with the document (the link you mentioned).

Regards,
Inochi


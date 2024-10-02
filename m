Return-Path: <devicetree+bounces-107320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CC098E29F
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 20:35:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B4DE1C20A3B
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 18:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2202141BB;
	Wed,  2 Oct 2024 18:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="N8IEU5pu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCDBC2141B9
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 18:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727894102; cv=none; b=URgueoU8WgI9C051yEo507HTf5JhGz26xb77PaHb0X3XgaYwGozyx2ynk2KvEInYrz61N8NEkFAcY8gTrzYQ1c5v7zRNxwkej1EWAW23DZNyGMaYEbPZXVldoWeo7Pt4tGE3G+temtol24ZUbPaOF3oziIUt1XbszQtKPxqXCmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727894102; c=relaxed/simple;
	bh=4mOa3i0op2Pd4Qv4ekVZza/cC60XQdp58G07WH/bwuk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E6cN1IWyjthaFJTbTQOQP9eo4FxPzqe5nstyYW0JxqpedXzT3icTx1oSIk+qxuvisDbBR180Mg+LNgmPKW35497lRV6oEYiI7gkDtN9awP5ZH1ZfcqdQgYCNUN0Nl3p02oi8Dqih/uSbMUQ9xDBGW/HpRvaQ9gqHlZP1UnNlD3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=N8IEU5pu; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-20b90984971so474395ad.3
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 11:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1727894100; x=1728498900; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2bn2F/yqD7qU/04cqSEQXSLsFN+5ARfldGIgsw/yx6w=;
        b=N8IEU5puvbxPLucPJc3ufjkilft89dUJxRPIfS5RrKgYvOi/K8W3bmLhVnpCZYA9FV
         80Bk5ckUgiRhjWByZpOgkOvRVzKkhGl8bInt2FabSUV1W+BBuxj8KA/MqfI3uYSzHGjp
         UZZUMnGNbivZ98sI3uLjHcos/cJMhQpcBBQNeJA8Jp4Uo3lSLfZGgkZPZIsfpOXlf0q7
         SwBccXXm+qcPzH5ufHgifzqS58D/uVEcR1/A7NnJ6fOmgCXWLw4HWt3Aohyc9XfkW2i8
         iaAZ4VK7CzFnK5DIjebtpTQza01ueIZ00/9ujurp9Bzv9QT8jr7Frugx6ZXAXgIlyljU
         9dCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727894100; x=1728498900;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2bn2F/yqD7qU/04cqSEQXSLsFN+5ARfldGIgsw/yx6w=;
        b=ZTyIgemy7c7HP24QVhpJ3M7POio4WM4DL/ULP8rMb4UA3Kidos6wM5hR7yWbDmbOfc
         bPl8wAVWLFcDLpoK1t4AySACtVGWCWjZWwGi/VmrmWgXfc3bfSpVKPagIt72psPQAy8o
         YPwb2QvJt9qT6NI1NLsi6m2wj2AP0AtbL8JBgf5NR2pok9/tG/pFo6LdkLBySFoxXp5U
         JDd3h5a4Wf2to38i/Zq0OVs+O4vXNK0OcTILnNZPK7W5QU51IY1viXBoiJNLTjzDcpBx
         1+Q6hFaLGTt6Bb59zFl0KvGKmwv/aSOl/jUrwGOWG6on51U6UPUx8ernQWHV4neYg7LC
         srjw==
X-Forwarded-Encrypted: i=1; AJvYcCUvr/nSLdN16zUYsAwz3Ygx4hbDuCLMzBM9rOnUFz6mQmqWVMnGfI6U7Hg7u0GQZ4NaeaZ+ZY9bTFrN@vger.kernel.org
X-Gm-Message-State: AOJu0YwSCBLoCrrh76Eih9GLGUrLTCulMiPbVGIwG0oaF8BOpLpzsS+J
	XtF2h0ZEyyQZ6cbXX1AeaIk2nP3+H6v+rhEikXkmCG/P1lOI+76c+5U0PejbA8s=
X-Google-Smtp-Source: AGHT+IGyYDFCPfBUD6cqyyaq/aeFBAk0GqWubZItpSq29H18WWXrjLh/21OEwSnJg9ub9uTxFHI7LQ==
X-Received: by 2002:a17:902:dac4:b0:20b:13a8:9f67 with SMTP id d9443c01a7336-20bc59ec852mr70149115ad.1.1727894100059;
        Wed, 02 Oct 2024 11:35:00 -0700 (PDT)
Received: from x1 (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20b5b167128sm69551315ad.283.2024.10.02.11.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 11:34:59 -0700 (PDT)
Date: Wed, 2 Oct 2024 11:34:57 -0700
From: Drew Fustini <dfustini@tenstorrent.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/8] pinctrl: Add T-Head TH1520 SoC pin controllers
Message-ID: <Zv2SUVv2PUYqwOzh@x1>
References: <20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com>
 <CACRpkdavPAv2sPRREQhx_A7EtOj6Ld_n+NcO+vH0QCnfVedXKw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdavPAv2sPRREQhx_A7EtOj6Ld_n+NcO+vH0QCnfVedXKw@mail.gmail.com>

On Tue, Oct 01, 2024 at 02:13:20PM +0200, Linus Walleij wrote:
> On Mon, Sep 30, 2024 at 9:51 PM Drew Fustini <dfustini@tenstorrent.com> wrote:
> 
> > This adds a pin control driver created by Emil for the T-Head TH1520
> > RISC-V SoC used on the Lichee Pi 4A and BeagleV Ahead boards and updates
> > the device trees to make use of it.
> 
> Thanks Drew, v3 looks good. I've merged it to an immutable branch:
> https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/log/?h=ib-thead-th1520
> 
> Then I merged that into my "devel" branch for v6.13.

Thanks for taking this. Will that also end up in linux-next eventually?

I'm working on a TH1520 Ethernet driver which depends on the pinctrl
driver. Andrew Lunn replied to me that all the dependencies need to be
in linux-next [1].

> You can merge the DTS/DTSI files through the SoC tree, FWIW:
> Acked-by: Linus Walleij <linus.walleij@linaro.org>

Thanks, I'll take the dts through my thead tree [2].

> I think I'll make a stab at using guarded mutexes etc and see what
> you think about it!

Do you mean using scoped_guard() for thp->mutex in
th1520_pinctrl_dt_node_to_map()?

thanks,
drew

[1] https://lore.kernel.org/linux-riscv/99af411c-ff40-4396-a6e2-5aac179ba1be@lunn.ch/T/#t
[2] https://github.com/pdp7/linux/tree/thead-dt-for-next


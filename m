Return-Path: <devicetree+bounces-117797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9A99B7D36
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 15:44:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12C22282F30
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 14:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D4741A287E;
	Thu, 31 Oct 2024 14:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Vi15AuLy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D411A0BCA
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 14:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730385860; cv=none; b=LBP0sUTTwjf5V8GPBycIsYlgY1dBNizzKGmfqWmdmljW3TdczL2MTZ2mqwj6ZfnBlDeH92ov13ZNE0nAxRsJdHMHiCDiPnprwuVoQWDJTav+3VSV9lYjGORfJgRZN+7FBCWEPRL6VJheT5jJXlZ3WD+o580RWn+7zOG19ZVMpqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730385860; c=relaxed/simple;
	bh=eOYQp7aWWVMoeFl5I5k3uYp1tjZFG3I0RD12yVcpB7o=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OOnp8f/ZOBBLySbeF0+7yX41ASR6qG5p38IQYgD3V5eBEu/xUlAQ3wBGxx12lXnTgCk+vQDb9n6DhDw95XdEtFxjuq7piRtTKKq31QmbGPW97+qEokiNhnkSxsGxBU6CSm2R7XQcwcInpMkKxtuLZ67R9ryvVEVC0gkYhDNXIQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Vi15AuLy; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5c95a962c2bso1276500a12.2
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 07:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1730385856; x=1730990656; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wdMedbl2sdFWgBMBruWMRMeZv3n9L1bFDpOOup4ylAQ=;
        b=Vi15AuLyh6VAKlAEi8jNL659YK53+ob0v7BHs/j3HBrOt64D2tHf3JL3hrTKjejlU5
         wtmpe3/90uF96dqNmuZ+L1bG+IDpGWicussYl4Pzs9py23GVISGURN3hlduAP2bBhPBc
         NLUNlYSeAxSIruus9VvwyLYiAcyEPcaedAE1+cPSrH1WZ3cqSrir3TjXE3FSP36eri1S
         28ROgW5qPwi+7XPTLnNfqlb3V89VtyeGxEIDk2R+ZHicmlc3WBVt6LiygR+LenoHGMPJ
         sHpPylptQagtWj+zVFBaz9L8tth2bcV70myeHpnnU0DBFPLF8UCXDdiFbnRtLfCQVlHP
         suxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730385856; x=1730990656;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wdMedbl2sdFWgBMBruWMRMeZv3n9L1bFDpOOup4ylAQ=;
        b=fmPr6qJoJoEHBW0LFFM/1eEr1fpSz68SMGfjS6fsY7hkYBfkr0k+zlQFAmM/55HAb+
         xKZy+kJTiva6AXH6x4qCWydmHmEv2vi5M22ZhRwckBFIKEe+L9FG5sfhkSaiMX1pa1n8
         GgmKKoYHz6I/lnyuOx03UhuTNa8MyXQ7mz/44C/1JunjJzr8F9TYWVxrDeBFSPTXykej
         NzyYUO8mx6OYaNuXtTrwbkK4Phw+H/ToLguUc+YmSgGlcmTe6SkyerOXzGn7ZUNxqtKG
         xJeyUAyHb2taUs35iWeZgFZGyAdJiJdLZvpKpYYe3EjIh00264l/N5lfXBtBYfZf8m7a
         4QcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVw/nZDiCAWsIOVfkYjdCs5zzZL6VSAPRJhtwxXryv4xoZ9ckVMW/mMQTdp7/MQrIlkf8If4Yq/ojQm@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5tpHS9iHqP2YQGc1E+Lb5rmZI0GMXXM0vIISdz4yv8/7lbXX3
	jlske1qaPKyUn/kQQo35vIKKN437AprkOlaDBftCv3fxECCfxeaf+/jUbg4VxVc=
X-Google-Smtp-Source: AGHT+IHrQIPsgatcH/eK9/hWnih/oaz1AFfeCB1NJO1AFOuD3BregfgaBS5jDWycv+GxWHT8f0qvoQ==
X-Received: by 2002:a05:6402:2111:b0:5c9:72c7:95a2 with SMTP id 4fb4d7f45d1cf-5cea971bac6mr2932118a12.22.1730385855511;
        Thu, 31 Oct 2024 07:44:15 -0700 (PDT)
Received: from localhost (host-79-35-211-193.retail.telecomitalia.it. [79.35.211.193])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ceac78cd44sm634736a12.55.2024.10.31.07.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 07:44:14 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 31 Oct 2024 15:44:39 +0100
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v3 08/12] pinctrl: rp1: Implement RaspberryPi RP1 gpio
 support
Message-ID: <ZyOX16-Fq4mDeHvP@apocalypse>
References: <cover.1730123575.git.andrea.porta@suse.com>
 <b189173d893f300e81b18844a1c164fe4ad5bc20.1730123575.git.andrea.porta@suse.com>
 <CACRpkdajY9efD_DMwoE0wpKDVf=+kcWzYQXOQMHC+pQS-ntsvA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdajY9efD_DMwoE0wpKDVf=+kcWzYQXOQMHC+pQS-ntsvA@mail.gmail.com>

Hi Linus,

On 23:18 Mon 28 Oct     , Linus Walleij wrote:
> On Mon, Oct 28, 2024 at 3:07 PM Andrea della Porta
> <andrea.porta@suse.com> wrote:
> 
> > +config PINCTRL_RP1
> > +       bool "Pinctrl driver for RP1"
> > +       select PINMUX
> > +       select PINCONF
> > +       select GENERIC_PINCONF
> > +       select GPIOLIB
> > +       select GPIOLIB_IRQCHIP
> 
> Just a quick thing:
> 
> You don't happen to want:
> depends on MISC_RP1
> default MISC_RP1
> 
> So it will always come in tandem with
> MISC_RP1?

You're right! Added.
However I will postpone the "default MISC_RP1" line after checking why
the pinctrl driver does not work when compiled as a module (right now
it's bool, not tristate).

Many thanks,
Andrea

> 
> Yours,
> Linus Walleij


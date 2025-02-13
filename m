Return-Path: <devicetree+bounces-146316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFA9A34768
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:35:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C31D3B2901
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 15:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B35C278F30;
	Thu, 13 Feb 2025 15:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="VN++il+2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D6938389
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 15:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739459941; cv=none; b=GOpXcBTnBjzc3lwy11p/kEdBENKilp5/oo2fqc3snPUPB1ILIqYzZ0DB1xkS7H6ZXu3HBuSESZDaWA/FCNU+r9tsN9waSTzuh+Z/UmVvC0G58nwHtUeBCve3+D+oy6ISZkqQj9Fr830hkTBPl9zTd8h4g/gtl4GwS23Ei1343z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739459941; c=relaxed/simple;
	bh=6/MHXBt3ThyNTmD9iHOOhPj6W2u7EZRVkOK3ed1Q64Q=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=ZaBRzJ963xHs4+Ivj2rb90uUC9kAWE6bIPjvlcoNFdxwsLpmHwkpqHsg2WWgTgrTUdWk6E6wgX05mBZG806jr6OCNUFlSZiOhiPiW8OC+dT/1u8/r6AsamvukpyJgRo9p25KrGrldHKZ4FcqfcB3+cq16f3rXxhtDmnBYhkX8Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=VN++il+2; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aaecf50578eso217131366b.2
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 07:18:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1739459938; x=1740064738; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6/MHXBt3ThyNTmD9iHOOhPj6W2u7EZRVkOK3ed1Q64Q=;
        b=VN++il+2NcLZMuXmB7DtC6t8u7pwISgu60YeSAlSoDlhL+Rz+BjYOrCDuKKGSqJNTv
         +u7wrbDiN6GxzM+lVgGdMuQoo4n9N7OdMHV2clzOhPj+5yq4lXOQQx/M/Mf+WNf2LfGS
         roSljNZR/rru7d2FngHpHdE9M5hnfNZ898pmXAsos05p8zy6zGs1CZ4hGWJxMxi47uwU
         +2ULc+oM+L2mH+Pz2q1MBLw/y7NUaI/FWZ0X/y37mRxw4CBIDGmyGja3Nxyu39j92DDC
         DCdVSScmyexP+VnO4sXZN/4KACKpyrO8nkBqH+vWulEO4uU2T5Ri9VWcZAFsWSgUhwcD
         3q+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739459938; x=1740064738;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6/MHXBt3ThyNTmD9iHOOhPj6W2u7EZRVkOK3ed1Q64Q=;
        b=BcFn2pgO6nozz5BI6eMz3Cm8GI4a6LDClZYhJvZebw9xkJqaWJlpEWvqenEFlMEUWH
         XdutAzoip15xP5zCt9S4TwODXA49QxDWj9ukez+PdzuuXHvoG6wwUe2UTNBD6k7u1ZCU
         AcFfY9AHNf6gBUFhZrgvrVkvsbS/Y8Ir2Fz0Lq07in9WSOAeJvI7Gybtnqa6BDOINjpD
         cb8lPqS/xeOPzHOdhxK4aCAGCCDv9eDano6iZpecXjeHVzkbF0QghqMgb+9G8h6YYkRL
         5fMTEDkCQ15FuDohC8JT2PDSFqijkIvr4dcXCRT2ZK6b3WWBgJaKNHV42WTXVTWv2HE6
         iG3A==
X-Forwarded-Encrypted: i=1; AJvYcCX7S7HNW2nUfzqZa5urX0b2YIr6cMzqMvnePM2QhaonpnVEqPhfwHnR7/iA2C/uGSS+/moNe8rthpPk@vger.kernel.org
X-Gm-Message-State: AOJu0YzGkE3Fe/CH1gdxlhhOMmnBKluC+To7Hb0tyV++IdB/WMTK6V2V
	Xw464U41idwShYlOrdvNIs2LKnEPU265SpkjKQNysEEKtId301q3xVHh/Zq3Z7TKoJZ0PgRgrHN
	p6qsvEqzVbva0qXigloo6iOkxAi4+K9TBu7oCsw==
X-Gm-Gg: ASbGncul5VZ2UxDPlGUPQVKBYUvEEYqpvTtFkfBoGRTSe7UwEUyqAmb8wJv0ctgGlkO
	TXPzIjce9VPhli7fPmAuL7oXv4AoElSUMmJHJKtvSnQN9uzX+3a3e2qwP2GSAhwVe3LhqXXoP2G
	SXIhzYSuq/LfRNgg2t5QpxtNdqaRFs
X-Google-Smtp-Source: AGHT+IEUUAMp1A3OZpYQwTyMrudMkiFtVUqwOeMuLEVr7St6uJlPcG5asSsJxDTLPpX7Ju1+2ET5B41boTMft3YQY5k=
X-Received: by 2002:a17:907:3f25:b0:ab7:e278:2955 with SMTP id
 a640c23a62f3a-ab7f34a31b8mr633294966b.38.1739459936619; Thu, 13 Feb 2025
 07:18:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Phil Elwell <phil@raspberrypi.com>
Date: Thu, 13 Feb 2025 15:18:45 +0000
X-Gm-Features: AWEUYZmetnZU5U18XyjwhGQ_ZYLhS4_yaGIMiS4tC4pNvrJmSgh7GCx5E_wteQI
Message-ID: <CAMEGJJ3=W8_R0xBvm8r+Q7iExZx8xPBHEWWGAT9ngpGWDSKCaQ@mail.gmail.com>
Subject: Re: [PATCH v6 00/10] Add support for RaspberryPi RP1 PCI device using
 a DT overlay
To: Andrea della Porta <andrea.porta@suse.com>
Cc: andrew@lunn.ch, Arnd Bergmann <arnd@arndb.de>, 
	"maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" <bcm-kernel-feedback-list@broadcom.com>, bhelgaas@google.com, brgl@bgdev.pl, 
	Catalin Marinas <catalin.marinas@arm.com>, Conor Dooley <conor+dt@kernel.org>, derek.kiernan@amd.com, 
	devicetree@vger.kernel.org, dragan.cvetic@amd.com, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, herve.codina@bootlin.com, krzk+dt@kernel.org, 
	kw@linux.com, Linus Walleij <linus.walleij@linaro.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>, lpieralisi@kernel.org, 
	luca.ceresoli@bootlin.com, manivannan.sadhasivam@linaro.org, 
	masahiroy@kernel.org, Michael Turquette <mturquette@baylibre.com>, 
	Rob Herring <robh@kernel.org>, saravanak@google.com, Stephen Boyd <sboyd@kernel.org>, 
	thomas.petazzoni@bootlin.com, Stefan Wahren <wahrenst@gmx.net>, 
	Will Deacon <will@kernel.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"

Hi Andrea,

The problem with this approach (loading an overlay from the RP1 PCIe
driver), and it's one that I have raised with you offline, is that
(unless anyone can prove otherwise) it becomes impossible to create a
Pi 5 DTS file which makes use of the RP1's resources. How do you
declare something as simple as a button wired to an RP1 GPIO, or fan
connected to a PWM output?

If this is the preferred route to upstream adoption, I would prefer it
if rp1.dtso could be split in two - an rp1.dtsi similar to what we
have downstream, and an rp1.dtso that #includes it. In this way we can
keep the patching and duplication to a minimum.

Thanks,

Phil

P.S. Apologies for the lack of context - your emails don't make it
through to rpi-kernel-list, and gmail doesn't make it easy to interact
with a mailing list.


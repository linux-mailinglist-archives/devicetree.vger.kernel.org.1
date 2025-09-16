Return-Path: <devicetree+bounces-218023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B056B5A199
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 21:48:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9C073BA4D9
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 19:48:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 458E62798EB;
	Tue, 16 Sep 2025 19:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P0GbG3iL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 811812773F4
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 19:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758052088; cv=none; b=SV7QBPLNHH/bEgOXirabE70X/vt185AuWr8hxIR/b4cyOQA+uvdYusURi4nm5O6Zew49YWsaAxUvXTN6856wCR9p0QXisltRC6A9tOyrDVbxU0/HdltDo8ze08pNgnhm93BTcpF4wIatPxlEVI8LSRry7Lb393QfMuxbW4asfn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758052088; c=relaxed/simple;
	bh=Eh3bOzoX4oXnbbFUZY4dw2NdJgZKoMsis19fWyd9+uA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=moOc0O4vAWFnxILm61xXW7wizICYY1x0elzGVHXHL6KQN6JIc+0k/qfly23JW8QQGhiw2UhY8hHLngALrGNqtf60AAaLlVaM0mzJ63y9jMBwOdEOPO1e//1WR7x9nPD5tJx3tNsXbw6tsuYHFCckS80/1ndWdqYa8ot+dJt8xZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P0GbG3iL; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4619eb182c8so112675e9.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 12:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758052085; x=1758656885; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:autocrypt:subject:from
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eh3bOzoX4oXnbbFUZY4dw2NdJgZKoMsis19fWyd9+uA=;
        b=P0GbG3iLtIgEtNWOwnlG0snEr6tNK9BxB3FpEh3onDn0tEZfxTsshI4J8kdbx2n2l4
         ZKFP6x7mUt4EOE1ML2OH0zJz1P++Wa1K9xtMkxFt8Ha5BDvFt7eWy0ziq8qVw+5jIibh
         oxAoF68DmGyaJGiMZeqJH16BVBVSL1v4OoXrrbunycT/Qb9GSFwxgT2C7uhPxN1dF2P1
         T37aAha29fl9C4MPHMttU8FPmgy6DHdeznLvrorvHXUNjL2jQANcfLARTOgffeDsIovX
         VgPwPeE2irTyqakZKtGsJZh2S8iEeWdPS0JVMrVUhFbPURMKXIOamDmaNvkP3fisgoE1
         SyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758052085; x=1758656885;
        h=content-transfer-encoding:cc:to:autocrypt:subject:from
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Eh3bOzoX4oXnbbFUZY4dw2NdJgZKoMsis19fWyd9+uA=;
        b=T0X3kZqjAwK6C+6fYcJlLNah9YsL0MudwxIkGCqMVgvIowVyKSdWuNT6se4Jm1DAaB
         v9pmR3BGj4MIsDDABjjATFZmlWyHrbXEPowZ7Ctaig/roXZZQXN7dJTJ8MeSUgHzt7Ya
         w1F6TRA+QFWMnJ/JRlskbXowRma2NuqTdXiuWRjoTakZB6kuFh7N6fb4iNRz9gY/KAmJ
         50stLti0fo3/JDOl/R6T3fRUcQnsHii1oV0KgyWOaAbCdIl/n4DRvc3oyoBJ4N9u6BlE
         SU2/bY3MlD8UOGHRE5dV4Lx/sLqiGAYyGRPYPu9pxVEMtM68k/bXHCDsz7UsdJW3w9q1
         vSiQ==
X-Gm-Message-State: AOJu0YzDe0kHVYMGBNGy6IeXc8dwZuLCT+L3EsNR6LEsr+JEly8RsEu7
	DwMXqC/ut85pii+VXsTLNyt/Xh+ywZe1csaZ4lWIt6d2+D8U9Ma3HYSl
X-Gm-Gg: ASbGncuOr3Wff6yb38OyE5akim+ipq+OoLo4VWhOVhdK38CxutJ8W6oWXvkRgEs8djM
	ZthsUJ/3psqFuC83pjptHBMUNq4A5p7rvYJTEVfqp9GY39thbwV1VzdtLkKSunRUFJpAKSK8p9j
	FsgVXykFo8FKCTyjosnHakAT9V5jcvQw5FUb4C2F68JGExM/xG6qZXyPRQbaLhxopqbgjWa1MKN
	jirKrE33SGUhKuSaubFQdfvzGrh9uxsC0xCyHPVX188u47y27mqSc7clUq2LizCw5zpHqmS44An
	0x9NWG/5wuu5f/+jvn4aPIiZIx/MBET5cSJuSIXxSIEQgRSXxEtkp8eX/kAx22yk/heW10jPOFK
	KufJHLgjsDFvRXnzOyjgI1MmlS0O02aMg5X53hj+UqnYMINTFbalCN4N7GMehZHU64mRojZhs6R
	j8aC9R2deQvw3AVJHdrWSYDdgf+QHrTkcLay+f4RC6u4GI43/RofPrggpeiAFKaQ==
X-Google-Smtp-Source: AGHT+IEBwxeQVbRbNxMsWkLfokx1lab9KKlQ+Ofhf6reCADz+mf25Z+xaOMzyJhDtbLc2UZ5MqeBCw==
X-Received: by 2002:a05:600c:55c6:b0:45d:e0d8:a0aa with SMTP id 5b1f17b1804b1-45f211fa411mr141622065e9.17.1758052084366;
        Tue, 16 Sep 2025 12:48:04 -0700 (PDT)
Received: from ?IPV6:2003:ea:8f0c:3300:d82c:9b4c:1c3c:2591? (p200300ea8f0c3300d82c9b4c1c3c2591.dip0.t-ipconnect.de. [2003:ea:8f0c:3300:d82c:9b4c:1c3c:2591])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45f325cabb3sm24228475e9.4.2025.09.16.12.48.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 12:48:03 -0700 (PDT)
Message-ID: <5b00870c-be1a-42d6-8857-48b89716d5e2@gmail.com>
Date: Tue, 16 Sep 2025 21:48:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Question on generic PCI ACPI/DT device property wrt ASPM
Autocrypt: addr=hkallweit1@gmail.com; keydata=
 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
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

There are drivers (in my case r8169) disabling ASPM for a device per default
because there are known issues on a number of systems. However on other
systems ASPM works flawlessly, and vendors (especially of notebooks) would
like to (re-)enable ASPM for this device on such systems.

Reference:
https://lore.kernel.org/netdev/20250912072939.2553835-1-acelan.kao@canonical.com/

Realtek NICs are used on more or less every consumer device, and maintaining
long DMI-based whitelists wouldn't be too nice.

Therefore idea is to use a device property (working title: aspm-is-safe), that
can be set via ACPI or DT. In my case it's a PCIe NIC, but in general the
property could be applicable on every PCIe device.
So question is to which schema such a property would belong. Here?
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/pci/pci-ep.yaml?h=next-20250916



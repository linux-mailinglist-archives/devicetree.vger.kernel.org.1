Return-Path: <devicetree+bounces-244518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C722CCA5BED
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 01:25:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2766030C78BB
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 00:25:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE0DB1E5B7B;
	Fri,  5 Dec 2025 00:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="elwLdYPx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF88F800
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 00:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764894341; cv=none; b=oQ0mLvuGyrNTlu5Q7xbbxUdrEyMFUxQKf3wMg5zZlnk5qeOH6xTLOLqnkoOmbjyVKhBnnZR1VIzJfdEemV/OcQxbizRn7Zd9Xlnc0EW8XC586Jdmxe1Fh4slo0b4F0tesFXlzB77ltJr2S1u6B9ZC1N9OBe7n4EeWkujjUpOuoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764894341; c=relaxed/simple;
	bh=J47KqI3zf/BhDhMTHQg+5IgKL+pqIn+I1X+jKzu6kFQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I82XpzXNyCwNNH9jiBugoUMRNc+24iDUn0gFH6M5UzmD8L/L66hk8gQ88Kem9Zfa42WkmU27AE1HWPVTpInsxWEpFSTtQJdMeQLU/b2HiURqfVAm3VatcZdT3Q3tv6MjTWWPFlkT8eXSJX4DGLPD+l7CVnKjCiYKXX/vNRROGgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=elwLdYPx; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b735487129fso230835766b.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 16:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1764894338; x=1765499138; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JFrd/SUsDDYP38MJ/RKZ0m5CsKIXIH1DQ11i/+iC8Ag=;
        b=elwLdYPxB0vpLwWJSu1ocz556m8E3Rkby5NVYmox9QOczeRukhJHFghvH7hT/KRwSj
         lg9QPbRXW2oTUKvfMVK8Z0K/A77bquTWGIz5M+SgIi/a49y92eQsnVQdMZOJ/2OvT/OI
         v1TP3TkMF3JoKVcPhVyR25CTjZQD0SBGHym94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764894338; x=1765499138;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JFrd/SUsDDYP38MJ/RKZ0m5CsKIXIH1DQ11i/+iC8Ag=;
        b=ncU778crOX6vTlcqVZg+h6K2mCH5QtamvnkoT2YiV4Nc6iqDNSSJ2lM2VIEXEanOG5
         z2NFZK5D9JtJ4zQh+jG/ajIqcRGUjJqtEHf6/+vIgCg9IrBT4eTqTu88IIh8VJcbFUz5
         75Tnh+DiTDE6ZlqGPHFirgF/35SNiNVFFTcdNlO+YfDx9/2na8LxU3hEgIcz16b3lHPG
         jPYHTapjABIVEVEGYX3UuY3FBAMsV/DyDWwRHtw9utbtR39fLU/V6jEKjVatGJHE8qM1
         /i+JYzSvziz3qsjaALMCevy+QUQDc9+fFUNjJRBWAKiMdgACfprbSQcOiK1+QaeV+Cwo
         eVbw==
X-Forwarded-Encrypted: i=1; AJvYcCVEiimM/oj6JiYinM2BbY46hQ+9+/245hlxsSSjIlq0B6zuf8309CWbXErv/BVYjnlygtx7wvHA+6Sk@vger.kernel.org
X-Gm-Message-State: AOJu0YyKSeJQvpcpQO3OFUmcQfXbOW3aTHGxxB+oAhvi/uXORvZH3a7g
	PmtCp0PQ25xIKjvkH4ODsCw08B5C6aU0p/5j5B8JqKSDLJ3SQcTWZrhpvJIl+71qU6o9/CNnJF/
	YexKLHiE=
X-Gm-Gg: ASbGncsD31Il12B1zYaAXWvmaefxb9mQXzZ+ebdtVDzHqogNKQqkpnTl8YVRpSfz903
	lHB52uU8ZM9VRTF0kTp3YJA9+w5JnY/SbFnH+w1pscEcx8/A71b9Tb3efIqY0RmnYj9z132uDle
	8aEDKk2CFgD/5XBr3bI6XZY6HRauXeAB1G6xcSX8WaGq43waq9jFuQ7ItRYT6UXk5vP3oEq17lO
	Zdm348LD2XMQ3xOABg21GDieqd1YYcOXke0C/zZVtfozVICnr8PVVsFwej1SI6IOnMaW8erqiuH
	098Clwur6HOMA3x9nSM4NkeogagJ4iwlhp8BXPTqj7V2lvG0D5chg5Mmo535nuxqj1fwxAujuBc
	wZpJnEa2dmh+L0XOBRtG0lApS17UE8+pcWxYKL7TgxobeuNlXi7lN8wXKAjFLP0Sss418Db6BCZ
	4a/Ejwxxady9z/FkfD/d1A2pgJ5RVLoDAr73lEraDUYRUa7PH6zyllaPSi+GpVkoRFmCnZG/w=
X-Google-Smtp-Source: AGHT+IEflQOQFriqD3qTjSnJ0jWYC+0ZCmYFk22EcSo+249rUz4mSPpk5UeQO3GhhKVsUX0zbg3EUA==
X-Received: by 2002:a17:906:f58f:b0:b76:7e90:713f with SMTP id a640c23a62f3a-b79dbe71bf9mr821939866b.10.1764894337798;
        Thu, 04 Dec 2025 16:25:37 -0800 (PST)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com. [209.85.208.48])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f44d3d9esm232616466b.30.2025.12.04.16.25.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 16:25:36 -0800 (PST)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-64180bd67b7so2076494a12.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 16:25:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWzei7wC8CkgeHRWdqCdJI314Yp8cqsoaJ7DaAObfv8E8vgLHZKaV2wX2M0Ay2U2QR2bvyULH/p0BS9@vger.kernel.org
X-Received: by 2002:a05:6402:42c5:b0:640:93b2:fd1e with SMTP id
 4fb4d7f45d1cf-6479c47fb68mr7116322a12.17.1764894336306; Thu, 04 Dec 2025
 16:25:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251203164259.GA3838993-robh@kernel.org>
In-Reply-To: <20251203164259.GA3838993-robh@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 4 Dec 2025 16:25:20 -0800
X-Gmail-Original-Message-ID: <CAHk-=wi+ge-gtCg+iLd6dgjisGchjtsKY8AXG9tXGOxqVv8Fkw@mail.gmail.com>
X-Gm-Features: AQt7F2qN7FP02oV0TOUDrdLzZwQboUyd4sdTt8NLwHfsXWFdaieBRUAp__m5U-8
Message-ID: <CAHk-=wi+ge-gtCg+iLd6dgjisGchjtsKY8AXG9tXGOxqVv8Fkw@mail.gmail.com>
Subject: Re: [GIT PULL] Devicetree updates for v6.19
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 3 Dec 2025 at 08:44, Rob Herring <robh@kernel.org> wrote:
>
> - Ensure all .dtbo targets are applied to a base .dtb

Bah. I pulled this and pushed it out, because it all looked fine on my
usual x86-64 targets.

But when I build on arm64 (either allmodconfig or my local config),
this results in

  scripts/Makefile.dtbs:20: .dtbo is not applied to any base: rp1.dtbo
  scripts/Makefile.dtbs:20: .dtbo is not applied to any base:
mt7986a-bananapi-bpi-r3-emmc.dtbo mt7986a-bananapi-bpi-r3-nand.dtbo
mt7986a-bananapi-bpi-r3-nor.dtbo mt7986a-bananapi-bpi-r3-sata.dtbo
mt7986a-bananapi-bpi-r3-sd.dtbo mt7988a-bananapi-bpi-r4-emmc.dtbo
mt7988a-bananapi-bpi-r4-sd.dtbo mt8395-radxa-nio-12l-8-hd-panel.dtbo
  scripts/Makefile.dtbs:20: .dtbo is not applied to any base:
k3-am62x-phyboard-lyra-gpio-fan.dtbo k3-am62-lp-sk-nand.dtbo
k3-am642-phyboard-electra-gpio-fan.dtbo
k3-am642-phyboard-electra-pcie-usb2.dtbo
k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtbo
k3-am642-phyboard-electra-peb-c-010.dtbo
k3-am6xx-phycore-disable-eth-phy.dtbo
k3-am6xx-phycore-disable-rtc.dtbo
k3-am6xx-phycore-disable-spi-nor.dtbo k3-am6xx-phycore-qspi-nor.dtbo
k3-j721e-evm-gesi-exp-board.dtbo

for me, and I did *not* try to dig into why.  Please fix.

             Linus


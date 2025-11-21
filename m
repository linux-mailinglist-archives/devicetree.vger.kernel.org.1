Return-Path: <devicetree+bounces-241074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C07AC78E76
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:52:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CE7D4354BB5
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B38F307AE4;
	Fri, 21 Nov 2025 11:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="amLAZ/UF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A2D2E1F01
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763725923; cv=none; b=Gl1HuFhBh1xBaAMLG00OpPA5/mtXoVkQmiPL6hZH4thSzNbW+3TEX1IW6QNLD8ia1v6kZ4Lwuhfsf/v8bu67TQz6xhG5TE9NZx9G5PzTixHUUZA1FX5/wHbD+hopDT4tVH8Ouf2wdD+eaHKQNHTY8HhULDPfijJm3zy2FQfuoRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763725923; c=relaxed/simple;
	bh=1CJiYe46/9wzpUjF7HFzcDRB3znZsib+GR7IhrbsegE=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qKz2XfoA2y+8wuCoy3/A6WgkL2vDgdY905yweuwCBSuQ6n5/dokDXSF0xAhThlL1W2qoPgDGJ+VzmxFTPlarXQnKEvyhvVXxIZbhJfCdxXd5EskK2FaooB8BAKps3E3t3/SlEllpylVWD1d3LUf/6wfMSQHGY8EGMJbjF09UEqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=amLAZ/UF; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 1CD053F2C5
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1763725920;
	bh=1CJiYe46/9wzpUjF7HFzcDRB3znZsib+GR7IhrbsegE=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=amLAZ/UFY5271uu+3biPE7u8v05hVp21sB1vvo/FRHhPMvii1WwLudsyboTSQ7jOo
	 INwl9UnQwhGOSzjdwenEmasHLvePE3DSInRGPCDWzVCXX4WZl8QiVGWa3cQz3HYE9T
	 OOi0oxfdBpWYC5HdIhcLfo4QZZnL25x+E36knuULcaLRaaE4ZG/bBN/MobSVKrDo03
	 yTUa3zT3Mcl/WbZPT9W8uMoKDho4xhvyfUmdy/hWu3QvtdOwqkBMxoUvhJfnILMKDw
	 s/p1uBigFHi3By8p/UGFesdCfzoLofXp9VAiioqzadUo5F2cw5mDSJzgEXHc8ie649
	 qxNKhtyNDiM0wDVSaF1zJY4hv1UEnKDBKBw1vDCuegUgnqsgqFHqYE7X7os7NwlIOL
	 mitWx3IHzEvRe0FtqzmzoBV4iKtanpROONUW0JvJ6TL2xlW0JKMmc6XfNLaakGNaju
	 O5NCUE10azQcxoRoAnn9tcFIN5ogufLlk7Ce1k7CHTtAEfpGbinw81+0Jz9RHZNlig
	 dGTKChF5MV4CQN0kAR0WqtTg33OemJTB4rXoYkdv6ctdWQ7VQtKwJ/7yWZYuNJ5qsB
	 1y9PEkpOjuSBr3AeHsk1FQMghdy1tvhIK6hJRyZDxM4+BIZh2gvxxp1NT8Njt1uHah
	 Wk4dXhtAPXOJhvz03y1ujC3U=
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-b73586b1195so276475466b.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:52:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763725918; x=1764330718;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1CJiYe46/9wzpUjF7HFzcDRB3znZsib+GR7IhrbsegE=;
        b=la7GXCTVGfvZNBQ1WWYKIPaLICpv/7CLzNJfLB69M1me66XZD+BuJOx2bbyYuHHA2A
         WTJ9HLKKrjEYMCG9LMTIAAiFZrwlyjABgx5VsSNDf8iOaH5DehSEs9GokPTBoC1vjZ0H
         yFQq6WIFg5Rn11FYplLMRUX86Sz0uTQQ5m4Bt7r3CHDrkcz7PlD8Q4RtBBapsrPfLD7o
         y5la5vM9wPNKkx+0AoCFDCCvwKATl3QhLvkSG4kixCe0wYvQ7mnPKYJK6RfgbY+SedFd
         YrtZUgc9Z1ntqZdwJq1kKba746tWkImqaBZooWQt3u8QjzIKtPHcFn9/N85ut+qGrU25
         N7Fg==
X-Gm-Message-State: AOJu0YzQ4Cei/iufZCQEEo0T8y0x4E/+m78hc/XK+sMTfZAZVBJY14YR
	HxZPgfrALe1iWrWHS06uS60OCLwU642FPVSmZnYgU5FMsZ2MZ/nAu+9CuT1hv/+ezfLjrvTkLg7
	/N+aMXhOQLHCb8XkbX85kzlE+g7zUr2UcfmuzLeEuPZdRV18H+3rLBZct/Tkb1frNSdHx3D+oI5
	UOyExvzZaEqp4tHSeC6ws4BzdvoBcUzVuW04DOP986l2Wesz2g/9JRSA==
X-Gm-Gg: ASbGncvVx9bJ1D/IZE0o9Jq8xusIkjaubsCVpzLujFhJen68AvY4hTnBqaZXKb/5oXf
	UrxiOtb01xCKvvORIN6Y2UAkVv4PIxjMSKDad5s1N5mXUEx/PoOpmjZ/AY8j9xTV9VgBPxajkEh
	ibXEJdW1tO3I1CpSqzyZd3VEfetPIQljf4v4kcl7+vG8xeNpG8yBfXuhxFnnhrdkDM
X-Received: by 2002:a17:907:3e88:b0:b72:8489:7e65 with SMTP id a640c23a62f3a-b76716dbe58mr249513166b.31.1763725918440;
        Fri, 21 Nov 2025 03:51:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHmmbb/l3K7dtugr+S1m3/Wv8PJ5+8oknGlLjROzkp0sM+lmlNKNB0zjV4+LxEvknw2diFiHds/C+1CuD4T17s=
X-Received: by 2002:a17:907:3e88:b0:b72:8489:7e65 with SMTP id
 a640c23a62f3a-b76716dbe58mr249509966b.31.1763725918024; Fri, 21 Nov 2025
 03:51:58 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 21 Nov 2025 03:51:56 -0800
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 21 Nov 2025 03:51:56 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20251120082946.109378-5-hal.feng@starfivetech.com>
References: <20251120082946.109378-1-hal.feng@starfivetech.com> <20251120082946.109378-5-hal.feng@starfivetech.com>
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
User-Agent: alot/0.0.0
Date: Fri, 21 Nov 2025 03:51:56 -0800
X-Gm-Features: AWmQ_bkB8niCYgVkDWKDtP_0Ppy1-V0zOFN4wZx7lFmVJ6bRkVFOMoAbi3kETSM
Message-ID: <CAJM55Z89bBnr_GX81bPmCV0iHKbURAg=SbrTut_DUa-7gdK91A@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] riscv: dts: starfive: Add VisionFive 2 Lite board
 device tree
To: Albert Ou <aou@eecs.berkeley.edu>, Bjorn Helgaas <bhelgaas@google.com>, 
	Conor Dooley <conor+dt@kernel.org>, E Shattow <e@freeshell.de>, 
	Hal Feng <hal.feng@starfivetech.com>, 
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Hal Feng (2025-11-20 09:29:45)
> VisionFive 2 Lite is a mini SBC based on the StarFive JH7110S SoC.
>
> Board features:
> - JH7110S SoC
> - 4/8 GiB LPDDR4 DRAM
> - AXP15060 PMIC
> - 40 pin GPIO header
> - 1x USB 3.0 host port
> - 3x USB 2.0 host port
> - 1x M.2 M-Key (size: 2242)
> - 1x MicroSD slot (optional non-removable 64GiB eMMC)
> - 1x QSPI Flash
> - 1x I2C EEPROM
> - 1x 1Gbps Ethernet port
> - SDIO-based Wi-Fi & UART-based Bluetooth
> - 1x HDMI port
> - 1x 2-lane DSI
> - 1x 2-lane CSI
>
> VisionFive 2 Lite schematics: https://doc-en.rvspace.org/VisionFive2Lite/PDF/VF2_LITE_V1.10_TF_20250818_SCH.pdf
> VisionFive 2 Lite Quick Start Guide: https://doc-en.rvspace.org/VisionFive2Lite/VisionFive2LiteQSG/index.html
> More documents: https://doc-en.rvspace.org/Doc_Center/visionfive_2_lite.html
>
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>

Acked-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>


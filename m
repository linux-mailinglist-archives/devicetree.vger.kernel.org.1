Return-Path: <devicetree+bounces-276866-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCQoNDy4uWnJMQIAu9opvQ
	(envelope-from <devicetree+bounces-276866-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 21:23:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8D82B234E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 21:23:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F1D283075304
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1146538654C;
	Tue, 17 Mar 2026 20:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XpHcv8Cw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1EE3859D7
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 20:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773778992; cv=none; b=Idd+gGGJp+FrtlyKSVpA2cG0ewfpb1C+hmUX5DBrpRz4XtTVKB/7yfv7WDq/TgED4lQBU98bv2QjakyO11k71N86cM+owequNY//0wuiFFYm768ibcRm6z8N2KtQlyzKwThAHQTJ2p4ai34Qb375sjun31jn7HqIFxX8h4QKXuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773778992; c=relaxed/simple;
	bh=1Tvow8X4Db0N1osozsscW2uTEW7kegN9/O8TPDZlMdo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I1EqqJpOnHhDjYIDrCEv4CXg/HjajmGWhBi3drU7v03z59NfjLDzdWfKKOuTU3jN9QSdhxr6eqjAltisvsdmzLgMTN3kjbF5Bn8sWj4O5LQkMj+iHXUrBqwG90WGbFy37K46j+XpliHCAc8VRrmuF+keD5Wcl0OM8Dkhud+3PGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XpHcv8Cw; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-8cd80f56b27so1337885a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773778987; x=1774383787; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5QyiDZ5RSYUOfAeS5ZUUKET2WqUdsSAGFaGllFAZ7XM=;
        b=XpHcv8CwDm19zVbApdbMBEOu8/+J3kUt/ANcqfaFWeKBOGtPBJxf8t5ehGRi9Bhqzb
         DvwoW1t2wud0RH+UyHd175gDqy3RTsvNlWDhS+PkCl1P0gE9Chaugc2lj3hx4nF4WCLY
         CVVfXBrVF9Gr9FDxkn1DxZxs1nTVMk07ypWMjuXBnrWqzx6itdLrfeQuMuSJdlVnLHWA
         hKGsyp1rvsmimpBjGT8TmntLOazP2mcgt/pXs4NohvTHi2U2IWvTE3vexryKuW33MgSm
         Ig5Tg/AkyZg0F6cKcq1EeeuH/FuTTHLzCED+jiiOdfl+MpTaN+MGcBwGeg4Zd2zjqfB4
         573w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773778987; x=1774383787;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5QyiDZ5RSYUOfAeS5ZUUKET2WqUdsSAGFaGllFAZ7XM=;
        b=au8ufNjshZ34fVLZC135crLOyCvZzXWVGc3WA9h8IE1/vaGNHcoGw5GIWgtCtuugmp
         Rb758cdqeLbSeKa09l6iOPKtzP+Lmi089aUXV0L7NwGCIr3T3VgRMCFtDsrJ4eVr8s5J
         S7xkk/M/xIaG9hOya2VbMomKmxynRZape+iXmaqoD5oiwfMaZUJ+ogj0rghz7DDBuH5L
         ATg63FY3CzQg8E1PYfxLJKbBcFev/X6+tgQS8uEJsGEaZ+DlqvTW8qhD9KYBsnBO9Fjk
         XmiG/KAD+31CVmeNnce2mHxz5QRlaHyf3rRd9nmbPmK5o2lUB/JGtO8V5esx2TPfLOWh
         XKLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBA5/R/jFXQ45g7sYcNDFSM4Lhfp/l+cG+2WgNfyoC2zn2WZX4KNfr3agcX1yrugbxnMXDzubMChBi@vger.kernel.org
X-Gm-Message-State: AOJu0YzLAS7+zUHCxo/dAaBKn/ctkMwC0t29WowncOqOEbLJSuUsm/K5
	2u/6S56WR+tOWwqp8IsJe9+CE+S7hdd0G4cvURU+aUVuwjUil/8VUlJ7i5VdMI2Tdkw=
X-Gm-Gg: ATEYQzzqKSVbAy5pCX2fgnXH9RcpyT3tqhib7Dz980MSJzLC1qBFffQkqQkUwPg1Vj2
	1qr/u5lYGfnpH8MJw9oQQKabrMRAmAaG3pjK30Jj1BrhXNAP05GE+aLy+orMTj9ItLg14oJS5Ky
	k48HylY9AQNLBQmI2GH5NJiPeUhiisr+QdlM1BkMUuTNbkFf6hquzR8pwMJcLF/xTaGD6h28woV
	IUOQZch8oSxU3/l0SF94gcHJ6gY2nC1mep0MSRb8YdGb31zAAuV5Wogrso1QA0f8QZjG9nU5Dzx
	8Jkceufqlrbf3P9dSUjfA7zZWXUv/7Os8MrSBM+Olw7Sr87iofNjVlXpyA6lgFt7owmEvkwGvPK
	1X1+Fv23ICofryAwL++ayHR5E4vRfqYeFJQNc2TNypCDCcXcwPCyCbVJiW3rlPG5W2SQUJxf8Vz
	ZfBewDRRlQZ5tFVJSh8WO4Be9vODR6L3G5YOG41jv8ee3truIQH6Yaj2mekIQpSJuXwXnl2jN4J
	cs4
X-Received: by 2002:a05:620a:bc5:b0:8cd:b90f:fc1e with SMTP id af79cd13be357-8cfad3df061mr133791185a.70.1773778987159;
        Tue, 17 Mar 2026 13:23:07 -0700 (PDT)
Received: from ?IPV6:2001:1970:3847:e000:4c82:63a9:39e9:5c17? ([2001:1970:3847:e000:4c82:63a9:39e9:5c17])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cfacdeb785sm57993585a.16.2026.03.17.13.23.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 13:23:05 -0700 (PDT)
Message-ID: <b3e1dfe6-b16a-44ed-82c4-b9140c91dd44@baylibre.com>
Date: Tue, 17 Mar 2026 16:23:03 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/7] riscv: spacemit: enable SD card support with UHS
 modes for OrangePi RV2
To: Iker Pedrosa <ikerpedrosam@gmail.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Yixun Lan <dlan@kernel.org>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 Anand Moon <linux.amoon@gmail.com>
References: <20260316-orangepi-sd-card-uhs-v3-0-aefd3b7832df@gmail.com>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <20260316-orangepi-sd-card-uhs-v3-0-aefd3b7832df@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276866-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,kernel.org,intel.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tgamblin@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4C8D82B234E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 2026-03-16 10:03, Iker Pedrosa wrote:
> This series enables complete SD card support for the Spacemit K1-based
> OrangePi RV2 board, including UHS (Ultra High Speed) modes for
> high-performance SD card operation.
>
> Background
>
> The Spacemit K1 SoC includes an SDHCI controller capable of supporting
> SD cards up to UHS-I speeds (SDR104 at 208MHz). However, mainline
> currently lacks basic SD controller configuration, SDHCI driver
> enhancements for voltage switching and tuning, and power management
> infrastructure.
>
> Implementation
>
> The series enables SD card support through coordinated layers:
>
> - Hardware infrastructure (patches 1-2): Device tree bindings for voltage
> switching hardware and essential clock infrastructure.
> - SDHCI driver enhancements (patches 3-7): Regulator framework
> integration, pinctrl state switching for voltage domains, AIB register
> programming, and comprehensive SDR tuning support for reliable UHS
> operation.
> - SoC and board integration (patches 8-10): Complete K1 SoC controller
> definitions, PMIC power infrastructure, and OrangePi RV2 board enablement
> with full UHS support.
>
> This transforms the OrangePi RV2 from having no SD card support to full
> UHS-I capability, enabling high-performance storage up to 208MHz.

Hi,

For all patches except 7/7 (k1-bananapi-f3):

Tested-by: Trevor Gamblin <tgamblin@baylibre.com>

>
> Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> ---
> Changes in v3:
> - Rebase on mmc.git/next to resolve conflicts with "mmc: sdhci-of-k1:
>    add reset support" patch.
> - Squash tuning infrastructure and implementation patches (3 and 4)
>    together to form complete functionality and avoid unused function
>    warnings.
> - Reduce code nesting: implemented an early return sanity check in
>    spacemit_sdhci_voltage_switch() to reduce indentation and improve
>    logic flow.
> - Refactor pinctrl initialization: moved pinctrl resource acquisition
>    and state lookup into a dedicated helper function,
>    spacemit_sdhci_get_pins().
> - Use generic regulator node names (buck4, aldo1) instead of
>    device-specific aliases (sd_vmmc, sd_vqmmc) to better reflect that
>    these PMIC outputs serve multiple devices.
> - Remove dead code handling 3.3V voltage switching from
>    spacemit_sdhci_voltage_switch().
> - Optimize tuning algorithm to use single-pass window detection instead
>    of storing results in array, reducing memory usage and complexity.
> - Remove unnecessary card detect check in execute_tuning() - rely on MMC
>    core.
> - Clarify commit message to mention both SD (UHS-I) and eMMC (HS200)
>    tuning support.
> - Add SD card support for Banana Pi BPI-F3 board with UHS-I capabilities
>    following the same pattern as OrangePi RV2.
> - Link to v2: https://lore.kernel.org/r/20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com
>
> Changes in v2:
> - Removed custom AIB voltage switching code per maintainer feedback. The
>    existing pinctrl driver already handles AIB voltage switching
>    automatically via power-source property changes during UHS mode
>    transitions. This eliminates code duplication.
> - Squashed regulator and pinctrl commits into single voltage switching
>    implementation.
> - Moved voltage switching callback from dynamic probe assignment to
>    static sdhci_ops declaration. Removed redundant SDHCI core call since
>    the framework handles standard voltage switching automatically.
> - Made clock override (SDHC_OVRRD_CLK_OEN | SDHC_FORCE_CLK_ON)
>    conditional for SD/SDIO cards only. This follows vendor driver pattern
>    of differentiating SD and eMMC card handling.
> - Include no-mmc property for SD card.
> - Link to v1: https://lore.kernel.org/r/20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com
>
> ---
> Iker Pedrosa (7):
>        mmc: sdhci-of-k1: enable essential clock infrastructure for SD operation
>        mmc: sdhci-of-k1: add regulator and pinctrl voltage switching support
>        mmc: sdhci-of-k1: add comprehensive SDR tuning support
>        riscv: dts: spacemit: k1: add SD card controller and pinctrl support
>        riscv: dts: spacemit: k1-orangepi-rv2: add PMIC and power infrastructure
>        riscv: dts: spacemit: k1-orangepi-rv2: add SD card support with UHS modes
>        riscv: dts: spacemit: k1-bananapi-f3: add SD card support with UHS modes
>
>   arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts  |  23 ++-
>   arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts |  67 +++++++
>   arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi     |  40 ++++
>   arch/riscv/boot/dts/spacemit/k1.dtsi             |  13 ++
>   drivers/mmc/host/sdhci-of-k1.c                   | 243 +++++++++++++++++++++++
>   5 files changed, 384 insertions(+), 2 deletions(-)
> ---
> base-commit: f38f518dda1f1decc7a39556fe3231b0d1b84e1e
> change-id: 20260226-orangepi-sd-card-uhs-0ecb05839b0c
>
> Best regards,


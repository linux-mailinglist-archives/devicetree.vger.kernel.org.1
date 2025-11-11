Return-Path: <devicetree+bounces-237310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D57A2C4F425
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 18:36:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 755FD4E913E
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 17:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66E0D3A1CF8;
	Tue, 11 Nov 2025 17:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QJl0QKNY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CD03A1CE5
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 17:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762882595; cv=none; b=GxR7LWbDnSu7HGcptYCaQOKtdRZjNdkoti5sVPQr9SAxRJxRLoEvdLK71q9feq10io15rAWWYz+SfLaDtfpxb9xJc/vpGaXa61BF9Odu2BciRRyc1ccXRDHWf8N53JDn0h9H4gQUd26MWMnmIU61SRUe/z4A+MhEp9bhbwcjT54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762882595; c=relaxed/simple;
	bh=vOc9u0ifJOE22kl9LSphb/7K/XG0vRAottAKc6D5Sw0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cN0ukUUeMaZQ8hAzGVwz3XuX5y2WOvsNIDya49ihqIeq1KCs1LA5VUh5AxJJ38R4ZfDETo2q7CsXrNbVOyB0FFHyUN1QKCWJw4qf5084EkSOovoacyXd2VAvBWYDKGc/1chfmI4OVJVbbnJtCPshz2hjfiT7+Ycvcx/tpC0WB5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QJl0QKNY; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-7868b7b90b8so42507137b3.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 09:36:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762882591; x=1763487391; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XA6PWrvmc2qJTM9ZYge5OX+9jDQ6u156WMpzW0/z6Is=;
        b=QJl0QKNYGTTW9UrDvvcfK39Uo5UG/t5PnGOO5n7Xw1XKeSMdx9zr471drsF4yVltcx
         uBfGSMVf0Y0E5hrm/LilBw6ZypLZgo4pAKNFfkxfOSPhCuQXL7vEeAVSaL+ch853fulX
         1gysxl7FbElP39+gapU+LAUOOlvkVliAIY/JyHbxn2Cvg7pUEAoDfvTdK6obGPZTByrj
         TLhkVLZ1jSTFnRBltRz4shAZWEvI0kXfcdrY5TrNsO6L4gvicliQOEbxwEHjTizuG9g0
         s5d+akTX0A8kkEtfM544v3XT5itVHSFOrgjX/Zv/WOJzcuEQKN3RR76wR1vRGZhoGzrP
         cN6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762882591; x=1763487391;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XA6PWrvmc2qJTM9ZYge5OX+9jDQ6u156WMpzW0/z6Is=;
        b=M2vL4RFdNolBOTSAvsrVGXah30Gdcb7HVZrr4I6xJ/mmrm9sjjgacooetYoqvrBqCV
         jbCzkh8BO9JnZqE+hlwr/xtKKn/8Ryu6NYmjipqxacwXSYvJLPjCWMvy2Ybas6Dybx7I
         WD1KHPyLyFR2d49Ds/067yTysd/xyYlMcFEphiDg6AAtsKGDxfaDqtpBf4BYRGjAtcXZ
         UcczOqqxrHKE47ocGs5tvk+fI+x75nxQHbHE+cLTVP3PcO+WoXJJjAHoxlNe615zl8R8
         z6Tgg3f0yoUfv8S7xvmnDkV6NuRDo3L3iIHpG+WV2ssH+edf6U07UgIt/8l/iFx9BRn3
         OdSw==
X-Forwarded-Encrypted: i=1; AJvYcCUIresDlVp6y9rOihtDBH0ssL3s+mqWqi3WIpqfox/rurcJFKQBd5CAQF5Zn3q6Ex3DyJM8lViEv0ko@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1zIWeGZ28RE8ZHJvkaFhoAdGFQrseV51ypH11FxPhkWEhKLmb
	vsl5Gp6FxT+NsfXCqrCG/6YXhgV4w9x/D6V9ARQzFfzKQnovF4nzHx/lY6V69E8iJY1Z6GaU1XF
	XNR5hYvtUtB9PSW4zoRKBaJiHfAWyw9UNw+0kKliZyg==
X-Gm-Gg: ASbGnctbaKTiuRTHAIdw2maysQFJVlle9bscQjXCMpsFjCgA3cIYTmJGeY+nRvaGAW3
	dUAF7FYf9SwKAh96HV7s2rl44R9OtI8CUneHI00MptpcfqMrWiXk0IPfTKmamOmV6n022b0/CXJ
	GWwbeWpLLgDjoUsGpJ8vQVBPfCT/T14Qci1db+jfKCJ/lzvgA98AMjlVBysX0jPHewPY9j17g5Q
	mjpB/Zu1zpc7ygLIRN208giQl8Y6ZvqroLEVd55X6jY+jIqAVkS3K9i2fxFsQ==
X-Google-Smtp-Source: AGHT+IFNVaNbyyI9YUCZqsi828AI+F+MYdjRQ++XqTpUuZbXJWY5WboMaw0TgPaFbEee0tq1969Cmn0SJICLTOWw/II=
X-Received: by 2002:a05:690c:63c5:b0:785:cecb:4b1e with SMTP id
 00721157ae682-787d53a55c0mr103518557b3.25.1762882591012; Tue, 11 Nov 2025
 09:36:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251019115133.300-1-hehuan1@eswincomputing.com>
In-Reply-To: <20251019115133.300-1-hehuan1@eswincomputing.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 11 Nov 2025 18:35:55 +0100
X-Gm-Features: AWmQ_bnmC-WTBpmAclXDFzsTT0R9r0mpppDTN3wHQ_0AFNXKLKQGislbIpF3PPo
Message-ID: <CAPDyKFpoLNeNgKjLcYEu1W40rOOp9mgrbM0gpYmZp-NO4ckzFA@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] Add support for Eswin EIC7700 SD/eMMC controller
To: hehuan1@eswincomputing.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jszhang@kernel.org, adrian.hunter@intel.com, p.zabel@pengutronix.de, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, ningyu@eswincomputing.com, 
	linmin@eswincomputing.com, pinkesh.vaghela@einfochips.com, 
	xuxiang@eswincomputing.com, luyulin@eswincomputing.com, 
	dongxuyang@eswincomputing.com, zhangsenchuan@eswincomputing.com, 
	weishangjuan@eswincomputing.com, lizhi2@eswincomputing.com, 
	caohang@eswincomputing.com
Content-Type: text/plain; charset="UTF-8"

On Sun, 19 Oct 2025 at 13:51, <hehuan1@eswincomputing.com> wrote:
>
> From: Huan He <hehuan1@eswincomputing.com>
>
> Updates:
>
>   Changes in v5:
>   - Update snps,dwcmshc-sdhci.yaml
>     - Update description for eswin,hsp-sp-csr
>     - Fix eswin,hsp-sp-csr property structure to use nested items format
>     - Remove unnecessary '|' symbol from description field
>     - Wrap description lines to 80-chars
>   - Update sdhci-of-dwcmshc.c
>     - Remove inappropriate Reported-by and Closes tags, as the fixes are part
>       of this patch
>     - Fix error code return in eic7700_init() when syscon_node_to_regmap()
>       fails (return PTR_ERR(hsp_regmap))
>     - Remove unnecessary clock disable/enable operations when changing clock
>       rates
>     - Remove unnecessary parentheses around ~PHY_CNFG_RSTN_DEASSERT in
>       sdhci_eic7700_config_phy()
>     - Update misleading comments: change "SDIO specific" to "SD specific" in
>       tuning logic
>     - Fix multi-line comment format
>   - Link to v4: https://lore.kernel.org/all/20251011111039.533-1-hehuan1@eswincomputing.com/
>
>   Changes in v4:
>   - Update sdhci-of-dwcmshc.c
>     - Address the compile error from kernel test robot
>       - Remove duplicate implementation of dwcmshc_enable_card_clk()
>       - Add missing dwcmshc_disable_card_clk() function implementation
>   - Link to v3: https://lore.kernel.org/all/20251010093807.1579-1-hehuan1@eswincomputing.com/
>
>   Changes in v3:
>   - Update snps,dwcmshc-sdhci.yaml
>     - Delete clock-output-names, '#clock-cells' and eswin,syscrg-csr
>     - Update description for eswin,hsp-sp-csr
>     - Update drive-impedance-ohm
>     - Update the item of reset-names
>   - Update sdhci-of-dwcmshc.c
>     - Add descriptions for PHY registers
>     - Simplify clock management(remove custom clock provider, use
>       standard clk API)
>     - Replace magic numbers with GENMASK() or FIELD_PREP() macros
>     - Add comments explaining HSP stability assertion writes
>     - Adjust line wrapping to fit within 100-column
>     - Delete forward declarations by moving function definitions
>     - Rename variable is_sdio to is_sd
>     - Replace unclear macros with meaningful alternatives
>   - Link to v2: https://lore.kernel.org/all/20250912093451.125-1-hehuan1@eswincomputing.com/
>
>   Changes in v2:
>   - Delete the previous separate driver and yaml binding file
>   - Update snps,dwcmshc-sdhci.yaml to add support for Eswin EIC7700
>     - Add the new compautible string: "eswin,eic7700-dwcmshc"
>     - Add new properties: clock-output-names, '#clock-cells',
>       drive-impedance-ohm, eswin,hsp-sp-csr and eswin,syscrg-csr
>     - Add customized reset-names for EIC7700 platform
>   - Update sdhci-of-dwcmshc.c to add support for Eswin EIC7700
>     - Add a new struct eic7700_priv to hold Eswin-specific data,
>       including clock phases, register mappings, and drive
>       impedance configuration
>     - Implement EIC7700-specific sdhci_ops
>       - set_clock: support core clock configuration with phase delay
>       - reset: add PHY reset and configuration
>       - set_uhs_signaling: support HS400 DLL lock
>       - platform_execute_tuning: implement delay line tuning and phase
>         code adjustment
>     - Add initialization routine (eic7700_init)
>     - Integrate the new platform data and ops into the driver's match table
>   - Link to v1: https://lore.kernel.org/all/20250516091259.774-1-dongxuyang@eswincomputing.com/
>
> Huan He (2):
>   dt-bindings: mmc: sdhci-of-dwcmshc: Add Eswin EIC7700
>   mmc: sdhci-of-dwcmshc: Add support for Eswin EIC7700
>
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml      |  57 +-
>  drivers/mmc/host/sdhci-of-dwcmshc.c           | 502 +++++++++++++++++-
>  2 files changed, 542 insertions(+), 17 deletions(-)
>
> --
> 2.25.1
>

The v5 series applied for next, thanks!

Kind regards
Uffe


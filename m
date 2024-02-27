Return-Path: <devicetree+bounces-46456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AFA869A37
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 16:21:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 63AE628908F
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 15:21:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E51A3149DF3;
	Tue, 27 Feb 2024 15:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aE64fVmN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E1B149006
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 15:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709047188; cv=none; b=HEP+Q2ExnZKJxFxTa2dkv3nfwfKs9NdIrbUeeEnQ0Wh51xJNMuL3PI38H20ZgBzRmbJGbnBALjlrvqa6GzZhfFFEyO5swKUth1DXhACvRGOD2dOGWeFCBjhg93dk8lpCF8q2EZtdzkqdZpvXWgzVdJ/UZtTdfBSQPUZldn5eBSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709047188; c=relaxed/simple;
	bh=1eNIzp2hVyu86ifPWamS4GJF+6ehiaBwAfMIgJI98O0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tKw64lt+BwNI5Jas4od1AlsGkKkRw2XnSf3LXFCqkN34IlACQON2Kg/ESws72dAh11Eq1ii8jHmN+IlHZOsm4lrE6HjjQhNxx59LtVT0VpZeqg6TZempq9L6CqWVAD+8BjHapSo8+tY5ZrSKHwWL6UrCn7JINxayDbEFJl/aBGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aE64fVmN; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-608c40666e0so31978837b3.2
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 07:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709047185; x=1709651985; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2SQHtHx9/7D+RJHlwNQ3ZmvXdbc7JG9vTHxtAChltzg=;
        b=aE64fVmNGIjZhNMl20RnJ1Z2vNik3IIUBO1amccpbHT4pH8oEB8ulxHSOO2WoN4mLr
         ADGwefDOnlhk8Fse/HYl12Woa+Utw+/A9hfexP96r2pmuYqRf4wJSZod4y5G0SGcmT4a
         kj/+Pe0Dv6odiC7qWIGjLA9N9htLUbOZvTNxxc3xE3SCOj/jWnDWoZF7Y/iKzX9CRntn
         gCeobmLT4nrL+zeuFT1Z3Jq/Psw5IgHaw7n2C615nTNK7jVcSCS5eo08ZzjpRBx0TSBk
         DKH/pCCIeOlh6FUt8k672fmorGBEcqNlHU2bPsm01Jl5GOOd7CkCByoIXD8YQvxxV5dG
         OpVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709047185; x=1709651985;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2SQHtHx9/7D+RJHlwNQ3ZmvXdbc7JG9vTHxtAChltzg=;
        b=kvu54K7nq7N4Cp3XO3aC+izye+BAg8iV595B8hkPykNkPW3yiiLMem8i02cHMnn/kt
         1IrunTGJbgl6WTz/4o+fz9sdwL+fJUNyFZj4rO49SGQqw4C7cDaxL0KUHXWOBDu/T10A
         F+1up+z1JEH8TzNTFLUiO9GYCuBdZR56I+SE2ZTHs05dROLXkK2BsUWu/6eBoYyvOoXK
         Knc1a0wZmOLwmFs7jZAdsDrkTYt6MJhdt3yW+aIsjELrnTdxTBuq3adO0+Jdsc8079ee
         UOILFeJmIlR/ynn//9tqW1HE201WQMBN/ptn3fs1HgVyTniZPzaQbO78r5kkAaYPNNtF
         gznA==
X-Forwarded-Encrypted: i=1; AJvYcCWy3UnvF0MjZBNcSrvBFUVOgWq1VZlmWc1p39fwnH1mDXXXp3XmfWjVpgGjNPfOqkQ4f6ymrXLfN0bJ9kEVWb04MPXgUQUQHrqD4Q==
X-Gm-Message-State: AOJu0YzBqzEHW/OEqrYbw+AQzwfFv+xkx/f8waKYU8pI17r9wVgiVEr8
	cAm98v0eMtJrzC7Il+1eh7nFS6Q1vEypWDQYV7feeX4pw/8FjHDzSA/B6LeDqZ0iekJ9mOIEaZM
	zTvU5LcGKPcIddRN/h9WdLPRBNQKRIL2avYThVw==
X-Google-Smtp-Source: AGHT+IGb/gVl0DDdpeDrbG9O373vERg8t5XzgPbPswqg0c18k4mhJ043qddt56IRCGHrvdFkGSVOxmCdtVn3OngFE5w=
X-Received: by 2002:a81:5d84:0:b0:609:23fd:a3b5 with SMTP id
 r126-20020a815d84000000b0060923fda3b5mr2212466ywb.40.1709047184552; Tue, 27
 Feb 2024 07:19:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-b4-mmc-hi3798mv200-v6-0-bc41bf6a9769@outlook.com>
In-Reply-To: <20240221-b4-mmc-hi3798mv200-v6-0-bc41bf6a9769@outlook.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 27 Feb 2024 16:19:08 +0100
Message-ID: <CAPDyKFoq=MXVdUP9hqMgOYN84aog1htYeWQzd9v0vWcU-TfVdQ@mail.gmail.com>
Subject: Re: [PATCH v6 0/5] mmc: add hi3798mv200 specific extensions of DWMMC
To: forbidden405@outlook.com
Cc: Jaehoon Chung <jh80.chung@samsung.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Igor Opaniuk <igor.opaniuk@linaro.org>, 
	tianshuliang <tianshuliang@hisilicon.com>, David Yang <mmyangfl@gmail.com>, 
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org, 
	openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
	Paul Menzel <pmenzel@molgen.mpg.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 21 Feb 2024 at 13:45, Yang Xiwen via B4 Relay
<devnull+forbidden405.outlook.com@kernel.org> wrote:
>
> it's modified from hi3798cv200 driver, but quite a lot of code gets
> rewritten because of the hardware differences. Actually cv200 DWMMC core
> is called HIMCIV200 while mv200 DWMMC core is called HIMCIV300 in
> downstream.
>
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>

Please re-order the patches in the series so the changes to the DT
bindings come prior to the driver changes that use the new bindings.

Other than the above and the few comments I had on patch3, this looks
good to me.

Kind regards
Uffe


> ---
> Changes in v6:
> - apply the comments to the first patch, add their trailers
> - Link to v5: https://lore.kernel.org/r/20240220-b4-mmc-hi3798mv200-v5-0-f506c55f8e43@outlook.com
>
> Changes in v5:
> - pick the dependant patch: https://lore.kernel.org/all/20240215-mmc_phase-v1-1-f27644ee13e4@outlook.com/
>   to fix the bot build error.
> - edit the semantic meaning of hisilicon,sap-dll-reg property (Rob Herring)
>   The suggestion is from the CRG driver side:
>   https://lore.kernel.org/all/20240218205741.GA1561527-robh@kernel.org/
> - Link to v4: https://lore.kernel.org/r/20240217-b4-mmc-hi3798mv200-v4-0-0fdd9bd48532@outlook.com
>
> Changes in v4:
> - rename dw_mmc-hi3798 back to hi3798cv200 - Suggested by Krzysztof Kozlowski.
> - add r-bs to patch 1 and 2 - Reviewed by Krzysztof Kozlowski.
> - Link to v3: https://lore.kernel.org/r/20240217-b4-mmc-hi3798mv200-v3-0-f15464176947@outlook.com
>
> Changes in v3:
> - dw_mmc-hi3798: fix bot error (Rob Herring)
> - Link to v2: https://lore.kernel.org/r/20240216-b4-mmc-hi3798mv200-v2-0-010d63e6a1d5@outlook.com
>
> Changes in v2:
> - dw_mmc-hi3798mv200: use dev_err_probe() helper - Suggested by Krzysztof Kozlowski.
> - dw_mmc-hi3798mv200: add missing err=0;
> - dw_mmc-hi3798c(m)v200: remove unused MODULE_ALIAS() - Suggested by Krzysztof Kozlowski.
> - binding: rename the binding, a lot of tweaks suggested by Krzysztof Kozlowski.
> - Link to v1: https://lore.kernel.org/r/20240216-b4-mmc-hi3798mv200-v1-0-7d46db845ae6@outlook.com
>
> ---
> Yang Xiwen (5):
>       mmc: host: mmc_of_parse_clk_phase(): Pass struct device * instead of mmc_host *
>       mmc: dw_mmc-hi3798cv200: remove MODULE_ALIAS()
>       mmc: dw_mmc: add support for hi3798mv200
>       dt-bindings: mmc: dw-mshc-hi3798cv200: convert to YAML
>       dt-bindings: mmc: hisilicon,hi3798cv200-dw-mshc: add Hi3798MV200 binding
>
>  .../bindings/mmc/hi3798cv200-dw-mshc.txt           |  40 ----
>  .../mmc/hisilicon,hi3798cv200-dw-mshc.yaml         |  97 +++++++++
>  drivers/mmc/core/host.c                            |   4 +-
>  drivers/mmc/host/Kconfig                           |   9 +
>  drivers/mmc/host/Makefile                          |   1 +
>  drivers/mmc/host/dw_mmc-hi3798cv200.c              |   1 -
>  drivers/mmc/host/dw_mmc-hi3798mv200.c              | 239 +++++++++++++++++++++
>  drivers/mmc/host/sdhci-of-aspeed.c                 |   2 +-
>  include/linux/mmc/host.h                           |   2 +-
>  9 files changed, 349 insertions(+), 46 deletions(-)
> ---
> base-commit: 8d3dea210042f54b952b481838c1e7dfc4ec751d
> change-id: 20240121-b4-mmc-hi3798mv200-a5730edf122c
>
> Best regards,
> --
> Yang Xiwen <forbidden405@outlook.com>
>


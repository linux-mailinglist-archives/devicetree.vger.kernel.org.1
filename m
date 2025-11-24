Return-Path: <devicetree+bounces-241714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CF963C81577
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 16:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5A71E4E1AB0
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 15:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CB5C3148C4;
	Mon, 24 Nov 2025 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XLegxZ1p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1653148B4
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 15:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763998053; cv=none; b=ez5HE253xXQl3GQoc6IxUAS0NBsqM2uVlnCY9+PBnSplmp9oscmDS102A/KmjYPvb0OnfLlpV7aRsLceIAGEGAdbn3fDFtFAJAbuHp5+/TtuEES6fF7DtZgFBlUlTt5NGbPEj7bQfJofSZKafDLWhMPF/nRftEWLW5da036u6Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763998053; c=relaxed/simple;
	bh=2/WcYCyzEAtsd7FolRM3lgoT5Al7DMEV9/hgNWettMw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ruWZX0T9tuoPAO47sXwKvs9LWpatnCpxTq3/sgZsE/DetK2m6kM8HDkOHe5l7ttJvbx0lonDza3boxmB+ks3CbGTFiOQ4L2OWLQ00ET91CWhQ4YRwlLMcKJlwBosrOP0XDsi36TP3K+Sl/Ut6ZA9YfSLWa1EiFn+qw5zzFMenFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XLegxZ1p; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-645a13e2b17so2652048a12.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 07:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763998049; x=1764602849; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hPXbuoT8gLmsTcz1LKML8KzSKiAMgBQ+ViKr9I+j9RY=;
        b=XLegxZ1p0z74OH8VNdDos/I1ik/vc/G9VPq6GSxm41tMS56bhAuwj/hHThXdUnBcWc
         FI7U/u/U8pWKIa9IZD2RKm/W4kqGR1k9vDUYVBwFc9V/8OLVgw2zXdpTPKL/sN0oatU1
         m1YLicc8gV9UI23uWpab+2qOqXMrkbneLIcazmP+JQBXedmXfn3JJNeN7Vju46mJYpXy
         zJSKZhe6M+Gx2V/k2FmnbKgzr0rPJbc8rXh+qtmFQfBfp6/cC9RuhFuy8WFKlMnjabIh
         qxBDvyVe8+BvNNermEyzS+FBUn+OjuQDllKxfyEUYqbQOhjpqgCGrPs3QZx++1bUQ98P
         8GrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763998049; x=1764602849;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hPXbuoT8gLmsTcz1LKML8KzSKiAMgBQ+ViKr9I+j9RY=;
        b=pOZJD4rVkQN+FJQe62u9i6IoLKd6ExplmcTDZWaTajmaHwWbQ7nsUuSk7z5Sbsx5RR
         EUua5d13LOFuxim8xDaU+XeXwGvYauHS0nvT8gibYNWGQUplr1Ra091FoDWxy8Og/46z
         Nv9/WyJkNIhQLQmTjO0jW29ufovjnhQkCW0qGdiTOTI1XRtMnCT1candOQiY82cWs89/
         WJL+IzrlwPrR55BIlu/JZOPASGbOBseAV6yAIcv+dfqLBC2V8uL2WXHGDE7/l3IHXOF/
         /rU/ZkOGlHbtBMYL9B2GMkp3RZyiyvZnOF2vGWNKot4M1Ga3dj7vpNX8hDZsFqxcDIBz
         zlaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPBcdyvFAbZ7ZDM55vClgS7MGZV4K+xVt76UvhmpTzf44mJqPOxNteF6+7jObNfoq1RU9ljpAUiSlx@vger.kernel.org
X-Gm-Message-State: AOJu0YzdxZIoLuxJp+2iyzYbdsjDuKm1rcg5lE/Fb+H439nrOhGJ525U
	1bfVOLWZOjLbIC9uSSZMak2k7fQzmv+se//vkvwCbUXhwoa9qDKIJvEioqksJ55bTtgX3Zur6JP
	2T352sYu3aNR3/9ZwJOl4RFcw0KyH4CdJy1qjcPK4WrRjEbvuBQ6FKFg=
X-Gm-Gg: ASbGnctYiDUEP2bffDEMUwOgQ6fbM5hvZb+98PZUuLZyesyZtFZMfgYizIqpL1dnJas
	hmetf8GY2CsM5f4HbIt0Bkw44JZqDjUz1EdvEbsDaZliFt20VCgIno4jfuLH+U0rqWH2LRGMpAm
	FP4BR4BHgQs1EXv43bU4bQDKRuNoYV300f1G388eN27KoUVZr2O7pTzZ0yTTTbDZKBzUA/B+wES
	dFQpypPyCQ0FqL9kVJnK14//55W6++KkRcebLPYrw8NIez3a78ZzXs5RlNE0U1QSIPNwCQ9DPKj
	pLBppQ2jD3eV/r6bNDR/IKtxwC0FU9DDig8Fkx3Z
X-Google-Smtp-Source: AGHT+IF8QEkzWvf4ABwZ5746O2obgVPWntwD+fd5/y1Lc5h5RDwaFcxXgvVKNe3CbF15J7X0KGPpVRchdEIoJn8QTA8=
X-Received: by 2002:a05:6402:2552:b0:63c:3c63:75ed with SMTP id
 4fb4d7f45d1cf-64554685163mr11501766a12.22.1763998049271; Mon, 24 Nov 2025
 07:27:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251122-imx95-rproc-2025-11-20-v3-0-9ae6ee619a78@nxp.com>
In-Reply-To: <20251122-imx95-rproc-2025-11-20-v3-0-9ae6ee619a78@nxp.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 24 Nov 2025 08:27:18 -0700
X-Gm-Features: AWmQ_bmPua71P-c3C9amQu2EA6PcheE8Yz3sJ-xba42mtqxFzXSsE84-oyqxRX8
Message-ID: <CANLsYkynN2xSShAKXAcRsGTeS2YX1qhO=83xCScaaonJN=2hFA@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] remoteproc: imx_rproc: Support i.MX95
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>, 
	Daniel Baluta <daniel.baluta@nxp.com>, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Peng Fan <peng.fan@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Good morning,

Please note that due to other patchsets that need to be reviewed,
Linux Plumbers and the upcoming 2-week December holidays in the
western hemisphere, I do not foresee being able to look at this
patchset before January.

Thanks,
Mathieu

On Fri, 21 Nov 2025 at 17:58, Peng Fan (OSS) <peng.fan@oss.nxp.com> wrote:
>
> This patchset is pick up a previous patchset [1] with rebased on
> next-20251030, and some changes applied.
>  - Add runtime ops to separate cpu ops and lmm ops
>  - added more comments
>  - moved some check imx_sm_rproc_detect_mode() from imx_rproc_sm_prepare().
>
> No changes to the dt-binding patch, so R-b/A-b are kept.
> More info could be found in commit message of each patch and below.
>
> [1]https://lore.kernel.org/linux-remoteproc/20250821-imx95-rproc-1-v5-0-e93191dfac51@nxp.com/
>
> i.MX95 features a Cortex-M33 core, six Cortex-A55 cores, and
> one Cortex-M7 core. The System Control Management Interface(SCMI)
> firmware runs on the M33 core. The i.MX95 SCMI firmware named System
> Manager(SM) includes vendor extension protocols, Logical Machine
> Management(LMM) protocol and CPU protocol and etc.
>
> There are three cases for M7:
> (1) M7 in a separate Logical Machine(LM) that Linux couldn't control it.
> (2) M7 in a separate Logical Machine that Linux could control it using
>     LMM protocol
> (3) M7 runs in same Logical Machine as A55, so Linux could control it
>     using CPU protocol
>
> In patch 3, Use LMM and CPU protocol to manage M7. More info could be
> found in the patch commit log
>     Current setup relies on pre-Linux software(U-Boot) to do
> M7 TCM ECC initialization. In future, we could add the support in Linux
>
> Patchset was tested with below boot images when the patchset based on next-20251030:
> imx-boot-variant-rpmsg-imx95-19x19-lpddr5-evk-sd.bin-flash_lpboot_sm_a55 (Use LMM protocol)
> imx-boot-variant-alt-imx95-19x19-lpddr5-evk-sd.bin-flash_alt (Use CPU protocol)
> imx-boot-imx95-19x19-lpddr5-evk-sd.bin-flash_all (M7 not under A55 control)
>
> Also tested i.MX8MP/8ULP-EVK.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> Changes in v3:
> - Add R-b for patch 2,3,5
> - Patch 4:
>   Rename imx_rproc_ops_sm to imx_rproc_ops_sm_lmm.
>   Add more comments in code
>   Simplify if check in imx_rproc_sm_lmm_prepare()
>   Update commit log
>   Use dev_err for failure path
> - Link to v2: https://lore.kernel.org/linux-remoteproc/20251031-imx95-rproc-2025-10-31-v2-0-758b2e547a55@nxp.com/T/#t
>
> Changes in v2:
> - Patch 2: Change to const pointer for ops, update commit log and add R-b from Frank
> - Patch 3: New patch, introduce prepare ops
> - Patch 4: Rename imx_rproc_sm_prepare to imx_rproc_sm_lmm_prepare
>            drop IMX_RPROC_FLAGS_SM_CPU_OP and IMX_RPROC_FLAGS_SM_LMM_OP
>            Add a bool for dcfg->lmid and info->lmid check.
>            Provide separate plat ops for lmm and cpu setup.
>            Move LM permission check to a separate function.
> - Patch 5: Drop macro IMX95_M7_CPUID and IMX95_M7_LMID
> - Link to v1: https://lore.kernel.org/r/20251028-imx95-rproc-2025-10-28-v1-0-ce9e7db9edcb@nxp.com
>
> ---
> Peng Fan (5):
>       dt-bindings: remoteproc: fsl,imx-rproc: Add support for i.MX95
>       remoteproc: imx_rproc: Add runtime ops copy to support dynamic behavior
>       remoteproc: imx_rproc: Introduce prepare ops for imx_rproc_dcfg
>       remoteproc: imx_rproc: Add support for System Manager API
>       remoteproc: imx_rproc: Add support for i.MX95
>
>  .../bindings/remoteproc/fsl,imx-rproc.yaml         |   1 +
>  drivers/remoteproc/Kconfig                         |   2 +
>  drivers/remoteproc/imx_rproc.c                     | 245 +++++++++++++++++++--
>  drivers/remoteproc/imx_rproc.h                     |   4 +
>  4 files changed, 238 insertions(+), 14 deletions(-)
> ---
> base-commit: 88cbd8ac379cf5ce68b7efcfd4d1484a6871ee0b
> change-id: 20251120-imx95-rproc-2025-11-20-3b9369670d6a
>
> Best regards,
> --
> Peng Fan <peng.fan@nxp.com>
>


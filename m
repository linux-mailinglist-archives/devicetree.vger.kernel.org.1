Return-Path: <devicetree+bounces-273077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFq0Bm8Wr2nHNgIAu9opvQ
	(envelope-from <devicetree+bounces-273077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:50:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B170023ED77
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:50:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C8CAC3008C29
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 18:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A8AF3ED124;
	Mon,  9 Mar 2026 18:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BXNKEHFm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDE73ECBDB
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 18:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773082219; cv=pass; b=lElFAwwAboGYDJrjLD6sY7Qvdy/4L2CKPLg+TcohdfWxv98h/DW3MYuRN1ppk7mErfMSDHMoVbVfNoUOFMX5LCv/frfWgbCNh+ViiZftQw6dXYnCh99wRGoOilscIcu8pVtTJ/29QZWFOgNcyHrpBePoCXkgHx4ZwfI+93QUdNQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773082219; c=relaxed/simple;
	bh=fOVP/fNnR8syWhjc4RBhgcfX6wYbCNnDL9RyXcatRsg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fa9310FHCcFJYC3G3qutqs0oybNSlrjexM2vcuPrFVpd4HVlLK3o31dMZWU77xVLEHPx0fqiS5meZ+P8/FAdlFPzxxWGRtHW7l18llsZiawsP5/MzbqNo3rHqhxO6AVbkb1vs7IcqvcskqptYRyLdWABoYM4GGWATPU7AGyNBHc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BXNKEHFm; arc=pass smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-660fc3f30c1so8136775a12.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:50:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773082216; cv=none;
        d=google.com; s=arc-20240605;
        b=IpLbF6SB1mOLQTwWnE1NgYt8uTwBMEdn/VjcZ1ipu6tgO0GklhZLYmLYRz6QwdbuT/
         r69pARpaugksUFg2NUcCgC1rMsITi7oDXacpuJoD/xFt65KJYRV2tZbzLXpodgFbKg47
         vV30ax6w3XSJoEN7HAKfDSgxmb7NOWNVlRIzhPp4TqobCtAP2ju5kV9Uo6ae89lUAmhf
         s83Y1eV6l8sJYC4EW574HsbdzKqtzUDkTA/5e6Ox504QVrGxzoGVnzPKO+aC9ndSKG/W
         q4hsev+49Vm2Gc2kjmiBtX0ZORIgulloQmaFzuZrl/FJAnWkwQ97X6fSFpTCGoyDkxkt
         wqaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bowSy7YAPucdHblTmCmhKZ/mGr5O8DBdosAVAbymDGo=;
        fh=yOBohtRRUt2nuYYAhnMVKSZWeP6ErFLPitkp4Fvby+s=;
        b=h1Ny0fUJ+nfo82uChMG48n2tHFEExXUSuroHs20IHHt8uzj59AA016o3OjnmMB4IjG
         nqW1u/ut+dPxqBEuKOJck9+ELIrx1pSlY+Fl/TiG5CVoAIZ8/juw+ugsE5Lc7kOCqTiv
         UKcJZqbwgLg6mW/QHX4MfiEtDjhzWGN5BiCuPKwMzAwLyrz4wbxoTKaaUfDQb42MAONd
         Dm/IddZAzDUfeTyIM28EFO6qReqd7KL9Gu8qpCkCOE50P9zejENXP4gbHLbhLm8PlduX
         wure/o/LRgnqEA4xVFNZLQADXs4f7QD86YkPcPnOORAMB2dm/I4iIRU47BdWRPwO9Lvc
         OrtA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773082216; x=1773687016; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bowSy7YAPucdHblTmCmhKZ/mGr5O8DBdosAVAbymDGo=;
        b=BXNKEHFmvjP6TyU0cDYnSlBi112tDEtumaT6+ADNlqXKvKa32uP8lJb1TpahoIhHnr
         X+fMlI6CI9Ts56LD/Ln5WG0JC6m+5z8WJzYtABdlQi4twMb/7r+jCqoqq13zfoKRicSo
         x2hTO73qOP9+kZ9GvzWtdDq5EdmbipsHjIFjyYuPGCbhVMy+1fx2A5p0ktWGZtm/RyS2
         AEnc5NIRsBlgelELw4lZilQP/1rAtsqovLLkVVfEk4AMMnvUNIwF8TU5z5NhSPaCBywn
         bn8BfdhpWy71wIyWbeMGCSWfVte4N/mDubVmH7BATnkXaqE5GSjXd5Pl7mJeI91fpnTS
         tEBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773082216; x=1773687016;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bowSy7YAPucdHblTmCmhKZ/mGr5O8DBdosAVAbymDGo=;
        b=vLWItJirjnWJ0JC3yVUEdXXyete7G9ubkIlb5riufPBKA4iNW+w8I5iDNROxsii4m7
         S3/hXWw5mc+PoWf2k9o6mPE7zv3x0wIPNZ7+jUUdCuW1YKXfJrQpYYUmAFRFpEoFrshe
         zB6+vq3Emo2awR7MwtzX8iu5ynNaZ+pN+1n9W81fnrkTxuymr9ZNNwCprMn15Cc9tSQp
         fx3WwaQgvSyj7yPaitu8fWUKH+XsapVFI7qFw2E9N3huCcXu7ODTnHyOqcj6n3OTKw0E
         mmKEOhg1luN3pR44LS5q/wDBnH5nbVo/j0/fFeULrWthJYB5r15z4UfAQVTN2yY+dR/9
         IiYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVexR92+9tF0eoTjnLiv6WS/ziPt2XChh9PIEi81kbd1+J8jBoWTiMe4t84mzN1kkgnjPYPQUeVPI1C@vger.kernel.org
X-Gm-Message-State: AOJu0YyYbqt+ujNacxd17g4XT/gpElsEFd/7MfvBcTNTBQKKFTEY8mI+
	PUSsnNh0sktHuCaLI5oxfCtcCuL4dLehc+rTT69hCq8plrGKYbe8s2fIljrwOE+dV2RGpSXdN8c
	Z/he4zIFSh2KICCMvQGnFmrmKc/NXiQU=
X-Gm-Gg: ATEYQzzWBqGLaud94+RtqQJdatRxUKugsKBq1BejnD4F78tGtHvkcnuRM1rZLVU47qh
	zls18mdYDo1z+zzku2DYqmwlFAGoPDK5vHMkebyVIQoHebV1Wx0U6vGV4yWSbtUjhtXnhdxp4Og
	3M9hHO3JoivNTJXoHrCzqDESA3YddNZmoDSsyDhl3mydXTLoOjBdRBcOnrRhAJYvI6IJilFFxqF
	wbACihPlsORg6Z3KWo9fvvUEvVQhmHEqSDrCUf+Awa6zV+gSGwlEaROPOKys8dKN1AGBY2ydVZ+
	3vIOyg==
X-Received: by 2002:a17:907:6ea6:b0:b93:c5a9:a5e9 with SMTP id
 a640c23a62f3a-b942db854e8mr585699366b.4.1773082216119; Mon, 09 Mar 2026
 11:50:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
In-Reply-To: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 10 Mar 2026 00:19:58 +0530
X-Gm-Features: AaiRm51K4xV8rPWNxLGo_P3SgtaWeN6UkUVkJtFc0B8zhHQGEqIMu2rC6apEjTo
Message-ID: <CANAwSgRcatU3BQrsd11kA-nj_xos_Oa_47p0P_K+RYrB6QtfXA@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] riscv: spacemit: enable SD card support with UHS
 modes for OrangePi RV2
To: Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>, 
	Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: B170023ED77
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273077-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linuxamoon@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mail.gmail.com:mid,infradead.org:url,infradead.org:email]
X-Rspamd-Action: no action

Hi Iker,

On Mon, 9 Mar 2026 at 17:11, Iker Pedrosa <ikerpedrosam@gmail.com> wrote:
>
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
>
> Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> ---
> Changes in v2:
> - Removed custom AIB voltage switching code per maintainer feedback. The
>   existing pinctrl driver already handles AIB voltage switching
>   automatically via power-source property changes during UHS mode
>   transitions. This eliminates code duplication.
> - Squashed regulator and pinctrl commits into single voltage switching
>   implementation.
> - Moved voltage switching callback from dynamic probe assignment to
>   static sdhci_ops declaration. Removed redundant SDHCI core call since
>   the framework handles standard voltage switching automatically.
> - Made clock override (SDHC_OVRRD_CLK_OEN | SDHC_FORCE_CLK_ON)
>   conditional for SD/SDIO cards only. This follows vendor driver pattern
>   of differentiating SD and eMMC card handling.
> - Include no-mmc property for SD card.
> - Link to v1: https://lore.kernel.org/r/20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com
>

Thanks. Please include my tested with the SpacemiT Banna F3

Tested-by: Anand Moon <linux.amoon@gmail.com>

Thanks
-Anand

> ---
> Iker Pedrosa (7):
>       mmc: sdhci-of-k1: enable essential clock infrastructure for SD operation
>       mmc: sdhci-of-k1: add regulator and pinctrl voltage switching support
>       mmc: sdhci-of-k1: add SDR tuning infrastructure
>       mmc: sdhci-of-k1: add comprehensive SDR tuning support
>       riscv: dts: spacemit: k1: add SD card controller and pinctrl support
>       riscv: dts: spacemit: k1-orangepi-rv2: add PMIC and power infrastructure
>       riscv: dts: spacemit: k1-orangepi-rv2: add SD card support with UHS modes
>
>  arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts |  67 ++++++
>  arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi     |  40 ++++
>  arch/riscv/boot/dts/spacemit/k1.dtsi             |  13 ++
>  drivers/mmc/host/sdhci-of-k1.c                   | 252 +++++++++++++++++++++++
>  4 files changed, 372 insertions(+)
> ---
> base-commit: ec1fb4e55df47ed043ab2ccc6787e39b9d67e49b
> change-id: 20260226-orangepi-sd-card-uhs-0ecb05839b0c
>
> Best regards,
> --
> Iker Pedrosa <ikerpedrosam@gmail.com>
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


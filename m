Return-Path: <devicetree+bounces-246985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6DDCC2A80
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:21:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8958731CF768
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9984B35293B;
	Tue, 16 Dec 2025 11:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dgtd9fOE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1831D352937
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 11:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765885766; cv=none; b=GrflRZtMXk3L6oFMdVnPfIMT8ZYCZu0dgOLpAanZ727Jpj/gi5zggoja53G4aPq4Oo9tne41Dwuns8cTM74WIcDIcELIniQG0QFEdPhUjmy7ATpL8cjQfFMBz8P8iXulciQV9xfHFlDdGFsk0oBWE0Yp9f0gwYIdcxxDRP+8EUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765885766; c=relaxed/simple;
	bh=P3r5nPJCwq57O4gAEF8RXUKtm9lIBx2Lzztq/sylt38=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Fn16MPWxwMvQ4bFZct3bZDpYM3vCci25UgdchmJAQsyDesy+/gbd1yWRB68+t4hbhSASxfRkyBvT7Pb4jHw/81NuJbp6a3oTH0UeKRLbUIWpQngBe/e7DNab3SJuMPGjYOAo39c2DvvM9AD4DMILsAnq/aiXzG0pcIr/AP9rozs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dgtd9fOE; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7e1651ae0d5so3658069b3a.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 03:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765885764; x=1766490564; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AHWMHf/Niwek5OLfXdmD1/NkgvAHjqsNRHIl2ImUeLk=;
        b=Dgtd9fOEnyuvvfu34Ax/bMvZOkxkmM/850v4lVMVLGEhF2ITsgg89/3KEnwNNQMgcA
         EOFjYYeNoaOpkrbCgsx5oi+ytLKkF9ysQaRBTOL2EnPR6uYHL8UbpHAHK0PzILyAUzSz
         5XtAvkF01aI1hYIHyPB5H3amu16hyDJAHvv3LRIYjxnT53TLNeXtHmzi4WRrmIi/Pto1
         X8+Ih2YJxm8wrKLRkgorT+ODeOnmXjePxtDNDamBA5oYCLzPo9WFYd1TG/yBPRgdVxN/
         LDW8RJ45MoyLV8oT9mxFoF/hec5FagdZdI8TBY/CSHzK07tvKphF2lR1QgLYgbZCR2Sh
         TRDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765885764; x=1766490564;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AHWMHf/Niwek5OLfXdmD1/NkgvAHjqsNRHIl2ImUeLk=;
        b=lhab0shSHcWFFjg6Z6z+CcAwfaHzSneBaftr56oU3/KX7bywImnUJqMyKKwgn5Hd57
         pmvifYPJEUECDGMfFb9lh5D5Iy2oxLjsZ6ShYHTu6d8faKZFnxXiv18ylvBlCZ7FEa31
         +cB2S5Cjarf2BYgODAQHoehHboZVNJ0ViiaISNi8sk2/Yxc3SsP+u+Fdj6ccAZY/4TRH
         mp3VuKAebmLO8eJuRx2VEWI8I1R/XZIjZpea13bs1jASbCAlSKTTW4ixR0p5y6wfB3Hn
         XmTBkymr+aEj2DGJfp5lvyTEr1esDvjLMG190fdcFs2yoy3sCX4iHx6kst8rBWP4NISV
         Gq1g==
X-Forwarded-Encrypted: i=1; AJvYcCUbf09S+miA2KXKK6RNrCgEZPyFVtxAM/MvbTjYqOuuj42LPJLoLNpwJO7mu4de1+FFVGku0zabQNvm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2rxC9VF/008FpUBO3y5fhiNCS8s8mIl3RLVxz4PTtdhK1YCBR
	UX95mdLwNtOwEmbZ9wAx1i1wapsNvPE+LouWrZwhcI/SZ/94fg/SbMq8HNb0idaVi5E5FLtFSDi
	8DDiaAcAitVHDRhMEYG+TFPw5GqG4KlE=
X-Gm-Gg: AY/fxX4O5HPzCmZMFnoTS+5EjSV6RRvT1Jc96PDiTRG6eQGAdLTYi3Mebv9BZgdN56Q
	Awrhw2qWxXA+fe01Oqcgd7mqH/JLxd8uQ6N+1DfVGZIJcrskvFXs//LdFA4LnwNZ+piuqAZjXT/
	f2OTV1H52F/coj18P+QOEQCdjr0fculDEo+x/xpWmXOrzvgS+sMCPd7lfPXIwxyXWo9V+IPNUyN
	xuYBvYKdFc/y73NAdnnVPiY8SpSF2X0YTguJH71ht/+OMfAM2BELUAPStaYzYjtGsoDXnKv9WKh
	7xIHTVWpIc3n7xi4l0LVWNWba9jwynuRTRdfNdzg7Q/VAkcP9EfWSka6SakGGtTGeOaVvlS1bw+
	guCPVoAXOrw==
X-Google-Smtp-Source: AGHT+IHPEep5dtYauknDb8YyMm1kDWolPZTnV2HvftVKII1DWWjGIN4YN/9xsVgqVLYIfLemujNO/0Bup29BPcFhFqI=
X-Received: by 2002:a05:701b:2415:b0:119:e56b:98a4 with SMTP id
 a92af1059eb24-11f349c583amr8528888c88.11.1765885764035; Tue, 16 Dec 2025
 03:49:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251216-imx95-rproc-2025-12-15-v4-0-bf1064ea8daf@nxp.com> <20251216-imx95-rproc-2025-12-15-v4-4-bf1064ea8daf@nxp.com>
In-Reply-To: <20251216-imx95-rproc-2025-12-15-v4-4-bf1064ea8daf@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 16 Dec 2025 13:51:55 +0200
X-Gm-Features: AQt7F2r5R94-pfKGDYvFfrkyngEDJyIru0ByBqDzhFtMH5nZZaARnweMqygnu0M
Message-ID: <CAEnQRZBS7zzc9AmTymCGVKwExeZ-JNFiG9MamWOZmk=gXdBY7w@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] remoteproc: imx_rproc: Add support for System
 Manager API
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>, 
	Daniel Baluta <daniel.baluta@nxp.com>, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 16, 2025 at 3:53=E2=80=AFAM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> i.MX95 features a Cortex-M33 core, six Cortex-A55 cores, and
> one Cortex-M7 core. The System Control Management Interface(SCMI)
> firmware runs on the M33 core. The i.MX95 SCMI firmware named System
> Manager(SM) includes vendor extension protocols, Logical Machine
> Management(LMM) protocol and CPU protocol and etc.
>
> Depending on SM configuration, M7 can be used as follows:
>  (1) M7 in a separate Logical Machine (LM) from A55 cores, that Linux
>      can't control
>  (2) M7 in a separate LM from A55 cores that Linux can control using LMM
>      protocol.
>  (3) M7 runs in same Logical Machine as A55 cores, so Linux can control i=
t
>      using CPU protocol
>
> So extend the driver to using LMM and CPU protocol to manage the M7 core.
>  - Compare linux LM ID(got using scmi_imx_lmm_info) and M7 LM ID(the ID
>    is fixed as 1 in SM firmware if M7 is in a separate LM),
>    if Linux LM ID equals M7 LM ID(linux and M7 in same LM), use CPU
>    protocol to start/stop. Otherwise, use LMM protocol to start/stop.
>    Whether using CPU or LMM protocol to start/stop, the M7 status
>    detection could use CPU protocol to detect started or not. So
>    in imx_rproc_detect_mode, use scmi_imx_cpu_started to check the
>    status of M7.
>  - For above case (1) and (2), Use SCMI_IMX_LMM_POWER_ON to detect whethe=
r
>    the M7 LM is under control of A55 LM.
>  - For above case , after using SCMI_IMX_LMM_POWER_ON to check
>    permission, SCMI_IMX_LMM_SHUTDOWN API should be called to shutdown
>    the M7 LM to save power only when M7 LM is going to be started by
>    remoteproc framework. Otherwise bypass SCMI_IMX_LMM_SHUTDOWN API if
>    M7 LM is started before booting Linux.
>
> Current setup relies on pre-Linux software(U-Boot) to do M7 TCM ECC
> initialization. In future, we could add the support in Linux to decouple
> U-Boot and Linux.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>


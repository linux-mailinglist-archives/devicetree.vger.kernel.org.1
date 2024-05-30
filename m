Return-Path: <devicetree+bounces-70895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCCD8D4E6D
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 16:52:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A00431F2273C
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 14:52:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F2B017D88E;
	Thu, 30 May 2024 14:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="j9V9qBoO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B186186E38
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 14:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717080759; cv=none; b=ANUsSr4/jdvrppVbLyZzwqnKmjyH7rDlgqMPhn8GzjntdkBtgD4dNiB0jGIpkEi3Un6lZq9pDlwebeFWqITE2bNav7tCTMIwGOT2kSRNVX6hdYPW9nEIUtOAgI/ufFPFG7/Jh7kxt4mRdsUQzEPCMqcJDciPLaDEPNQ0M6XgT0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717080759; c=relaxed/simple;
	bh=qCr2fwCZCC0sZAtQMrr7v5keGCDnI6ZBVcUAOfpdlSo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F3/XLKHHvYVx/KhKIk7P03QGnjIkC1HoCNOyMwvc16MdVHLNHgykFyyTveinmnKEcW/wIr8weUSGzWS7uhihFmCUOLIKpXxZ/lF/UYv4JzFrFr9EWDxdy763d247JzSea+0Pyms1n1vaMADlDB9aHy/7K6xLekLRlMgcoKV5x8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=j9V9qBoO; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2e96f298fbdso10181681fa.1
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 07:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1717080755; x=1717685555; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8xju9nW5aEF63Pcv0lMb3cbBthG2ZJ9khtPEmPPr3uI=;
        b=j9V9qBoORQqeS3GKArPqvCwjBurBaovpjLhdWtece1aT1WlBuhmztHTGSAemZaMT2X
         F8mWXa8evU4eSXTREfPIXJJsluCy14HXoVNVZncmRzX2Km0KOM0EJ8SZ1rXOWYUsUJhX
         d9ErEkms/QWb3z9Z+ddqFeJHIgn1a5+U1ljG1fInmJaQCOP/ZZV7bE5hosRmZoJoJlWx
         ZYanWnoF0KN62fT6m7pz4l+LEeI6ca5Gsb4ykrfLJ78LLITxvCUtOhJOPU/Ihb2p2fpI
         Qq745Jl79/LpPpg7jC6a/U8XhXJU/+HX7BSV9lg9jY5rPwJ4LIeco8MGHnO7L9LYKnH0
         uipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717080755; x=1717685555;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8xju9nW5aEF63Pcv0lMb3cbBthG2ZJ9khtPEmPPr3uI=;
        b=r5zlnGIZRIVpIOsVSb3hg9MkJKJtL++qlL/vCeHXr0wu7LCycl63eDIAFxOIpmUkSP
         yDRak1LKA968V8s26+fitdaYROk8fvaitExdiQIf/VEBwmbsuqF0IW60Yc6JPkIqQj4D
         Evw6i+xU3UuRtvZJhW7t/q1NeTyl7rCAG3RRLqPMjy0Yk27WEoFZDeWNQNO2ocTOn+fj
         20LIZ/fTEswX9IscpznflqvaYUlz98XsTSAgtAS0/AWmdeSxfYsir0/WRxL0J+sCyRad
         IHe/PsABYE7P2iczrqmz4hxSsgxaBxf/AgijWO2jsdDoikR92IqbWs4cocxBNrMsGaZT
         GNfA==
X-Forwarded-Encrypted: i=1; AJvYcCUPDOCCWdZgKQVWV+CjCPYezNAFXaf9fJyX4Q3uw1v0nTz4E7Tinaw9eUdzKaKKHeHZLdJB2FQ1cAEB+XPkdzDn3Y72FHAD9QV/yg==
X-Gm-Message-State: AOJu0YypgoA/9mTYt1r4BQC2nYfsrtoCvX29nRab/6biFxoUpKcfppot
	ESereCm8uqFafJXHkhaBy3IjuiB06h3Vh/uNe41RvxalFWnIoL2EhwSNYReq4HH+aUntfDysaOM
	7NMaNtYzOayGX2FPu5dpbqWJkmmw9C8dFso/gHw==
X-Google-Smtp-Source: AGHT+IHf8TmrUvKHY3tZVeP9T/NeHo/+xLt+IhXkdMwRroWcQhly/ewRsUPfk31Cc9BSWLvx0W2D6Ia7qNisp/t3DcU=
X-Received: by 2002:a05:651c:224:b0:2ea:8e94:a2f4 with SMTP id
 38308e7fff4ca-2ea8e94a54emr2778791fa.21.1717080755423; Thu, 30 May 2024
 07:52:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240529-dt-interrupt-map-fix-v2-0-ef86dc5bcd2a@kernel.org>
In-Reply-To: <20240529-dt-interrupt-map-fix-v2-0-ef86dc5bcd2a@kernel.org>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 30 May 2024 20:22:23 +0530
Message-ID: <CAK9=C2WvmXujHT-PpvhcHgg1Tck3k_K_BmLVp-=1Z71Y385Cbw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] of: Fix interrupt-map for fw_devlink
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 30, 2024 at 1:29=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org>=
 wrote:
>
> The duplicated parsing continued to bother me, so I've refactored things
> to avoid that for parsing the interrupt parent and args in the
> interrupt-map.
>
> It passes testing with unittests on QEMU virt platform, but I don't
> think that catches the problematic cases. So please test.
>
> v1: https://lore.kernel.org/all/20240528164132.2451685-1-maz@kernel.org/
>  - Refactor existing interrupt-map parsing code and use it for
>    fw_devlink
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> Marc Zyngier (1):
>       of: property: Fix fw_devlink handling of interrupt-map
>
> Rob Herring (Arm) (1):
>       of/irq: Factor out parsing of interrupt-map parent phandle+args fro=
m of_irq_parse_raw()
>
>  drivers/of/irq.c        | 127 +++++++++++++++++++++++++++++-------------=
------
>  drivers/of/of_private.h |   3 ++
>  drivers/of/property.c   |  30 ++++--------
>  3 files changed, 89 insertions(+), 71 deletions(-)
> ---
> base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
> change-id: 20240529-dt-interrupt-map-fix-a37b9aff5ca0
>
> Best regards,
> --
> Rob Herring (Arm) <robh@kernel.org>
>

Works well for RISC-V, Thanks!

Tested-by: Anup Patel <apatel@ventanamicro.com>

Regards,
Anup


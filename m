Return-Path: <devicetree+bounces-227255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE5EBDFF4A
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:54:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E4CEB4E74C6
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 17:54:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C45FA3002D3;
	Wed, 15 Oct 2025 17:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tomeuvizoso-net.20230601.gappssmtp.com header.i=@tomeuvizoso-net.20230601.gappssmtp.com header.b="LW1Jmajy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90091547EE
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 17:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760550851; cv=none; b=CDdFAqzLwHDBEaT0e4BiLjS+HPvI5+Lv9sEOF5QDVIM4J/K5R6TI812hsfPY98hM+v4jmY45sQMDsi4OKboZ2vr2SNYTeayUwxhmc+JfcCyBsHfwqU8PurGtxFiQjX+t0vSNFylWzJiKum4AtswLeK9+WAOjvp1k1SRzuK3NeRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760550851; c=relaxed/simple;
	bh=RE3vtWpP0QvpNGKTL3HABS89YCYt7BAbRul6Y11WGjc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b/XObEYxnQ9O1n3+A+Fpj0E714sxvhoFeOa9o/WNhF45lfpivFxScTYAtItX7/OP/hfCDSRk7yN5AXCOwt7GlrxhpSPI2F/IEiduO7Esjz0vy9UFBH3Nnb0SRHlsByu7Ih+NVQQ8ey0vrL+gwVczggcA+y8k0s8CkmGFRtpJlTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net; spf=pass smtp.mailfrom=tomeuvizoso.net; dkim=pass (2048-bit key) header.d=tomeuvizoso-net.20230601.gappssmtp.com header.i=@tomeuvizoso-net.20230601.gappssmtp.com header.b=LW1Jmajy; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tomeuvizoso.net
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-71d60157747so70072677b3.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1760550849; x=1761155649; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=20TjVxuYLuxrPBc8Usx9S2ZXr8G1tQbSoOkIE3uAZcs=;
        b=LW1JmajyVghsVnnu37tt+DraH5dsYG9w/K6RunEWtsjjHuDWEZTEgU4TQ4TUrg0x5M
         EUO3GXKnHipiXTe4lbZkBZFFtZ+k4h+1CqrK6A1y1qlCwLTjljW11egSEq6dz+qnb8MP
         GzHi+75bcGdd1mpDWFmko6MtdEFHkOYHKIYH9Fdnk8D/HsNWg2fSe7ust5FGEszY0LVV
         BaPPdwttGdEiNTI5aH31ZZlEFYzUaexOG4Jxu1i38+eQoqfuZc+x1GrIL9bxcW2LK4uu
         3VASLl/weCxjUwm82qSFuszQmoyzSBMBNt/eRHwiHCU6eY/OqExkgUuFVRlqqIPU2nfL
         bv5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760550849; x=1761155649;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=20TjVxuYLuxrPBc8Usx9S2ZXr8G1tQbSoOkIE3uAZcs=;
        b=TNa7hilykzY4cuxwb+IBMm4vwOn7q34oFvXtrvJYhSj5YdxbcxkkFbbmQeiiTRmPIL
         mgHJ1F+XI/KogLmGZwkFggXzwl53Fr9SGmRNiidSQyjyCFg8OJw7Cmb24aZq5U/0D/+t
         x1WasubCVYRcoVoasQPzKYpGrSmdGxeFhEtISxCd9NQoHsK1KQoyswiJ3F/DPLaUtHK0
         PFBrQ56m3T1lDpc+J96b8Qn5rRBpW/ebbnTIf/znkxf13mL2Ft1i8cIw+BMDgyrifR91
         NK1h/dE0i05RyqXul76sSyZ4AZanPfyLi9wiOkQC4ATyDJpZHOHpRtJ2JCCbPGNaQhWn
         zl7w==
X-Forwarded-Encrypted: i=1; AJvYcCVHpGO94QS2TVgmVFDXMPj21HPt6LgMOoCCLbCXtvZyNynecgsBiFGzGCRxSls78QXA4/VdKw21C3Ux@vger.kernel.org
X-Gm-Message-State: AOJu0YxzDo7uFAq98BRPllraAKsUepPLRAQ+JOmWMoGl/bptGHgI1xa0
	Ci3ZQaZEjgdio7i00fii/lJd3P5LYg4XmIpxAO0E0yV6uXMcohSO1sEKDGjfPDJ6Wq3Oyk8BP8h
	yRbRyOz1uPg==
X-Gm-Gg: ASbGncs36O6+NF7DJJcZpf5xsE81bVrZmU112bPX13RhfWQH2KtyrEXWjWltxDEXu/9
	sW7vS/ukGlP8zhqXzqGIxE3N/es+9aU9Zz8IZvKE9zVta/FxrvRUicGiXn9pMBKP0MNT0tu1qUI
	u/EE4h7x3/JWMzFf3goc/8LygpQn3U0jQtI4385BcjWGtoTaNJum7EIuQD9h4pTzmhYcEmK9cuF
	lrMyi2iuwTceLF5EctTXjzX6WokzroDHenB5+1WO8xaaZptzyrYPEukbSwjf+NuoLDMJ0xX1AfM
	w4yCfP9qc+peJjmpmKUPmFvEar2BB6J/QIJsyKDXpFZOApmiPK+W3JgnBjqYHP3YhNkhylY5lhT
	dmo7ezX1paJ4i7greTlxHVxNG4c6C+haDLLy/qcAmCr3PrtX7GHxy2mokp5yFzLWMcIOPYnNOvL
	2o3x5SjPfQcbFcqGZmsMM=
X-Google-Smtp-Source: AGHT+IEs30JdsgST6RpmzmC0Xrb9uOIqLukyMuqxd97hQ9AgTBgphuoUpxNu7FL7flr6/qRs+nQgzA==
X-Received: by 2002:a05:690e:1586:20b0:63c:f332:b948 with SMTP id 956f58d0204a3-63cf332bb0emr12878278d50.42.1760550848570;
        Wed, 15 Oct 2025 10:54:08 -0700 (PDT)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com. [209.85.128.178])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-63cec049c1bsm4729287d50.16.2025.10.15.10.54.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 10:54:08 -0700 (PDT)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-71d60157747so70071657b3.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:54:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUDSm1WpR/Ay1UTlhzxK+FaGiLbxAUG5Utk4s9kOvvCKRxqyq/pi0WnvOdSSkKhFcmmycFFnNcywwGU@vger.kernel.org
X-Received: by 2002:a53:d4d1:0:b0:636:1ebd:5692 with SMTP id
 956f58d0204a3-63ccb8e1736mr19417699d50.32.1760550843677; Wed, 15 Oct 2025
 10:54:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015-ethos-v4-0-81025a3dcbf3@kernel.org>
In-Reply-To: <20251015-ethos-v4-0-81025a3dcbf3@kernel.org>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 15 Oct 2025 19:53:51 +0200
X-Gmail-Original-Message-ID: <CAAObsKCcKsejFju6dxTn6AQ6MdidsxXbfxTxcUXGo_8KabD4GA@mail.gmail.com>
X-Gm-Features: AS18NWATPatMxMDqAM9YqlMk9ayn38myAnVms0LmmVnqJLfravwxby5QSFqTV7A
Message-ID: <CAAObsKCcKsejFju6dxTn6AQ6MdidsxXbfxTxcUXGo_8KabD4GA@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] accel: Add Arm Ethos-U NPU
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, 
	Daniel Stone <daniel@fooishbar.org>, Frank Li <Frank.li@nxp.com>, 
	Sui Jingfeng <sui.jingfeng@linux.dev>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 15, 2025 at 7:47=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:
>
> The Arm Ethos-U65/85 NPUs are designed for edge AI inference
> applications[0].
>
> The driver works with Mesa Teflon. A merge request for Ethos support is
> here[1]. The UAPI should also be compatible with the downstream (open
> source) driver stack[2] and Vela compiler though that has not been
> implemented.
>
> Testing so far has been on i.MX93 boards with Ethos-U65 and a FVP model
> with Ethos-U85. More work is needed in mesa for handling U85 command
> stream differences, but that doesn't affect the UABI.
>
> A git tree is here[3].
>
> Rob
>
> [0] https://www.arm.com/products/silicon-ip-cpu?families=3Dethos%20npus
> [1] https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/36699/
> [2] https://gitlab.arm.com/artificial-intelligence/ethos-u/
> [3] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git ethos-v4
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

For the series:

Acked-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>

Regards,

Tomeu


> ---
> Changes in v4:
> - Use bulk clk API
> - Various whitespace fixes mostly due to ethos->ethosu rename
> - Drop error check on dma_set_mask_and_coherent()
> - Drop unnecessary pm_runtime_mark_last_busy() call
> - Move variable declarations out of switch (a riscv/clang build failure)
> - Use lowercase hex in all defines
> - Drop unused ethosu_device.coherent member
> - Add comments on all locks
> - Link to v3: https://lore.kernel.org/r/20250926-ethos-v3-0-6bd24373e4f5@=
kernel.org
>
> Changes in v3:
> - Rework and improve job submit validation
> - Rename ethos to ethosu. There was an Ethos-Nxx that's unrelated.
> - Add missing init for sched_lock mutex
> - Drop some prints to debug level
> - Fix i.MX93 SRAM accesses (AXI config)
> - Add U85 AXI configuration and test on FVP with U85
> - Print the current cmd value on timeout
> - Link to v2: https://lore.kernel.org/r/20250811-ethos-v2-0-a219fc52a95b@=
kernel.org
>
> Changes in v2:
> - Rebase on v6.17-rc1 adapting to scheduler changes
> - scheduler: Drop the reset workqueue. According to the scheduler docs,
>   we don't need it since we have a single h/w queue.
> - scheduler: Rework the timeout handling to continue running if we are
>   making progress. Fixes timeouts on larger jobs.
> - Reset the NPU on resume so it's in a known state
> - Add error handling on clk_get() calls
> - Fix drm_mm splat on module unload. We were missing a put on the
>   cmdstream BO in the scheduler clean-up.
> - Fix 0-day report needing explicit bitfield.h include
> - Link to v1: https://lore.kernel.org/r/20250722-ethos-v1-0-cc1c5a0cbbfb@=
kernel.org
>
> ---
> Rob Herring (Arm) (2):
>       dt-bindings: npu: Add Arm Ethos-U65/U85
>       accel: Add Arm Ethos-U NPU driver
>
>  .../devicetree/bindings/npu/arm,ethos.yaml         |  79 +++
>  MAINTAINERS                                        |   9 +
>  drivers/accel/Kconfig                              |   1 +
>  drivers/accel/Makefile                             |   1 +
>  drivers/accel/ethosu/Kconfig                       |  10 +
>  drivers/accel/ethosu/Makefile                      |   4 +
>  drivers/accel/ethosu/ethosu_device.h               | 190 ++++++
>  drivers/accel/ethosu/ethosu_drv.c                  | 418 ++++++++++++
>  drivers/accel/ethosu/ethosu_drv.h                  |  15 +
>  drivers/accel/ethosu/ethosu_gem.c                  | 710 +++++++++++++++=
++++++
>  drivers/accel/ethosu/ethosu_gem.h                  |  46 ++
>  drivers/accel/ethosu/ethosu_job.c                  | 539 +++++++++++++++=
+
>  drivers/accel/ethosu/ethosu_job.h                  |  41 ++
>  include/uapi/drm/ethosu_accel.h                    | 261 ++++++++
>  14 files changed, 2324 insertions(+)
> ---
> base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
> change-id: 20250715-ethos-3fdd39ef6f19
>
> Best regards,
> --
> Rob Herring (Arm) <robh@kernel.org>
>


Return-Path: <devicetree+bounces-87966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C521493BB31
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 05:23:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F494B22208
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 03:23:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E19B17565;
	Thu, 25 Jul 2024 03:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="Uxqy9V8a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1A9E101F2
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 03:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721877811; cv=none; b=ix0RK7QRMszTQdxteejV6S8le+ETIG5Z5kBC2NL2F5YDKS83YKG9JnZLtdfYYDCGkzIAe0+Yt8YRzD91idglKg/3jVk9GJ3RTi7L9j5C9FwtdP6lrOtvij2GN0yE55MMuigb/jokSYKqJVf596VfzL6A76bnQ5af3ky636UtC8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721877811; c=relaxed/simple;
	bh=ng3MSPKtyG9OgXEeYkmn4fozuvxnAGYk3aAAFBmLre8=;
	h=Date:Subject:In-Reply-To:CC:From:To:Message-ID:Mime-Version:
	 Content-Type; b=LtnC4UTDM+PZgDtP9/zN2bOr2b18aK3Uyvz76Ajorw5pAasMQMp21D9kNbtNYPhj5/9u5ACGVMhFFK9ulXCJhRg+++mKCyI7eBURf/M5MuRN7y4jvpe7iFg3WhIgT3+VM/kuEq2ObtNgEQqrWh/jHudLJsO0cpFclhpTNZokzSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com; spf=pass smtp.mailfrom=dabbelt.com; dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b=Uxqy9V8a; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dabbelt.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1fdd6d81812so3603855ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 20:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1721877808; x=1722482608; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xTE8k4Xtav3leE527QlrLLpsREQH2LrAwQwbgSK195c=;
        b=Uxqy9V8aLqywuAgM8c43hfJpe/QjEo7atB0AU+tZ/Du14ff0owTNQcZIEtonxHzXP+
         B6NMmxiiFeGswXbijT//BiGoW3wpYfVQ3eIeo/Nlv4b+4vCDa1YRCorqvEo3mtav5ihV
         m9vMwONLD9RV9AAxFKrXBzPJz6RbvVUmfVz7w9tUKz/ty8sd5QQx6NczN1eQoXKrNwFz
         cKjImrndafFw+J9rILhYWezK2SY5oh9QRb8ALARX4zX2i07/QrXlNar1WVj6C8xGjFML
         pi8U1EddjPAbme6eV0f0EYpAheSJ8/xcnVV+rw8T+qQoZ4lDYBvJjkluZVOIEem+8UYJ
         o4FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721877808; x=1722482608;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xTE8k4Xtav3leE527QlrLLpsREQH2LrAwQwbgSK195c=;
        b=hhIGv+6fxBXFujM5afSSoL/bXER9B+axH7guvn2mQOXFwPLy9nofwOB7I5p7EEIy7f
         SjkYWxsvuKdMbNaIKDuFCtp3tPMILJrmmSfn84sPKR/Gi6Jd7+v0aEyazMbhp/PuRwbx
         V3hUas4k+DobK7Ndixn/xeHALaZ1ZQcee5Go8N9NtDUNup6Mq56r7qCVY05S+xEeZQlg
         fbOabP7m9Axm3AV7XIn1Rhsrde9Wn1Jlrk8u/LrFx66IgNFXcEY+2zLnRCTSiJ5bMM9X
         QXN+HmhQ/dV4L/gwJpot/7NoR2bmLYSdLkr+virLyI5iDBnxKs/ZOApXCu471aB9Bzli
         lcVg==
X-Forwarded-Encrypted: i=1; AJvYcCXrloRxKTG73FxqbmRxtpGBwtWDb8TXljs6njqRCd+3nkL62LRq6gdaYDvofTUeMtPYXSIQ6DvRYHlKDKLeP24N1X7hQIlz+T7TCw==
X-Gm-Message-State: AOJu0Ywlcwf6si0WjVINRxr/HQTSvy9Cs986uuXdPtjveKfbcxKddpYo
	zH+3PNF7g4qFRwDCL5eQ6D9itmZynHm07IP5QyWvPAfgsKxlzID3YqDzyYjNeC8=
X-Google-Smtp-Source: AGHT+IGKdmVEgqPrldLhr2mxPHSbU8xFGw3cUdaIe+udwlpFod7DeQVhk2V4YNFDZRSHwo5qxGrUnQ==
X-Received: by 2002:a17:902:f68d:b0:1fb:8e98:4452 with SMTP id d9443c01a7336-1fed9262e28mr7130605ad.15.1721877807944;
        Wed, 24 Jul 2024 20:23:27 -0700 (PDT)
Received: from localhost ([192.184.165.199])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7ee5734sm3134035ad.135.2024.07.24.20.23.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jul 2024 20:23:27 -0700 (PDT)
Date: Wed, 24 Jul 2024 20:23:27 -0700 (PDT)
X-Google-Original-Date: Wed, 24 Jul 2024 20:23:25 PDT (-0700)
Subject:     Re: [PATCH v7 09/13] riscv: vector: Support xtheadvector save/restore
In-Reply-To: <20240724-xtheadvector-v7-9-b741910ada3e@rivosinc.com>
CC: Conor Dooley <conor@kernel.org>, robh@kernel.org, krzk+dt@kernel.org,
  Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu, jszhang@kernel.org, wens@csie.org,
  jernej.skrabec@gmail.com, samuel@sholland.org, samuel.holland@sifive.com, corbet@lwn.net,
  shuah@kernel.org, guoren@kernel.org, Evan Green <evan@rivosinc.com>, andy.chiu@sifive.com,
  jrtc27@jrtc27.com, ajones@ventanamicro.com, linux-riscv@lists.infradead.org,
  devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev,
  linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, Charlie Jenkins <charlie@rivosinc.com>,
  Conor Dooley <conor.dooley@microchip.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Charlie Jenkins <charlie@rivosinc.com>
Message-ID: <mhng-28424e23-c9b4-407e-97d8-9dbb09101781@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Wed, 24 Jul 2024 12:14:00 PDT (-0700), Charlie Jenkins wrote:
> Use alternatives to add support for xtheadvector vector save/restore
> routines.
>
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

b4 isn't applying this, either on top of your last patch set or rc1 -- 
the base commit in the header isn't a hash I have, so I'm not sure where 
it's mean to apply to.

Also...

> ---
>  arch/riscv/include/asm/csr.h           |   6 +
>  arch/riscv/include/asm/switch_to.h     |   2 +-
>  arch/riscv/include/asm/vector.h        | 225 +++++++++++++++++++++++++--------
>  arch/riscv/kernel/cpufeature.c         |   5 +-
>  arch/riscv/kernel/kernel_mode_vector.c |   8 +-
>  arch/riscv/kernel/process.c            |   4 +-
>  arch/riscv/kernel/signal.c             |   6 +-
>  arch/riscv/kernel/vector.c             |  12 +-
>  8 files changed, 198 insertions(+), 70 deletions(-)

[...]

> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index bf25215bad24..cb48092fdc5d 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -845,10 +845,7 @@ static int __init riscv_fill_hwcap_from_ext_list(unsigned long *isa2hwcap)
>  			riscv_isa_set_ext(ext, source_isa);
>  		}
>
> -<<<<<<< HEAD
>  		riscv_resolve_isa(source_isa, isainfo->isa, &this_hwcap, isa2hwcap);
> -=======
> ->>>>>>> 0f260ac829ca (riscv: Extend cpufeature.c to detect vendor extensions)
>  		riscv_fill_cpu_vendor_ext(cpu_node, cpu);
>
>  		of_node_put(cpu_node);

This chunk isn't applying, and it's got a conflict marker in there.  So 
I think that means something's gone off the rails?


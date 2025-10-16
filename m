Return-Path: <devicetree+bounces-227648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 941F6BE32D2
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 13:50:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 754254EFEF9
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79D3931D734;
	Thu, 16 Oct 2025 11:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="a5OPXaIx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B9131BCAE
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 11:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760615417; cv=none; b=B4K5rZHLlouOb7JItD6rA3KvWX9ZC80zTbv3Db0hMQBebo7M/nxHW3Qj1LwdVFZPFBitfPohgNkoOicfd4X3Gkj/FlYzmDOnwttoyiET+pEHLX2ZETPUYQFPgeyNoXNwd6OaKRAsP2qIIwy3b2P2CYHwCQ4z5++OdOu6yGMbSY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760615417; c=relaxed/simple;
	bh=GuJID3UoruyLBRVwIrs7taaDoRRPIa9f3p+Si6XvKaU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L6AL8Q/22Hs89PUDbvlJbDUB8YtAP5jJHYbJ9J5zKN+qC/WSS1OBWLT4DdIcmM09kqfVBJlk0cgC1h/L7nmvJTrTxhzukLgzEUW24kFul9uI/zox+EAETjJdFgZBYb8u1690vSldzUSld9utTVut31S7YL+BPfl70JJkBkjnNqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=a5OPXaIx; arc=none smtp.client-ip=74.125.224.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-6360397e8c7so730627d50.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 04:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1760615414; x=1761220214; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zYh4ySUaCOCwSo/O5pikLjWDaZXOIgrvmzNlKPUYoi8=;
        b=a5OPXaIxzrOO7d80pSXAoPvjcxVz2fCzFtwkfM52qX6sCZ30k1LvcuzGBO0/iVrONx
         LL+RQJENT7AHuka6cAtTIotbX6WzDBNgLMC+K1oCtgzuqHYuxYsDJCZ0LahEJuBnDKnY
         OWhfmexqv4vwZecz721l7p/T4Di0mz04qoVhU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760615414; x=1761220214;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zYh4ySUaCOCwSo/O5pikLjWDaZXOIgrvmzNlKPUYoi8=;
        b=WyMhCki95LuFTgJ8645/ghSXZk7jD9vcYE9PbF1cNBif0Y/L2wj07B+jYPPI5oWhjZ
         kyy9r5zn+LrOp0funigouMQ1kw64l8nrPngjVLX0zviBCFMpHeq2YNzOoWEDJcXiMVGs
         0qgj7u25bH19S3yLm/gJX6+VhaB6lYBpl208kMzZ9t5bPAc4zk+wjFdBJCeIM4JCNLuO
         1w/q/pWSWcyh9T0qFK8zosE//vM1+fGTeIdp33evw9JRnA2ZznfodCzvjc59tNylzqw1
         hJqmVI2VUSKttPjCsceepiMyrtxzBA4dfLvwB2sgstZqSlBBM6WoK1fwOD5NMkijvDbW
         e36g==
X-Forwarded-Encrypted: i=1; AJvYcCWJ8BwF8ASmyi9Kv+KZtKoduj0UyaHaNPTH1Q4xpX7+IhCXgWesfMQQ0nJTqtCfAEzM+7FaUiqeH/n/@vger.kernel.org
X-Gm-Message-State: AOJu0YxdJO99zw3Q88LUytG8zB5+gfB58lHAi2IcQ8lZdUf4lApla5Iv
	bEsK8O7Tg+l0QPW+RFFgHYce9po7+QsXBCUgqBZkQD68D3nqZpMvsVV5v3/pq8Q31aelE/Q5IVy
	FA7sw2ajX+LP/vHFHfJk1aLX1VkE1B+aZxiqCI+J4r02zZ/N91Zstloc=
X-Gm-Gg: ASbGncuc1UlsMC5++PbnyT11pF13GD3heWxHy5MmRQ8hTPlKl/9K1k7nUDQRCYHL2kU
	JNSz/CVU03HjDS2jTWPRotW5pjCXSLjJlcSebBWRx7l7rUr4mhOfsoVSYbS2mAp6CdDyprG+Bto
	Xr1PVeAidLsAUvEtOjFWn6U/bv0uIR4PzUDBe0GcGAyA1WntqHNY8oT9gQHLldXvcOn8lKp9q4i
	W9BGnF3dUsje3wCH4MJNv5FsKmF0j9mlruVROMRwgM8jCp6Qq2n9g+K62VO5GXFi4amyLARnbyc
	5n2x55V0F5w/CTVN3w==
X-Google-Smtp-Source: AGHT+IHk8WvYBHVQIElfRd5ZTF/MhPXigm+Y8VrlGkZNJUEGYoFd1ZIMeQdOamok+jXKaV+afNb4LMWmjZLM3NgawjQ=
X-Received: by 2002:a05:690e:2150:b0:63c:e0bb:2e97 with SMTP id
 956f58d0204a3-63ce0bb399amr17034086d50.10.1760615414337; Thu, 16 Oct 2025
 04:50:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007065020.495008-1-pavitrakumarm@vayavyalabs.com> <66ade5d8-22d8-46d6-92c0-338271ac2e99@ti.com>
In-Reply-To: <66ade5d8-22d8-46d6-92c0-338271ac2e99@ti.com>
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Date: Thu, 16 Oct 2025 17:20:02 +0530
X-Gm-Features: AS18NWC-llpQDyvIoZgme4Gs6zEaOaYq19NDT9f8ElmGhoWxebQNGzUo356J0OI
Message-ID: <CALxtO0mYorK9tNb9uKcw8UF=gfGtNJT-oA-qagbNYN8Z9798sw@mail.gmail.com>
Subject: Re: [PATCH v7 0/4] Add SPAcc Crypto Driver
To: T Pratham <t-pratham@ti.com>
Cc: linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, herbert@gondor.apana.org.au, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, Ruud.Derwig@synopsys.com, 
	manjunath.hadli@vayavyalabs.com, adityak@vayavyalabs.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Pratham,
  Thanks for those inputs. I will fix that.

Warm regards,
PK


On Fri, Oct 10, 2025 at 12:28=E2=80=AFPM T Pratham <t-pratham@ti.com> wrote=
:
>
> Hi
> On 07/10/25 12:20, Pavitrakumar Managutte wrote:
> > Add the driver for SPAcc(Security Protocol Accelerator), which is a
> > crypto acceleration IP from Synopsys. The SPAcc supports multiple ciphe=
rs,
> > hashes and AEAD algorithms with various modes. The driver currently sup=
ports
> > below
> >
> > hash:
> > - cmac(aes)
> > - xcbc(aes)
> > - cmac(sm4)
> > - xcbc(sm4)
> > - hmac(md5)
> > - md5
> > - hmac(sha1)
> > - sha1
> > - sha224
> > - sha256
> > - sha384
> > - sha512
> > - hmac(sha224)
> > - hmac(sha256)
> > - hmac(sha384)
> > - hmac(sha512)
> > - sha3-224
> > - sha3-256
> > - sha3-384
> > - sha3-512
> > - hmac(sm3)
> > - sm3
> > - michael_mic
> >
> > Pavitrakumar Managutte (4):
> >   dt-bindings: crypto: Document support for SPAcc
> >   Add SPAcc ahash support
> >   Add SPAcc AUTODETECT Support
> >   Add SPAcc Kconfig and Makefile
>
> Use appropriate subject prefixes in commits. For crypto drivers, it is "c=
rypto: <org/chip/soc> - <your commit header>". You can find the correct pre=
fixes with `git log --oneline -- DIRECTORY_OR_FILE` on the directory your p=
atch is touching.
>
> >
> > changelog:
> >   v1->v2 changes:
> >     - Added local_bh_disable() and local_bh_enable() for the below call=
s.
> >       a. for ciphers skcipher_request_complete()
> >       b. for aead aead_request_complete()
> >       c. for hash ahash_request_complete()
> >     - dt-bindings updates
> >       a. removed snps,vspacc-priority and made it into config option
> >       b. renamed snps,spacc-wdtimer to snps,spacc-internal-counter
> >       c. Added description to all properties
> >     - Updated corresponding dt-binding changes to code
> >
> >   v2->v3 changes:
> >     - cra_init and cra_exit replaced with init_tfm and exit_tfm for has=
hes.
> >     - removed mutex_lock/unlock for spacc_skcipher_fallback call
> >     - dt-bindings updates
> >      a. updated SOC related information
> >      b. renamed compatible string as per SOC
> >    - Updated corresponding dt-binding changes to code
> >
> >   v3->v4 changes:
> >    - removed snps,vspacc-id from the dt-bindings
> >    - removed mutex_lock from ciphers
> >    - replaced magic numbers with macros
> >    - removed sw_fb variable from struct mode_tab and associated code fr=
om the
> >      hashes
> >    - polling code is replaced by wait_event_interruptible
> >
> >   v4->v5 changes:
> >    - Updated to register with the crypto-engine
> >    - Used semaphore to manage SPAcc device hardware context pool
> >    - This patchset supports Hashes only
> >    - Dropping the support for Ciphers and AEADs in this patchset
> >    - Added Reviewed-by tag on the Device tree patch since it was review=
ed on
> >      v4 patch by Krzysztof Kozlowski and Rob Herring (Arm)
> >
> >   v5->v6 changes:
> >    - Removed CRYPTO_DEV_SPACC_CIPHER and CRYPTO_DEV_SPACC_AEAD Kconfig =
options,
> >      since the cipher and aead support is not part of this patchset
> >    - Dropped spacc_skcipher.o and spacc_aead.o from Makefile to fix bui=
ld errors
> >      reported by kernel test robot
> >    - Added Reported-by and Closes tags as suggested
> >
> >   v6->v7 changes:
> >    - Fixed build error reported by Kernel test robot
> >    - Added Reported-by and Closes tags as suggested
> >
> >  .../bindings/crypto/snps,dwc-spacc.yaml       |   50 +
> >  drivers/crypto/Kconfig                        |    1 +
> >  drivers/crypto/Makefile                       |    1 +
> >  drivers/crypto/dwc-spacc/Kconfig              |   80 +
> >  drivers/crypto/dwc-spacc/Makefile             |    8 +
> >  drivers/crypto/dwc-spacc/spacc_ahash.c        |  980 +++++++
> >  drivers/crypto/dwc-spacc/spacc_core.c         | 2394 +++++++++++++++++
> >  drivers/crypto/dwc-spacc/spacc_core.h         |  830 ++++++
> >  drivers/crypto/dwc-spacc/spacc_device.c       |  283 ++
> >  drivers/crypto/dwc-spacc/spacc_device.h       |  233 ++
> >  drivers/crypto/dwc-spacc/spacc_hal.c          |  374 +++
> >  drivers/crypto/dwc-spacc/spacc_hal.h          |  114 +
> >  drivers/crypto/dwc-spacc/spacc_interrupt.c    |  328 +++
> >  drivers/crypto/dwc-spacc/spacc_manager.c      |  613 +++++
> >  14 files changed, 6289 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-s=
pacc.yaml
> >  create mode 100644 drivers/crypto/dwc-spacc/Kconfig
> >  create mode 100644 drivers/crypto/dwc-spacc/Makefile
> >  create mode 100644 drivers/crypto/dwc-spacc/spacc_ahash.c
> >  create mode 100644 drivers/crypto/dwc-spacc/spacc_core.c
> >  create mode 100644 drivers/crypto/dwc-spacc/spacc_core.h
> >  create mode 100644 drivers/crypto/dwc-spacc/spacc_device.c
> >  create mode 100644 drivers/crypto/dwc-spacc/spacc_device.h
> >  create mode 100644 drivers/crypto/dwc-spacc/spacc_hal.c
> >  create mode 100644 drivers/crypto/dwc-spacc/spacc_hal.h
> >  create mode 100644 drivers/crypto/dwc-spacc/spacc_interrupt.c
> >  create mode 100644 drivers/crypto/dwc-spacc/spacc_manager.c
> >
> >
> > base-commit: c0d36727bf39bb16ef0a67ed608e279535ebf0da
>
>
> --
> Regards
> T Pratham <t-pratham@ti.com>


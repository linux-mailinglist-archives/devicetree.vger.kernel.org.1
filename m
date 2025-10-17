Return-Path: <devicetree+bounces-228155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F35BE8DC6
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 15:32:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 17DB8543F71
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 13:31:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43DD1369994;
	Fri, 17 Oct 2025 13:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TJJTlH+A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568F236CDE7
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 13:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760707873; cv=none; b=EU7l7S61bqlZC+bshjoyMVHKUyPBFc7VAZ/w1OSKjgkuleVu4PAc6hj5T4ODWQlmCUZSSmT9BKrNSUCRsv68kAMJB9naL159PMKxIRactk6MxVx6smQlMbriFPtWVGcBZp8zFtIPxFpwmaQv1Xi0BcVEwJLefIgkZoeoA4KTgDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760707873; c=relaxed/simple;
	bh=i+O3goYjT4QQXxLHScTtYR8tB+lqI6cv3xXIRKCisAc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OR8mLOEput2vlmawYmjzPxCuTbqwWpwdSC8+iQKkAs6Cfjef0VAMjicQ3pmbzxYf5Eq2rzXb9hjPjnCt2/9apELDhzIrkRNxiUuM1b3wqbfOjdfo7ZlGLnN4ti5SIahFi0H4j3rd044Ql/j/F5AAF6ES+IuV6bQpC5sI31P1QrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TJJTlH+A; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-7829fc3b7deso15174167b3.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 06:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760707870; x=1761312670; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DUCXQ0EvV9ktxmOlNW52FjkhtUMF4mrPMo81WKGkY7k=;
        b=TJJTlH+AdWbVPr4lWHccUlLtKQCL3SxG2ftDDibxk6+eXLd1N7cnCuLl8Kx+f2K0dB
         dT+gLRQLmsQVVSy/FZKcbqz695iwUYEt3a6HhE1dBhPEIieivCgMMxvlwdtKh+f+62Op
         lImGEchQ3yjfl11cG1oTk45WIZI4DtLkWuOWhw8M1snVo6RweJ327YgzPRXlgVOJNMLr
         SzqZkJtNr+vPctEku2JQ4Xof0cM7f7xL+ujd5OQHPdQ5+tNwH8HelbtNwwksXRcPguQm
         Iq57lKxZyB9tWpilqu29YwFnKl4uBD31YkyM3jo3g5F96p+szu7MettjmWh2GzzVBla8
         h9JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760707870; x=1761312670;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DUCXQ0EvV9ktxmOlNW52FjkhtUMF4mrPMo81WKGkY7k=;
        b=bwreN3l2R5aBJMx/JWk7STdqulLVcnqRR9t8yK8Yh9aE8mTbsVCZ41bpjd2k4+Ysff
         zI+cmE6Olj39ZTRnA+nixE2AJDXYwinReo4wgRUCeBRITxN+Hb3CE+NABxxgg1dv0ZvZ
         awBThcu+wHqZ38SsTdm6h4WLu8X2NEQgDqFnVHXozaQf5Oaq3PE7O7/d/gc2YzzVJ6A9
         QvHLU3V2Bk1RJzYu1M7Qjml3QdhlEdobPEkS0/z1UpikDbBhl0COhNwfzeUHo3+r0LDl
         pABrHQuouHdrNMm2zAbFhf99MwzAHMfst8pTTBltKAvyzzn6efSAq7dk9CBiefHylfqB
         XnJA==
X-Forwarded-Encrypted: i=1; AJvYcCXn/4Hxvtvld5fOO4ovrN+UEyBY8Hi8fWe6ex4oYNC0ygQ8hhEhVMhSt8p+e72sLfjLGLLbuENaczba@vger.kernel.org
X-Gm-Message-State: AOJu0YyElbZRWFfpViBO/e5Tz2UAc5H0tlePiHjND4d9xlD99gNJ4Qqe
	f0C5L/7MhmXrRW0ASN1JTOh9RQfjeLXsWRysDLjmXedyQ45wEXzvhtlj8XOcnyOaOhPijNdC4LB
	Cw9ad7uXbv2e4hSEDXWlv1B0ikb267qTBXMPZ6OzGAw==
X-Gm-Gg: ASbGnctkEH7cvXFXWKUJvu9qsiSBS2tLHf5VzIViDZ+RKQWZ9UIuRCUwXSemGbUrQ/5
	t15DGaIee404UAKDsFmDIf+bDnSOCPqQK8t0Ga9O5HPoGA2aR2uOGdpEx5/ajng0DQ8OqzGRenb
	yymxTSyM6176KiwCUi0KSFemAaLnZugowb9aPpEZ1fI5JumbWY+/5X4fW/NZpi2sIooo8yM2n3X
	YwMXAwcbS1bxkyUEmka8aDLY+a7SSnAQTAPPIvk5+4hL3svOt8clvtyJKmXBe3yk8teA5qy
X-Google-Smtp-Source: AGHT+IE99aLeU1qJuGUKKD3EwC+82B0WlUi+IrZYAAKOJ3BjaAC6xXwG/vSFF6c7L0L5r1xHD6BMxG1tEIJhEP9Q9Zs=
X-Received: by 2002:a05:690e:4009:b0:63e:17d8:d985 with SMTP id
 956f58d0204a3-63e17d8db6emr2723484d50.53.1760707869805; Fri, 17 Oct 2025
 06:31:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007140434.606051-1-kamal.dasu@broadcom.com>
In-Reply-To: <20251007140434.606051-1-kamal.dasu@broadcom.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 17 Oct 2025 15:30:34 +0200
X-Gm-Features: AS18NWCxOo1IPoxvNmAyvX3kK0QzpALZz5b5Ua2IC_5KvIDu-uhmuTnAMYhlcsU
Message-ID: <CAPDyKFrsjnSYBTpPJ1qWXVHTZSw8EuQh6b_CcNAKuKHHMwy2MQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] sdhci-brcmstb SD host controller SoC specific enhancements
To: Kamal Dasu <kamal.dasu@broadcom.com>
Cc: andersson@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, florian.fainelli@broadcom.com, adrian.hunter@intel.com, 
	bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Oct 2025 at 16:04, Kamal Dasu <kamal.dasu@broadcom.com> wrote:
>
> sdhci-brcmstb HS200 configuration for BCM72116 and PM register save restore
> changes applicable to various SoCs.
>
> v2 changes:
>  - Separate commit for SDIO_CFG register defines that moved
>  - Implemented cosmetic changes proposed for initial change for :
>      "mmc: sdhci-brcmstb: clear CFG_OP_DLY when using HS200"
>  - Moved BCM74371 support in a separate commit
>  - Implemented review comments and reorganized code for :
>      "mmc: sdhci-brcmstb: save and restore registers during PM"
>  - Added Reviewed-by and Acked-by tags wherever applicable
>
> Kamal Dasu (5):
>   dt-bindings: mmc: Add support for BCM72116 and BCM74371 SD host
>     controller
>   mmc: sdhci-brcmstb: move SDIO_CFG_CQ_CAPABILITY define
>   mmc: sdhci-brcmstb: clear CFG_OP_DLY when using HS200
>   mmc: sdhci-brcmstb: Add BCM74371 support
>   mmc: sdhci-brcmstb: save and restore registers during PM
>
>  .../bindings/mmc/brcm,sdhci-brcmstb.yaml      |   2 +
>  drivers/mmc/host/sdhci-brcmstb.c              | 154 +++++++++++++++++-
>  2 files changed, 147 insertions(+), 9 deletions(-)
>

The series applied for next, thanks!

Kind regards
Uffe


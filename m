Return-Path: <devicetree+bounces-141373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E862A208B8
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 11:41:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA2DC1605A6
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 10:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AF2519DF44;
	Tue, 28 Jan 2025 10:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fuUZKx2+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE94D19B3EC
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 10:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738060860; cv=none; b=HPql4j38yEuWg14CA17eLiTsnFqHT/FPyvPZBpLdRcvmzRP3fexSeR6nfJmIfCRCbV3jpcODH1om9h/CBAIRb4AwHLm/2mpeXAi8wwVNnzf2KHiA6crXDNhu8R55l9wP75ApZM+IsQRu9IVocup7bi7lOgCbllSEVyV08QIQEt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738060860; c=relaxed/simple;
	bh=fHkCcPoOld5Vayx/a8s9YzaCZAQ95P6ms4pCUpWbve4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qw+HWi0quNro+qubO5J9Ap37xFVKS4Y1/L6ectOy91trUpg0G/K4WNJ7EIoXvvnDorx3BfA+5KAMetlCtQF8feEM5WZAdNt3uHaqs+rCcFaupEy4IL8yK8TywFTPT7ewRRuXeJPsYgY9x2qQoYiD/b8bfrcPNgxIdfYaMljCHeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fuUZKx2+; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e573136107bso9003580276.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 02:40:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738060857; x=1738665657; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X+TSS9BHptLsGt0UNSzZvK+YPeXxKpKM6xF2wxrn1RY=;
        b=fuUZKx2+1D3VSoq+KDIEF8RFNMkVR4AtIuLyPSIC3bm20DRGGR/CLuZAODreqNbN19
         guLENp2N8B9qbjNw+RdB3O/2XKpG+Lntl+ZS7M1lnrFC3UziM474HXXqWkfwFKpn4/yQ
         5uGmclhJ0E+OqFR165R5/XcDn1wUfG/SctlQgWPJMjmYrTtDpbEPfXBoBCel3QvyZpQI
         a52YA1061xhKhH0eBVOqzOzp0lXAAif8UBrjTkoY4WL3YmXELUcbrd1R1jP2MPHnLW0j
         KwfeSd1mxcgo0LBaNV2EkyySkSgbbQs2qbk7FLx+LhIzaN3sa1/ExLIpEQ0TBEyO1oUQ
         EUMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738060857; x=1738665657;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X+TSS9BHptLsGt0UNSzZvK+YPeXxKpKM6xF2wxrn1RY=;
        b=YggW+zIdEU4efvlfKiSJRAfOdXKrn6esdbW7QiEWETM1Ah8+4x1K/kAjJNHD9YJWjl
         Rw+Fr19O1ul6I8K8nmxkOzc/FbNBoeBzQJeXaINUanj+WxWHHUbHIbhwqcT1Wq+zN0FZ
         /XNm41/QGUOzTKMxL5J31vg7TdMGwwPOc51puCmaPldgPmCh/sB/dPc+wuyN2sYR9w+1
         wrx9BvVQuU2z/L66Ihjf0v1r/lDkmrKG7+o8tu2GjfB59tEBWIiVktuBcpBCNBE/5Opd
         S5sMn8r5IvPe189eVTLgSqXu3WeIg71PmErqLPjalaP4G95HhS3DGWhytUDPfxc2n1Rp
         w+mA==
X-Forwarded-Encrypted: i=1; AJvYcCX8hyXTPg15OHHnWnPJJx78s16B0ILpXlLRlZsTbr/zqeepr41CTl2w9C89Y9Ri4RECzgY/WNiMimPZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxFVkuTDJ+I+SsGXJJdnnCjKVqPIcm2Dxztn4ZZ52ipIOx6TXkD
	PfWnsHs0NSvREuK40qiGy2KlWAI0bxjGko9Z7nh9OC4RlJgSV809dn0uDfR75mdUkzU0b09/k0n
	DG+A+bEseEUJMWkQ8x2jSijwR+G7okW1xMoXlXA==
X-Gm-Gg: ASbGnctdZIF/7SSlaReFcIhTi/mR45x2XdgGrSBRULrxqH8R0MeR6Rs4SEdpIHf2CA8
	gMcLH/QX73LFLnBcEkOMe9eaYymWxEBLAzQwbrCvEA/rk9wpEMHIUPDoYjW+RSi3b1mi3lHmpjA
	==
X-Google-Smtp-Source: AGHT+IEmH8cViK+UxbmsoUoGLBe5kZAMQb5oP5iNgocXG2Sf79bsQ7NtGK8mhIzgG/5TkGLx1PVW6ZLN6j/dzVO3Q3g=
X-Received: by 2002:a05:6902:161a:b0:e57:94bd:4e0a with SMTP id
 3f1490d57ef6-e57b13451bcmr34589002276.40.1738060857692; Tue, 28 Jan 2025
 02:40:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241202-rpmpd-sm6375-v1-1-12a4f0182133@fairphone.com> <D7CS06UAY85B.1L2QQXQ63GFZ7@fairphone.com>
In-Reply-To: <D7CS06UAY85B.1L2QQXQ63GFZ7@fairphone.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 28 Jan 2025 11:40:20 +0100
X-Gm-Features: AWEUYZmLWZpIy6dPlIk9mwW7-sSnAKdnFhxVFch4NAa0RB7-7jLqSeJPT2NrRsA
Message-ID: <CAPDyKFq3xQPVzocPi13+AWoiWPpvejoAotMOM4VE4FA0BLqv0g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: power: rpmpd: Fix comment for SM6375
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Jan 2025 at 11:16, Luca Weiss <luca.weiss@fairphone.com> wrote:
>
> On Mon Dec 2, 2024 at 4:45 PM CET, Luca Weiss wrote:
> > During an earlier commit, the comment from SM6350 was copied without
> > modifying. Adjust the comment to reflect the defines.
>
> Ping, could this trivial patch be picked up please?

I pick it up after the merge window closes, via my pmdomain tree.

Kind regards
Uffe

>
> Regards
> Luca
>
> >
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> >  include/dt-bindings/power/qcom-rpmpd.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/dt-bindings/power/qcom-rpmpd.h b/include/dt-bindings/power/qcom-rpmpd.h
> > index df599bf462207267a412eac8e01634189a696a59..d9b7bac309537cbfd2488e7d4fe21d195c919ef5 100644
> > --- a/include/dt-bindings/power/qcom-rpmpd.h
> > +++ b/include/dt-bindings/power/qcom-rpmpd.h
> > @@ -65,7 +65,7 @@
> >  #define SM6350_MSS   4
> >  #define SM6350_MX    5
> >
> > -/* SM6350 Power Domain Indexes */
> > +/* SM6375 Power Domain Indexes */
> >  #define SM6375_VDDCX         0
> >  #define SM6375_VDDCX_AO      1
> >  #define SM6375_VDDCX_VFL     2
> >
> > ---
> > base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
> > change-id: 20241202-rpmpd-sm6375-06582e126d7f
> >
> > Best regards,
>


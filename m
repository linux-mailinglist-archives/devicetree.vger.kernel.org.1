Return-Path: <devicetree+bounces-80519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 609EC919DD4
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 05:26:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 055DA1F227D6
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 03:26:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1703B14295;
	Thu, 27 Jun 2024 03:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="lwC5zb/8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95EBC1078B
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 03:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719458776; cv=none; b=eE2hnwcblu0G0khJKmZKrANuV0hc9eMJAi0oR4dgAJ2QsSXLU2XRjmsEuwR6tTKFTS57PGg66SMhDPEHYxiY8cQlecT0sNuapzwJM8x7/xifPmXwUPzMawf/CaXkZMaqX1R3F7VPDS1KWuoZmuFG+gf6AVuMnuu/idQzUlYQD2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719458776; c=relaxed/simple;
	bh=uvR+0Gq+x6k+bBQoe6kzaG9QWJVAkKlY2L6BoK1ipuc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Dr2UHcmC9KifPFHYwsyPE0pZkZCCjFGxLKZN/EtW/fYC5IRpFCJboKe2lOb9vMToY5eQtqjfGSsNOkNQ9os8Gl+rgkbtJRWPXVtyUzHM3tQ1nze5DGNAl0p+yARnYm7Jm0ZwXrHWUDXQ9yfcYEZOE25VSExeT8XD+AMRzbpyz4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=lwC5zb/8; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-4450111d54dso114161cf.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 20:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719458773; x=1720063573; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uvR+0Gq+x6k+bBQoe6kzaG9QWJVAkKlY2L6BoK1ipuc=;
        b=lwC5zb/8qVBLn+WGpyF5MI0w7C1UhP/wOmL1+tOQPikQ3SzgwRBWRu1olgXwt3UCm+
         Kn6R7/MrsQxJODVNQMl83+BsFjcZ7neXM2T2w/NO13CVvsomrHEPfJiBJvjnX48M9zxU
         PD+84l+HVn4BEtHL3jWJzA//pafK67wODeHbrniXo/MwuK5vYyRCY++R8S5db9vTgE6b
         KZZVFqtmm4Wcsqf5XafrtST3TRtZa4aLnhnMtydN7KJ1rag+QefSzZoCPv4XJ4CMWv2s
         dqZqh5V0W5pJuK8bxt1ngzVev/ODlu7CsDaxM/k0ZY1aFpprWgBddZvSGNteBLa6TUo1
         N3lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719458773; x=1720063573;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uvR+0Gq+x6k+bBQoe6kzaG9QWJVAkKlY2L6BoK1ipuc=;
        b=Pjp2HAHsjnutDTroivc4lavQEf1sG4paoD4aMFlsdzivFnoZWNoB/YMHBaPF3tABWw
         kGnVsvsuXEfSRfC8cRM8aN3ShMC2IGR6Psua+XPsz5ox+8wrL5DvIFVpRbGZLVyAbH2C
         hHbd5c7G7ADjzZER6eQlHNdrxDNZTp5LbF7tisltRzj+Mxcn444ZrlNHZfCx8opPNPq5
         LaoL5MGFxogwgwI6ADC4OQQzW5XhtaLV+Fqow/TXDkDO7jxOLsC5PQYCE8QFowgXDz9H
         EAiKXsgAnesFQwqnie3DUossEGHqXAon7svNH19ggFs35hdhZFg1cxKxcg2c3/xGf15I
         Qx4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVLVJl0bNpNVHKdEqXzGMdvhOMHHL9qhq61D1zEdW5ovCvRDk5Dyyh85bYIUAfxhMdQROiggeblxflxWpRG2XK+w/vHmL5BzSDAbg==
X-Gm-Message-State: AOJu0YwllctWrV1rdKl60TGE45mkBDDpMmgG1RoZc0lo+WRNR9nx0Po7
	CXHVvtL9i4HGs4a7t8S75iSWVInb4QVMpPdkRVL1t3f0lFzXTSmUr2bgAT9t9wQNCTYdvOiCCen
	e+C3/3IaRirdwgBnSeBPLUUClmcaV5PrdQa3S
X-Google-Smtp-Source: AGHT+IEQMWhh3nV9aez5d+6ni2K86V3OV0VRneIw7UhPzOP7WPGwPZT/EkagkQCNPUx6DvrcYQHDIAVWnJp2vdk7Evs=
X-Received: by 2002:ac8:6bd6:0:b0:444:dc11:6980 with SMTP id
 d75a77b69052e-4463fc66b03mr1309801cf.1.1719458773311; Wed, 26 Jun 2024
 20:26:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240626052238.1577580-1-aniketmaurya@google.com>
 <20240626052238.1577580-3-aniketmaurya@google.com> <07911285-d01c-4456-861a-825c1e9d65cd@linaro.org>
In-Reply-To: <07911285-d01c-4456-861a-825c1e9d65cd@linaro.org>
From: "Aniket ." <aniketmaurya@google.com>
Date: Thu, 27 Jun 2024 08:56:02 +0530
Message-ID: <CAMmmMt2K9H7WQ53j56kPSiZU+EUfCD0u_yBiyi8vaS4g+iHt8A@mail.gmail.com>
Subject: Re: [PATCH 2/2] i3c: dw: Select ibi ops for base platform driver
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof.

> > The AST2600 platform driver can always select the IBI ops.
>
> So it is deducible from compatible.

Yes, you are right. It shouldn't be a DT property.
Abandoning this patch. I'll send a different patch to always have IBI ops.

Thanks,
Aniket.


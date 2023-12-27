Return-Path: <devicetree+bounces-28682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A1681F126
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 19:21:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47ECE1F222FE
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 18:21:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF8B046540;
	Wed, 27 Dec 2023 18:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YoW928nG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6331D47762
	for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 18:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5e6c8b70766so45792977b3.3
        for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 10:21:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703701285; x=1704306085; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QUb3T9LCTor3OtZr4aU2okT2EQhxWP10qbYK/muZCTM=;
        b=YoW928nGexnkinoiQNjZQQ7BLQdDgSH1qnUnslTiSjUc8RyZk0/iblcS0Bb+WBIQG6
         2WUHPA6fKdl6hUUwt+1O0/lqXU9ZJTWmrWE1OxTsz6NyojPupLCfN2DuH38xQzQh63Im
         BJ/WDeCHZpVxMRIwpDXjiUzZnZBdKqK7cy09o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703701285; x=1704306085;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QUb3T9LCTor3OtZr4aU2okT2EQhxWP10qbYK/muZCTM=;
        b=jLWW9p5bMBLrnDUyWBR8dfNG1vXR8VBrScPottZPVx2K8FsGIjAVOgZH6zaCsHyxtE
         RuQTUunmAoIkvw7OodeKg7mt7dmqpuyNH6nkS0cdD8JSfVYWr6TSQYB5HuuVohwlmBc2
         +pCSS1XNES8KcH4qrCO9NC45oj4pNTS8i1ATxTGmX816wgJ+ncC0hm4xu3Jhz+za82s+
         NKoR9+IghJ2/i1id3B8nPoxIxIP5POHbvsSi0g/k29SHPuTdlYW082Z8Y1QmLB8/3fpl
         JddoH9h4FEp/zBTp5EL+Qiv3q/y6xNezphgL8J52Q/tHSm43QjQkTmZLi29gXzZiJvAx
         XI3g==
X-Gm-Message-State: AOJu0YwMsTn7GpGtNT4ICyGnd2Cqkiyvo6kx1rFh0yhq7AstVX64rpGO
	9g4kQ8uiCLiJO2O9nWw9PhZ1hDzyN2QZGgUTNWhh2N2LuAnX
X-Google-Smtp-Source: AGHT+IG/QBYCKbbNKz4z1Pk4mO+bOm+M4u117qwAKbKOjd/deSesO3ksE77YRBwrfFhwqZumGERveuiVY5yBVM3xM4s=
X-Received: by 2002:a81:5385:0:b0:5e8:cff8:6f2e with SMTP id
 h127-20020a815385000000b005e8cff86f2emr5485099ywb.81.1703701285363; Wed, 27
 Dec 2023 10:21:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231226192149.1830592-1-markhas@chromium.org>
 <20231226122113.v3.18.I29b26a7f3b80fac0a618707446a10b6cc974fdaf@changeid> <ZYxcvSLL8yWW-URu@smile.fi.intel.com>
In-Reply-To: <ZYxcvSLL8yWW-URu@smile.fi.intel.com>
From: Mark Hasemeyer <markhas@chromium.org>
Date: Wed, 27 Dec 2023 11:21:14 -0700
Message-ID: <CANg-bXCrR2FKSi6ik7LZBqTQz9=HDW=0cy7GZN0yaB0PsKKjkQ@mail.gmail.com>
Subject: Re: [PATCH v3 18/24] of: irq: add wake capable bit to of_irq_resource()
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Herring <robh@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>, 
	Raul Rangel <rrangel@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

>
> > +             u32 irq_flags;
> >               const char *name = NULL;
>
> Don't know if OF style requires reversed xmas tree order. If so, this should be
>
>                 const char *name = NULL;
>                 u32 irq_flags;
>

I see both methods used. For example, of_irq_init() uses normal xmas
tree order. I'll leave it unless Rob says otherwise.
It is Christmas time, so I do want to honor the Christmas trees appropriately!


Return-Path: <devicetree+bounces-17661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3E07F3508
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 18:38:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 34706B2172E
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 17:38:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1DD754FA1;
	Tue, 21 Nov 2023 17:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kby7ZOXJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A72BD1
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 09:37:55 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50797cf5b69so7974618e87.2
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 09:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700588274; x=1701193074; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Inglbp344g/E9VRtI3ngQFuRLEvwbQ4O2c7XL9W+dg=;
        b=kby7ZOXJRlpV+ZuRGf7EE+hjjVqCUtsG/nK0v9yW46KUlaw1lZ+pF6r2yUu5aHgnOM
         KqQJ6IVmxHlS5CJomh8knsN1TLHZK7hc0LBnXkzHl1RDrnkLLdaAFf6Uxi4e04qD2LxO
         M4Yosu9ik1B1ApkcI0zfXU0yRXeK0aYvsAWAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700588274; x=1701193074;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Inglbp344g/E9VRtI3ngQFuRLEvwbQ4O2c7XL9W+dg=;
        b=FwJfAq8PDnxTyGbw90bh7eDNg+/H5mPLk3jVYx79NZJ6DyDqtwch8za/C2j6v7vWra
         1eXxbZl3KaVOvWDx82HBoHlp2KuXNtQ5uRg7eZBkLp/2k94pTHCgpNhcwUqzKcIVmQPB
         f9vZc4W6sKpHttfRj91w7P+FXTqhzpGRfke5l2F7s/u8vxMk9vkFEvgTUxLoUo/gMXkV
         EikXZLSAJGUsI3TeUD/fspW1C1PNXVuERYwOGwWjTcd35zkwQJM5ByzKpnMMVTSP6+yF
         amrED3Xp3eCZqcVkWgo5oA8sgHCZnliYcAHSayf6dZp3dK3ylAFqIQRZg698mbL7eDOJ
         G8rA==
X-Gm-Message-State: AOJu0YzPUMphkCFoewu3jyotDrgfR4fdYy6aO0SAilt4yNz75G51tyzx
	Qlsr+RhIX8KtYqRln4J2i5AyHp5Q3f7W0ln2Ujxv1Q==
X-Google-Smtp-Source: AGHT+IEgwWKcMzYv2YgCJ9iKeHtW96ANlFuqYy8YbMj16EiyKQOBBTb8Hhk76XGxf99mys7KG424uVNDuDOhMlaLJ9A=
X-Received: by 2002:ac2:51b1:0:b0:509:dee:f70c with SMTP id
 f17-20020ac251b1000000b005090deef70cmr7961581lfk.27.1700588273429; Tue, 21
 Nov 2023 09:37:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAPnjgZ3=HxH10KYkrE+1mYtPiYe4KJMD+zekTjpq6oq_qZ5kxA@mail.gmail.com>
 <CAMWxwJ1MbJ1US8g2-hXGbr-X4RncioHn9MTp9YK=8kXaQS4srA@mail.gmail.com> <CAMj1kXG2GxhM2nz04SEoj+FLyODs17pF7wBFqN0qXkOWhVHxcA@mail.gmail.com>
In-Reply-To: <CAMj1kXG2GxhM2nz04SEoj+FLyODs17pF7wBFqN0qXkOWhVHxcA@mail.gmail.com>
From: Simon Glass <sjg@chromium.org>
Date: Tue, 21 Nov 2023 10:37:37 -0700
Message-ID: <CAPnjgZ0YqiOuqCrfA9nZ_PD-Xep-T0YhR5Sxdwb=5Z0583UQJw@mail.gmail.com>
Subject: Re: DMA not supported below 4GB
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Lean Sheng Tan <sheng.tan@9elements.com>, 
	Devicetree Discuss <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>, 
	"Guo, Gua" <gua.guo@intel.com>, "Chiu, Chasel" <chasel.chiu@intel.com>, 
	"Dong, Guo" <guo.dong@intel.com>, Maximilian Brune <maximilian.brune@9elements.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ard,

On Tue, 21 Nov 2023 at 10:31, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> dma-ranges is supposed to handle this, but I'm not sure how well it inter=
operates with SMMUs (which remap DMA addresses into a virtual address space=
, and this can both solve and create issues when it comes to DMA address li=
mits).
>
> Adding a 'no-dma-above-4g' property is a bad idea. Not only does it resul=
t in potential inconsistencies wrt 'dma-ranges', it also only describes 32 =
bits of DMA addressing capability, and other DMA addressing limits exist to=
o (40 bits is also common)

OK, thank you for that. We will use dma-ranges for this.

Regards,
Simon

>
>
>
>
> On Tue, 21 Nov 2023 at 12:01, Lean Sheng Tan <sheng.tan@9elements.com> wr=
ote:
>>
>> Added Ard for some input on this.
>>
>> Best Regards,
>> Lean Sheng Tan
>>
>>
>>
>> 9elements GmbH, Kortumstra=C3=9Fe 19-21, 44787 Bochum, Germany
>> Email: sheng.tan@9elements.com
>> Phone: +49 234 68 94 188
>> Mobile: +49 176 76 113842
>>
>> Registered office: Bochum
>> Commercial register: Amtsgericht Bochum, HRB 17519
>> Management: Sebastian German, Eray Bazaar
>>
>> Data protection information according to Art. 13 GDPR
>>
>>
>> On Tue, 14 Nov 2023 at 23:17, Simon Glass <sjg@chromium.org> wrote:
>>>
>>> Hi,
>>>
>>> Some devices do not support DMA above 4GB. Is there a way to express
>>> this in the devicetree?
>>>
>>> Should we add sometimes a 'no-dma-above-4g' property?
>>>
>>> Or should we be using dma-ranges for this?
>>>
>>> Regards,
>>> Simon
>>>


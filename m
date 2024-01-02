Return-Path: <devicetree+bounces-29215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 09290821FB6
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 17:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AED981F21C5F
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 16:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EA3814F89;
	Tue,  2 Jan 2024 16:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fwxI3gZi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7591B15480
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 16:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-5e778e484dbso82064937b3.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 08:53:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1704214420; x=1704819220; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2Q6Ke/W5X4fO2DtYIS/AqAWzxKtEj9CK+D3r9e36Hcs=;
        b=fwxI3gZireeKUbNOBeyITM/S/mHHK1wF6Rx3hywkPFoM6/YQ5hHJd1rtNv2MnfbjWr
         3a3QGlaZt8q9jiSZgPnrXl2nICqXOid7n342BF/V8WiYUryaG7Ni3hlbqfkAK5b5HdVg
         CsZxFQuV/rmxSnj22skAZySODp8rPDeWmhK/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704214420; x=1704819220;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Q6Ke/W5X4fO2DtYIS/AqAWzxKtEj9CK+D3r9e36Hcs=;
        b=q7yW74VW0GcLR01RrjOFMv4tp96pS3p4RYH4cINpQg/ws0K9dNtvo6CT0JyeESS1UL
         YMFdcjOv7oB5XflFiR2v2GnPqT+7jZE9fDCuBccaOFE3AcUyPlKl+4a79V+ISTA8lvSg
         V6XF93G6EIIAqBTt8vU0iaiPW7k670oXhz8Bcy3fVgdhug+0s9foWwI/B1FCD2oYxDyL
         tun03zz7UPkpN1L2Bf3n6A5XiwS5vaq2GbZYqO0rNvsB86wuzaA3yjfXwIVF4A8E6i2+
         6MfkT6WA2op1EaNmc0LEpJaaPT4kG3ut+bNKDuUj9ySQ0bpIkoesPNTnTgwJePt7cSZJ
         iqjA==
X-Gm-Message-State: AOJu0YxAu5XbB4V7N3olnm0fzdR6ucXylmHmWAfOiAGX6CPK2+bwnmbF
	eE3e0DDl5PzRh4W2IcghxH8UY50aewb3Qv6WaSDq2S3XmvxU
X-Google-Smtp-Source: AGHT+IGVAMtwy7VJGyqWNrf63994s+Etv1h82ZZSt4FVPSLxLNGVc5wBaU9o1UFO5jrE04SqB0IochBBDwRaWUrEmMk=
X-Received: by 2002:a0d:c884:0:b0:5d8:ba07:710c with SMTP id
 k126-20020a0dc884000000b005d8ba07710cmr12877750ywd.94.1704214420515; Tue, 02
 Jan 2024 08:53:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231226192149.1830592-1-markhas@chromium.org>
 <20231226122113.v3.19.I31d4dd6a7e5a3e5eee05c87b358e63cd1aa0e467@changeid> <170421131448.2926138.1861213132542999072.robh@kernel.org>
In-Reply-To: <170421131448.2926138.1861213132542999072.robh@kernel.org>
From: Mark Hasemeyer <markhas@chromium.org>
Date: Tue, 2 Jan 2024 09:53:29 -0700
Message-ID: <CANg-bXB_d11dN0afrW7G708-Mke4TZt-G3u5LoB7Bx0GgRs7hw@mail.gmail.com>
Subject: Re: [PATCH v3 19/24] of: irq: Add default implementation for of_irq_to_resource()
To: Rob Herring <robh@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Tzung-Bi Shih <tzungbi@kernel.org>, Raul Rangel <rrangel@chromium.org>, 
	Frank Rowand <frowand.list@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
>
> If a tag was not added on purpose, please state why and what changed.
>
> Missing tags:
>
> Acked-by: Rob Herring <robh@kernel.org>

Thanks Rob. They were not excluded on purpose. I just forgot to add
them on a few patches. I have a new version coming, and will make sure
to include them.


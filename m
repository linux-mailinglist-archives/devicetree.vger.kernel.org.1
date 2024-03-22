Return-Path: <devicetree+bounces-52472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 04815886C00
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 13:25:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD77E1F251D6
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 12:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E92933FE52;
	Fri, 22 Mar 2024 12:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QD75jSUP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B27D3FE3D
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 12:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711110320; cv=none; b=K1qRz5TlDuGyR1iZ40SS3zsteLPVqSjItqdzEPN2WW0ywDcRRNdVFLGlpBwC+HVgXB5XWY/IZ0H/6fw/+bD7EB4AUwGYrNxqwRMKUo/HQxitXUpS7IXsByzcoC05Rr4Ak2b4GvhP+eGmAsCMEbbRyneKh5MhlUAFvLGpk6SFtpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711110320; c=relaxed/simple;
	bh=ZEnIxGQIqrPER/t8ApwexaX5resinISqhwzMF02gDuo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=llohlTdDrSoXvA4LQbzz5wK2jufw9hr4Bs75Ft31NJ2ohh6zHNa3y/uQ8ncSGt5tmJzbHer37Uyz5cs1uOAYS1Gdo2OEDFAlNIfUWhZgay0nUuommsYPTTw8hYtAr+W7imR15hZUxsCzzEhBr/3w5b4vDAvvUZZ8T6PSlR/TdHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QD75jSUP; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6962e6fbf60so20375896d6.1
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 05:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711110318; x=1711715118; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jBLDXQz7Tm/l5pS6UUf5eGUMWwFYBh+cuJFlCxTgaWc=;
        b=QD75jSUPqIdWfpc5O6dL2nFUl8rQyo1c+FcP8ipJjfOC/DLTjJs4yravwFdziZWD1Z
         /T0Iqc4b5HWXT9vBJE/DBOYSZFyuxhnBx72hi/Piwr5aaIkIGfXcIYA1hUBQI237re6p
         WfWiCTrTnrGR93xN6iUW3DEpymmwVqf/SayDYNOr4aYOMmVuTS38ti/H11019kXq1ruz
         ZUz0WSr2hIHoO+kydEKf7ntyd+tXZ6hLbLehbU8/mMJ12i6PCj0PIMVHLTBPf+JNkuxr
         FHYpsNs1czAuScX9eIeaG1a1g8MUMaHqGkBO6T/uOPlLU0mwbxf3bcHYDU9V8vM5eGvx
         jv/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711110318; x=1711715118;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jBLDXQz7Tm/l5pS6UUf5eGUMWwFYBh+cuJFlCxTgaWc=;
        b=nWerhp8S0S1GGvC33BgUc4O+oRzhIvb+0ZsQwy8Bd/p66kvdbfckk9hQtOU+7YoGr/
         Lxx9L7aQtZYPXMN1TKtUpFSvO11vVoYW/+6KQ1mBQOzsV61sY11erQxRueCdcjiJoGIu
         6BONl1ILG2KXp7TxRgvUD4hiZjzfzq2cuKUzhKk5WpCs0t60UI64I0pvBBSsEz/oCKcU
         pjwDoi+0FdusfLqBWF0DvKNEE0W/4NolIuaUAgcdiPYDzX2xmVQSk0BmNFrMXmZcO8vz
         OXl3U4+67G18UjvBk5mwZ0SkY44b7KhxnuD61tJZHjLainSPKnn+ZpB0XnFdZRDeDTFW
         e9AA==
X-Forwarded-Encrypted: i=1; AJvYcCXw+HcfB6cMI896KEDdygvRS5RBragrU2UufzU7BBLPqxauI/36ISqsnWAZ3/YYDVVU8CHHX2AvXYtelfBK4x3Z8NPXjL7P8InFkw==
X-Gm-Message-State: AOJu0YxO9heGpF6ufVM7KnWK4ctSZhFmf532IMtmQafp2cOlt667uez+
	5FpdJtQSb1P+3kssChiUd/AUIZUBi1+PNXvyKK68ZJcHDm3JUV+PCD8NYMnIYXROFc1p9aBZ3fH
	/i8ddoeXnSBDXLYkH66CUY38IpGZxsPQvX9IbuA==
X-Google-Smtp-Source: AGHT+IGIExSUNDd4r7jVV65H6zHX9xhOASVzk/Kf4IvYae9WrM2l7rC7eu20JTysrN3EznovSYV/NmWRKgOzkgIigyE=
X-Received: by 2002:a05:6214:2a87:b0:696:1ffd:a32c with SMTP id
 jr7-20020a0562142a8700b006961ffda32cmr2045115qvb.31.1711110318092; Fri, 22
 Mar 2024 05:25:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240320020549.71810-1-alexey.klimov@linaro.org>
 <20240320020549.71810-3-alexey.klimov@linaro.org> <4d5b2da7-2a45-4a9f-8a96-a6840d2751a2@linaro.org>
In-Reply-To: <4d5b2da7-2a45-4a9f-8a96-a6840d2751a2@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 22 Mar 2024 12:25:06 +0000
Message-ID: <CADrjBPrthH4cKBpDeGV8u2ydErCJuqbdBhFQs+62k7bfPyJNvA@mail.gmail.com>
Subject: Re: [PATCH 3/3] power: reset: add new gs101-poweroff driver
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alexey Klimov <alexey.klimov@linaro.org>, sre@kernel.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, robh+dt@kernel.org, conor+dt@kernel.org, 
	linux-samsung-soc@vger.kernel.org, semen.protsenko@linaro.org, 
	linux-kernel@vger.kernel.org, klimov.linux@gmail.com, kernel-team@android.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, alim.akhtar@samsung.com, 
	linux-arm-kernel@lists.infradead.org, elder@linaro.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

Thanks for your review feedback!

On Wed, 20 Mar 2024 at 07:20, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/03/2024 03:05, Alexey Klimov wrote:
> > +
> > +     ret = devm_work_autocancel(dev, &gs101->shutdown_work,
> > +                                gs101_shutdown_work_fn);
> > +     if (ret) {
> > +             dev_err(dev, "failed to register gs101 shutdown_work: %i\n", ret);
> > +             unregister_keyboard_notifier(&gs101->keyboard_nb);
> > +             return ret;
> > +     }
> > +
> > +     gs101_poweroff_ctx = gs101;
> > +     platform_set_drvdata(pdev, gs101);
> > +
> > +     /*
> > +      * At this point there is a chance that psci_sys_poweroff already
> > +      * registered as pm_power_off hook but unfortunately it cannot power
> > +      * off the gs101 SoC hence we are rewriting it here just as is.
> > +      */
> > +     pm_power_off = gs101_poweroff;
>
> So that's a duplicated syscon power off driver. Why syscon does not
> work? syscon_node_to_regmap() does not return correct regmap?

Yes, for gs101 the regmap handling PMU registers is now created by
exynos-pmu driver and is obtained using
exynos_get_pmu_regmap_by_phandle() API. That was required due to the
SMC call required to write to these registers from Linux.

> If so,
> this should be fixed instead of copying the driver with basically only
> one difference.

Are you suggesting we should add some API to syscon.c that allows
regmaps created in other drivers like exynos-pmu.c or altera-sysmgr.c
to be registered in the syscon_list?

Thanks,

Peter


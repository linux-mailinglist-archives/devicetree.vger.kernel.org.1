Return-Path: <devicetree+bounces-1472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9C57A680E
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 17:27:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBFF61C209CF
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 15:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 517CE18649;
	Tue, 19 Sep 2023 15:27:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A871FA1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 15:27:31 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94EE3BA
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 08:27:29 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-53136a13cd4so2386249a12.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 08:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695137247; x=1695742047; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7IiDhzqVRViaPiP3Yrz/dU073U7qJAZKLNrsBgMV2Tw=;
        b=Eyt/iTBx3ftNJPnx8bmWplznR4eVNMbgvUnGKpBz6jyMSvdehWBbgBMhcm6D1B8JCX
         ofIJ5Ry+Q3l8vM3NCFDcYSwNsuZuD4itnd21mabVe/ERIOXOH1T6XkXxvxn0+4wNuQBD
         Ct6IWTTMY4oXGqE8TyCU5QjRmC9JN51vn6ctM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695137247; x=1695742047;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7IiDhzqVRViaPiP3Yrz/dU073U7qJAZKLNrsBgMV2Tw=;
        b=P5u7XAI+WZZUKrjYJ2tEmDX57Fs9xrUZ3lJCMAEqh7kcEWET+SLrukPOdPofJNC0W5
         pwh8ckmddaZF/KJLx4f8/9LF78EIGWnB86bjr/2kc7niYqJ+/Y9H1s//DnHLp5hMZDvi
         Lld5y9l3P33Fwm4uHVwgbC4f6SOAiMIqfbGO2p8wtR4TXzFvFP//Stt7Ye/gnyHv2oPF
         0rQS2ztzIj650RTVvZ3JoO1COBsEYGoDUN5sznqklS7TkUbWyO/J809a7nkeoWFURsao
         p2nuUoJOY+FFNl6PtyNqvRuS67uYAmW1RUr0il2V9c4a1W50YPu2vykHlfuQ/o0G2OY2
         1dgA==
X-Gm-Message-State: AOJu0Yyhhij0AOHr2X18RtwDHBpm5QxOVt9wld2R6V8aawkXsKWNnab+
	oQG0NOoq/2cDJ1HZG8REHj5nMACNsMb01VzCOF/4m9ajnfD9enO2Idc=
X-Google-Smtp-Source: AGHT+IEShODQtR6RpsbkfAzvQ/ybHrV9M952GG7Y+mw69LaMX/6Ci6R6Yot+oMMY9xVeekh9lPjb/tEBBQHmfDHNn1Y=
X-Received: by 2002:a05:6402:14c8:b0:52f:bd60:b54b with SMTP id
 f8-20020a05640214c800b0052fbd60b54bmr12402599edx.37.1695137247467; Tue, 19
 Sep 2023 08:27:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230907214012.74978-1-sjg@chromium.org>
In-Reply-To: <20230907214012.74978-1-sjg@chromium.org>
From: Simon Glass <sjg@chromium.org>
Date: Tue, 19 Sep 2023 09:27:09 -0600
Message-ID: <CAPnjgZ1Twk4Vq9OXEUeYUK4VXXC_niMzc47ZLk4Zf7f822K5iw@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] schemas: Add some common reserved-memory usages
To: devicetree@vger.kernel.org
Cc: Dhaval Sharma <dhaval@rivosinc.com>, Guo Dong <guo.dong@intel.com>, 
	U-Boot Mailing List <u-boot@lists.denx.de>, Yunhui Cui <cuiyunhui@bytedance.com>, 
	Chiu Chasel <chasel.chiu@intel.com>, Mark Rutland <mark.rutland@arm.com>, linux-acpi@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Maximilian Brune <maximilian.brune@9elements.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Tom Rini <trini@konsulko.com>, 
	Lean Sheng Tan <sheng.tan@9elements.com>, Gua Guo <gua.guo@intel.com>, 
	ron minnich <rminnich@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Thu, 7 Sept 2023 at 15:40, Simon Glass <sjg@chromium.org> wrote:
>
> It is common to split firmware into 'Platform Init', which does the
> initial hardware setup and a "Payload" which selects the OS to be booted.
> Thus an handover interface is required between these two pieces.
>
> This aims to provide an small schema addition for the memory mapping
> needed to keep these two pieces working together well.
>
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
>
> Changes in v6:
> - Drop mention of UEFI
> - Use compatible strings instead of node names
>
> Changes in v5:
> - Drop the memory-map node (should have done that in v4)
> - Tidy up schema a bit
>
> Changes in v4:
> - Make use of the reserved-memory node instead of creating a new one
>
> Changes in v3:
> - Reword commit message again
> - cc a lot more people, from the FFI patch
> - Split out the attributes into the /memory nodes
>
> Changes in v2:
> - Reword commit message
>
>  .../reserved-memory/common-reserved.yaml      | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 dtschema/schemas/reserved-memory/common-reserved.yaml

If there are no more comments could these two patches be applied, please?

Regards,
Simon


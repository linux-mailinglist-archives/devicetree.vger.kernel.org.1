Return-Path: <devicetree+bounces-9055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AD97CB5C0
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 23:54:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2ED41C20B4E
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 21:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F16DD38DFE;
	Mon, 16 Oct 2023 21:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dye2UvF1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3E438BBA
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 21:54:25 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15780FB
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 14:54:24 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-53d9f001b35so8687371a12.2
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 14:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697493262; x=1698098062; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sFyszUAKH1Bi59GLrKaH1xZ412ynyNyWfhIyPM619dM=;
        b=dye2UvF1lKkLi0fV3wHVTP6JUvjcdYunlfnQzKTUzXyrJbQd4sWyBw5B1YF8VxTgM0
         gbVwGMogydnomEriyQ/r0zm3ManSGscCp/qO7p/dCuqZz0tQezxkjVOgF7U8hI7Xnlix
         c4d7s2iyCm9vADjIYnBPN5QZeFASBv7lAvIL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697493262; x=1698098062;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sFyszUAKH1Bi59GLrKaH1xZ412ynyNyWfhIyPM619dM=;
        b=TMfRG9oxJgP1s3JOQSlDRGHrEPA79h9WkmvM2SCmRd5NnxOetVJiSxSzpoSVO6RLKN
         36KMJtR1jj+B7oxaFdxr/7OMt48iETVI6lqWFjCmc8hgUu/H9sIRDvFndmUdFskWzlQm
         3O8BzzUW0EUfT6OfsKZDjCCFasaYA5i59rZYqjqo/WPVzQF8bSe42KsiJ8EnQB2HF/Dj
         TPN46qhj/9yoSR9x/7sjpZ+DtKE0BR+bUVHUW6NXDt6BO6YplUYORTW1bMfYAVyaG0dF
         Eh6WAjrFcmluUmrfp8GwwHKadF2vIaFB1S+/5E+yhwauQ2VRLo4ld5KwhIhzwkcONwlF
         Pr0g==
X-Gm-Message-State: AOJu0YyAKLc24hFm5uaEWTrFH/wf0JkblZAgs0vXrNooYG1p5fM47NJY
	gxnjAHc1V80wzuDi5K/WiH3HeJxLXh1ekmZ8QVg/mA==
X-Google-Smtp-Source: AGHT+IGZoGGJeNshHE+uBukBw1GOLWeEgu2vwWq8BjnV21H2X6/a8NzxZphGstDjGzZP8Yp311u7fu7RX+UlFVrwkP0=
X-Received: by 2002:a05:6402:34d3:b0:53e:467c:33f1 with SMTP id
 w19-20020a05640234d300b0053e467c33f1mr440773edc.8.1697493262341; Mon, 16 Oct
 2023 14:54:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926194242.2732127-1-sjg@chromium.org> <20231016195728.GA3574754-robh@kernel.org>
In-Reply-To: <20231016195728.GA3574754-robh@kernel.org>
From: Simon Glass <sjg@chromium.org>
Date: Mon, 16 Oct 2023 15:54:10 -0600
Message-ID: <CAPnjgZ3xo6Rz8dGe+UtNxv9O96sbaphx0DYkKcRNd1m2nozQ3A@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] schemas: memory: Add ECC properties
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>, 
	Lean Sheng Tan <sheng.tan@9elements.com>, lkml <linux-kernel@vger.kernel.org>, 
	Dhaval Sharma <dhaval@rivosinc.com>, Maximilian Brune <maximilian.brune@9elements.com>, 
	Yunhui Cui <cuiyunhui@bytedance.com>, Guo Dong <guo.dong@intel.com>, 
	Tom Rini <trini@konsulko.com>, ron minnich <rminnich@gmail.com>, Gua Guo <gua.guo@intel.com>, 
	Chiu Chasel <chasel.chiu@intel.com>, linux-acpi@vger.kernel.org, 
	U-Boot Mailing List <u-boot@lists.denx.de>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rob,

On Mon, 16 Oct 2023 at 13:57, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Sep 26, 2023 at 01:42:38PM -0600, Simon Glass wrote:
> > Some memories provide ECC detection and/or correction. For software which
> > wants to check memory, it is helpful to see which regions provide this
> > feature.
> >
> > Add this as a property of the /memory nodes, since it presumably follows
> > the hardware-level memory system.
> >
> > Signed-off-by: Simon Glass <sjg@chromium.org>
> > ---
> >
> > Changes in v7:
> > - Drop unnecessary |
> > - Add a blank line between properties
> >
> > Changes in v6:
> > - Use a number of bits instead of a string property
> > - Fix inidcates typo
> >
> > Changes in v5:
> > - Redo to make this property specific to ECC
> > - Provide properties both for detection and correction
> >
> > Changes in v3:
> > - Add new patch to update the /memory nodes
> >
> >  dtschema/schemas/memory.yaml | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
>
> Applied this patch.

Thank you for your help and guidance on this.

Regards,
Simon


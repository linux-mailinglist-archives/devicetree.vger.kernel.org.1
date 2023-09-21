Return-Path: <devicetree+bounces-2146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1BB7A9BD6
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:04:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0CFDFB21399
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E266E31A6E;
	Thu, 21 Sep 2023 17:52:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD1547350
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:52:29 +0000 (UTC)
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BD4388ADE
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:51:56 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-274972a4cb6so873164a91.1
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695318714; x=1695923514; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vWFU9+92AYyGMCA99CDBDorNnlMqG7zRdUzXQ1eXTkk=;
        b=Od8ndDDrI0GnlO98cbotdDaBwFcPynthufXqPrznSgahLFzNWYWmZ0S5WyOl+rwj7t
         nQb9mIneYAiVJHFuE6Ko1PurICfW8JGXIY6wl3e64O2hmZ1k7nUZiqykIJXSkbnsdKSO
         WtW5AlbzE0pOmEVKN/xAo3DNTzqyS+QOOcvGbTe28JUaYFhIDhGnliexOMrdEusiUQa8
         X/+TL0qNbzjjZBEVvjOhTNxGaBbiCUsq/cqMLYRaAv3kEhzU+NEtq3bubvcRrsr66e/x
         uHdADtV+gYiL3cE0xiEjMXFr712epOTaB0KDbdDMmZZ6BR8EHEvczowkfI+irXpBXlxL
         jReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695318714; x=1695923514;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vWFU9+92AYyGMCA99CDBDorNnlMqG7zRdUzXQ1eXTkk=;
        b=DyVlIlJuc5ybHUjxBksOqvCMrMjzsx1SUn+2UKis/TMkVc7NK5XOMcc7isFY4lyIj5
         3KuID3ab5yG1yAX/9Jc7XLFj8RV84kE49KS6mdaruYwTtWwlSAHuHutgzWoI5f6UMxKB
         L8easPYHx0BsyjTFb/eEOuiRc6BvkI9m+7gR32P7naaahrKawFffSwbHg79PfqcYCAIh
         9X+0l/mhAFfFYOwOfVHuiNFxbV93dS1Py78D/hAuE6iPd72SfvcSIy94lplQgXVNJmiC
         53mwDwKwCTSt+xAmiMaZKDngPs+j0kDV0PcfUa9XUvCe5XkgPlNivfkBv/dpQSlFYVCe
         jTHg==
X-Gm-Message-State: AOJu0YxiAo+xJi6DwzdHcykGCNL1oXpnHDaGW7U3wxRmWVX5wFcmuO9y
	CTwj/O2nP6KzmHd7D2qVQ16Ybij1478Bb5Hcogy7DZ0pitCY6OKsk7UCYA==
X-Google-Smtp-Source: AGHT+IHJxqgLJEndMmGqkfQ92766qN8ENU8GmtSr+RVPCuctnkalJLmRsrmNuPCC5CHKCSgb8HOSlhgw01Ml85LsKBc=
X-Received: by 2002:a0d:d650:0:b0:59c:6ef:cd55 with SMTP id
 y77-20020a0dd650000000b0059c06efcd55mr5567040ywd.8.1695308009156; Thu, 21 Sep
 2023 07:53:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230911161518.650726-1-vignesh.raman@collabora.com>
 <a411b3fe-6222-4c86-8d71-afa992ea2f93@collabora.com> <29e47c3e-e10d-9268-93c7-133c959c5a82@collabora.com>
In-Reply-To: <29e47c3e-e10d-9268-93c7-133c959c5a82@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Sep 2023 17:53:18 +0300
Message-ID: <CAA8EJpo13qR5hcjvQvfSwEPNPn2bj-T-qUHFgfcChqD1N588eg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: apq8016-sbc: Add overlay for usb host mode
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: Helen Koike <helen.koike@collabora.com>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	daniels@collabora.com, emma@anholt.net, robdclark@gmail.com, 
	Maxime Ripard <mripard@kernel.org>, David Heidelberg <david.heidelberg@collabora.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, 21 Sept 2023 at 17:01, Vignesh Raman
<vignesh.raman@collabora.com> wrote:
>
> Hi maintainers,
>
> On 12/09/23 22:39, Helen Koike wrote:
> >
> >
> > On 11/09/2023 13:15, Vignesh Raman wrote:
> >> Due to the presence of the fastboot micro cable in the CI farm,
> >> it causes the hardware to remain in gadget mode instead of host mode.
> >> So it doesn't find the network, which results in failure to mount root
> >> fs via NFS.
> >
> > Just a context for others, this was part of this patch series
> > https://lore.kernel.org/r/20230908152225.432139-1-vignesh.raman@collabora.com
> >
> >>
> >> Add an overlay dtso file that sets the dr_mode to host, allowing the
> >> USB controllers to work in host mode. With commit 15d16d6dadf6
> >> ("kbuild: Add generic rule to apply fdtoverlay"), overlay target can
> >> be used to simplify the build of DTB overlays. It uses fdtoverlay to
> >> merge base device tree with the overlay dtso. apq8016-sbc-usb-host.dtb
> >> file can be used by drm-ci, mesa-ci.
> >>
> >> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >> Suggested-by: Maxime Ripard <mripard@kernel.org>
> >> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> >> Signed-off-by: David Heidelberg <david.heidelberg@collabora.com>
> >> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> >
> > Acked-by: Helen Koike <helen.koike@collabora.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> >
> >
> >> ---
> >>   arch/arm64/boot/dts/qcom/Makefile                  | 4 ++++
> >>   arch/arm64/boot/dts/qcom/apq8016-sbc-usb-host.dtso | 8 ++++++++
> >>   2 files changed, 12 insertions(+)
> >>   create mode 100644 arch/arm64/boot/dts/qcom/apq8016-sbc-usb-host.dtso

-- 
With best wishes
Dmitry


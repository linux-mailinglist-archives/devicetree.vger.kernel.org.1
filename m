Return-Path: <devicetree+bounces-87620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9FC93A0EC
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 15:11:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7634CB21D59
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 13:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B97D15253B;
	Tue, 23 Jul 2024 13:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UfExwTDo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9DB152531
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 13:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721740254; cv=none; b=Y2ag0GfZncNoDads3kvA8alftleaqXeMuayhtDsjqpu/Ffhug36dih7PS8vA0lhJa3Buosjf80KBKoG2vYvCwklmPjgVANDX+icESF1XeHCauw74Cdwkfu4xaJouPsTpHtVjddi6I8+RxILSYzvNakXrqud72i94IcVViJKOUCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721740254; c=relaxed/simple;
	bh=6NFe+UuP3D7zvAc6kR1jN/x/KwMgpYVxrA9lIUJcPSg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X2rCbcxA9v3LPRWHUEO33RR+zC2ehpjR5gQjohImb7Z0rCgdwrHJLuG8ieONveDul1AUx26ywgen8dp3CTWBz10jH/WummvxyCgCZw5+6qDKzKj+yIoBPwyIuAeg3rnud+DCJsx8kZyHEFZqJ77JgsiBKDaAmDDlXtsLvG5+qqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UfExwTDo; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e05ecb3dbf6so5305487276.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 06:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721740252; x=1722345052; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9S9caq5ixK7RVU119zrmlgox7IJy9AQQzneZ4xlUEts=;
        b=UfExwTDoTEWUcUnwXqB2ORdXGJD1uKC/2VttyKY03KjmPXFZlIloR20iFPnOL1pmQM
         MucIuhedsS8rCxMupIyce+YmDwIMgq+gJYfxUU+2WJnDxCXAKDhz/sM808Nkc92yK8F9
         DamF5Xysc8UvNLI7lx+Dq7S0w/auokc/poCSzwefRac0yQOwT2ZciRGddXDck9507dGb
         TCP6btJZTv3saqsNdgaWGe8h78dTicJs0DrSQ2MFvGdtT2DZodkDHBLQ5UpS/2O29Buq
         B8EyFp3f/Jt6sXCciNxEBCd7t5GVzB78nhnNfXmv+YYJ5e8OIIKHFNsyjH1POICXhjfm
         HkIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721740252; x=1722345052;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9S9caq5ixK7RVU119zrmlgox7IJy9AQQzneZ4xlUEts=;
        b=H2JZiVtUkwb4rKSyJe9DIdEGLT2/eJyto4z7RJ8KqyCmtznd9KcacyTrg+mKkzkdo+
         c/f1qqCHUm0G5AdH5x0EgbbS4cORd5sUXYPqK6MJXhXSKGbd5bMz61V9QAPxY+Wj3nZa
         tQkrDaTmdzWTW29jnbHNg1xmcF5VPDfAOde1N5Ez8rDCmirTGXKIQTe2yncp3a1igDq6
         Dau66DOsvW+QS1euMh7FwuMa3O6doo/MQCli/9n/k3/Yt8vKIon4Kqn2XglWlLjXB8xv
         w+ROv/M0JEki6SjxtBLRRWKBmBPWzq2qaBJ/I1+D9wlAmSMw0hK5LkYEvVc4Rgm2cKEi
         3hhw==
X-Forwarded-Encrypted: i=1; AJvYcCWapHVmjsC0wJmN4Ecvy7RN7zL4HlbtWMWtpBlI1DGCI8iCwpN5cLfM9JGLrR81GJF78nvu6zUZgyPxJ3nfegm7C3mYF/ZLtT1kfA==
X-Gm-Message-State: AOJu0YxrFnQTbE7F5nospPkE0PKgBt2pK1q9bq1sYWRmYGDjumruAJ/4
	n8r+k94PGJCjUJ6BDAVqb9D5CV3BDX+Igx51gz4Q1HZqVjJNdSqf1Faxo+J6ZELqucGGFuqF6Az
	+oNOKC+qoSinpQwF0ovr73lG3H4Qp164gdgTjUA==
X-Google-Smtp-Source: AGHT+IEvHl3fw0AI0tCkrIySzqAkFe181rizQvmQiBdjgb0qmyADd+fwF1ufcs4Jld9VZVuq1IfAGCuddousT9eYlYU=
X-Received: by 2002:a05:6902:e01:b0:e06:df51:fda0 with SMTP id
 3f1490d57ef6-e08706a4dd8mr13265905276.42.1721740251724; Tue, 23 Jul 2024
 06:10:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr>
 <20240627-hdmi-tx-v5-4-355d5c1fbc3c@freebox.fr> <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
 <b6f6c845-6094-44ce-8ad0-ed4f6d353cec@freebox.fr> <CAA8EJpqrAFKCr63JHEpZ3b3zdRfoNXoJP6SqKDOO4sqc=c6YdQ@mail.gmail.com>
 <44101ecd-61f4-4609-bb22-12b40b692552@freebox.fr> <CAA8EJpprtmefNM_CJFRbYVNxOWUVVWbedBq44r7GXOdDrQ2WjA@mail.gmail.com>
 <04ef978f-2bfd-46cc-a9f7-40a6f1c507f8@linaro.org> <7d34a857-6495-482b-9070-1817c88c9913@freebox.fr>
In-Reply-To: <7d34a857-6495-482b-9070-1817c88c9913@freebox.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jul 2024 16:10:40 +0300
Message-ID: <CAA8EJpo_ki3fxR4dmobMH_CiYWfb2ZOHwiY8e-McKR8xqU9jbQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Jeffrey Hugo <quic_jhugo@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jul 2024 at 15:57, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
>
> On 23/07/2024 13:45, Konrad Dybcio wrote:
>
> > On 23.07.2024 11:59 AM, Dmitry Baryshkov wrote:
> >
> >> On Tue, 23 Jul 2024 at 12:48, Marc Gonzalez wrote:
> >>
> >>> On 16/07/2024 18:37, Dmitry Baryshkov wrote:
> >>>
> >>>> No, that's fine. It is the SMMU issue that Konrad has been asking you
> >>>> to take a look at.
> >>>
> >>> Context:
> >>>
> >>> [    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> >>> [    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> >>> [    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> >>> [    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> >>> [    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> >>> [    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> >>> [    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> >>> [    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> >>> [    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> >>> [    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> >>>
> >>>
> >>> As I mentioned, I don't think I've ever seen issues from cd00000.iommu
> >>> on my board.
> >>
> >> Interestingly enough, I can also see iommu errors during WiFi startup
> >> / shutdown on msm8998 / miix630. This leads me to thinking that it
> >> well might be that there is a missing quirk in the iommu driver.
> >>
> >>> I can test a reboot loop for a few hours, to see if anything shows up.
> >>
> >> Yes, please.
> >
> > Yeah I do trust you Marc that it actually works for you and I'm not
> > gonna delay this series because of that, but please go ahead and
> > reboot-loop your board
> >
> > 8998/660 is """famous""" for it's iommu problems
>
> [   20.501062] arm-smmu 16c0000.iommu: Unhandled context fault: fsr=0x402, iova=0x00000000, fsynr=0x1, cbfrsynra=0x1900, cb=0

I think 0x1900 is WiFi.

>
> I get the above warning pretty reliably.
> I don't think it's related to the issue(s) you mentioned.
> System just keeps plodding along.
>
> Regards
>


-- 
With best wishes
Dmitry


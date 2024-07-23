Return-Path: <devicetree+bounces-87560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C8645939E65
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 12:00:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6AB741F21C3E
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 10:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AB4214D28F;
	Tue, 23 Jul 2024 10:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tGvWfzek"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D526A14D6FF
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 10:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721728804; cv=none; b=FPF/ijL4wdM7xjEKNDDclK8/EL1LuwUvMOrajG6oQb73xnlJvJP1/3iQ3ZLN2nY5x7xzWwy2gJHla6LjJVb2ky3MOUaeU4cws/rZvH6k8inOh1o0UzeBDMyJRSGoSFKd6wTwjOCwWA/t9EztcjJpSiRrX+rB4i7b1+ezmkc5p7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721728804; c=relaxed/simple;
	bh=kk+j2Ql6QbWJ+8iVDFCSzMYsYxcq5fYQlSZN0WTgnFc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=shMT1wSBu9IYxmNsBEXsy7wkSTDvIu3JkoFdXbZvNVgo7sMQHKD+qj4kJ6nsZ1NACPp38IQTf0okwzvXcOYZUOHK8alLRlLHNWXqBGtJjxNUTbiQc6I907ubZ+xT8Xny3pmHvPPZaoEbImTThTBX+h/cDRmF+w9CTS0v81u/L4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tGvWfzek; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6678a45eaa3so50841827b3.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 03:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721728802; x=1722333602; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zZ9Qf7tzxpC5iei1isMPCv59BXDJInOL01TWRb+zzks=;
        b=tGvWfzekownXT+fHIvqVMu/Ypk5Bqn+H2v3qbFEUb8EVO6Hf60ofFRBaVfrx6I9Q8F
         zXz/kDDkL4K9RAQsQqZrlysKFLqaMqFuj4bMpnoSl2wnzeujU5LzDwox0KgMs3ZAvfy8
         AjYiXOMq5S+Ep1ubp5TSRWSbWxqEOifdFauk33FLppTo5JJRJbfe7shLPUIEEF6c03C5
         +hZOzNvO5QwvzIsIa8G4GK0K/vUAwWu8sdq4QSRBW7JPX0ZPsfmP+VDbnggraUlBFwNz
         x9Mc2cdNQFZodHp5CfvOx7KPelI3oVQNy7xUrZ6muMm2/0ZhcSwoPbBqys8BXZx14Hot
         ralw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721728802; x=1722333602;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zZ9Qf7tzxpC5iei1isMPCv59BXDJInOL01TWRb+zzks=;
        b=keApP+OQkB3jeIvA/A7n6+hgAeicjAzZb4w1Bt9DUNMqzpcTlSNcndbVrbPSIj4U2d
         F9S1sHPcoaWoYOOnnC9qB/T8fxj8ZLJvwU0fGCdXmtX9O9adHIr4B+V72+VFhbcW4tbm
         kXWvGAoHVIO5zjo/LrYzGXnvs3V5tANaG8/srKgT85BJiJzaSB9i0+VvjYZ3fpufEoDz
         sKkQ7c9It3KDx0gOY4aq6TYBLa34DmLLhyrhKhZ8n92eVfw5vA5kaqnkYI2rHjVCBr0F
         6Sdq2LgU85e0vHnVDGW9L3HpPWWQuCk1ub/trX1Xc9Xg3SvGd/eOzdhEi6J4c7qkcvXK
         qV5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUI1Q05UdLB6+WItV+BXSq3drCJCwAwzdzz8b32VAH5qWSGCkLAzBXOU+NaLyLfrAu+QvUfwgnR8oQVQwCRTWfUiDFXHwi/0YjYnw==
X-Gm-Message-State: AOJu0YyJA17QSoFPCkGzebWEAH3aWNNfRVWFgV5qfInRoj+e9ImVxxMF
	zRNpfQlqzOdkeEQ3mn9e10rh8au4TCOqgCKfJakuXnxTq90MnAZa2JCVk7qJ0QCr6iPQkbvV4Gp
	y9FpCHrbrGa9JpXn2vXzSvP3VyrAdw+j8Nma9iA==
X-Google-Smtp-Source: AGHT+IEK7eHMKU1XQHiBgtOg3dXLbIEHt6ytDKj/LYQe0cCDUemYTFAfT3Z9In6r8gnhOF50cJznogYo2H/FLxdYzK0=
X-Received: by 2002:a05:690c:2fc1:b0:665:7661:2b7a with SMTP id
 00721157ae682-66ad8dc2403mr100520887b3.25.1721728801875; Tue, 23 Jul 2024
 03:00:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr>
 <20240627-hdmi-tx-v5-4-355d5c1fbc3c@freebox.fr> <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
 <b6f6c845-6094-44ce-8ad0-ed4f6d353cec@freebox.fr> <CAA8EJpqrAFKCr63JHEpZ3b3zdRfoNXoJP6SqKDOO4sqc=c6YdQ@mail.gmail.com>
 <44101ecd-61f4-4609-bb22-12b40b692552@freebox.fr>
In-Reply-To: <44101ecd-61f4-4609-bb22-12b40b692552@freebox.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jul 2024 12:59:50 +0300
Message-ID: <CAA8EJpprtmefNM_CJFRbYVNxOWUVVWbedBq44r7GXOdDrQ2WjA@mail.gmail.com>
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

On Tue, 23 Jul 2024 at 12:48, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
>
> On 16/07/2024 18:37, Dmitry Baryshkov wrote:
>
> > No, that's fine. It is the SMMU issue that Konrad has been asking you
> > to take a look at.
>
> Context:
>
> [    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> [    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> [    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>
>
> As I mentioned, I don't think I've ever seen issues from cd00000.iommu
> on my board.

Interestingly enough, I can also see iommu errors during WiFi startup
/ shutdown on msm8998 / miix630. This leads me to thinking that it
well might be that there is a missing quirk in the iommu driver.

>
> I can test a reboot loop for a few hours, to see if anything shows up.

Yes, pleas.

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-48710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73333873261
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 10:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A6FC2916CB
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 09:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3C6E5D90F;
	Wed,  6 Mar 2024 09:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gUGI+jie"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3080D5C5E9
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 09:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709716799; cv=none; b=kfPwLUIvPl6v6i/gRoltv3yxZM6OOoo/GUdqcFdhoYYfWVzp6efH9FXM7rdLJrjX1+wfT/0gaGgp0RNz4wwtih6HBGxoMANjJOSEnBCOgrEAden4uwTmhywDagcZT8IlFGxJN0c7lED9Qtw3we8gFQhbEZ7ilzDl+3oIwWfenLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709716799; c=relaxed/simple;
	bh=wnA4PSgiocDkaO9a9fgbw4GvaFZtLsr3ns0/Zd4EM9A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kURnju0crKtqzfYN1HpDK6MIdhdhJT8kZWX26M2WJclLMmn5wzf493H/PozSqxw0uA5ymzhxcKtm6oEKf/roQv2dE5PAY7DRB051ukJdPiEAOtNGZWCHRVqqOc99Bi7IYb1KXfEH56d440nCxl9VwfzQE8ARkNyJCJQCU5H+yh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gUGI+jie; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6098a20ab22so44485117b3.2
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 01:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709716797; x=1710321597; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aiSYTBBix3pZDJn7hX0hlhePaaHKbsR/+LCZ9GmLewo=;
        b=gUGI+jieFYCwkisnrcpYvaN1JhmccfRORCE2xKGr8QWipN+Cz/gl2MMHhuYtIW1gIt
         gqDr4W/d18XnBLY6nW85KhlyxMLb11m1X9roYK+KlgGwCF446cjE9VeEGkV/rz0appLJ
         MKrKLRjDLjDz5UzpizsTJWVUNhvpBMU5OZbhJJTlYsfZkNRF2OU7/ax7wQZrDZUoQcys
         sSP7m8gBHJpWLy1ixNieTeRFLiZQTc5hBn7nUecObxXENwTrqoDmRGCON8sD3l6SoDp7
         mJ/0u0ZGjzY6RYHb+ZAZqqQeo4B4aR5esijQmCMz5JN1L+bB/KW+mKDyCZ4b6esXsWkV
         e0/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709716797; x=1710321597;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aiSYTBBix3pZDJn7hX0hlhePaaHKbsR/+LCZ9GmLewo=;
        b=Gruh1AnNTrfnkHZOLwVXk0rvDBRTassebuiAONAqMmrvPDnDuCsJdakoEkNbS39EPw
         HElQPwBcPnNWLUziHuFrD8aLbyqyEL2/WzzLFD6Tm2o7OisFMT7JGeFGZ9HsexJsZj/f
         1IGhKuhY2PiF8pA4aePVsxRaqaQ+1dX/9JY9iWoXA2ekCE3ipk1cGrO4WkGtz7WAO1ee
         QLHPYOjREIPT0cm8Z9JAWKfI03WPIryVdiaqPtWRKBTq937szt5/HPZFXqKqkg+5UvlI
         3UT4hYfxwexYmpPgMKvP/bmBvmqokuKBLL0PzheDSYGjxo1Aflyt44bao3E7zOreBlwI
         EcGg==
X-Forwarded-Encrypted: i=1; AJvYcCX6rVWIYP3pyolyQWnPwOW1/oKgcGQZmqlcS1Aw1JvMP6b8tGKw+nqhf2dEMydaOfHTcr79mMYS8LLbnrlj4lQEIn204IiPkJXRnA==
X-Gm-Message-State: AOJu0YwhbsZggvLAp0zQPi1ckjL2No8bGqopsp+ARWSfqOlBL7cmRsRh
	ogvL0jBBazZwN3RuJ70eVor56GklcWDMI2qabe8zejsvYX9/NsQwBnGgGrxFAdG4ramnNs0X1tU
	f8q+8BBI2VfCJqA/63wEXK7Icz6tp6JVV/aJNrQ==
X-Google-Smtp-Source: AGHT+IHyeYsmYRCqKOcgrD9TZYmlyF8yBHb/OxI5zro2IrJ1SSYv3q/VJtz9XdZp/Tg8ip3W3ePtZ58gw3pMgY9V8Yw=
X-Received: by 2002:a81:83ce:0:b0:608:4e7a:abc7 with SMTP id
 t197-20020a8183ce000000b006084e7aabc7mr14193190ywf.29.1709716797169; Wed, 06
 Mar 2024 01:19:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240305081105.11912-1-johan+linaro@kernel.org>
 <20240306063302.GA4129@thinkpad> <ZegZMNWxCnLbHDxP@hovoldconsulting.com>
 <20240306083925.GB4129@thinkpad> <CAA8EJppsbX=YXf1Z6Ud+YMnp2XnutN1hcb1T0KdAAWXFREVxXg@mail.gmail.com>
 <Zegzf_QKbr8yA6Vw@hovoldconsulting.com>
In-Reply-To: <Zegzf_QKbr8yA6Vw@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Mar 2024 11:19:45 +0200
Message-ID: <CAA8EJprsZz08Otk8hUxu3tQLXen2a3xeW58HLbNSSm=d2OAWkQ@mail.gmail.com>
Subject: Re: [PATCH v3 00/10] arm64: dts: qcom: sc8280xp: PCIe fixes and GICv3
 ITS enable
To: Johan Hovold <johan@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Johan Hovold <johan+linaro@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Mar 2024 at 11:12, Johan Hovold <johan@kernel.org> wrote:
>
> On Wed, Mar 06, 2024 at 10:48:30AM +0200, Dmitry Baryshkov wrote:
> > On Wed, 6 Mar 2024 at 10:39, Manivannan Sadhasivam
> > <manivannan.sadhasivam@linaro.org> wrote:
> > > On Wed, Mar 06, 2024 at 08:20:16AM +0100, Johan Hovold wrote:
> > > > On Wed, Mar 06, 2024 at 12:03:02PM +0530, Manivannan Sadhasivam wrote:
>
> > > > > Just received confirmation from Qcom that L0s is not supported for any of the
> > > > > PCIe instances in sc8280xp (and its derivatives). Please move the property to
> > > > > SoC dtsi.
>
> > > > Ok, thanks for confirming. But then the devicetree property is not the
> > > > right way to handle this, and we should disable L0s based on the
> > > > compatible string instead.
>
> > > Hmm. I checked further and got the info that there is no change in the IP, but
> > > the PHY sequence is not tuned correctly for L0s (as I suspected earlier). So
> > > there will be AERs when L0s is enabled on any controller instance. And there
> > > will be no updated PHY sequence in the future also for this chipset.
> >
> > Why? If it is a bug in the PHY driver, it should be fixed there
> > instead of adding workarounds.
>
> ASPM L0s is currently broken on these platforms and, as far as I
> understand, both under Windows and Linux. Since Qualcomm hasn't been
> able to come up with the necessary PHY init sequences for these
> platforms yet, I doubt they will suddenly appear in the near future.

I see. Ok, I retract my comment.

>
> So we need to disable L0s for now. If an updated PHY init sequence later
> appears, we can always enable it again.
>
> > > So yeah, let's disable it in the driver instead.
>
> Johan



-- 
With best wishes
Dmitry


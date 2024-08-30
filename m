Return-Path: <devicetree+bounces-98488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5BF9664E1
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 17:02:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A01E41F253FA
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 15:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2595B1B3B35;
	Fri, 30 Aug 2024 15:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tz0tsQls"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EA1561FCE
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 15:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725030167; cv=none; b=QAlkF5yvfPg4juK3FksSb6v7V/Cr2viydgNtDee5uWVkmghwKIuVAnZasWohhKTFCOHWLkVMdppGJMecYcCMVLguUfFbHHoLXfVaXxsPSFNViQyx6hsGH43eCpKzchEGtzNMzaHd6X/E+nP/BRlgmxr7pDA8GycBupfE94J/xWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725030167; c=relaxed/simple;
	bh=05Ug7ioAkdhFAePhII4Vc+gSjFm43GWdFX6ne6hrPGw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hGcEp1rrcODHGZAixPTjufl63+/88/C7MNkIz847FdpSm1Os0smpzN3eBnfQRTCzE1RovIAZS3I7T1Ei3p0E/HugXg0C0XkbzfKigShf5anQUHl++zTDKUxvDCvXA7NZfocnpfZT2ZrqyH1mF/odrrjgUPucRjhomOOoFaUmtS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tz0tsQls; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6c130ffa0adso19305847b3.3
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 08:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725030164; x=1725634964; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F2e3mmIPFWuSOpfLBsYpWRoU+NPRtJO5EHCOY7Ury58=;
        b=Tz0tsQls30XUI7rZXlceEJcqtV1U1dj8Ch3A3C/MSKj84mbUv67gwcnWl0yZ2/aZ30
         SBo9/O8X4/LJRRCTFQ3YKDJhkZ2Vb41RPnKTDWsit/UaJHVLz2L1+SC7n6y+sBRMsXWa
         zkewKKNmoaBPAdMJ44ARvvU2KZmpYzW788CqFx/5g0IaEyACQG28AnDD4zg7Y1DNSg1y
         9owrfZvY/j9Ptl9DFJHuDPHkso90HRowsRnUaNpJmpWUcbwYhVDM9NJvAcvDOjEVw74N
         0mD452E92RGjKIyUGThOyy8Y/5HegrS31dot3aX+soINVFh0axfQUpzFhj/ixnPZ5kvU
         aN7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725030164; x=1725634964;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F2e3mmIPFWuSOpfLBsYpWRoU+NPRtJO5EHCOY7Ury58=;
        b=kUfbRJHcNhgPILbFfmN81WU2xHkuwKWGR1ed7yF4Vey10ypVfb4tBP9xGkoEmBvVbq
         BdPc7ybzex0QAl+/zp7coSismQxGHvvFGTsRukGWIuIELSNJV/1vTRA2+ZAS5CkSZc2N
         lRkwSiLDxsCkejDZjhid40GK7DEHCGUhR1vcRQ7bbbMr+myn4jdzgbM53VZqx6OvxHoN
         zdvQUFx11P1wBsEH+7UhuOEhgNnUQD3kd/5QDgcYbMeD4eWKC06FCRrTj31HsQJ1/cHL
         ZSUy0xxQt0JUxi+UT3XFFnRgii2tWcCmmusbbg+YE70TE0s/wDsazRiKk22dsFK+5kMG
         /wyg==
X-Forwarded-Encrypted: i=1; AJvYcCX9GGfypAT1YBpFXiHLkH1SALhXHdgyKnHhCS5ezma6hZ/LlpiWqTKxc8D5q/ZRg5ymnbzAyuUx+Yt8@vger.kernel.org
X-Gm-Message-State: AOJu0YwBLkAHTUDE5k2WqunpV9c1BOybQ14j8FW3i36hZvrhR5gxRdVo
	XHQmdpUJXKz2yYEY/elDrAmPuQPGwOB8c6Na37Y4WUFGHePnndigZeckH+rdasv7ddoDw/i9Yd+
	fp8tyJjqY4osXBa9abVYZGXSD7pDU8mDX7pz23Q==
X-Google-Smtp-Source: AGHT+IFc//5kL8zjuzX0HATe2aqlD+/GQOHR2GsXykxt0dzQVL6MquQvcDRfkA8Djc2UfS/is6roCbJKiRofIJTKX+E=
X-Received: by 2002:a05:690c:f84:b0:62c:e6c0:e887 with SMTP id
 00721157ae682-6d40d88eabfmr26157167b3.9.1725030164245; Fri, 30 Aug 2024
 08:02:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240823-x1e80100-phy-add-gen4x4-v3-0-b7765631ca01@linaro.org>
 <20240823-x1e80100-phy-add-gen4x4-v3-1-b7765631ca01@linaro.org>
 <gvx3sdsdxigel3iwu7vgvvgxohvnaqq6suogsqojeumobhwhdk@5qct23m5ncda> <ZtG2dUVkdwBpBbix@hovoldconsulting.com>
In-Reply-To: <ZtG2dUVkdwBpBbix@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 30 Aug 2024 18:02:34 +0300
Message-ID: <CAA8EJpqD1XYbw35oxP4hWutbGs8nRTSwOsBAJcYGos8FBbAHew@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x4
To: Johan Hovold <johan@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
	Johan Hovold <johan+linaro@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 30 Aug 2024 at 15:09, Johan Hovold <johan@kernel.org> wrote:
>
> On Fri, Aug 30, 2024 at 01:42:10PM +0300, Dmitry Baryshkov wrote:
> > On Fri, Aug 23, 2024 at 10:04:15AM GMT, Abel Vesa wrote:
> > > The sixth PCIe instance on X1E80100 can be used in either 4-lane mode or
> > > 2-lane mode. Document the 4-lane mode as a separate compatible.
> >
> > As the patches were merged, it's too late for this series, but as a
> > note: we should think of a way to describe the PHY configuration without
> > changing the compatibility strings. The hardware stays the same, it's
> > just the number of lanes being wired that changes.
>
> No, this is not about configuration and we need two separate compatibles
> as the two PHY instances are distinct and only one of them can be used
> in 4-lane mode.

Ack, makes sense.

> The mistake was to ever describe pcie6a as 2-lane in the x1e80100 dtsi
> (and possibly also in the ambiguous commit message above). Whether
> pcie6a is used in 4-lane or 2-lane mode is determined by a TCSR
> register.

Yes, I was confused by the commit message. I assumed that the
compatible string is used to switch PHY modes. Had the patchset come
with the DT patch, it would be easier to understand what was going on.

-- 
With best wishes
Dmitry


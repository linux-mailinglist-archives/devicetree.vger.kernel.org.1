Return-Path: <devicetree+bounces-37787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BD9846317
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 23:03:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 478401C249C6
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 22:03:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7BA13F8D6;
	Thu,  1 Feb 2024 22:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="RXSBfRKM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403933FE37
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 22:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706824996; cv=none; b=N3ExV0KbedUl2N8TR2AGlcI7w7U62rEnHgJlpTXqiW9qza5ZbM0UMJB+Oc7KiJs1mIjK8d6JGYXTNPh2TjeYfE/MNjcdunJARPSn/2WdDNkDsSNQJe6tHWxMQm3NJIKXipza/qTrTJDUDYWwpo39SY1oFDps09ya7/bmeyk+1TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706824996; c=relaxed/simple;
	bh=/LHHNxpRNN+aCgLsWTGmEOOYGm9vuH7c1Ayn4+O4xdc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YSnNqyud9zPV9E0fee2ZD27OLiw9WbaupMQp0mKrCb2UrfnwXuKu8GBtgD9A4VnfvMNFubSidxsH/9eylWFKCpqFNuH3ulIBHIzDKKRH919zp0wNys0d9qLNu01GiLGb2kmaL2Rjd/wz3mx6uT/mo+StlHBJFFeV6o575D6xo00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=RXSBfRKM; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-290c5c705d5so297348a91.0
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 14:03:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1706824994; x=1707429794; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fLTCeqqs7LS1BVCIczTAghwYgdDv2RsofcZvmLSUpMU=;
        b=RXSBfRKMt+T7o7SltaQLbFSGUsw+HynjxxoQFPYUMoI7HiHipDjQKZOBKkNeqydL6S
         DCMf042U9nlsHmDPwHNDZqYoFGM0+5nllI7+QI9zdyG+6XCOZGxkd1Y45vnkJiWHanBv
         gI3DTBSjALB1Rr/i/j/Pnpsm1Z+K0yDG7U66E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706824994; x=1707429794;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fLTCeqqs7LS1BVCIczTAghwYgdDv2RsofcZvmLSUpMU=;
        b=SxCk1n6zQtCdW5HNVu7ERBW3TP0CQcZn2r8+hfKiMLpqXgn4DXGoO52Wx61Q55nWS5
         9gBTLRbuau0r2ehQwlkttAT0S14uMzRUCtWwc2uBrmjYAp7C6Kdv0G+QWHWy95xfyOn0
         GrsAoMgiZDMpMmgW3B1BZz1QLjx/HEvAeMbriDTENqDd4wnQVipDB8/QWCSi+qVObqoV
         x7SPHHGlyMF1fj3q4rcAFWrCdDpe+vWd07sFi21IOYuVC1g2tRXC6HVpPlpWlTCtZVOZ
         4KRbiL4XtlDImXWzorLW0dE2vwxb2m4tO0f23CjidjCCGtqrlwMKC+7pm9U3mhZLLhuG
         9+Tg==
X-Gm-Message-State: AOJu0YysAFRuLge+CxR7WsyV0qbEnqYRzpWD0B201Ovn9z+TO/OEz6Sy
	Ovxrni0VEGM+cZgZbE/2gBXZ/CRc1XGy3xogVgHXk+gvrm5RYBVfAA+Epn9vf7xN28T+w9S4jUE
	k6i7+50/YZBYrmduKwuufhop65heJzL4plvmR
X-Google-Smtp-Source: AGHT+IHzp2iFZWQZJSAO8Nbx7x3Phbo6qDk0kUZjKrjruGVs3zVDkcrukNb6evmHFZcstHgIheK2ue3bCxR47ylrMVE=
X-Received: by 2002:a17:90b:3911:b0:296:3de3:2b1d with SMTP id
 ob17-20020a17090b391100b002963de32b1dmr46804pjb.4.1706824994371; Thu, 01 Feb
 2024 14:03:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240119215231.758844-1-mmayer@broadcom.com> <20240119215231.758844-3-mmayer@broadcom.com>
 <279dab82-aff6-4d1d-b414-57910433e36c@linaro.org>
In-Reply-To: <279dab82-aff6-4d1d-b414-57910433e36c@linaro.org>
From: Markus Mayer <mmayer@broadcom.com>
Date: Thu, 1 Feb 2024 14:03:03 -0800
Message-ID: <CAGt4E5uucNbsyeBeTesQ9pJj+9gtOut7MaoOBhqVfVJL-Hjq1A@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: memory: add two chip-specific
 compatible string
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Rob Herring <robh+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>, 
	Device Tree Mailing List <devicetree@vger.kernel.org>, Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jan 2024 at 13:23, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 19/01/2024 22:52, Markus Mayer wrote:
> > Add brcm,bcm7278-dpfe-cpu and brcm,bcm7211-dpfe-cpu to the list of
> > acceptable compatible strings.
> >
> > Signed-off-by: Markus Mayer <mmayer@broadcom.com>
> > ---
> >  .../devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml   | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> > index e2b990e4a792..3f00bc2fd3ec 100644
> > --- a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> > +++ b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> > @@ -16,6 +16,8 @@ properties:
> >        - enum:
> >            - brcm,bcm7271-dpfe-cpu
> >            - brcm,bcm7268-dpfe-cpu
> > +          - brcm,bcm7278-dpfe-cpu
> > +          - brcm,bcm7211-dpfe-cpu
>
> Let's not make it more random than it already is. Feel free to re-order
> the two entries to have alphabetical order and then place new entries in
> proper places.

Will do.

> Best regards,
> Krzysztof


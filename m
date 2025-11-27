Return-Path: <devicetree+bounces-242601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6196C8CF75
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 07:53:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B8D63AA294
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 06:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 740AE30F80C;
	Thu, 27 Nov 2025 06:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ii9VecIH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0AE30E851
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 06:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764226403; cv=none; b=d4YlMJOy9Ndysj5e36Jo7M86pZkmCT+TPuRLgRay6ZyENShMKY0QFqg2jfqVi89UWnzzAE+sQDlRIkI7weJ4Nz6cFVoGd/yNt4/LG3t3IkkyAwaA8mrdb5Mu7IbBOOrwpClIfWQcmrypIHONiz89MzFBLpfGdnApPodFruGF8ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764226403; c=relaxed/simple;
	bh=d7//LDXSumbJJihDYb9lQKXayXscyZUEfuYyatlPbBM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tqZEH/CObOrp4y0xKfKw9n6r/PXqQ5MqHg3ivVRtkuNpIkSuhMp4AH45vDtXCkWH4PMShVCGvAbex2wZ/Xa6cuskzI/I54M+Ru5Vy0Bfad4judrV/2w8dSQwTufsyu6YF+WrUmi0JX9gkqULl65NPk7gUNYs3MnSksj+xqpgf9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ii9VecIH; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-640aaa89697so861084a12.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 22:53:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764226400; x=1764831200; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=amIVj6Ks/T19JV0gGyF2jbDkQIb/QLUq7CyFhU9t8+g=;
        b=Ii9VecIHteyNNorOsDsiWx99M11FUurqmHK0ZtmCRtlM9Dy0k9apEhvvHuowxEl/ob
         iQuwdxTCITH7ub0lAbVSYD2Jh7Hnnse6uD3bcIe5/WCyQOzRhAMEKEzzIr8OMkqjtWhE
         AbVKdD16docOC4RHzl+cj3epDzQfmEcceb08Izr8ByW/kH3sHjVegXJ2nUB2goL1LWX3
         f36FdB3UNGdGaDRu++5ObasowMbQJGBhcjPjt2uGZxsV3twcHxJ0C8PmB6/UjwVtQ+4q
         nTAvScMgLhjZOxnP+2cDXMMnOFhXny4hkYp2mLsiHsoEnbtp40Iq1nbGnpHiJFUrYwnA
         008A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764226400; x=1764831200;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=amIVj6Ks/T19JV0gGyF2jbDkQIb/QLUq7CyFhU9t8+g=;
        b=VlHoWGVyp0AeWQ9/lluRgzM76aUPiEZI4OiPOTulcGdhkzoJkGpMk7vSoQNvIbQdkE
         GFdrRIvo3GiFz4aCencSVw4tpXItck936AbWs6TEBEVBiPLdm0IQ9JWpKTTdOKYeJsew
         i+jQSmn3jFXPfrWtiGvVN8kvXQ7bmpYRuxdXYIgaGEvfTBHT9W93gnHmSDtO1n37nDqm
         FOTU8sBPKmO7zqB6pxuai3Rh+UKEBlSseafgOzKeOTRhUZ7nb/c2zBiZfL8hLrYf/pE/
         qSSr4DPbYlYJfyKcoCWnw4pdP0Rvbh8aN2mP6gsUGGMkLYZlY8F1xvG2OztDldPbTu3g
         W0rg==
X-Forwarded-Encrypted: i=1; AJvYcCUIZkj3Ascg1GhAU+bKueYQJRYNXx1qVm60mrPF13ilxNM1w6DcGIPsZZPj9u2bAthVenXJt0SLUY6Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzWNFKbhWOl/YgAfzTD/g+zwSdsLCh+lZhaJR9PXBSbHMFZnGQK
	JVxUa59U1Vuo0GdniqUiMcayzWJEhCcXBMa4GKDsTIO44lMepU1bySSLgjeFuclg7iaDzRXeVt7
	80IAsSAvgLNUf8bw+P3VvYqF1ikHEFni0hgJGrv4sgg==
X-Gm-Gg: ASbGncsW9F6fkwxpA1mhzcHN8fa3SP+JK2jkQV5cfvkd8xzNZjypegc8lISS/nu5Rp2
	BRtRMbT42637ECw08qzT4KxaLK0hezeZPII8+4pcKm7kuqsLHTJABeaCBMdrMHGu4Qe8Os/MTzJ
	DW3IKNEaNCx78njGbebsTEuH7onsfTkZwVecG693pO5epby4EANtfV4RXcAVzci5Vw9ALpbwVSt
	sp4F6+SUW1IR/D0zmksvCasP9FkYLMtxwYYiff2LZGKC3teYWbFKdLQOC56UUCA9vijSzzUDtG8
	MaU0Woq/Ul7KW5SmW7HIjruLnp/WM1qDo58=
X-Google-Smtp-Source: AGHT+IFLIn/EUIu7OxWHRGKTwIMu44EVUbsDDWFBWHXN/a3JCflama3pukcsqP1OVrFxH+zuhs1CaG1bDZ8ufGMAHn4=
X-Received: by 2002:a05:6402:51c7:b0:643:c8b:8d30 with SMTP id
 4fb4d7f45d1cf-645546a3a94mr21339934a12.30.1764226398995; Wed, 26 Nov 2025
 22:53:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <f8170513-e08a-46ff-9fb2-310f3e9c1ba4@oss.nxp.com> <20251126220441.GA2853437@bhelgaas>
In-Reply-To: <20251126220441.GA2853437@bhelgaas>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 27 Nov 2025 07:53:07 +0100
X-Gm-Features: AWmQ_bn9e_5hK3VL0q5IanUqFHYeiwridGkV71hmaSPq62Kxvcuwrn80xW_IyF0
Message-ID: <CAKfTPtD3EsD6yPfnE2nbnyuSfFeOEGyLm5jTQaEZP6Ro85e4JQ@mail.gmail.com>
Subject: Re: [PATCH 4/4 v6] MAINTAINERS: Add MAINTAINER for NXP S32G PCIe driver
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>, chester62515@gmail.com, 
	mbrugger@suse.com, ghennadi.procopciuc@oss.nxp.com, s32@nxp.com, 
	bhelgaas@google.com, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Ionut.Vicovan@nxp.com, larisa.grigore@nxp.com, 
	Ghennadi.Procopciuc@nxp.com, ciprianmarian.costea@nxp.com, 
	bogdan.hamciuc@nxp.com, Frank.li@nxp.com, 
	linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	cassel@kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Bjorn,

On Wed, 26 Nov 2025 at 23:04, Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Wed, Nov 26, 2025 at 03:47:46PM -0600, Ciprian Marian Costea wrote:
> > On 11/26/2025 3:41 PM, Bjorn Helgaas wrote:
> > > [+cc Ciprian @oss.nxp.com, see email addr question below]
> > >
> > > On Fri, Nov 21, 2025 at 05:49:20PM +0100, Vincent Guittot wrote:
> > > > Add a new entry for S32G PCIe driver.
> > > >
> > > > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > > > Reviewed-by: Frank Li <Frank.Li@nxp.com>
> > > > ---
> > > >   MAINTAINERS | 9 +++++++++
> > > >   1 file changed, 9 insertions(+)
> > > >
> > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > index e64b94e6b5a9..bec5d5792a5f 100644
> > > > --- a/MAINTAINERS
> > > > +++ b/MAINTAINERS
> > > > @@ -3137,6 +3137,15 @@ F: arch/arm64/boot/dts/freescale/s32g*.dts*
> > > >   F:      drivers/pinctrl/nxp/
> > > >   F:      drivers/rtc/rtc-s32g.c
> > > > +ARM/NXP S32G PCIE CONTROLLER DRIVER
> > > > +M:       Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>
> > >
> > > I'd be happy to change to
> > > Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> > > per https://lore.kernel.org/r/f38396c7-0605-4876-9ea6-0a179d6577c7@oss.nxp.com
> > >
> > > I notice that most nxp.com addresses in MAINTAINERS use "@nxp.com"
> > > addresses, not "@oss.nxp.com".
> > >
> > > Let me know your preference.
> > >
> > > Bjorn
> >
> > Hello Bjorn,
> >
> > I prefer "@oss.nxp.com".
>
> Done, thanks!

Thanks

>
> https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git/commit/?id=c7533471578e


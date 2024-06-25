Return-Path: <devicetree+bounces-79795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFC8916DE1
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 18:20:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AFCC8B24597
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 16:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB55E170847;
	Tue, 25 Jun 2024 16:20:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B7816D323
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 16:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719332428; cv=none; b=AVzrCfd3e12HIIEUoy68Z5pHBBWh6+XnfZ1Ls0nVRHsaQND6nYIzSLigmUWOQ6HiNUh+e2+WURKQMAL24MWNnE8lfF51Zt7eR82et+rseORPb2NyyS/Gtc96H8mwpLJ+DiFTFxIfT/IMNSkzks+Umz3OReqhNtsmYwsyWIFDlBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719332428; c=relaxed/simple;
	bh=b6/vKsj/PibxcS/6bXxbHOv4LLMxUEm/FlwcfPbufZY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VpSM1xUr1o9pNFvKdeuQ/WJt4wZeWemmN7c/PkaZFLDytY0gwsXTNS/kostM56ZBrah7pBqC3VBydEEfKhl+wENDk+mL5LlmuY+tbFMN4KCMI6+cnhTlqiebwHHa/6QSN1AyPSl5fVWdvBgE0daw24GRYQGaAOAtuMjRAo1ovIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ec6635aa43so18643421fa.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 09:20:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719332422; x=1719937222;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9MwUhJ3rsg2znZ8HeUs9/evcb9sqY2gLgQOBc97ax+M=;
        b=s5y9XMCM1rL/y45Aovc3RUrZ/2SnXalAvzAXm3e2e3pBM+WPCOYo8g/BwfGA2G5cCc
         eduRVBErAnuOy9YcrOcxRAR8WgMyy6O0wzgaUeUL/LMkEsl+yolmhd0bPShJF1Lb/LyA
         Php+DWtphrmqwhpryuogkkIDoGHMst0kPnd3bdDLb+zYQtOvnEmgKSjS2kUJTi/lDWW7
         jX/B06PhDPYAEH4obF0p3efFpIdwlzNxx742HMNV7dBusJX6uuNAIrkpFrlqB4Lb2kUK
         cXPpcUIqRkSpmw2r6jHsLOI5fNid2w5hdILyI91ISHeXtqRGmkd9RASmdeLAJZsbNH7S
         ApPw==
X-Forwarded-Encrypted: i=1; AJvYcCUJhe3JyVvtF0u+DB6dB8fIzmv6tnp3VsZUJOyDgK0Gpct/yuB6mM7EAo4Ixg01RxaM4ynLdpeoJWTIMBam5A4w7zfJ4IsSmGNuPA==
X-Gm-Message-State: AOJu0YwOroCDgizPtjPS2O7ZUlxEZBuYuHoX1cuIGBSje5PahWVArE/e
	vkC8cfa/c3xvjjwUWSvCRR3dwo6i3rfk6lpSl6uqm/YwSK/oSCwWvydxBGXn
X-Google-Smtp-Source: AGHT+IEDflnw2TZIzPaiZJFrhHmJgzcLfB/z4cpGxL1CS4KOn9yVYVf4LbeWplgkbALjda0K/QCFIg==
X-Received: by 2002:a2e:8ed0:0:b0:2ec:839c:b659 with SMTP id 38308e7fff4ca-2ec839d37a2mr3795261fa.41.1719332421971;
        Tue, 25 Jun 2024 09:20:21 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com. [209.85.208.182])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec4d60133csm12474731fa.15.2024.06.25.09.20.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jun 2024 09:20:21 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2eaa89464a3so66435241fa.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 09:20:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWsklAd+mwwKzLqu8KggfPNcsvpLlJeFOcDFfn4mwl0TxODoo02LOk1bTwb4+bDpbaGboMqjrfgqbbF7PgTOaOVX+REqqvsZw7IbQ==
X-Received: by 2002:a2e:b0f3:0:b0:2ec:5785:ee94 with SMTP id
 38308e7fff4ca-2ec579fefd8mr53735441fa.52.1719332420352; Tue, 25 Jun 2024
 09:20:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240616224056.29159-1-andre.przywara@arm.com> <ZnqyDLMzND_qJiOl@8bytes.org>
In-Reply-To: <ZnqyDLMzND_qJiOl@8bytes.org>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 26 Jun 2024 00:20:08 +0800
X-Gmail-Original-Message-ID: <CAGb2v64M_trcaXzef6=rbWZY-r_sv=bvoHngUeDVWjx+AXTy7g@mail.gmail.com>
Message-ID: <CAGb2v64M_trcaXzef6=rbWZY-r_sv=bvoHngUeDVWjx+AXTy7g@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] iommu: sun50i: Add Allwinner H616 support
To: Joerg Roedel <joro@8bytes.org>
Cc: Andre Przywara <andre.przywara@arm.com>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Ryan Walklin <ryan@testtoast.com>, 
	Philippe Simons <simons.philippe@gmail.com>, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joerg,

On Tue, Jun 25, 2024 at 8:03=E2=80=AFPM Joerg Roedel <joro@8bytes.org> wrot=
e:
>
> On Sun, Jun 16, 2024 at 11:40:51PM +0100, Andre Przywara wrote:
> >  .../bindings/iommu/allwinner,sun50i-h6-iommu.yaml |  7 ++++++-
> >  arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi    |  9 +++++++++
> >  drivers/iommu/sun50i-iommu.c                      | 15 +++++++++++++--
> >  3 files changed, 28 insertions(+), 3 deletions(-)
>
> Applied, thanks.

Could you back out the last patch? I'd like to take it through the sunxi
tree, which already has other H616 device tree patches.


Thanks
ChenYu


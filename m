Return-Path: <devicetree+bounces-232228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9377FC159F7
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:56:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A99291C23B1F
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1294F342CB5;
	Tue, 28 Oct 2025 15:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="ksuUqZ0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF9F33F8BE
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761666536; cv=none; b=WfFQaWsD1heTWfRySq1veaozXJkGFvpF4s3yU69AEDWlPJtD4epMjV6BymZzSDHOkhWp9zN3vSt7/wHvW4WDuF62NIRmTlgmxXTC5YWJDqPRs8dPdKNWMQ3gLSnimOObSwTfnfNklGmcEq+HWh4yZMv51DW/GgK2tBJnmMhzwN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761666536; c=relaxed/simple;
	bh=k8I9h+2k6IeAyl3/Vc6zs1prRM4rel0Sjd0zv9duXjs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R4yCrK/S85xrnDvP0UeCRk47xtxQF0AIpmWyc8E8t0ciYAnu/Oe9ePMku5KXkk/m4qTwSTd7TzTXhYTgNkt6j0eipsV2OdL8mvMSThPOuzXeTImNYXbJFRGgF0qv0UYg+ECTjydxTbglHruKcsLZk9aiKrSThyha1m3ZWnUcUms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=ksuUqZ0Y; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5930f751531so1199636e87.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1761666529; x=1762271329; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lwnCWAx8OAVXDxRLd+WdlJJdVlnMbvByJtUaS0y34MA=;
        b=ksuUqZ0Ypzyeyx4wH585OL1Kw2LbSuTiBo2MRICReaYuuSEND/RtKHtCyzwAhD4UqP
         tF+2gfp/B8Qf0MiR9QZEvZr/YLKGHhePhe4ap8Uee7mEkAW2wz6LEESQiGQqGQZl2/Mo
         z39AD1wnCuZLlDhRNv/dFi13d82/8ofXGtWT2mputn9eeZ/ej9qU0NjLufzhph9o+zHp
         h5We5NPUFgs6KwtWlWfZDZ8enQBZl6xN2KF2O1NvHtahiqDtESJ/d0WI7ajrVRk/Zio4
         TP68X2lL+VaHMqvzhWka2GgnsdgsjFCN8oEZ7feQDT3eyMT3V6PbYvFKZVp3DOSEfM/U
         u0EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761666529; x=1762271329;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lwnCWAx8OAVXDxRLd+WdlJJdVlnMbvByJtUaS0y34MA=;
        b=RPFp1d8C3HyIQi7F2GT+RUYbwG02NIYIXGwzdE00zzdK7mQvEPBG9rX3bFRhygdFLV
         TTe5CBnDSVnKaRgHZLWKgk6dAu+rRu6dIBQpTxxhENuKxMsBdfbYwrjoR4+BgeLN4bZH
         +13N/we4XsABTnRromOCB5W0P31plgUricW2lpBH7AqXCXZYyUVJCmG4KsKPDVAKmlwj
         TpiImv0A+ILyHx7UhuetIYUFE9rf/Y/xGOjNpQjF5fZNe7ozlGK6/nXFQEbd0qAAMqT8
         ao6FVnkkRsL4wcrhMnuo1VkB9KwpBnSwPGV+m3JEy6xPxIvZ9655oMOsnmgKpaGlTyNY
         lKVg==
X-Forwarded-Encrypted: i=1; AJvYcCU0kveUVb2izbpPHTZywne4sH31IDAhI+Tz+FWeHaTl/OECq/vUk87ziKHlsjkvHmZqyXVH1Csop+jg@vger.kernel.org
X-Gm-Message-State: AOJu0YxitrWZ5VXVHGTrcYFMC3kJYvFg43oUgHjtnaYdL1Ey8YaH6g1R
	9meBUSCvvDecA5Mr+KdNZb4hjuDpjjWnWend0cWBPUTppaS/FGZicVLazT/fbBNfv3hXQXDR6o1
	ZfGJqE1ANlxj7Eyy2y49S6q08BrTtWcfOQmfPmdCk0A+qgOH4vvu7mps=
X-Gm-Gg: ASbGnct8GXNemSwD4ukp/BLnmDfJBNpBLm3wV5LeXwbJHD1zcwJELL4O70thv/2Jdf9
	A/pLG8+3EvzgpkRezvgv8nVsgKP2D224k2/YWQT7pokbmbRVeCjVnb3XgSTLsecKtbgFfx2awko
	NT7G2rOMmuhyoV7/Y4QBM9/7YaqRJXox7O5eK+R2dZTt2hex+uXD39oWlcp8AMR/CJmzEGkKypO
	RLIFaBquyu0LSBU7sTCoj53/q00jfeoEOU323pNKkISKKaq4b0JSdI8m2XabxeQufAMys967cQW
	n71bI6K1Ahv2By1tRJ89afjfMc0=
X-Google-Smtp-Source: AGHT+IHHQJDBFfYRgVJqX8xhSBA+9GpHTt9NgT260wr0JACLtpxb1RyGaZnV1bwmlzp3ct/hmGOguYUodPiD3cQebnM=
X-Received: by 2002:a05:6512:1095:b0:592:fc21:bc17 with SMTP id
 2adb3069b0e04-5930e99bc4emr1498445e87.3.1761666528580; Tue, 28 Oct 2025
 08:48:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251028-dt-bindings-qcom-bluetooth-v1-0-524a978e3cda@linaro.org>
 <20251028-dt-bindings-qcom-bluetooth-v1-1-524a978e3cda@linaro.org>
 <CAMRc=MdqAATOcDPhd=u0vOb8nLxSRd7N8rLGLO8F5Ywq3+=JCw@mail.gmail.com> <bd5bb1f2-a8ba-4828-9d04-2e1d433ecadb@linaro.org>
In-Reply-To: <bd5bb1f2-a8ba-4828-9d04-2e1d433ecadb@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 28 Oct 2025 16:48:36 +0100
X-Gm-Features: AWmQ_blgYmNnJtX1_PVoBYu1p1yrIy4vMPH61Mm6WV-4oL23HbeoCUDP69m6qE0
Message-ID: <CAMRc=MdL4yqY2em5myZO106FEzRF1RQuYroc74Qt_iHm-KBn-A@mail.gmail.com>
Subject: Re: [PATCH 01/12] Bluetooth: MAINTAINERS: Orphan Qualcomm hci_qca
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 28, 2025 at 4:47=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 28/10/2025 16:43, Bartosz Golaszewski wrote:
> > On Tue, Oct 28, 2025 at 4:33=E2=80=AFPM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> There are no maintainers of Qualcomm hci_qca Bluetooth driver, so make
> >> it explicit that driver was orphaned and no one cares to keep it
> >> maintained.  That's also indication for future removal from the Linux
> >> kernel.
> >>
> >> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> ---
> >>  MAINTAINERS | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/MAINTAINERS b/MAINTAINERS
> >> index 8abdc0e50699..be637b9dc7c0 100644
> >> --- a/MAINTAINERS
> >> +++ b/MAINTAINERS
> >> @@ -21146,7 +21146,7 @@ F:      drivers/net/wwan/qcom_bam_dmux.c
> >>
> >>  QUALCOMM BLUETOOTH DRIVER
> >>  L:     linux-arm-msm@vger.kernel.org
> >> -S:     Maintained
> >> +S:     Orphan
> >>  F:     drivers/bluetooth/btqca.[ch]
> >>  F:     drivers/bluetooth/btqcomsmd.c
> >>  F:     drivers/bluetooth/hci_qca.c
> >>
> >> --
> >> 2.48.1
> >>
> >>
> >
> > Actually, I added that entry so that the arm-msm list can get Cc'ed on
>
> Ahaha, nice :)
>
> > patches. The fact it didn't use to, caused some regressions. I have
>
> It also points out that drivers do not have a maintainer.
>
> > done some work on it, so I can take it over as maintainer.
> Sure, I'll send separate patch for that replacing this one. Shall I add
> you to the bindings as well? All or only some?
>

I'm more familiar with the C part but sure, why not.

Bart


Return-Path: <devicetree+bounces-203667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2550BB222ED
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 11:23:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0DDEA4E2EB3
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 09:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66FCC2E8E19;
	Tue, 12 Aug 2025 09:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="2G46ypI2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ABC52E8894
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 09:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754990598; cv=none; b=sT0aAftm46ZCbu0DOfbD71T8D7NQYTTXj7G2ykNHFXFwM2lNc7/0k5zAZHtaWlmjFIC+iSGEu9ryhp8NfEQd6l6Zr2dX1a2Ia3Vux7SD1J3BwN26ZKQvSvknK5qSC5nPjCj6iTXPBpAdoog+VqSTFayFAJXgk2bOmi/Ilx2ts9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754990598; c=relaxed/simple;
	bh=1t64m70/Ydj3TYOPyqgd4kW/vb05YEGXJfg6UGYXmh4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jZg1gBSuJD2KzRZPj/zfFhpkmnXvO3lmCwaL+j0EkdM+1Ew4pvYSTXcSxF3rTwzIeHEqXOdcGfKCPSKXw+FRGGvj/enSkvxFQ1Z/YU7dDadXVgo7UKdqkqx6u5pHieDehoej7o5Z6okv0+rywr9/seUkvNmRJ2YaajZ18f9cQxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=2G46ypI2; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e9173b5fa26so1006639276.3
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 02:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1754990594; x=1755595394; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3oXbJx6E3ijqdJvhjzvA4M+RPwmHgHT1829C53wx0lE=;
        b=2G46ypI2o5927P/xAkij0LpBuTFJGF0IxP6wwd1anAJlR5VHYNsVyuEMKcHMYPb3uZ
         BQsysbT0HJ0rMYVCOWbYY9p5Sn5MKwcUJEMouQa9Vi/XQAprD1rK0afWAcgCsjy1hx7y
         aZjG5Sx8KC7aBOa69R0E5K9yBgWzUJp9JcHRcFg+4bBjazDKX1gDmIRJLAZvUiNExfFO
         dusY5USbSj6oii0+Hz5ijX72cICrfRsJNM+LIuXoiJE4jpFNF3KYbHVyV4tuTZtsCfwA
         41Sr+6tVZG4KUhhcnKIBnwxTEa96SpJ4EbL0h5GAFKefmOm1EZj/oXbGl4zNfi7DfWur
         nCyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754990594; x=1755595394;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3oXbJx6E3ijqdJvhjzvA4M+RPwmHgHT1829C53wx0lE=;
        b=LhZe11xmq/m7M6sWQ4DOOV4ciXag565xiYKkwxXn/taE/kmcJ1oQTKQ7evf1bu4UDY
         cmmf/nUFzoYCrVu97o28rRfP/Yq6OzboAiUYgMA8jxUG98rXeRF4IMCq4I7qJ0mMtEMT
         Jfo2GhC7BkRMOYCv3qfFDCgZVo7F16QgyS2gE1Um3+3BM8IG+ag3S3l7zG7YZuz6ruoz
         Hb24gZ8pmFxMyOFgo9Z+95X25DeIAS6kCNcXih6HYk8lmByGDjRHhDSPpGoIkjgFZRcd
         EFdhvwNdvDRLP7zvXibylv4Zj11m539SGmZJccnFBs7Bao4guivMSTJgZ40D1my1Fqvi
         crAw==
X-Forwarded-Encrypted: i=1; AJvYcCVF86FSGturOa/j62Y3bhidouz3BmWHPfo8klxXPbCdQCOMavIsQ0cAKtQSgfevk6PErspPt6HJLq2z@vger.kernel.org
X-Gm-Message-State: AOJu0YwZOidHMpXIrBfQVnoLN/JAZaEp8HqBG1CXSuPKU2NFwShPQB8L
	iVC59dREntbBWxTA+3fsK2jZsIveRayZ7R24y25FOmVUYAteW/vI2o+9MRRFKHaAT8g+ljiP0VD
	2ZACQJkSveygB4DmvD5Zown0LByYdjOON5EUGlyGcTQ==
X-Gm-Gg: ASbGncvP5lvF2WYtnWg7dH0PpziHuHufRmgG0SF1xnl8fAwrlyCqx+h8PCj44fJHid9
	ery2uwy+QumB6OpxQI20QEAqC35Po55gruOaEp9xwtB7NPDusDAW2J3+dXPgQI4gluRBLvWuRxE
	Fr72F1EMuNo+hilZXWTVz4+luiSZS9J0vYy37bgWJR05pDOygj04gG5P5RU7yncCZLvYQvPGWQG
	0u7wg==
X-Google-Smtp-Source: AGHT+IH77Kjt8YC9sfRPn8ADNNC7hjxOUoD/Dna6Dolf20ZY+41dtteIkmZw9xyyoKWcmYqmqjNzYuop1VYhnZfQUKU=
X-Received: by 2002:a05:690c:46c9:b0:71c:1a46:48d6 with SMTP id
 00721157ae682-71c42964fc4mr37731957b3.1.1754990594494; Tue, 12 Aug 2025
 02:23:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com> <20250714-working_dma_0701_v2-v3-4-8b0f5cd71595@riscstar.com>
In-Reply-To: <20250714-working_dma_0701_v2-v3-4-8b0f5cd71595@riscstar.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 12 Aug 2025 17:23:02 +0800
X-Gm-Features: Ac12FXzwCXGXSKiwmxKY93OBxvFdFv-jw-xOzVu8Q_eshKd5oaEN163nC5iHGgE
Message-ID: <CAH1PCMYtYfJYAt_Ah4WW_ps3tPuYLMvanKExhk9t_VRHkRwnng@mail.gmail.com>
Subject: Re: [PATCH v3 4/8] dmaengine: mmp_pdma: Add operations structure for
 controller abstraction
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	=?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Vinod

Just a gentle reminder on this patch series. I've incorporated your
feedback from v1 by splitting the work into two independent patches:
 - this patch: [PATCH v3 4/8] dmaengine: mmp_pdma: Add operations structure
                              for controller abstraction
 - next patch: [PATCH v3 5/8] dmaengine: mmp_pdma: Add SpacemiT K1 PDMA
                              support with 64-bit addressing

Could you please take another look when you have a moment?

Thank you very much.

BR,
Guodong Xu

On Mon, Jul 14, 2025 at 5:40=E2=80=AFPM Guodong Xu <guodong@riscstar.com> w=
rote:
>
> Introduce mmp_pdma_ops structure to abstract 32-bit addressing operations
> and enable support for different controller variants. This prepares for
> adding 64-bit addressing support.
>
> The ops structure includes:
> - Hardware register operations (read/write DDADR, DSADR, DTADR)
> - Descriptor memory operations (manipulate descriptor structs)
> - Controller configuration (run bits, DMA mask)
>
> Convert existing 32-bit operations to use the new abstraction layer
> while maintaining backward compatibility.
>
> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
> v3: No change.
> v2: New patch, introduce mmp_pdma_ops for 32-bit addressing operations.
> ---
>  drivers/dma/mmp_pdma.c | 187 +++++++++++++++++++++++++++++++++++++++++--=
------
>  1 file changed, 156 insertions(+), 31 deletions(-)
>


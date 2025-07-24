Return-Path: <devicetree+bounces-199217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D32AEB0FF09
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 05:02:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5586AA4BB5
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 03:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D65DA17A2FB;
	Thu, 24 Jul 2025 03:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BK0SgjM1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D179443
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 03:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753326160; cv=none; b=QgsvIrOxZaXST8DO2CXE+soq/WPlk3e3eJVdRyahu+qGOG8IMaJbjg3mE15hGXRSfVDnsZSpVtsdw9o+CCv2ieXL8DXGRbRQKE/XfC9lnG6t80T+aiKGVGJ9uNHjsDaiig5ZxaMNaWenv0mnqyrRmExl2ueRjT/sPiBSJ5f3EWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753326160; c=relaxed/simple;
	bh=DRqbgA/rfP/Lt72tSXhOwfuAln34SEWpdKk2oJ3oZzs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Sgr7y8ze5nlpwpl7xkBM4j+akZB8k1mPmpIg0/K1CsYkNm47ewomEWIrJYd82BRcGBGy0IHdFWBM6FFRT0rHqq3jOdKKnnR+3tUXKIZIqdhjZXmTrENFDEW6NFEYiujKXBaw8D9gXowk3//uHUsWfEJ01d5s59vo8DQvCcjEdXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BK0SgjM1; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-7196cb401d4so5817287b3.3
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 20:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753326157; x=1753930957; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G4szIC/lsRfoeS9xWMEZR5DrnZmuFrT5s30XlGRR6/U=;
        b=BK0SgjM1Ny1jk5rTSIg/ig+VfYG9BRxEct3dpBnQK90wbc3NvOqwqxiWbmgHN0ojsb
         Yki5u8GdUBMtOwD5c0Ztokufi1LLZzjuG1A/a5/PVCNfGTQz2z2p6fL8l1Csxdpqh7oO
         KAjBuY79vdJpU/tpTJxBB7VMinj1alftr3Mj9d4bQbeN2ZV7rJsV/L5bi8Y9lCnhLCIA
         vpnUJ8hyMYJyFvpNxMvJjSVFE8nnoHyKAjfdY69xX4KT3UuI9onkKbpLfUPWmDQbzady
         cnan5aJLALr0NGshULRYQo5ZeHZA5OUlHZ70v6AczA/Mdk/UsgSJK7PBGR/c8/+1fZNQ
         bFUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753326157; x=1753930957;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G4szIC/lsRfoeS9xWMEZR5DrnZmuFrT5s30XlGRR6/U=;
        b=IeCmqydv8G2F6bVdLXbnvWr8CHIbIrsKreN3Zo1oHLy5XixKBV2wTkQ192xoA+NgFM
         3pW6f81nBD+Sk4xJdjPTfSboIcgguf/aiBGByKECF5xfmn82uyyBgigFBnKrMbcg72J7
         pxJCySj6tF/kQ3lwLL3r0D8zXq5emfwTnvtWnzT94WIyJS54f0Va2rh27utdh4uOjJ1N
         aXMpDQZ/CilYZzPDzRMc8cTCApMre4THSq07WoMU6uAyrr5QUPKVqY90vuAMyYkvP2uF
         oMPuZdZyGPByl0CrRg+yIshi7Iatn1iwyHiJlakZk5JJcT09KlS1HKQSeqjqc9Lvv90f
         jGfA==
X-Forwarded-Encrypted: i=1; AJvYcCW3bvRXqbP2Onn6MV0k9wS9RsxGbHdcnXuAW18+dju/H2ilr3qBdHHO6YWqTcGloYQwm/yiSsIExQeU@vger.kernel.org
X-Gm-Message-State: AOJu0YxJeWo+ZW9TauLM9WAOFJtU28ZP3/m71qVAO7479FnwFuWbPymi
	JAb/KvGPH+LIgR2Z5oypqHrsosi7fxCCGhRtuxDjuaGRP/5d5E7Xi6k7EXVBOV18zkOa1hzpEer
	BrTK3lzrdfPgQ+35csCn3Qu3mpFWDqILjF0tZo2EWpA==
X-Gm-Gg: ASbGncsYZpJPqRlJ8Kiu4mkQVMQ55Q22sWvmB9XOGiuuZEI4QWoF9Pe5KgDQ2Prn0OS
	ZrV/u6tszu2Rsj6ayB+1q357CJy6ci0N4WmmbEo3kDZBMaNuLWh9e3QHnG2CnQyNXPpQ6F08K0z
	56SSZrYxUlSX0oJ57U7awLUrTP9jlGdUsZXlXFbEWQfAZqa9KSfOKgr6qNjeTUl++2J2QdiyEsw
	Lw+Cb4=
X-Google-Smtp-Source: AGHT+IEIMtv289DTIkybfPfffRPAzee3+9DmTAuYGJM3UvEoqefg4H82jx7CiRhNSKxNLqGq+1drRcysqqTEjMpfosA=
X-Received: by 2002:a05:690c:22c4:b0:70f:83af:7dab with SMTP id
 00721157ae682-719b41e5925mr66244057b3.4.1753326156883; Wed, 23 Jul 2025
 20:02:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250722121037.443385-1-ivo.ivanov.ivanov1@gmail.com>
 <20250723-hypnotic-malkoha-of-trust-9efdb6@kuoka> <3e1d7be9-e99f-41c3-8b0d-aaa426aa9de8@gmail.com>
In-Reply-To: <3e1d7be9-e99f-41c3-8b0d-aaa426aa9de8@gmail.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 23 Jul 2025 22:02:25 -0500
X-Gm-Features: Ac12FXzQwje0qjCw-CvN4blAJTQm7ENnYNl_ILs69QPBbFxu9MyH6hiUp_sqjVc
Message-ID: <CAPLW+4kPN65uX0tyG_F-4u5FQpPnwX9y6F1zrobq5UyVbks+-w@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: soc: samsung: usi: allow 64-bit
 address space
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 23, 2025 at 3:21=E2=80=AFAM Ivaylo Ivanov
<ivo.ivanov.ivanov1@gmail.com> wrote:
>
> On 7/23/25 11:15, Krzysztof Kozlowski wrote:
> > On Tue, Jul 22, 2025 at 03:10:36PM +0300, Ivaylo Ivanov wrote:
> >> Some device trees, like the exynos2200 one, configure the root node
> >> with #address-cells and #size-cells set to 2. However, the usi binding
> >> expects 32 bit address space only. Allow these determining properties =
to
> > So if USI expects 32 bit, then why do we allow 64?
> >
> > Switching this to 2 means you use 64-bit addressing for children
>
> I don't, but the main point was to avoid defining ranges for every single=
 usi
> node, because they are a lot.
>

If all MMIO addresses in your SoC are 32-bit (they probably are), I
think it'd be neater to just make the entire "soc" bus 32-bit (so both
address and size cells =3D <1>), and map it to the root node's address
space with "ranges", like this:

    soc: soc@0 {
        compatible =3D "simple-bus";
        #address-cells =3D <1>;
        #size-cells =3D <1>;
        ranges =3D <0x0 0x0 0x0 0x20000000>;
        ...

That's how it's done in exynos850 and gs101 dts for example. This way
you could drop all those extra "reg =3D <0x0 ...>" in the child nodes,
also avoid declaring "ranges" arrays in each USI node (just "ranges;"
would be enough), and this patch won't be needed. Maybe I'm missing
some details though?

> Best regards,
> Ivaylo
>
> >  and
> > allowing DMA for >32 bit. This should be the true reason - what is the
> > address space and DMA range for children?
> >
> > Best regards,
> > Krzysztof
> >
>


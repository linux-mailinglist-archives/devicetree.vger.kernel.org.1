Return-Path: <devicetree+bounces-203100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D61B20088
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 09:42:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8779F18871A0
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 07:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB0B72D97A4;
	Mon, 11 Aug 2025 07:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mXx/rQjy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1578CAD23
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754898145; cv=none; b=eKDfbajq2k5qyVWX9md3vgMXHXK8lB1Epp2x9i9ma4/gtqfHQXijg72f/5KkxccW8XDN1GGGCQibO0+PKoy/purHkgpED/2xl4mUESK/ADla5qDaDel8bAw2XVZBBZd/BN7tD6oZIPJ9qKlm4nXYv/RezT8kXm7U+WdPngxKXTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754898145; c=relaxed/simple;
	bh=t8BVFXTwveELKbs4OwD70dbHLgAP1n/Ksj561GHwMkQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dxM9l0QoBeGDzuA/1d3Gf50DXYgDir6J8gtjZjC2aACXmc/4ATy4GGXSeK71q2vVva8y6m96Kc7XXdis4gVK+j5WkhcGuwtnE9UMgqpPSthgLZjt+7Ggg+YTKM0tqmh29rVIm9PSr2SLeoKIvdg8vspsyy+gFG+NBIDTw2hgJgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mXx/rQjy; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-6154d14d6b7so4715489a12.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 00:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754898142; x=1755502942; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t8BVFXTwveELKbs4OwD70dbHLgAP1n/Ksj561GHwMkQ=;
        b=mXx/rQjyGUZzSmtOJF0rCqtBh4SWx0txaOCdKBL6AlEfVcWxahVAmniUPJ500cZu5w
         Dngr7VyE6N4CAra7cPTbxd1HPF6rt0CXM/E7mQnVN9K49jTulj9z7+GsRIJJ5SQuDtCB
         zJ1v1z6afZpzP4mzxlxW8AUkCUz72hEVFXLiz34Nm+uz8my507DxQNRsij178oCXvQtZ
         Fr7gslHBGCuIp6FsoyGffVOxgoFTa5uCyybLB1wKj+ZnBrHKdpk23P5x2s56qcmoRjjj
         iDu+t8AhTPyuf2BOvKsQlsZYz7UpSA4plMZSCR2e9KHQdfvuUw3evDGFUNL/+D1wB+PD
         LrLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754898142; x=1755502942;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t8BVFXTwveELKbs4OwD70dbHLgAP1n/Ksj561GHwMkQ=;
        b=Tr6CZik/HHVjEUoXRi5VS0bHwzTewF1RJMlbZc5DJcDpO125wQcRUu8HKnzCIG5pnp
         nc6Y4kOkZ5fiy+GoZu58WKDImL2sLtGfEzBtewq18HY5BJfxn1OG54kljUCiLihhWRVF
         pwrgNBQMIRjmcxdGNenLJxwMbEEMfowrvmZ8BE41U6pTHa83CVN7s8iuxM/6taIjI7Qg
         4grlgfSNGBd+WtbZCEvZIrbJxdTCyjn5EKQ4gRX3wadosWCzSB5f7nrFVWTxE0raACj0
         DVbZT6fb6NpB8ALxdga2oEXdCVlam75JJIr7Tc8YcSGFeXvw3pOd3NIbFLmVxY5xszGk
         j5+g==
X-Forwarded-Encrypted: i=1; AJvYcCWSB6/kMQTqX14yeAbrHZFHrvO1cUEV533GGD5/hedBap5UaSU+DKFrl0DNpDQQA47lL3/JoXtHcKaj@vger.kernel.org
X-Gm-Message-State: AOJu0Yxfi792oxmffU3tLxHIkZty4Ztu7qmlVhbqnD6fdsJi9gHs1Tx9
	nhYuaGGpaShsabWeneqzdTC0srVrf0cZcDA7aBYJCns/F3IL2Ujrr30QGcFcO56M+s1+6Xku4PV
	ls2f+0H6Ldz8/4rRX+AW27rHGIEmmbyk=
X-Gm-Gg: ASbGnct1HwNbNebEdGT5mUVFyUvLEWsbUBDj3T31BfRDV3AMsIx6BfsRf4R9ZigUpN7
	cvCCyp28A0C+RbIOoCUw4NTRwAMzQ/IpOMKDb4/TLgoCsbCVHb78PAVLACmNRPNMXR+A99O2PEx
	L3vtUsRMD5zg9QYCd+F4iWcCHcpfKrEsrLC2My18hd5aaefPrTI6u1aiK0yW37drH3BUOtDOj0W
	iPu2ucOeZvuQJGw5p0=
X-Google-Smtp-Source: AGHT+IEkjOj3UKdq5Lw70VWjYIWx4DN1XxZJ/fxcyup/4G5G3izgAHkxlV/d6oXutNrOUGpyT9L56you5OmTyGhnpps=
X-Received: by 2002:a17:907:6d26:b0:ae3:60fb:1b3b with SMTP id
 a640c23a62f3a-af9c654451dmr1188592466b.58.1754898142186; Mon, 11 Aug 2025
 00:42:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1754890670.git.zhoubinbin@loongson.cn> <a6b216e6726edc00a910ba543ef8f7a9195b94f7.1754890670.git.zhoubinbin@loongson.cn>
 <208c1e34-85b4-47d7-a4d3-8b8b7f2caa84@kernel.org>
In-Reply-To: <208c1e34-85b4-47d7-a4d3-8b8b7f2caa84@kernel.org>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Mon, 11 Aug 2025 15:42:09 +0800
X-Gm-Features: Ac12FXykFn-VkPb4s7ncj5ZNyjP62ENy5djpOE4M8jd15rPFnSJRHeLczU_S9rk
Message-ID: <CAMpQs4+OcC_jMvQVc+u9ue9HeBEPcbzWORC0rWkXhj3y90fvSQ@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] dt-bindings: mtd: loongson,ls1b-nand-controller:
 Document the Loongson-2K0500 NAND controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Keguang Zhang <keguang.zhang@gmail.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, 
	loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mtd@lists.infradead.org, "Rob Herring (Arm)" <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof:

On Mon, Aug 11, 2025 at 3:32=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 11/08/2025 08:03, Binbin Zhou wrote:
> > Add new compatible for the Loongson-2K NAND controller used for
> > Loongson-2K0500 SoC.
> >
> > Acked-by: "Rob Herring (Arm)" <robh@kernel.org>
>
>
> Why do you add quotes?

Emm...
Sorry, I didn't notice that.
I reacquired the V1 patchset using =E2=80=9Cb4 am xxx=E2=80=9D to avoid man=
ually
adding tags. I believe it may be caused by the `b4` command.

>
> Best regards,
> Krzysztof

--
Thanks.
Binbin


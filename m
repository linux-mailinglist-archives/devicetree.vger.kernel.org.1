Return-Path: <devicetree+bounces-229785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 16320BFC110
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 15:15:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 93FEF56088D
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 13:08:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BBB934A3C1;
	Wed, 22 Oct 2025 12:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nmqDb2Hk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB28B345CBA
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 12:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761137922; cv=none; b=VStjcB8jOTFGuTgxt7onW03KqKI9f6Upb6FwltHSBkWcSAEJqPtvTF0X9ehoS6NrCNbcsNsUFbBVOPvLwR7M6OUioS1YwX2kzEmfFPoEuKWBfqDHUc+Jz/n68Pn7RcvRRW5oMGwN/2PSVRAWGxh5ij13ie9a65Vu2Vfz922IV6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761137922; c=relaxed/simple;
	bh=jSSjnCM4ER8aKOW0t6/ZA+XtyoMrKYkP+HhxvOTGTRQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J0bg3q9Vlwgc1+AUDnvn1PfhIP2LPffiHpJb2TOrpxzKYGkaQJ5I4/qHziZd5sI+Hhd3IEdpGDchHAelE/STqfZXUN37+0BFCoxZ1x5ltsMz7O3+Z+Ee2xl54pVCxQCpIHAztuJlnzt7mO6nUdXPSOX65K/p664eZYmpYXL3WWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nmqDb2Hk; arc=none smtp.client-ip=74.125.224.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-63e336b1ac4so1644896d50.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 05:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761137919; x=1761742719; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LqfpXhH8oikGFpnElT3hOnVI48sa1H9J9/n1+8f904w=;
        b=nmqDb2HkjgVL53xtQOZCewrjRcYrK4sr5mhoqEx4Z1ziGkwRAmC2mHotDzhgOQf1Pu
         aj1IcllYgahfMp/jUyHoAI7OwiDKjLxlaS6dMgmDRlNdNTLBmBxDzF2GjiFShrJaYM3N
         BZCONm1ijU2AYhhOez0Q89RT6RRyMUPO/c5r5R4XhB4ApufYIOtOBqCQFDhVwMf3ioD9
         fSDpJiKroLniC5hkho0XLRJc212KheA8vmiCIF9R4yZTcrfHY44GXGBzbuMQf5ZGGHgi
         2afCKanK2fDPvEet1IX+CCSgVj13CXSVnqUeFezeptPiWTtvnAHnhOoP7tRmwFI8chCv
         nysQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761137919; x=1761742719;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LqfpXhH8oikGFpnElT3hOnVI48sa1H9J9/n1+8f904w=;
        b=KGKQM5l9ErsjVr7ZNvEYJKftPSirmFaGkbDfsB4SpTHQTCj5fJBDMm0UhRNlGI4eAt
         DRjiaSWQLPIeaWCou0zjweSsXMX7i5g0Li+MaH2rU4JpYZV3zQPgyMeinGW2hEqDmOhj
         ojQ4P0LuaONasuZqPJvpeOL+DdbTOsPJ3gTdLCHXDQSGsce5qKCqbU5zaCPEf7yV0a5T
         Jm2JAHrH6iNqPwNx4lY0Gv3MfbhE1pvw0yHgd4cFfambA5peokksRuqkaemRhloSooHD
         OKrcxW7xcCk4EI4IGkc/zm15gL+lat93nVOHgymcUcJK5BzN62mE7prH0sCC+5XRXywP
         PfAw==
X-Forwarded-Encrypted: i=1; AJvYcCW/h12PIYO6u3Pm9lkTVi6NLNFpEVyZWjqX3XaBRoKn3IVhSoGczoczh0KBLRuxPZyHrMWHrRgAWdHP@vger.kernel.org
X-Gm-Message-State: AOJu0Yz87R8+siC/dfcEHj3Ot9eViIIKfLGq4c09nnCd5sYNAzneNTbT
	Ot37q5uHV4gU88plq/FNL284Y/hc+NYxo5nBQDe+BIkTuB+xqUNhuoUabP/Hep0E/oROppPTQU3
	2N2Jl6NPJZHHQF77H0MdPJwo0sC83kVFWbsfScuzRAQ==
X-Gm-Gg: ASbGncvX2emwalue8qW+iUUIV6u8RDgVedO/3ctlAYyC1KsgQUF6brPv0tpeJx+4Hf3
	9LPQAxEspr2HOdTmIbe6yCJfYFu5FM0pnwEsMD3hmh1Nblq1xInKeAHh2hxB0i1KGLPVlBHrre4
	VMjJYX9/+q2iPLgRH4J+EDp9aFqAJ/4KGUVUImIAN2tLzexUm5JDmnyJv+P4mVs/M7rTXduOTgN
	UqbGG0nIIhe/SYq7G8+xvRCrp/IOmSN4m1hMseYzEbEz2yj/fPWB51jO9+8by0k6qAIL4sIcJg3
	XJfOrtU=
X-Google-Smtp-Source: AGHT+IEjyOT6ZnWjtbuwKFmQbeLCXJvC9+ovHItNxLtceyMzt5RJXygROmaPW1mTzx718f9fX9ymVtGCF2aAo4JR26M=
X-Received: by 2002:a53:da0d:0:b0:63c:f5a6:f2d0 with SMTP id
 956f58d0204a3-63f2833575dmr2112548d50.31.1761137919613; Wed, 22 Oct 2025
 05:58:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017093834.331998-1-finley.xiao@rock-chips.com>
In-Reply-To: <20251017093834.331998-1-finley.xiao@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 22 Oct 2025 14:58:03 +0200
X-Gm-Features: AS18NWCPlgQ2C3y-wODiJDQlKOeRdWjBY3paMVLSMS-IfDxCiXVh7nLiSG0YRnM
Message-ID: <CAPDyKFrDAmfN16fQdf5en-Du=sG5U61NK7vRhd_CtiSz19rU_A@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] Add power-controller support for RV1126B
To: Finley Xiao <finley.xiao@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, zhangqing@rock-chips.com, 
	sugar.zhang@rock-chips.com, huangtao@rock-chips.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 17 Oct 2025 at 11:38, Finley Xiao <finley.xiao@rock-chips.com> wrote:
>
> Add support for the power domain controller on the RV1126B SoC.
>
> Finley Xiao (2):
>   dt-bindings: power: rockchip: Add support for RV1126B
>   pmdomain: rockchip: Add support for RV1126B
>
>  .../power/rockchip,power-controller.yaml      |  2 +
>  drivers/pmdomain/rockchip/pm-domains.c        | 41 +++++++++++++++++++
>  .../power/rockchip,rv1126b-power-controller.h | 17 ++++++++
>  3 files changed, 60 insertions(+)
>  create mode 100644 include/dt-bindings/power/rockchip,rv1126b-power-controller.h
>
> --
> 2.43.0
>

The series applied for next, thanks!

Kind regards
Uffe


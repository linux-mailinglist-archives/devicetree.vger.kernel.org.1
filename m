Return-Path: <devicetree+bounces-239053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AA28EC60FFE
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 05:01:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 06B0134ADB4
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 04:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB66F226D02;
	Sun, 16 Nov 2025 04:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dGQbMKFx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E094D1DED4C
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 04:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763265693; cv=none; b=sudi/kG+seux9U5WuTLFzddgnsku0mElzVg05j4OszYk3BISlH3GnV1pDagY7v26yNOu2sKK+d5DJR5SPuzXYyoHNCpE9DhNEmxC5pW2RbpUXDbAsgmOyX5U4Q6+52eaWocn5l4E17YiWkAOOes/s4PmnJ2UxNEUSV4CqQ81Ajw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763265693; c=relaxed/simple;
	bh=ViKmEBt094e+TEyrkD/7l7Omxa8P2Y/BZpUwUU1mz/s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O1xn5fbDuHfzZqJe7ty/3vE2Re4fQKfG0qCwL1LNS9hYaH1zWG8SGZ1xaaPHHPdhi78rvwLHCupMr5ZC4oZNzMBQbUS4lXsN9cfOQHQ0KfMjb73XEB3gFW2ufeJwo/TjooS+1iNaIddIRWwoflEzFJvmEO1WmXdZ79wdzh2nuoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dGQbMKFx; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-591c9934e0cso4456052e87.0
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 20:01:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763265689; x=1763870489; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vHOnnfu2WV/v2N1dBqAfZarNGYxVE6UYUn92Rk5owLE=;
        b=dGQbMKFx3L3/JSoVq4PElnac1G88MOeTDapELS0ntHknbudBEZWUwpVA1cxV6u6HqL
         sAJWF91hDEtdMOsQFXm3eHYlAulWbmnPK5epxa1US55MaeH4vdRqNftc1giqfknF26//
         GdRrgFyxiOlbAFQLpsLkFvv8w08DlCLNZ3GPNaOxud2I1nwPYjsWOP7GwSg6YwNkZ8NM
         HvDVTHFntGGu+9HCG2AQEo/5z0MvP9/a+psaUYH8kdss2qqQ6EskcO+GnsSwTaI08M3f
         3Cr7zNNgcXd1MypKSXAAucUIhJeAzBQjklu1cTILCltb+jlhm9s1SOrZhJ1DESZhoamW
         ugOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763265689; x=1763870489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vHOnnfu2WV/v2N1dBqAfZarNGYxVE6UYUn92Rk5owLE=;
        b=kVAFU3kcXzZbRVDUPHqgsU6F1jCctRPHSHzhbFU+kaoeWuv9O0Bheo4CV5E7wtKi81
         GQ5VWIs9AlcCXUn+b0G8yUoRTYvCFioVnjZBU1WWrQl2iwMG3PHebi6a9bN0cbHNEpP+
         EhOaKxHV3/bcx2xyC7CG+rF7o31zaPpCW4vZpfNWLcr/ahMzQasYnJo3dNnVhg6/1a/N
         XUamLYJ3yTojgXhXXN4yLvBUvRQbfyo90E5sKmd2ZWLfR2rRToMnaETd/JBhhKy4NVO9
         7zH5r+vgHhorfgnZTB3NXpwz8Yh5BuzqfOYgjnU1fAI2lzanqTDw9GpWrQqs4EYTthFO
         Mw1Q==
X-Forwarded-Encrypted: i=1; AJvYcCX5RaAKoIRENLuVkjkx+KNJLIYp331eh38SZ+pxwCyYVjC7A5ENpgwFy02AECSbLtHBptvIP+B8KAey@vger.kernel.org
X-Gm-Message-State: AOJu0YwopWhYHYqu/Do3YieNgCJBvXBjkmeHIbd1MuERG/cjnmt7QS2P
	SPYPCkRuMS8N1LPPXlPGfa9BNsbyLeZL8k9hbZA7ApCAxrenOAeoQ9vbcyFM3PCnQUYQgb9HnuD
	PUsjp4YLtVMiXWj5zF53pvLsih1/Ab5BoPsovHas=
X-Gm-Gg: ASbGnctESpB6icLAX9YR/Sg4Q3xKOt/Qfi51sGVRZKdmih4WfLlNwAW3bgLcmsVU7V2
	D28dbO6jf3wz9FUnTwp9xlM5Sn54azra0mcHUzIMvS8OoXmLV7mubdBD20OXcJ87YD7dPry0dLa
	tVm9MPbPNduFaGSLdA+5XqRtBhwgz7hb5/43rEmdl/9MZSfXWNN67wz9UOek9PeZuPg7dQnfLQ/
	D/iuyc5mxn2HyGowk34C1n7q3P4HUIdnGLgfa/8wR0D4xKQ76qx70PCt1TtELNrsfiALs9M
X-Google-Smtp-Source: AGHT+IGVtK1X6QVCCFl9oUOkghvq4uLoqfDGl5AxVVwOhFqg/9cS0AdZlrKDx+vFfKKDxtJFS1HxkFRUicMAHzHBZTM=
X-Received: by 2002:a05:6512:108d:b0:594:2654:5e3c with SMTP id
 2adb3069b0e04-595841f0b71mr2840106e87.33.1763265688745; Sat, 15 Nov 2025
 20:01:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1762482089.git.zhoubinbin@loongson.cn>
In-Reply-To: <cover.1762482089.git.zhoubinbin@loongson.cn>
From: Keguang Zhang <keguang.zhang@gmail.com>
Date: Sun, 16 Nov 2025 12:00:51 +0800
X-Gm-Features: AWmQ_blIhjJIi_40FrZPKnXO2gKNnDJthQwdyLwC4vAHP_LVBvLT1GG6sptkjTU
Message-ID: <CAJhJPsX537QiQZdk-0g_4RWVYGrhFasPrOY4Np+b-aVC6j1Urg@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] Watchdog: Add Loongson-2K0300 watchdog support
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Guenter Roeck <linux@roeck-us.net>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For the whole series:

Reviewed-by: Keguang Zhang <keguang.zhang@gmail.com>
Tested-by: Keguang Zhang <keguang.zhang@gmail.com> # on LS1B & LS1C

On Fri, Nov 7, 2025 at 2:01=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn>=
 wrote:
>
> Hi all:
>
> This patch set adds support for the Loongson-2K0300 watchdog driver.
> It's similar to the Loongson-1, except for some different register offset=
s.
> Therefore, I've merged it with the Loongson-1 watchdog driver.
>
> In addition, I've simply fixed some minor issues with the previous driver=
.
>
> Thanks.
>
> -------
> V2:
>
> - Remove file and function renaming patch;
> Patch 4:
>   - Update commit message.
>
> Link to V1:
> https://lore.kernel.org/all/20251029020847.1946295-1-zhoubinbin@loongson.=
cn/
> https://lore.kernel.org/all/20251029020913.1946321-1-zhoubinbin@loongson.=
cn/
>
> Binbin Zhou (5):
>   watchdog: loongson1: Add missing MODULE_PARM_DESC
>   watchdog: loongson1: Simplify ls1x_wdt_probe code
>   watchdog: loongson1: Drop CONFIG_OF
>   dt-bindings: watchdog: loongson,ls1x-wdt: Add ls2k0300-wdt compatible
>   watchdog: loongson1: Add Loongson-2k0300 watchdog support
>
>  .../bindings/watchdog/loongson,ls1x-wdt.yaml  |  3 +-
>  drivers/watchdog/Kconfig                      |  4 +-
>  drivers/watchdog/loongson1_wdt.c              | 89 ++++++++++++++-----
>  3 files changed, 69 insertions(+), 27 deletions(-)
>
>
> base-commit: c64c2a50cdd487e2270c875c1770cd55705d75ff
> --
> 2.47.3
>


--=20
Best regards,

Keguang Zhang


Return-Path: <devicetree+bounces-207078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB990B2E701
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 22:51:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 966E6A26525
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 20:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F732D5C86;
	Wed, 20 Aug 2025 20:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="DbnHXcLt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209E3283CAA
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 20:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755723107; cv=none; b=WI0zkJHBmDkbh5DIKVd0sy1uVMXzP1DK4j9o+CCnqg8NfFS74/K5F7+Gg9KhQqbAYyCWSswcgZGz5TbqCETLIARtvrn93WSI6aYbdjSmv1GwTNjJiPYkxTDulZDB1sL6pu9B77qSRhX4FnpqFrfhlfSduzVOUlZhYblnY+ZDbjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755723107; c=relaxed/simple;
	bh=4Me4vXB6ODQcABCgWDh4HsPJQbjccLI/Pb+fgV8C0mw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qLzIaDb7cm1g0qQrx3HrDMORsLBJAAho678OxZJN+NreOs/irEoMgpneLt2uFWGXoyYz2Jvw7qP0yuRI2tW7qNKO2CoT52Vn+sd9ulFlMnXky5r7uXfMcZPpWPacw4ikMh33DDM3uB1hjqkUN4LArFk1WIqDoj3v74k42Cxy1HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=DbnHXcLt; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-53b17193865so148169e0c.0
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 13:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1755723105; x=1756327905; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uHKTS5mcdAuJ/6so1Fu8wdD7ErgBomd6S6kgDOCUXZU=;
        b=DbnHXcLtN6GDsWB/mdLpf3DnLrSfDzNaD5zFsYrdRJ+ITVbeP8RUBsyosznM2FdoNp
         yJ8xHkPzlb6f5qMF3TZy22gZSqCZZHZ64V1+qDQJozkqtWlfww9nIejuo6YxKd9vntU6
         I4TNGAoOTG0mOVXkMOy+ifxe0SqdOMv2mKEZ39YyD0WXyNhaESnzRaM3x4YTFqw7bCeQ
         kjGU215ShHofDx++MTo0YYBQixXans1Bqr1zYd5bKB3A43jrbYuHobPhQ1YHWMBda4V+
         35EX5leB17OhozBRBlYtgq1mg6NIxZbq3W6MVR3wgP7ED/zyDzWC4sUpmVZJ79i0aRQp
         /Xvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755723105; x=1756327905;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uHKTS5mcdAuJ/6so1Fu8wdD7ErgBomd6S6kgDOCUXZU=;
        b=QGpVVtdI2MQwa26bit7S8lhpBXYIiNEREKeiSRYOBLhgB7iZqX0ZZs9YlWPz3OuJQp
         llYWcIdO6UoNyI0mFjMSvaeAzf+AOhQNBA7dfBsWIxpgvp/c1v96XqTzdMJcHFr+mPyG
         lVEtG6U7leLBjOZ/vdQycuU9Y/tRUPTCn1559pWz6GntsHW/T0Q0Zz/maa20Tqhhi12z
         k7M8Gys1Vq4OdwnVyYhcw9F7Suc7Gj9550Fxg5ZcjlFb0wxk8enrSw5UqULGosFKnwQ3
         mqZpRa2bmuT1GjVn7GuN9JhMgzmj1exainlYWV5wShB9PUFYptwSlKJouBWkDKWL42u7
         mICQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEsN2GdZXLMoBVbHwXN+qP3GXS8QeGmBPUBItkCz9UqVYTaJbKlPdJRqPkeZUmZfPfqLCgt/RJzeL2@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+5UgAXuZldZT73y38YXMPq8Qk/YY28L+AZMkebtDs9OjsuM4c
	LVhlwUATeIsHq9qzjTdoxJZLJz3yElnbpdj/fTRBcq09jIO+g+sreITy21CqWBU2yumW+7egUqR
	3yui4kd6rmNRs5NPT7rdlj5S6LvVspiHiH+eT4Teo
X-Gm-Gg: ASbGncvFsebyhASazV0umEI7B1NR8Zcn+4h2haqRS4gwVgWBLrTrrLVayKaIQqCeFF9
	5Ra3R7TXkDKNz0rCCDPwUjc/gnGIF7T8F8IQi/re3nlJqX7Wo+NZBuCdOm/kWquAAv44dXKZppM
	sLs5vSNC/3GQv1oTAYaXx3UAp+h0Vp5eIKaME74r9CCL1dEygVhGhxdDqaQJXczcScu7nO4it83
	Ik4nIwXuz0MJLMgS9MJVS4R28ugQ4oKDHNQs6Wu7UlQ6oKC+bsofw==
X-Google-Smtp-Source: AGHT+IHRt+LiqU1bNcACp//Ntxm7XH/cxrv2iwBUVZFZyViML7tnEwhsGDdj5amh54hAAvisyGyWPi6lYlAI10NScTE=
X-Received: by 2002:a05:6122:508:b0:535:e789:6ccc with SMTP id
 71dfb90a1353d-53c6d48927dmr1310532e0c.3.1755723104602; Wed, 20 Aug 2025
 13:51:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250820192805.565568-1-robh@kernel.org>
In-Reply-To: <20250820192805.565568-1-robh@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 20 Aug 2025 13:51:07 -0700
X-Gm-Features: Ac12FXyG4JVALbMlbPqBRPkY6bhe0gsfl2f_OZ4G16pEP24JNqN5iaa6770dUhI
Message-ID: <CAGETcx_DqgEt0e8ZGikTyLWS+2vaTfz=m3BnZJROgGNcp6CwWA@mail.gmail.com>
Subject: Re: [PATCH] of: reserved_mem: Add missing IORESOURCE_MEM flag on resources
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Patrice CHOTARD <patrice.chotard@foss.st.com>, 
	Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>, Daniel Baluta <daniel.baluta@nxp.com>, 
	Iuliana Prodan <iuliana.prodan@nxp.com>, Daniel Baluta <daniel.baluta@gmail.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 20, 2025 at 12:29=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org=
> wrote:
>
> Commit f4fcfdda2fd8 ('of: reserved_mem: Add functions to parse
> "memory-region"') failed to set IORESOURCE_MEM flag on the resources.
> The result is functions such as devm_ioremap_resource_wc() will fail.
> Add the missing flag.
>
> Fixes: f4fcfdda2fd8 ('of: reserved_mem: Add functions to parse "memory-re=
gion"')
> Reported-by: Iuliana Prodan <iuliana.prodan@nxp.com>
> Reported-by: Daniel Baluta <daniel.baluta@gmail.com>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Saravana Kannan <saravanak@google.com>

-Saravana

> ---
>  drivers/of/of_reserved_mem.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 77016c0cc296..d3b7c4ae429c 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
> @@ -771,6 +771,7 @@ int of_reserved_mem_region_to_resource(const struct d=
evice_node *np,
>                 return -EINVAL;
>
>         resource_set_range(res, rmem->base, rmem->size);
> +       res->flags =3D IORESOURCE_MEM;
>         res->name =3D rmem->name;
>         return 0;
>  }
> --
> 2.50.1
>


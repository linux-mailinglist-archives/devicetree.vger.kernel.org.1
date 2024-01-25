Return-Path: <devicetree+bounces-34877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8BC83B7B3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 04:15:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89B56289A65
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 03:15:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDDEE6FB6;
	Thu, 25 Jan 2024 03:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="IewNUTOD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8459D7FB
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 03:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706152526; cv=none; b=cKtfTs6Ed40EhDJ0NUbDqvY4CRRSS7xKsR9vj30az+pI/NLiSJR5VrMTHeF6VKOLRWvgPVVf81oJCRqQlhHaz2GlKUGlTM01vAZ3DlkBOY6je3ZHqufHtOOov4lGyTwPaeKgX3TBjVAtaSFhMW3iLMU8t11HIEJs0UijzH9uUsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706152526; c=relaxed/simple;
	bh=CcLkLx7G606+mDmOuaZgobkEho3excv2jQhcaSBD6hM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OGj1KqfggRxAm0x6dUJN4TI7rK9soXiqtJatqW0rjz/KXLE7Zy6acmSeL9QwNhqYsMYWTZ0rhGsFKL+lcUSN2rmTz+unnQ1/3iLWLZ/06BZAFH1/hcThy+jsQPJR2Athw95ckLVI8J9VfaF07N2hPSnR/Oz6s+HMLwVpH4/OxFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=IewNUTOD; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4298fa85baeso93111cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 19:15:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706152514; x=1706757314; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tirya9LR7PB46GxyzStnmaXKMwHffwTodjJrtEce0QQ=;
        b=IewNUTODtq+M0kfPFKpmGQ0sb4ODPXKgHl7VsfThliqBbUxwHzGIyysZYHnhJbiVHe
         VRkd+x+MqsMpNDbN6j5yqrCy+Nr6UsiTBqwEvu+D1w/kDFiPzb64kgNJ9u6uzP1pEOFa
         Lx7hLNywK/LHQ+QRslW3xNfQHJgOzneigsVjRRmDoQpG2Z5I7UwGEMXyw2SRezd+/auk
         DiJW9Iem74tMa/QTHFri/knyOuvzraa+w0dy7dbOU03+GDDuqeVfoqT6/CVi5xuItegD
         e3nbAYlJu4H2PDUnorx+genmKSFeLdGq9M9mz0ZYEUzJFo7mvz4dDOuWJLac5ITiiyMQ
         fl+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706152514; x=1706757314;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tirya9LR7PB46GxyzStnmaXKMwHffwTodjJrtEce0QQ=;
        b=hYcdTgJR8+0My4WxLtJPiGu0yvA/vmG+nVH74Pb4fXyOiUYSkuW68jQuxGT9g+QROe
         T+Qc6WjkC09pInSfoA7Y7PApENEZWY7WaE/981Q6+/hY43yPgeL2FOgXAdNWL3XYDtZM
         hOlaPg6yyZ8pp9K3DvwP1KluryWQzLe17l2sWG+6eh0wKpI92X2Sw14wRplGNyn9e58b
         GfQEKcb5UOCsve0vHbMh/DKUXj4GT/9AW1zaG6huUQr6nDdmekC0tsdZt1MHVrGE3//1
         XUkgJtZy1Qu1nB0CHokaBhs0hyYNOq257ESFmux6ilWlugJCXAHtUJf8HJ6zyfv9hz7D
         9P5w==
X-Gm-Message-State: AOJu0YwSDoCGl0EpCJ3HtqLEZACgFrGFDinmbEsiXNq5hi4xUKcpZX54
	Z+wrslZumZhJhWVGN/aRyTudothq5Rha5JyRDlzqs/yhuj2gi870+yN5lY6hOBb6xYqmgUt4Ne6
	6PchhP7X4eEVxpa76IhvF3LuGrQrWcIAvp1Yj
X-Google-Smtp-Source: AGHT+IHdjgyoV7XMRfnnM9cJyQ9JLXNsQTesEtcLcS2ciqzN0WAsY55qzs/5dqcu6MmnvuYdADgEkI/L5ryDo8oTV7c=
X-Received: by 2002:a05:622a:4187:b0:429:d4e8:dd19 with SMTP id
 cd7-20020a05622a418700b00429d4e8dd19mr94428qtb.17.1706152514104; Wed, 24 Jan
 2024 19:15:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123-iio-backend-v7-0-1bff236b8693@analog.com> <20240123-iio-backend-v7-1-1bff236b8693@analog.com>
In-Reply-To: <20240123-iio-backend-v7-1-1bff236b8693@analog.com>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 24 Jan 2024 19:14:35 -0800
Message-ID: <CAGETcx_0wij8j5u7YRNPDgpPDkJoFq4AL7oRy0iFUELYTbc9Bg@mail.gmail.com>
Subject: Re: [PATCH v7 1/9] of: property: fix typo in io-channels
To: nuno.sa@analog.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Olivier Moysan <olivier.moysan@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 23, 2024 at 7:14=E2=80=AFAM Nuno Sa via B4 Relay
<devnull+nuno.sa.analog.com@kernel.org> wrote:
>
> From: Nuno Sa <nuno.sa@analog.com>
>
> The property is io-channels and not io-channel. This was effectively
> preventing the devlink creation.

Thank you!

Reviewed-by: Saravana Kannan <saravanak@google.com>

>
> Fixes: 8e12257dead7 ("of: property: Add device link support for iommus, m=
boxes and io-channels")
> Signed-off-by: Nuno Sa <nuno.sa@analog.com>
> ---
>  drivers/of/property.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 641a40cf5cf3..bbf0dee2fb9c 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1244,7 +1244,7 @@ DEFINE_SIMPLE_PROP(clocks, "clocks", "#clock-cells"=
)
>  DEFINE_SIMPLE_PROP(interconnects, "interconnects", "#interconnect-cells"=
)
>  DEFINE_SIMPLE_PROP(iommus, "iommus", "#iommu-cells")
>  DEFINE_SIMPLE_PROP(mboxes, "mboxes", "#mbox-cells")
> -DEFINE_SIMPLE_PROP(io_channels, "io-channel", "#io-channel-cells")
> +DEFINE_SIMPLE_PROP(io_channels, "io-channels", "#io-channel-cells")
>  DEFINE_SIMPLE_PROP(interrupt_parent, "interrupt-parent", NULL)
>  DEFINE_SIMPLE_PROP(dmas, "dmas", "#dma-cells")
>  DEFINE_SIMPLE_PROP(power_domains, "power-domains", "#power-domain-cells"=
)
>
> --
> 2.43.0
>


Return-Path: <devicetree+bounces-162996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D68E9A7A981
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 20:34:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D57ED18998DF
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 18:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F240A253348;
	Thu,  3 Apr 2025 18:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="wv7FXSdH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFB724CEE8
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 18:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743705215; cv=none; b=salghd/HHyhx6xyz1wi5adsOsfV9hQMWTqXc5CSftmqKqql6UG3ZkBaWUIlJhT9rxjvBIfybSU7Q3wRp2X0ZwV8DwqUDfVXML+6XCxv91/G1uu92tYYDaBtwNwKUzAZgPUc8cqfw67RljAkdR/kh4OH9NMGGAj9hsdrSz15KIBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743705215; c=relaxed/simple;
	bh=nTZuGsFING6MIGVPoQQdW0z8/bAf29Sjd0udlbQBoTI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IhDlMPnOpZ6OkzIvm7VGeZConyLU6o8cOm1b8pRsljM6b90XNw2kYJWg2E66+Z+DAQIlYhT9AiKjXJuS6jWmcyIocaw3vzTtRXHadUFF+8lv61JKxQ9eVEpMXFe9Lyo0ZKkWE4y8gH5/4Mo851f2OuBV2KYqQwvFpoRZ+497Zpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=wv7FXSdH; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-54acc04516cso1366689e87.1
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 11:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743705212; x=1744310012; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I6FpVBVSrBp6UsJLd/05pqTv+7X/fXLRZyX/z8dAfA8=;
        b=wv7FXSdHa96vMLpr6yHrQSyYr8WYW6zUP1oQoGYY4KOe5lhIS8GCaqX4Zcvpzdw7UB
         Bh7GANwgOBT8ncAxuX7ETRoq9QvRn9z9vQYtQZbCym9bbnL79aEgX5oboNbTUlRhfAa2
         yDq3ZdmyTEzPYWZoiBacthaSOeHp8BsqG4cDUDWNRcumsKzW7+84Ehf2s9luiiMXoODs
         4GMQHyhgkGO6lcuD1+KgDPqZoikTOud33RpHgSB2CGIu3Uli+CSBKq33WR3yp463Jzja
         LeQYj8kWSCY3uCwnGTGDRH5o9TzFcgYyHKGBt1Iu17T/lY2J+Vds1cQiWIQ8bIL7yl2U
         GAaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743705212; x=1744310012;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I6FpVBVSrBp6UsJLd/05pqTv+7X/fXLRZyX/z8dAfA8=;
        b=IKpLA2WGaWqALvENn9wsbUpI9q2IdfcwmswayPXmtk2uLoIc50McuCqiU3l5b1tgRe
         W40aNe3Q4rn2LA+4Ubtf3OfrHUL70gNfknzJBrcB+W5ENWSkjY3W+5tu5xesVYNPAXLq
         zNBYbNSwNE9RmPfEHJsBpSw0gU7CjbiC0Fxur6jEGdw2WpYonsCa70eaPo9v7Rd6mrtq
         ZSKD68LxigWca/m225nf7uthU9bRT4mV+wA27CY9qJ2kGBl4yanyGeakigaCvnGOtOtj
         L0r3QNA/GVkkC4pyKnlIJd2U47ysOr9Ky1DqjoZMCHacqwC6+imFLkY5Ta3WlSIgdu2P
         aiXg==
X-Forwarded-Encrypted: i=1; AJvYcCW2//9wIFJzvB25W8M8D13yE5C23kzRjOa2bxh9Ug25vTAR8m4x5/9/sohWMq/TP1/2f+GjcmO3ocUL@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8iolcCwSL+oXsfE9dybu7hmI9qZaPyoOOHB05+w5u551FaWVi
	kDfgxMSflGlbt3BAjdFha+10CgXXvmbSBuBqw7nbgoglscRSd1h5FsyFFIs3laR1b5QlD/GY775
	8HpxFRKcY4xsm70paBiPwh2t5hTtSJ5+JmkDa
X-Gm-Gg: ASbGncvuc0RrpRG4gtur3B/biMiuioEoRVuWEdGn7lbq/Q8xqtcGGjBB5XimrdtfXis
	al1jqgP0+BTdfHtoAS6lys7Gydgt5zfDG8i4vY+HRZZIsgItnamvqOG2k/DjrN1VkEm/HEHfG8k
	o0Mt82RXtoC/tDS5YBJcwWSDLbeAXqFK160b2sAlOf9nv0HgN1hxLZ
X-Google-Smtp-Source: AGHT+IGGElQxxzJStMl02DU8ACSS/S4gavMbWxl4jrrkrwKF8pltAulp7F6pmLGK9uI2hw2C8NndmdlVm47F388sLto=
X-Received: by 2002:a05:6512:3b85:b0:54a:c4af:18 with SMTP id
 2adb3069b0e04-54c22784b65mr66148e87.22.1743705211956; Thu, 03 Apr 2025
 11:33:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250403181907.1947517-1-sean.anderson@linux.dev> <20250403182758.1948569-1-sean.anderson@linux.dev>
In-Reply-To: <20250403182758.1948569-1-sean.anderson@linux.dev>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 3 Apr 2025 11:32:55 -0700
X-Gm-Features: AQ5f1Joj6PPNXYtzD5r8kgx1fQnzai2slPTaoQvR1K8EcGM4YKlTmyOgm6rJ8rM
Message-ID: <CAGETcx9v610XhvU705R=Mjth=iAbCU04rqNnQPhQua37Jc4TRQ@mail.gmail.com>
Subject: Re: [RFC net-next PATCH 11/13] of: property: Add device link support
 for PCS
To: Sean Anderson <sean.anderson@linux.dev>
Cc: netdev@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Russell King <linux@armlinux.org.uk>, Christian Marangi <ansuelsmth@gmail.com>, 
	Heiner Kallweit <hkallweit1@gmail.com>, linux-kernel@vger.kernel.org, upstream@airoha.com, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 3, 2025 at 11:28=E2=80=AFAM Sean Anderson <sean.anderson@linux.=
dev> wrote:
>
> This adds device link support for PCS devices, providing
> better probe ordering.
>
> Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
> ---
>
>  drivers/of/property.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index c1feb631e383..f3e0c390ddba 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1379,6 +1379,7 @@ DEFINE_SIMPLE_PROP(pses, "pses", "#pse-cells")
>  DEFINE_SIMPLE_PROP(power_supplies, "power-supplies", NULL)
>  DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
>  DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
> +DEFINE_SIMPLE_PROP(pcs_handle, "pcs-handle", NULL)
>
>  static struct device_node *parse_gpios(struct device_node *np,
>                                        const char *prop_name, int index)
> @@ -1535,6 +1536,7 @@ static const struct supplier_bindings of_supplier_b=
indings[] =3D {
>                 .parse_prop =3D parse_post_init_providers,
>                 .fwlink_flags =3D FWLINK_FLAG_IGNORE,
>         },
> +       { .parse_prop =3D parse_pcs_handle, },

Can you add this in the right order please? All the simple ones come
before the SUFFIX ones so that it's less expensive/fewer comparisons
before you parse the simple properties.

-Saravana

>         {}
>  };
>
> --
> 2.35.1.1320.gc452695387.dirty
>


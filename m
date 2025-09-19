Return-Path: <devicetree+bounces-219319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F02B89FE3
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:34:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C238A188CEE2
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 14:34:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4ED33161A9;
	Fri, 19 Sep 2025 14:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="0Gq56a7d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C0130F541
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758292417; cv=none; b=P/ka/0LfB4+jqHqI+vxlJh4xOgGBw6BauaIPW13xFA4rwAOvtsfLM/VB+PXBUZE/v0nwZE3czdESPOawiIFSvGG4EZDXZUWE2zS2jifQh6Bao+ydwB2E4GLCnUH6/6FUdZNoKlodsbehUiGDbr/NnrHL7+F5AdqD5meZTyUkAdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758292417; c=relaxed/simple;
	bh=e4UBUt6lR4A0mwQEEq4xjqzMIANLj8niyjojOgxFoI4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MNmxZ+f41uGTD9BOPV8D+rR1CBb0tSPoaK2o4VezfIyyf5I5fUynkRE1LeU0lyubmexjLYRfqO4yeLDfGQHaEpeI0q/GRcR76zrzMwTQiLFQ38grN2F5fGtAfJ+g7V+bzdvD19Me7RF1N1BwPpmrl1wNx/L7WvokY8x37LXxRcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=0Gq56a7d; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-26e68904f0eso1639435ad.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 07:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1758292415; x=1758897215; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y2gym8TYp/ovo8G/55zCJFXd/aU/zbsFHKBPG4aVbvE=;
        b=0Gq56a7dcWgKwVzWSvZVd02q3nKJi7LcU+PktMhXWJf6DDFlsyQ5mtLAhM4u30PnOe
         vo4tY204IWtbaJ4kVpZn1BwVw5gPXk+XEGcTGb9916FwTBGyKcOKw24ZqWcM75C513Wb
         3AJLIeuFlJfqM3SgZig7COpgTa6xC6MfWNqYQbbv+4E8lxjtRUYow1s0AV9j1l9bpu3y
         oyI+5EWAC6zBSnUg0P7L363uchFS7wH5/P4qHmQHuEJXOil9UcfuggWxzoRhxerElH2c
         sEZVZ0nORrgxn29rh2OXdBtcc/oBu7SK37EgM5dQBUIpZ+NOEiVs+mZU8tDzMUa8wV2Z
         +cmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758292415; x=1758897215;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y2gym8TYp/ovo8G/55zCJFXd/aU/zbsFHKBPG4aVbvE=;
        b=jijMZdbyIk5O4uL+FHvos8qViMf4CfFRqpdY0/lKnDkB1Z2FPFKWxEAyLixucYV2K4
         HiMsjdui89nu/++ak/2gUZ+dBL09scu6ZIa+My6JkbmXsgjQzlKMr5n7hypuNmp1U5Jw
         t9GU5h7nrziK+P+ax1wePzt6TYxKDsuOgFZZqffjLUCxvF17lCMyVN64qeHbeBlCm6aO
         o4C9uVwNlzn4HO0O5inDn+j+fwcpzRAVG97iJKNDykvqbU8s0LSy9LpoD/YCLDPI/rlQ
         Kpv1V3l3gogqAXoRIIcE6iyIyF7ptpnYDbojTjnPP2HZlzOQMg33WhIJJgicKwYzIdDN
         5OcA==
X-Forwarded-Encrypted: i=1; AJvYcCUsnHIHg3HuDZBhF9DTOost9a5kzhdIsyLWV1gQuyH2x8idUCAJXo5NL2XSKKNMMxObZo3VIQZOM5ar@vger.kernel.org
X-Gm-Message-State: AOJu0YyW7fPOibi+m5dl7XYrFXO8+Q/EfJfgiCz+YAg5DWswRfq8xIem
	7Poc43OGKvnujiMW7sNiPWF9DcMXjHFdgETk+xpBDeCWiPmA8K0gLDC4JjZvHbqPy4wS3yQjXZV
	MAlKC4PenAkfaUjpo8asE79kTeK5eHwQM6ubomL+E
X-Gm-Gg: ASbGncsY0pfwJlu6iK/MYHePP0jvw/8zSMIWnfoBaIIzg22ID3OAIPBIw45WjYLkzGC
	Kc2nOT/oVXUz1RdhM99ee/WD6RJGmbc6eIe2OWZAhZbBTjR5LVHgjLknBY3jNm9S5QMAhztM7wu
	3lh/mdc85+iT59Vw9ooboTqzp6fuTTHJgrW+LiTyRqSZwdGAtoHnkQeFZP4EOyY+yYzx/uO2OMU
	IZC3qb1TVvIHLO521NPGS6OhayfMtRoDLbbXZDhFocz8Co=
X-Google-Smtp-Source: AGHT+IGoZM0jnVTt1Y2CJHZqnYGBoUxj4B49GMuB7/9WxT3I0dZXKe1ddSPAgfCVn0IDJ7MGh4cZz1erCcimfhFsdfE=
X-Received: by 2002:a17:902:e787:b0:269:9a71:dc4a with SMTP id
 d9443c01a7336-269ba562469mr40478525ad.41.1758292414956; Fri, 19 Sep 2025
 07:33:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250919111101.2955536-1-yanzhijian@huaqin.corp-partner.google.com>
In-Reply-To: <20250919111101.2955536-1-yanzhijian@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Fri, 19 Sep 2025 07:33:23 -0700
X-Gm-Features: AS18NWD7sjIWHslodAybxfuXYKhfB9xyIPTlMG3JfDBvZbYFN3An-yBQPnL5d3I
Message-ID: <CAD=FV=VDChmUn50S7FKUumEDXZS-S4YZyyV4B1-HiHAiiDEn8A@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: Add support for KD116N3730A12
To: Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Sep 19, 2025 at 4:11=E2=80=AFAM Zhijian Yan
<yanzhijian@huaqin.corp-partner.google.com> wrote:
>
> Add panel driver support for the KD116N3730A12 eDP panel.
> This includes initialization sequence and compatible string, the
> enable timimg required 50ms.
>
> KD116N3730A12:
> edid-decode (hex):
>
> 00 ff ff ff ff ff ff 00 2c 83 97 03 00 00 00 00
> 02 23 01 04 95 1a 0e 78 03 3a 75 9b 5d 5b 96 28
> 19 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 09 1e 56 dc 50 00 28 30 30 20
> 36 00 00 90 10 00 00 1a 00 00 00 00 00 00 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fe
> 00 4b 44 31 31 36 4e 33 37 33 30 41 31 32 00 a9
>
> Signed-off-by: Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Pushed to drm-misc-next:

[1/1] drm/panel: Add support for KD116N3730A12
      commit: 048deed5faf012c6ecf6057ddf1340c41f69fdb0


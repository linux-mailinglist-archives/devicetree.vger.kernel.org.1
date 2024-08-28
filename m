Return-Path: <devicetree+bounces-97559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9A49629F2
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 16:12:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E9B8F1F218CB
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 14:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8770016CD07;
	Wed, 28 Aug 2024 14:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ARHgpekO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD75A189513
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 14:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724854342; cv=none; b=DN9zCHbWZ9wSBNbmgnq7Qd1H2f4V8i8EI9SI7bdDZWU08wqi4+eI07ABQzor79NCQzemsZaQYxoXhSGzH2ktVJcCi6GINlhzO5o5ypD0Rg0Iby2W1YbJX8d/Q6FYP+TrGaf5pzgkthSL50RmqcE5iEgVN/mxRUXYbKoaLA7yWew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724854342; c=relaxed/simple;
	bh=yeb0hXQ+hAEFUQKfRJad92+EuV7jrYPXxhHm8CrSlm4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uOzhOSlDxrCnkU8yxEMa8gkdoUajZYjkGhHx3CZQvet8EVnTeCzxobW9Qu6+ZUylPMv5pDxQnOyZAeEZ9dCw69D1nJDSw77CUvOn5y1W/OlCbBgU9dNIZ01jrUZsm4Xc/14xlMOFwxSIZVG15qBEPK1r+DxCKP0D4Kmv3ApbpnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ARHgpekO; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4503ccbc218so5765321cf.1
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 07:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724854337; x=1725459137; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BuabzWElUzzHdL1Mbm0egMjDIW45P3GOeFaGyaG57xY=;
        b=ARHgpekOGxjeTNhOPCEdL0KEDAPlaxbs2bgSVh+JUnJ4NS2DjoHGCbyWp1AH+KTWZG
         0w/9xAYAQP6Jm3927Lbl/ZbqLu5OoPTnovypMpMpsZHcILT/wsiZCm9Ek9dhto8jHstg
         SnnWOnDeVjm8dQ+36Lv6SN0/TYbr6PN1fkK/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724854337; x=1725459137;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BuabzWElUzzHdL1Mbm0egMjDIW45P3GOeFaGyaG57xY=;
        b=tlYyEzMA9IZ6tF+AUiKD2ZJpOIfflbbsxQPQQDebFTDZjLCfJscldtuOKEUel+qmE5
         DVMUCmLqf1NYRJebYSfv8XggfhOFtvcjaZq/cqNO+0NICFOQo+oYmk6GwnR+UBY7yuBz
         9bQzxuUUrNxKoZk1vW9ZWbrbWA0JY2nQRqUYm7Yw1hTdxGcCyXFJ4cHJKMcByn43dVCH
         CDBv9VbrQGsm1BTVmwsIt8B1B6EZn2Gq4dL6OyOGs+wc3Gu9iAWvVrx4E1eBgENdDn8d
         pTGnTVKsNG0MHixE0JehxSrgp2DCxRvakDV14h+VwcDH2O0Aj4Awwuq3VyYXOM/zR0oz
         1txg==
X-Forwarded-Encrypted: i=1; AJvYcCWZDqTkwxqbcHilI4iB8FFYWO9IY9lzr8RuaABs8s+Tz5wrAAjrZe1K9rgnCEYS+XTTn+OPUZ+dvjzA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4y4VjopAIJtAG7pcpI1Z3We3xvE9j+ihUiFGOI8ZB/rXo8UT2
	wqq72mzzOAn8wZgVFXqpyFc5XPsHlf83Iwc/T06RUA+n60VKOV58xirTOVxthO7oA0u38HxC4l0
	=
X-Google-Smtp-Source: AGHT+IHnFpBp8Rji984/rXHELcOg1Qj1JqBcbJBmWTSjJxYJWLQskdSftkRkIQT3oe/6rzPHvrxI2A==
X-Received: by 2002:a05:620a:bc4:b0:7a4:d56a:a928 with SMTP id af79cd13be357-7a7f420752amr397857585a.21.1724854336768;
        Wed, 28 Aug 2024 07:12:16 -0700 (PDT)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com. [209.85.219.41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a67f41e281sm642729185a.129.2024.08.28.07.12.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2024 07:12:15 -0700 (PDT)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6bf705959f1so6453566d6.1
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 07:12:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXDtz3IgS4c0Jq1+p+ax5MS2JtKD8CEZLe2QhXyIadZnmC6muZNRd7XcXghWaDcs+2N0OYJT01X83gx@vger.kernel.org
X-Received: by 2002:ad4:5147:0:b0:6c1:80d3:8d2b with SMTP id
 6a1803df08f44-6c335d62c8bmr34636536d6.18.1724854335299; Wed, 28 Aug 2024
 07:12:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240828-topic-sdm450-upstream-tbx605f-panel-v2-0-0a039d064e13@linaro.org>
 <20240828-topic-sdm450-upstream-tbx605f-panel-v2-2-0a039d064e13@linaro.org>
In-Reply-To: <20240828-topic-sdm450-upstream-tbx605f-panel-v2-2-0a039d064e13@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 28 Aug 2024 07:11:59 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WqmdjrM3jgpGEX=DqrJLYySpgQ9w+zK0mR=os_5wA35g@mail.gmail.com>
Message-ID: <CAD=FV=WqmdjrM3jgpGEX=DqrJLYySpgQ9w+zK0mR=os_5wA35g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] drm/panel: add BOE tv101wum-ll2 panel driver
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Aug 28, 2024 at 2:22=E2=80=AFAM Neil Armstrong
<neil.armstrong@linaro.org> wrote:
>
> +static int boe_tv101wum_ll2_off(struct boe_tv101wum_ll2 *ctx)
> +{
> +       struct mipi_dsi_device *dsi =3D ctx->dsi;
> +       struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D dsi };
> +
> +       dsi->mode_flags &=3D ~MIPI_DSI_MODE_LPM;
> +
> +       mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
> +
> +       mipi_dsi_msleep(&dsi_ctx, 70);
> +
> +       mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
> +
> +       mipi_dsi_msleep(&dsi_ctx, 20);
> +
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x5a);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x05, 0x5a);
> +
> +       mipi_dsi_msleep(&dsi_ctx, 150);
> +
> +       return dsi_ctx.accum_err;
> +}

optional nit: now that the single caller of this function isn't
looking at the error code, you could make boe_tv101wum_ll2_off()
return "void".

In any case, this looks good.

Reviewed-by: Douglas Anderson <dianders@chromium.org>


Return-Path: <devicetree+bounces-16768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 947687EFAE5
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 22:29:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 470DE280DFF
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:29:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A95248CCF;
	Fri, 17 Nov 2023 21:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NXJqXa+G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 542204782
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 13:23:15 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c788f5bf53so32116561fa.2
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 13:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700256190; x=1700860990; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yFBqw6WWFn2DTJJAm5oTscYcujSFx4g4cXCp4v+z0IA=;
        b=NXJqXa+GrWs4EjbDRUHSMKUDu6DoWDlZ/IB3CFDKQ9jNem4v54qdb1cS52H0tS1tiY
         FzQgApeDdbSa/7puBkcU4YD16zqJyEKUYfjNhkpP6X1FUZ6S4E0YFUauT5AyaC6qgwOc
         aUanh6y9tK616MAt+2fIqBNnD43TiaEJAQhw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700256190; x=1700860990;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yFBqw6WWFn2DTJJAm5oTscYcujSFx4g4cXCp4v+z0IA=;
        b=XW+W2CCZgJQvRAAubHjOm3onkw+EmeDebLFMkKVzVg1sNW7U9q90ffYIR225RBidWT
         x54z47bQM/x7IG/YTjgmMLb/dXVd2GTT0IgVYYix+G6XHpWOo0co0wFYa1NE0GLlbQsD
         ynLVFotLQViPauIF16mZ4YDyyP57ngnhUTq6K/sExHEN9XnkKrzgnnhf80ebUYy5YM3Q
         6yBwTbckCP1YUTV5EpXmhMLZdaDMQIRzQAn2hz5MrGOD0jR5AcpHLVfwdFe9JFBpb7D2
         6OwRk1ShFWyByAkpEX1zfDAo1z+9CoX1bDFAnhLaRK1f+Seh7oJwdYAl+0CSC/U0Ykj3
         NbNA==
X-Gm-Message-State: AOJu0Yw01STJkeQPwwJ3PFeoez+ouyf19U32t37pWylySJECLFjvrbMn
	Pi9zwSFqfu3HDvHqdCIDAzE0RP4SVM+DOJ9PCEJYiA==
X-Google-Smtp-Source: AGHT+IHiQ9/0nVNqUQbmsRU+uOvRkSo9Nhd92QAMZFO5IyNOtOH+NILTDuniMViYwFIIREy0x0eh1Q==
X-Received: by 2002:a2e:8746:0:b0:2c5:1ad0:e306 with SMTP id q6-20020a2e8746000000b002c51ad0e306mr611988ljj.8.1700256190645;
        Fri, 17 Nov 2023 13:23:10 -0800 (PST)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com. [209.85.128.45])
        by smtp.gmail.com with ESMTPSA id cb26-20020a170906a45a00b0099c53c4407dsm1177658ejb.78.2023.11.17.13.23.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Nov 2023 13:23:10 -0800 (PST)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4078fe6a063so3495e9.1
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 13:23:09 -0800 (PST)
X-Received: by 2002:a1c:7504:0:b0:404:74f8:f47c with SMTP id
 o4-20020a1c7504000000b0040474f8f47cmr50225wmc.5.1700256189626; Fri, 17 Nov
 2023 13:23:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231114044205.613421-1-xuxinxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20231114044205.613421-1-xuxinxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 17 Nov 2023 13:22:52 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Vg5YouEYVSnv3XJ-ghjZoLa9-QG6Ksh4yg5hExN_9gWA@mail.gmail.com>
Message-ID: <CAD=FV=Vg5YouEYVSnv3XJ-ghjZoLa9-QG6Ksh4yg5hExN_9gWA@mail.gmail.com>
Subject: Re: [V3] drm/panel: auo,b101uan08.3: Fine tune the panel power sequence
To: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Nov 13, 2023 at 8:42=E2=80=AFPM Xuxin Xiong
<xuxinxiong@huaqin.corp-partner.google.com> wrote:
>
> For "auo,b101uan08.3" this panel, it is stipulated in the panel spec that
> MIPI needs to keep the LP11 state before the lcm_reset pin is pulled high=
.
>
> Fixes: 56ad624b4cb5 ("drm/panel: support for auo, b101uan08.3 wuxga dsi v=
ideo mode panel")
> Signed-off-by: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
> ---
> Changes in V3:
>   - Updated the Fixes tag's style.
> link to V2: https://patchwork.kernel.org/project/dri-devel/patch/20231114=
034505.288569-1-xuxinxiong@huaqin.corp-partner.google.com/
> ---
> Changes in V2:
>   - Updated the commit message and added the Fixes tag.
> link to V1: https://patchwork.kernel.org/project/dri-devel/patch/20231109=
092634.1694066-1-xuxinxiong@huaqin.corp-partner.google.com/
> ---
>  drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c | 1 +
>  1 file changed, 1 insertion(+)

In my response to v1 [1] I said you could have just added my
Reviewed-by tag yourself after the problems were fixed. Some
maintainers actually get a bit annoyed when you don't do this, so you
should get in the habit of doing it.

In any case, this looks fine.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Pushed to drm-misc-fixes with my tag:
6965809e5269 drm/panel: auo,b101uan08.3: Fine tune the panel power sequence



[1] https://lore.kernel.org/r/CAD=3DFV=3DVxQJFWFaGHD+zpr4dxB85jMQpJiTDAmFZk=
67CTYNcg=3Dw@mail.gmail.com/


Return-Path: <devicetree+bounces-87678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB0893A7CB
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 21:49:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E550A1F227EF
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 19:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42078142648;
	Tue, 23 Jul 2024 19:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="WBPNkrWy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC63B13F456
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 19:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721764147; cv=none; b=FnVQISqZPs7Ko6bBz87ZFMx8eGBGsB6VOe5iAjoNcbrk34aqlHj2ifPQlzDgLIye3earvtUsgb47ITlwMgOCRCDKysuoxfcE3hCAtJMzqXNyr2Y/p4Q1QlTnxVbhmUkITkfaiOdyHcD1/+QnUqtHB7eyUHQVSp5WSA3fZKGD9bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721764147; c=relaxed/simple;
	bh=9LSZjJF3h4qefKbL6x/jqytdib88aMMiWFAR3e/4+VA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b5/g/daSHosXniBP5PE5nAAsYnMcRz5VgCIcY6W0cG4Vcc41W5ibqtcP7nWVUoSa6KSZU92rWy2xesPX91JBuNEXAU7SGOqn2UFxXU6cOye0+btp4CzzJEyDspb95ZH95GA7rKmwRw7pK5BmQxsUECQeevGA6rRMCcH+cnpDNVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=WBPNkrWy; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-79efbc9328bso352183185a.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 12:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721764141; x=1722368941; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rk9EMEI4L6lDxsIEgVeMjCp1kcxiTQupiuAAcvpqnrQ=;
        b=WBPNkrWyS10iT0cQFozsSKsS43MkvkyG19QzFgOwtS5m8VmtH+rtcuKLaou8WBjfGp
         xX0qPYIuuDCIexUBGGzRmJG03fH2r6gPeB94obMLxRXbP1Y0WEwWBox83jEmAQW2MVRT
         ZEYlzR1pUwSL8M126w14qqM3b90Kba+WaF6dQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721764141; x=1722368941;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rk9EMEI4L6lDxsIEgVeMjCp1kcxiTQupiuAAcvpqnrQ=;
        b=jb+3IpEQS2+zZgGPLQMnRopIJCWzruFTMo0rZcDrJCGhHXu41+Qd3TCcsPX9wXt9ww
         peGhktV9UD0GS6ouDwgGijDlZffgV0JquhlI6RHiZRfudvYtExysqqY6VMgYpDQbH2dc
         xbUsEjDdAu0z8KybbkqCZP/b+RZ18xvK9rpgVycN0IVr2wzRK/l/MXz+tC9W0q3XzOj7
         qJmwbDzrn7yduw9QLu+8Qv+ZBvGPR+yTwM7QahbUmfN8nOhkfqSMqq0gpEhYtruoly6T
         /QuQ5KHy++LgPzMHuoIM5uzyv0sPP1IlpiXe/PTOrQPJUaPCCvkzzpwrX3oSrararVzc
         lH8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXfb9ZFbHpUl0LktHq0MGUTgVaurUL+xQ8pwGPxH0vkbtFmsZlx4WUMpfubYI77DHdlvmgSVJNEfR5m4nPyy5SesGKRN0jahMonuw==
X-Gm-Message-State: AOJu0YzTSyH2CSsHjohkQ7Tn29PzU8jsHWN1TSXqfJSsTbheaGc0nXZE
	Q+eZd7H5jF1GEh7gg15dx2crZo4gAZx7ysxR9BtqF9i5L/TAoJ5hXwxJAwr4B1CNeJiCHTvQCnQ
	=
X-Google-Smtp-Source: AGHT+IFyt2mUABNox1uL6y+QmO7MJq6/ghF+hqMKHQXCyRppvKmjb8vBh/bHhsXf8MLoiQhEdZ8ApA==
X-Received: by 2002:a05:620a:4012:b0:79f:5d5:f03e with SMTP id af79cd13be357-7a1cbce554fmr6097685a.17.1721764141510;
        Tue, 23 Jul 2024 12:49:01 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a19905a991sm508846185a.86.2024.07.23.12.48.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 12:49:01 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-44f9d7cb5c5so70521cf.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 12:48:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX1MgPw+RXFSdCZVCW3V8xM+JFV2A5pkJ9SxAbLaN9exm79bkj1P0cUzT/vI5yF7u5+qDfkUaR8+nHFcUC9rsyf+tffesQX9jDFnQ==
X-Received: by 2002:ac8:7f49:0:b0:447:e423:a463 with SMTP id
 d75a77b69052e-44fd4a74d29mr921661cf.3.1721764139089; Tue, 23 Jul 2024
 12:48:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240723062615.14796-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240723062615.14796-3-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240723062615.14796-3-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 23 Jul 2024 12:48:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VD+7hLSLv+F0Egh9=ab1nRCpiB4g+54fqeWg__z7T1-g@mail.gmail.com>
Message-ID: <CAD=FV=VD+7hLSLv+F0Egh9=ab1nRCpiB4g+54fqeWg__z7T1-g@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] drm/panel: boe-th101mb31ig002 : using drm_connector_helper_get_modes_fixed()
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, sam@ravnborg.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	hsinyi@google.com, awarnecke002@hotmail.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 22, 2024 at 11:26=E2=80=AFPM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> Use public functions( drm_connector_helper_get_modes_fixed()) to
> get porch parameters.
>
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
> Changes between V4 and V3:
> -  1.Modify the return value, return drm_connector_helper_get_modes_fixed=
(connector, desc_mode).
> v3: https://lore.kernel.org/all/20240722092428.24499-3-lvzhaoxiong@huaqin=
.corp-partner.google.com/
>
> Changes between V3 and V2:
> -  1. Keep bpc settings and drm_connector_set_panel_orientation() functio=
n..
> v2: https://lore.kernel.org/all/20240716121112.14435-3-lvzhaoxiong@huaqin=
.corp-partner.google.com/
> ---
>  .../drm/panel/panel-boe-th101mb31ig002-28a.c  | 19 ++-----------------
>  1 file changed, 2 insertions(+), 17 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I'd assume that Neil or Jessica will apply these two patches assuming
they agree it looks OK. If this is stagnant for a while then I'll
apply it.

-Doug


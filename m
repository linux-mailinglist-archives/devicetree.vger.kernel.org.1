Return-Path: <devicetree+bounces-232609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45037C1960D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:32:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 634623BFFBA
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C470326D73;
	Wed, 29 Oct 2025 09:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GnPAK/3D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D451CAA85
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761730347; cv=none; b=UlOAUGbr+9QNMGfMlwJ+Q35K+sGGxjX2rpcJ75DVo68gZfFNCeAlqE0+twwydxp6CgB0Jd7OqQW9FeB0szx0utk/43KYcgbbdoA0Legqav4TeMu3C1nZGF5rcpmRdR0/VJnV3UmuTexn3AV0xojwmghk0Ek9Ob+mIcD+zQzuQRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761730347; c=relaxed/simple;
	bh=zHnOac0Axereq2RGbOFUBP+3/ezbkmVz1rWBPmLr1Eg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FaHE4UTr1b9kTIJxxGb37Q0txLvz6lAGzpW+b+Ld14JH9Y6nWAaMffK6hfmIOpC1qt/dxL1bybMSMXe7+CcLjxc2PdRExc1punbXYmAATqh3MwU/DDpoPGLU9zQlewmdBsusD/O7YOJLO9UNIyLtEnCZOTjbSPhQaRc4Slue/aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GnPAK/3D; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-26e68904f0eso74862825ad.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761730344; x=1762335144; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=P7gY71n24jkS+kac1oyH4zGLv4Mgm4d4NB7g+mYr34w=;
        b=GnPAK/3DjbHcvBihP/sx02XgKpamERECfuFgRgtqVWB8S627j7ZbSsrP3dpStjrIUT
         1ART3VDwgbAm2ivaMlztyz3vPObBSFiEWNdjja2kYYaQE/u2p97vZH+VrmK5btRrF32s
         7IjQFMyZjNHQH7qT3FAG0kxdCyeCwSf0O1vHVDlfNfo9YTTRL3hW2wTfnjSpxSZjzGVJ
         y+2GPBy21INPT4Ty3azCqfV0Kv94Mo6JwyyaMkb1y+EufZlbC+a2Fx4hlmxFq9pUvFhy
         KOgP+7DABvDJU6KewDQTKxuvcnfuV7zzw8Ik4BcUO4va+AED1VmbUoiVAOWBaNmeDe/E
         sQLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761730344; x=1762335144;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P7gY71n24jkS+kac1oyH4zGLv4Mgm4d4NB7g+mYr34w=;
        b=AqPv7VspOe6Oxn18MvtA975WDFzZ1Qe5YmDOf5kuSs3zw1OSzN32VPcptEQ94o3WmH
         Oz7Txwjsh6G3wyAwkFLeF3Q4GWJsNbeBkkIMYJFSZhYJe17e3pUAG9WAh0Pebhv+YLN7
         +yScDneKNNuJwfbB54xhdXtSrQ2OUM8VknQ57hES01AyfrYHWrDLdarv+PafuouSTxJD
         oktSYShEoCPA07idtLEByVhB+u6CFBywKxbD4VizSPvkOURsveGOef+N9e+JuLmTNM1p
         KrgjfIzGmCcvEFymueF5f/UmTK7hY16uIhquRaPamtFg+cqsYtFTNrgtYTFU+ncMhYJc
         LCSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXq6gwOQz83zT4eRVyYtEpOiBM0iTC3tQP88ZRv6jjGYvDWmbaOHkQZuRhs645EDPNQwsDV6lYrEjQX@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx4vZrudCooO7Ry0Od/6Nb7RxRxb5cOSagihGRjQaY8T6VAfhx
	PnjPsjKYzi/Qfx+6OU4GdH01GTE9B6KwcbBgSwYSQ9/e5Nq+TK+5TfQpjDFuglFK3ZtCy5mO994
	2rCGV/2FEEJmRpSuTr9M2D6yvb5DJIlk=
X-Gm-Gg: ASbGnct9Lm+F140luGFCGwuOeRga8l2xxxjtNxgtCJOrf7AVJqnsAc8nykIv/LRBBNb
	YCc0TU+18EZl6FZ9zrRnqEe8HSfelwnKzVXaBLGWGOzzGuomSqWZYu6ndGW/6/X1XdXFfFE7YyH
	WKVVh8gdyLDxXirwOJWhc1RjGD9V+pH3NZySQ0EzXPaSxceB+GjJSSqCc3v+PdHebZTpXIuoZyM
	R63d4vxwBe6zOfMvnGkBx+xGltMvBfJswRxEfZvANplr/AD7Eeuk8oXwIX+e33/V2ZTKWNN4qoG
	aTV+lQo3ec6oaw==
X-Google-Smtp-Source: AGHT+IHEmOYvQKBTiwYrDdUImmONCxMn+7i+FjSXTPYthBD2JV4BFZY8+M8zns5YrqEDI2UCuQBIua+fHP0X5y03rTw=
X-Received: by 2002:a17:902:c408:b0:273:59ef:4c30 with SMTP id
 d9443c01a7336-294dedf1056mr30630685ad.15.1761730344236; Wed, 29 Oct 2025
 02:32:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251028-imx95-rproc-2025-10-28-v1-0-ce9e7db9edcb@nxp.com> <20251028-imx95-rproc-2025-10-28-v1-2-ce9e7db9edcb@nxp.com>
In-Reply-To: <20251028-imx95-rproc-2025-10-28-v1-2-ce9e7db9edcb@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 29 Oct 2025 11:34:49 +0200
X-Gm-Features: AWmQ_blaf6t3K-8uusFpzUZDxAED2sVeQ3XqyTQaNCspO1b_QKvTo6faDe6UlPo
Message-ID: <CAEnQRZD=ynKyJXGneQMwX6NbHaOPNr4jxnP_90Ed860kpKUN3Q@mail.gmail.com>
Subject: Re: [PATCH 2/4] remoteproc: imx_rproc: Add runtime ops copy to
 support dynamic behavior
To: Peng Fan <peng.fan@nxp.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Daniel Baluta <daniel.baluta@nxp.com>, Frank Li <frank.li@nxp.com>, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Peng,

One comment.


> @@ -116,6 +116,7 @@ struct imx_rproc {
>         u32                             entry;          /* cpu start address */
>         u32                             core_index;
>         struct dev_pm_domain_list       *pd_list;
> +       struct imx_rproc_plat_ops       ops;
>  };

Here do you plan to change a member of the ops table at runtime?
Like e.g replace just the start ops? Or the entire table.

Because it would be better to add something like this:

--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -116,7 +116,7 @@ struct imx_rproc {
        u32                             entry;          /* cpu start address */
        u32                             core_index;
        struct dev_pm_domain_list       *pd_list;
-       struct imx_rproc_plat_ops       ops;
+       const struct imx_rproc_plat_ops       *ops;
 };


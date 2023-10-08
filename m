Return-Path: <devicetree+bounces-6830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 596477BCFD2
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 21:33:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BEC02815B6
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 19:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 763AA19BCD;
	Sun,  8 Oct 2023 19:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="khYJK5FG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7CB14F7F
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 19:33:44 +0000 (UTC)
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56844AC
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 12:33:42 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-d81d09d883dso4224414276.0
        for <devicetree@vger.kernel.org>; Sun, 08 Oct 2023 12:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696793621; x=1697398421; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LXRzHYXF1ovI5v0uOrxk9RS+XWxmoS5QhrpYqiMEbm4=;
        b=khYJK5FGDL4iNPcjHTTwctGYW1MUyU4Fr8ljsn0kS/9KsvdgbR6fuYFE2KLyt2TVeW
         b39ZE/lBiK2zA3gcGL5lRvnDMCmkv82X13gF+w0GTTmpH6l3o4evzjRxk4gyY9/ONzUt
         spMXlkmD6iYVRad5H/K8iS+gL+Q71v+OJTtWAskqJ0Q/9ybFxey5Y/u77yMhDdHAvhvX
         KvDyhYEqzZ0qpGURooZ2/f3ZSyXHAe6ew98suWXsZERPhDwiX2ALlbXMVI0mp0hGO55Q
         Hb+pXnyQ+ePAH9w1Lf/wohJpYIRRs7nHseOel7zwYpnVhFOA4QVJC4VyFKIjy+86/aVg
         CdMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696793621; x=1697398421;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LXRzHYXF1ovI5v0uOrxk9RS+XWxmoS5QhrpYqiMEbm4=;
        b=AXU+ZSWyUIQAEBBDxF3HH3fwUUCD25xZVaiIrwn8pnwH1EqGfJSVpMcfOCGtaV8WDI
         XK0ooFnoeqfoZzIkRS9vd+zYdiR4L7q5b/s/n65OGEuKc1UrLI5u2snOD1DLt9Mh6p9b
         2FtIvf/ZGKV+Dl2sWp3JOVfg6vI+M1h4lCtY1h0oV2nx2KZtSob7whtCvsYLwzd1tqnf
         4muBmBfsERGK4Ffygp8XsT5SRufof3rJcpUTZErylwSpiFy4zQ9wTjE+R6Oq6p4MCEq3
         0xPKu7oUXf7JXNdx3gjnzTC7NmLUrPClcuTWIaX/RaDMPqXS5a3gtX4wkvMx9uyu5K6R
         MNww==
X-Gm-Message-State: AOJu0YyBD61OQIhn7E57keor5YWZzI0mNsdGIDaB7in8wRMx7TFlw4rA
	VWh1Tyn5nugELJntFDh/A7+RjRj4YvZ32nNE1QMdX64MlAA8Zap2
X-Google-Smtp-Source: AGHT+IHOqqme+I2o7pnkrO/NMwYTV0OkUbgJ6TEHW4l7Ztd3XLvE/HYW5b4ga2KyjrAdRgrcxO08nr9fo9VA/7Dbnl0=
X-Received: by 2002:a25:bbcd:0:b0:d89:4d9b:c492 with SMTP id
 c13-20020a25bbcd000000b00d894d9bc492mr10786483ybk.22.1696793621571; Sun, 08
 Oct 2023 12:33:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231007060639.725350-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20231007060639.725350-1-yangcong5@huaqin.corp-partner.google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 8 Oct 2023 21:33:29 +0200
Message-ID: <CACRpkdbek0-Vhk4_34qY+0=EGrQxJS_CfLuF_5fRozMMyc+=Kw@mail.gmail.com>
Subject: Re: [v1 0/2] Break out as separate driver from boe-tv101wum-nl6 panel driver
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	dianders@google.com, hsinyi@google.com, swboyd@chromium.org, 
	airlied@gmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, Oct 7, 2023 at 8:06=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:

> Linus series proposed to break out ili9882t as separate driver,
> but he didn't have time for that extensive rework of the driver.
> As discussed by Linus and Doug [1], keep macro using the "struct panel_in=
it_cmd"
> until we get some resolution about the binary size issue.

OK works for me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Dough, if it looks OK to you too, can you apply the patches?

Yours,
Linus Walleij


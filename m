Return-Path: <devicetree+bounces-7386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E967C042A
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:11:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D65341C20BD8
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4D813AC38;
	Tue, 10 Oct 2023 19:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="PVGqJiHc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA0F38DDF
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:11:30 +0000 (UTC)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50CB09E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:11:28 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-51e24210395so2989a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696965087; x=1697569887; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8UhWPPtavJHzLAPYPA+MixCb/WnkmoReo5Jlg6WhyMY=;
        b=PVGqJiHcTWWwpYwrCKQGaD7/enN0rPX3bvl7p3XxyqF5hhURHuJXcJpWUEu9rGtKYx
         VEvqcO2+Aey1O62yVvv8yE49N2YYUrckjY7ksxGrqKbV0WSFCQMjOSlA7lIJana7L0bW
         F/UMPML7kjwS+9OYeAcyEyQqPbjXJT3owDo6NSzRepBYqAYudsdyLtDnLQCSbuMq9Yya
         1sCmvCmo3PLHE1p17zbNAxXN+omuE2U9+GW+4ks7DpLxxcPHC5nq9t0wx1QXl6kL3V7i
         G7rQi2vuM+FaLbz0SjacfYnwQAlmNN98TRR7Kg8pv4N/MBge6OBWpWXfyewTstr+CBqa
         VJQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696965087; x=1697569887;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8UhWPPtavJHzLAPYPA+MixCb/WnkmoReo5Jlg6WhyMY=;
        b=HVFKGrOUMbHgBOpoMTtufziJHdMgrZgxr95iGh2L+fVAjvQAvK1svoXV55v11mTnhR
         vNx7jBZNkNq8lMeewdVCsfpb+GyLXtqGU6yX4Q82eZ56Elpkvanuv4IGPRGHp+guhSJW
         SXhyCTIlu39xMb8Hm4PgaxWORjq14YzNKL6G/Q1FukFxQUL5P0RB+AJTu10VPXm1oEIQ
         rSvqm+CZgcYfi77a2Hd46T8PFsyJhZOXeNH/IJ27c2pYuvw0rHg9WmRFAuK0q9v2qyrA
         YLYGCP1h5bc5iajDlXA5Ra3WHQQ4sxUwjkvFnQe674q8rcOHOvTU631EH+f5Pfi99Lsk
         DoaA==
X-Gm-Message-State: AOJu0Ywab84hdqPaMJuUtAUGNSG+e8mF6J7CPgQuf7Cc8pMvqONbuwi5
	nPQU9ACzX9zmFDMLid/CWQPxKgGdxsuIoKMn1izMVA==
X-Google-Smtp-Source: AGHT+IG3iu4lDDQxvxjKVyXKAvsUtrHzYogEnV9JAMPz8LTFaFQJBRNy+ua8NBMQYnzwgvmcL0rlz26idEroMAGFi5U=
X-Received: by 2002:a50:9309:0:b0:538:2941:ad10 with SMTP id
 m9-20020a509309000000b005382941ad10mr23380eda.5.1696965086532; Tue, 10 Oct
 2023 12:11:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010121402.3687948-1-yangcong5@huaqin.corp-partner.google.com>
 <20231010121402.3687948-4-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20231010121402.3687948-4-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Tue, 10 Oct 2023 12:11:14 -0700
Message-ID: <CAD=FV=XFYyMRBoAnWuu-x4_qpKwVNR2-kLera73cwnu==DZkVg@mail.gmail.com>
Subject: Re: [v2 3/3] arm64: defconfig: Enable ILITEK_ILI9882T panel
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, linus.walleij@linaro.org, swboyd@chromium.org, 
	airlied@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Tue, Oct 10, 2023 at 5:14=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Enable ILITEK_ILI9882T panel.

Could you add a little background? Maybe something like:

DRM_PANEL_ILITEK_ILI9882T is being split out from
DRM_PANEL_BOE_TV101WUM_NL6. Since the arm64 defconfig had the BOE
panel driver enabled, let's also enable the Ilitek driver.


> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>


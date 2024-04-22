Return-Path: <devicetree+bounces-61495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E7B8ACF05
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 16:11:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7345D1C211C6
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 14:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E82121509B9;
	Mon, 22 Apr 2024 14:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lhXC9jaK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77BDE1509A1
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 14:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713795052; cv=none; b=Zhx2HV4gJC1rI04PP03ppkWJCarwg48UFweE2jGjdFGvus0mCJFlvglXmfT7tNLu7AcglYQaQQhSooZ97rhOC3Y2EJO0dV3sj2Q5VjrXWMDtY4FbnqkcSqBceWUsRaLVrP2xvupa2F7mdIl+H6nBtLQXi5SOHk074VkM4XwH+V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713795052; c=relaxed/simple;
	bh=zYVHZ/S1XYTcfZgmpvuPgVe4dQIPKZyJvLnKnJPJEkA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kJjt1wpWuPPpQmfmYR+r87x5JqE3/CLJOi7RkCoUpXO+jVYJUpTF/psnNMNmI7pFrWRFmZXzAJDyQYQK8I4DuhOzRLIUc3jlP1ULMyD1lXwW5fd/IxtSmESqYTL6sBMoFaHvAiNuG6F+TZLeaN7WC6fQInWej1wqFQ8KjpgUgyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lhXC9jaK; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-69b50b8239fso41500716d6.0
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 07:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1713795048; x=1714399848; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BgjTo5Gsy0Vsq9HceSa7BTmtZ4tw4e+SgvrPUoLWsZY=;
        b=lhXC9jaK9Ml868QLKB9rSDdv4fL0ZegRIBtxSjlUjeBIeJnyeGdWHpgnA7fdz+PmvS
         BuWxZUGdBIQPOf5kldtdw3gUyWVVvBrCTpmswA187r4ec0aV5sIlV2Oq9/XdlgACN1Fc
         8IbsZ38OUv5wquCSvJMbSlR5uz366dCg29nqk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713795048; x=1714399848;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BgjTo5Gsy0Vsq9HceSa7BTmtZ4tw4e+SgvrPUoLWsZY=;
        b=SsdCmWZHjOJJfsZhIXTnUx1Pen3lurV8hnHiSSyrk/Cr936FMMPOlZdmnUptsrmMr+
         r+AtH+TxI24wVb9WL1h/GKK+PiZuqb4f+p33lnX7XyTr/ksUkz9PPlBO5NUBrpvgzgoc
         3zXWH8orWYWoJZB3ow95lYJ7E0/iXFuNrTsgRARn3gfleywaJo+hwf00VAyW06f0HR/u
         KPphcuOnS84HfAXwH8KiuGRmAGCRVBrpWu6A/gNoNKdAPq++tX/AVd+c0pC69+jnRNDO
         OX3UTDAwZH/wh5juIdXRfA+OjsYvrEkVadvUoabGFZ+nT9pAnQl3M4jBgnZCQuiTI9+a
         3hQg==
X-Forwarded-Encrypted: i=1; AJvYcCU/GjRH5utojD/6MykHC9ga6xlhnYGnyK3Jjrl70mBg0NKOHO41DE7Wnwte2H0qCSNx0njvvEvhR25J8nn/CPdfnOCX4TQ4PLR/Aw==
X-Gm-Message-State: AOJu0Yxnp3SS53511NASre4tX29pPb3jhx7fZ4LpTGlDHLvBHfkOILoB
	iN1md77IcuwzKg38knM1KzgJqUPwiyGXb8aX99EKm6Z5sGVZXd85cTlqTIeBwjpnkW1vH9Axb2Q
	=
X-Google-Smtp-Source: AGHT+IH6WoiQY63nKnzLpg94Ey3H2VtGiMqe8N579MD/B6orvC1Cw/IO+vlPt0FPlEKw3PxKp9q6UQ==
X-Received: by 2002:a0c:e24d:0:b0:69b:54d6:5458 with SMTP id x13-20020a0ce24d000000b0069b54d65458mr17417762qvl.27.1713795048340;
        Mon, 22 Apr 2024 07:10:48 -0700 (PDT)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com. [209.85.160.180])
        by smtp.gmail.com with ESMTPSA id e7-20020a0caa47000000b006a074ded34dsm2049646qvb.27.2024.04.22.07.10.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Apr 2024 07:10:46 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-439b1c72676so348341cf.1
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 07:10:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUN0L5xWYHefLWu4LEA+LHV632FtOiKb8aeerz7Gnj7eJTlQeIV9gnl+01FN19OFkzqkMD1gPNnLD/8gf7hCEAAMnhbRtA8xwoaGg==
X-Received: by 2002:a05:622a:a081:b0:437:b429:c953 with SMTP id
 jv1-20020a05622aa08100b00437b429c953mr405598qtb.14.1713795045405; Mon, 22 Apr
 2024 07:10:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240422060811.670693-1-xuxinxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240422060811.670693-1-xuxinxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 22 Apr 2024 07:10:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WRLLuOkCJeM6RdAb6xLN-cPH+hfWbOv9-LujB-WMGEFw@mail.gmail.com>
Message-ID: <CAD=FV=WRLLuOkCJeM6RdAb6xLN-cPH+hfWbOv9-LujB-WMGEFw@mail.gmail.com>
Subject: Re: [PATCH] drm/panel-edp: Add panel CSOT MNB601LS1-1
To: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Apr 21, 2024 at 11:09=E2=80=AFPM Xuxin Xiong
<xuxinxiong@huaqin.corp-partner.google.com> wrote:
>
> Add support for the following panel:
> CSOT MNB601LS1-1
>
> Signed-off-by: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/pa=
nel-edp.c
> index d58f90bc48fb..5e0b1c94bc62 100644
> --- a/drivers/gpu/drm/panel/panel-edp.c
> +++ b/drivers/gpu/drm/panel/panel-edp.c
> @@ -2036,6 +2036,8 @@ static const struct edp_panel_entry edp_panels[] =
=3D {
>
>         EDP_PANEL_ENTRY('C', 'S', 'O', 0x1200, &delay_200_500_e50, "MNC20=
7QS1-1"),
>
> +       EDP_PANEL_ENTRY('C', 'S', 'W', 0x1100, &delay_200_500_e80_d50, "M=
NB601LS1-1"),

Are you positive that both this panel and the one above it (which you
also added) are correct? You identified both of them as CSO panels but
one has "CSO" and one has "CSW". Please double-check and let me know.

-Doug


Return-Path: <devicetree+bounces-49176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E57928751F9
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 15:36:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B21C287AFD
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 14:36:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2A4312C7F5;
	Thu,  7 Mar 2024 14:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ggwxNMml"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440631DFD1
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 14:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709822172; cv=none; b=TH/hYJ3ozhpIWHbqZSkK/YfTo4eJ063e+jMl0FAg7+rT5ZybnCWvPM7jVTdIfRysOiL2PlM6Eg7/RgjGVRou7dwnT6PDOlrJXqqjMLFjM+owABvJqRrWEDela8nIsugOu164XQCifTllx4vPTf7DZTG/MCA/Df9rwCIr+Jr9+1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709822172; c=relaxed/simple;
	bh=x02DuFFFXqezeMPeX7N/K3LTJ7TADryYv7HqzE4nsfQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WtTL4BT1T7fwS6TukifsvRRVEZYj3haVLhky5WVE06VM0rnbkSEyMxOs3d+ZQFa6RTS8ykWa//C0KtWg755tXfOLkR2KdTfA9vkp4Ua4frazcyvv5uwE4nUOXE17a9xthVEpD3muRao9kjaBPV4ZW7BeZiW+YaAe4Wp94AU1Oj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ggwxNMml; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-42ee0c326e8so311521cf.0
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 06:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709822169; x=1710426969; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t6cjTaPA3JGO0htGi6Pjtb9XftoGgbKI0J0q9NK3+w4=;
        b=ggwxNMmlVtIUpeUHoktMGiJt6NHEuOQM92GBz/UjBrcqAbPZLSV+lcvUX5vsIDLle4
         Rpr4J9fD1HtjBPgMylJbxOHmZQVoHVsQqINPQlNrSvHajj/yos4lsrA/vjnvom048meu
         pG91huk7uC+PjD+3hqOSoGZFxGRDqopuTYDzFLp8alN71qJ9OicVc1eOcD7PfkMtsSm+
         piukZftKQTn6WFx6U4wQU3oqAWLmMpVIWdGhpRsAnF+v3QdgU+AQuO592Wam7FYcwPr+
         US2rwNwN9TBdAmIzmggJ/B5KNS0wJ+yo264fpVdQd8Se4FRf9qMvFMTs/hMGpIQZITQK
         wKIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709822169; x=1710426969;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t6cjTaPA3JGO0htGi6Pjtb9XftoGgbKI0J0q9NK3+w4=;
        b=YMnXiiYeoBV2aSPo4R90h0/h4+m3TRCYmVZRtUrOnAKEizrS2zYqqlxQWvpzqi9cBs
         YfLsJRfmwL2CucU41bU77gDW29CBN5K7Rj8VwJac+AQu1FP0FmB2kGKDrlvrx/rIDCat
         eRx8+x3593m5Yrsh6gWq1cavXMJ2nqgbkkfYC3d0AbrterFjNOhjn1gXGyEvHqk9BHYe
         x7/yxUQdmy5hTODVLiX3cyZZyv9VioG7mBUbDb+s1f3K5WXf4sZ3DVNoW26/l9jeoLFi
         OzXrYFWd3GZAao1TA+Twb9izhw+DSXM+8ZGuThCpjg6CIKA7jVebw4b3I+pST3SaEEhd
         YlLw==
X-Forwarded-Encrypted: i=1; AJvYcCXjco4ZeQ9t5po1hiH4uY/o3iRpK9aKEW+m2Sn44aa1j+5DeqfuidAFTV/09pjF/OuCvYDSOR0SvHO/Szp92r1XTrmY6gFG3seR0w==
X-Gm-Message-State: AOJu0Yz6bzXmEvL3JIwwuQAL8KOT5Bpv6TXzxjrNPFgf6Q3aCo83e/eu
	949wlUJnUIxZEO20Y13QukLdJsX0GBScEfw0COgujaJsx3wASxcK2x4bdvEmUDfmtSQj3cwcV/O
	Xlqen97ylc0ylZXaIK0D+g00kL+lIqZiVtzhi
X-Google-Smtp-Source: AGHT+IFTbUYTdln+HN5bHEZragkgBfryVrLW7yxjMefRnXhcn7EKiTuuupTzwNyjjzX/gNPojrKZtcxTSe69tmWWdIE=
X-Received: by 2002:a05:622a:1c8:b0:42f:a3c:2d4e with SMTP id
 t8-20020a05622a01c800b0042f0a3c2d4emr266044qtw.15.1709822168971; Thu, 07 Mar
 2024 06:36:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240307094433.3440431-1-xuxinxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240307094433.3440431-1-xuxinxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Thu, 7 Mar 2024 06:35:53 -0800
Message-ID: <CAD=FV=U8wdT_5k-yrLVpmh=q4k18LntqujK7Mw88TdweBXCPgg@mail.gmail.com>
Subject: Re: [PATCH] drm/panel-edp: Add several generic edp panels
To: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Mar 7, 2024 at 1:44=E2=80=AFAM Xuxin Xiong
<xuxinxiong@huaqin.corp-partner.google.com> wrote:
>
> Add support for the following 2 panels:
> 1. BOE NT116WHM-N44
> 2. CMN N116BCA-EA1
>
> Signed-off-by: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 2 ++
>  1 file changed, 2 insertions(+)

The patch looks OK, but please resend with a more unique subject. I
think we've already landed more than one patch with the subject "Add
several generic edp panels". Since this is just two panels, maybe just

drm/panel-edp: Add BOE NT116WHM-N44 and CMN N116BCA-EA1

-Doug


Return-Path: <devicetree+bounces-84775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC4192D8DB
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 21:13:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 119771F25F8A
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 19:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B35F19882C;
	Wed, 10 Jul 2024 19:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="U6qhzHfk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1805F197556
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 19:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720638788; cv=none; b=ZNZIj8CM/y9MLWpDOngOyqCQCjE4d+cZ8QpwwgaTEV5uAz5mV2CVjR5F6Is/E/+ACOfOcqbj/wB5rPAD12flp3FIUz3IxLk45rkhDxKozryxwxZgEpmWhV/qE0gPlhSQI2nXTAgJgTfmFcuxWpSkj0hJjsRDuwn3g5H6mKcVWlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720638788; c=relaxed/simple;
	bh=TBqlRU7dCTTmZjQE306rKQdmF8zRVusY86qGMrHNxLw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UT3Z8oBR6XAAV4toqLwKohSu2D7jrSkKY4lLH56rY/QE71d6hISjinsYhBHYJMbDzdsyXzaqL7OzpxvtWyQ/YzzC3motjRK6EC8V1ds0xmh7pXLTpuM8rJ3fufuCRzh6uF6tS7V+PJimMI/xQhi9D2AP/pQIJ+0FtaVNCtAr/FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=U6qhzHfk; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-79f178e6225so6661085a.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 12:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1720638782; x=1721243582; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3lzoBY9/yiM7+D5Gb2Lvu+52q3dl18EqlM4F4NkXNe8=;
        b=U6qhzHfkVSVUvdQTY3FBdCBE5K5iVsfoUACNlE2ttosDQ3MP2jI5hGl5UXzYPpNHtE
         p93TqFtosZ8cfNTVRmQDTA3KPWpJv5WYrvQOaSZGAwenQ5j1AErrlQ7/JUs/U20lnl5F
         jf8nKukuKuPvvfoOnHbXhcBVE0Go+x2KdvFNY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720638782; x=1721243582;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3lzoBY9/yiM7+D5Gb2Lvu+52q3dl18EqlM4F4NkXNe8=;
        b=B8NmGQskZbCn1YkmE3SAr59AbP05UkMoxprAs0qQ5b2lb7RUI4ymde+eRv9capbUsb
         q8NRRD7xA7+FAnxQ+xgWq0mEvhslo1J6XhvuqagjQYRszWm7CnMGqFCkp+APY7WwGfsW
         lIMgNbQAKsDCqisr5b/2lRZ3k0o+TJk1sx+IIN/C++Pb2i3jeH63u3fu0rUMps3V3DNJ
         WWu+ljyX0opV89gALPNnFDJOwucVxmYZ16+q/RoZ9vTgmDKCl88/xMZ38Lu31rUebvcE
         72aSpQDJq2ws4V7DAiuifdT0si4NhUvMS+n8Md+wJlcp0GeUn4Xlb1pZncUSKR9h80iZ
         nwUg==
X-Forwarded-Encrypted: i=1; AJvYcCVYweoeVREe+3cf7bP2bH9HI1ZJkagWNyiP3Us+iYTQ5d3RxqcArHTQ0gD3bFhEXnNS8XP8TzzAjpS6KUM3p7rGSCKWjHZ4Bt8Wug==
X-Gm-Message-State: AOJu0YxXWo20BEI/qcLWupKQrKICerUx3F9Vle+w82eYVNpEZee+wiu+
	D7YNAqnd8af+YJzNEywQs6b7BT3UQeCZkyunFNGdhZieWulSwVVSJJvJBbB+jpc3vv12NkUcufO
	+7g==
X-Google-Smtp-Source: AGHT+IEcDS/Fqbm/kAO1NIOO/4ouqDtvTVz2xA4bgFUXFbzp5WLm03ba7E7vShCSgf2poLEKWCPxMA==
X-Received: by 2002:a05:620a:1445:b0:79f:750:e5df with SMTP id af79cd13be357-79f19ade2dcmr669012685a.66.1720638782139;
        Wed, 10 Jul 2024 12:13:02 -0700 (PDT)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com. [209.85.160.171])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-79f18ff6903sm221653385a.25.2024.07.10.12.12.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 12:12:57 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-447df43324fso56611cf.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 12:12:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUcjaCk+Yy0cbEDEIndn5wCDdITA3OmVMsxzbsimxfem1QMxl5hI//OkJlPcCcNMp/XC+sMzbNqdlV+0AunClGiqStJ9l2npvSnKw==
X-Received: by 2002:ac8:6b94:0:b0:447:e76a:c04b with SMTP id
 d75a77b69052e-44d0aa46fd5mr520361cf.10.1720638777116; Wed, 10 Jul 2024
 12:12:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240710084715.1119935-1-yangcong5@huaqin.corp-partner.google.com>
 <20240710084715.1119935-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240710084715.1119935-3-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 10 Jul 2024 12:12:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UCvbuMbsuproyyDumezHa7eVQHQt-kWxmMwUmxXgh_Sw@mail.gmail.com>
Message-ID: <CAD=FV=UCvbuMbsuproyyDumezHa7eVQHQt-kWxmMwUmxXgh_Sw@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] drm/panel: nt35521: Break some CMDS into helper functions
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, mwalle@kernel.org, 
	linus.walleij@linaro.org, airlied@gmail.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 10, 2024 at 1:47=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Break select page cmds into helper functions.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  .../panel/panel-sony-tulip-truly-nt35521.c    | 29 ++++++++++++++-----
>  1 file changed, 21 insertions(+), 8 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>


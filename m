Return-Path: <devicetree+bounces-216554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E04A8B5527D
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 16:58:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05D48A0439C
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B62930E0E7;
	Fri, 12 Sep 2025 14:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="erhzWHaE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10701B21BF
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 14:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757689123; cv=none; b=ReNT1WFjzcYqdHGF3jM8ZhTSmqFnizfgwjyYrMKWAzylRs7VfQBMzfpmbNUCLIdrC8X0YF07CN3vkqcmk71kOVm46wnaOQMdcLrFduLyQMJSlv+XG4i6GmcV/HLVGWgN9vGAlN7V03JME+wCHFhKJyRjdWWXoT5b5veujhdzgaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757689123; c=relaxed/simple;
	bh=XPrHkDH6ZI0ZtNaze0i0II8lEvWqKmBCuHaUWLXu0XE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jPCDRTp+3hM+qRu2zT2//EOmVYLzZyNIf2EuQxdXdpok5eceRBz1G+G7dqZFOYYr73dMRSqvZpGHbHXfv1gJn9MBg8vsqdXhY1wloUU6v6zy1JcYx1n9+AK9wh0uDjcf9LA4hn0itOfRwRaNjf68QrU7f5IXK0duRGAPzrWvPM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=erhzWHaE; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-772301f8a4cso2763339b3a.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1757689121; x=1758293921; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JsRA2lsMsTyTq/Puo1W1+q3FiI8YEvM95g5Tez17y0c=;
        b=erhzWHaE6a5CMFDaaqv3vmQ20hod1CFVKoFoInWli8yPL/4UxBY6k2dXKo6WZDE7wC
         hA398cranxG3J+18DA3mYgldrY0XehckRkoVRy7PNNocuL3S44+MVjMwgQ1CAJPi5tmp
         g2hfoK/iLEOCoqOHKpuP49dQo3p8L8dOv4sXj+Rkm0IHCD0WyfTuy8mHN6h3JMqBQp0R
         sp6Ex+LFq3Vf0+r5+2upL5j2AhKZuglfPgiHa4Dz24oNRnVzVyEnJ0beaw13SNU9F6B8
         E9Cvj5Qnfq6q9T4HGtaJ9g92V/LshrBCD5gLiSUF07JxBts9e60gEZEnP7D4virg19Jq
         Mkug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757689121; x=1758293921;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JsRA2lsMsTyTq/Puo1W1+q3FiI8YEvM95g5Tez17y0c=;
        b=Sar/nSZuwRRmTf3RDjvhRIzGt9oWck/LEDrXuU1zE4/Iu45htWE13//KZx3CzGX51g
         AKJOMkL4Ay6aAoWsNN6utLn90NkTKMBe676JiaejncY8wJ5zX9r4BMEb/7Ws9XhvJ2UD
         AMAEVy9NVEE6Bc0EyuuNvbhb/fUmxBkQpVnEdF8/t/2AdUKlMafIEXYvUd6cbWztePbY
         lzaXvLdHxFoW7h6HSKIbSPisjXzRw4Nax155HMV9QR+jvjv7aAdn3/EctvO7zBti9liv
         nkfqXzaXfaWRciQUxA3tGrlQAdTAnAIrDNyfDtWn5WyYebwcTD7qoJYe6G+YqkTZ1R1l
         dYgg==
X-Forwarded-Encrypted: i=1; AJvYcCVJTJw/RNgX+XkSzaJGAEhEYwoy5lNZTXyEzOyf9ufUp/MRNFNi3PPXPcdTK+UZHRKR7K3yH+GjZo3T@vger.kernel.org
X-Gm-Message-State: AOJu0Yxuk+nhS4Zd7kq/rEGeakhcEhN5gctZOWZF0vJfUZwT8cBJ4mgn
	tUq6ebjwk5mUTwnmQpye6UJsLQOtbdWpzZCT7Q5suRgJmYvpN/HmNjBWuUB6+r2hMHRNg/Gnqdj
	j3IutQM0HqrKcMEh71TK3AQVpqUSyyU0avkMd+N5H
X-Gm-Gg: ASbGncsREesIstpA3gGysHL2392gCK5rdtbQThXGJkwoBG4lChhEdAyg8t1s/2gRCHl
	Ko54ovs2XBizO5EtoLcKOpDJKpJhL2eduL+LHcfrAnKUZMnuqZbbV1YvEvS7UlVyU5pVvHAgKho
	TLhZrSwKi+Y21uy1cYL+/gOTownDyw0Nq4oWosbUOe9vSXgJw5oLk90DIW3K+cd7wTr1qHeCKBC
	g+SpXKGw05XVLztwW7x/D8fhX072OCwKBOUw9IEav6H/Cz1
X-Google-Smtp-Source: AGHT+IG8fHTK0JHRHJykqJ4UGg8mUkj8ySqnJAAwPbZ5I/l4ILqKzu2I8nV3bt5OAzXHc1cMAT83RGVQDVhLDpFSVOs=
X-Received: by 2002:a17:903:3804:b0:24d:f9f:de8f with SMTP id
 d9443c01a7336-25d25a73995mr47545065ad.17.1757689120635; Fri, 12 Sep 2025
 07:58:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250912131104.1726775-1-yanzhijian@huaqin.corp-partner.google.com>
In-Reply-To: <20250912131104.1726775-1-yanzhijian@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Fri, 12 Sep 2025 07:58:29 -0700
X-Gm-Features: Ac12FXz1H0aiUVuI2ZceyQFnUNMDlNBWtZs6Dx0LlgWmVPtY7LadNBf506fI8m4
Message-ID: <CAD=FV=XKOj42jkZWr7OF93=tsAsW+=pAk24JagFVFKZRtxEwMg@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: add support for KD116N3730A07
To: Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Sep 12, 2025 at 6:11=E2=80=AFAM Zhijian Yan
<yanzhijian@huaqin.corp-partner.google.com> wrote:
>
> Signed-off-by: Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 1 +
>  1 file changed, 1 insertion(+)

Please provide the EDID in the commit message. See nearly all recent
commits to this file. Thanks!

-Doug


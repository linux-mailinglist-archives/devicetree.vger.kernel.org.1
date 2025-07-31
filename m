Return-Path: <devicetree+bounces-201149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9447AB1791A
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 00:26:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A35D62378F
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 22:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0122027933F;
	Thu, 31 Jul 2025 22:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="i9csCP/V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81964278E63
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 22:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754000751; cv=none; b=Ta0gXcmB1XBoBah06Yj0a0bwS6BfTCPS7Ct4bZd8HZNmcSAgqv3MRNIRLEAAV+ylIYBCoJM6HyEe2MjuKT+RPsKh1TmPzwBHlFxqsi5rSY4CFAhY9H3jA22egdKRDrDcBXHOlPrxR2WjgjLaAW1wLz0xH+fqdvA3a9xXzAVR660=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754000751; c=relaxed/simple;
	bh=VR+Uphy9mDIsNEpJMACnvfnSqHdlCUsmQ+3NZ7FkeP8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G3C4Q9K83e/t4PF819ZwJqZ3Nmw//6SRfHMkR0cWCRqEJWpLtItATsV4KUai+1k4l6MQAlq79CXCu8IytqCRQa/8n+kXHNVtOJq29zbsq0cnZDiwJ9ZWLoXIUiBRDfJ7hxNKkqg2hRUMCHcsBpFw+rPv9iXK8F1Yo8xhCDijkNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=i9csCP/V; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-24063eac495so2325605ad.0
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 15:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1754000746; x=1754605546; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2avQs/u8C93T263u55Hd3Byk2Z7uAe/YLQBzzdrt6j0=;
        b=i9csCP/VvDfaB1Jx9/622lEsXpm7P39EkyLwDyDC13PE0OFQxYULMM8yp89dit7Ppp
         joOvNn+eUjgOolBSz1AYW2aDU0fO2UmE4wKfc8KAVcqqtdt5PsPJbEdz+nIuJ7cyEh4m
         IUHpS8QCs4q+4hp0treSAOnez4GywXmciPjrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754000746; x=1754605546;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2avQs/u8C93T263u55Hd3Byk2Z7uAe/YLQBzzdrt6j0=;
        b=QCkDO4KV0edBVV2QEMahZvd9yYh1f5cU7I+whH1WVrBO9A+eOyNXRIP273/0//vPO6
         nTqAgHGcuRjRYvue3h2bvj750RtWcBgfqSEj+zcUQA+5ymgz8BIEUoaopEqBWMtSoH87
         HkcQgim+C7L9NadxiJzTD6VN/vSeclHWiVu8dXFDhdb1E03DLWkZ/HpD/ypA5bhRnYMw
         9vSBBWJG2zq1B/nlqUAs0KC+RK+BGQzzbEChbGQWjpL3rDx8tvtltyyrtyBVvFm/c51l
         O+XTemo691PDHTyghza/OMNDuu7M6K9D69kNN3ZpKY5wKcEb/AdFz9j6NNcGYd2zZSZP
         O6wQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtaPa0Ocm/30Bx6znZq9E+R7mHU6PZf++Tfg17IppuPpPcKho7H22ptYosulx/UyQ698TcyfVmKSfh@vger.kernel.org
X-Gm-Message-State: AOJu0YyW0msIgp0quWawc960hzhjfwGWkVvuggIFxgKST2dZ9NbsLv11
	rE4TeOfNtgoLD63edR8L1nKpp0rmkyhm+bkk2/6U0OhaMCFHnJonOH8diTAVNWFqEIk1gGouoz2
	E44s=
X-Gm-Gg: ASbGncsJZHN4v9T18fUXo6dxqIIBMEfAAN4Vm/JCSZzDQEJQ+Z5sE2AvOpoJf4DO7FQ
	QpW2Q6VZq+eM4ymZlYwVSnsGkWCdoOlLGxGXDDwC2BJu4AVOu/Ha0J1L7m37Cmy9mIS30pKC7n8
	CWHo+KNnzYvnx4NhrDBhBUIpyyCJFl1x+61nfpJWv4+sVHSLWDubcgL0Tp/awZbJ6hG2sm0LbKX
	7ivM74tL6yQGIWQI6nWPUHEQldQzqCcZ9nwPJm0/XO6pUBYjqqYXlcwEmRhoyLBiopF0M1JCPpu
	67GrbWA5iokSae/VIZpCr1s8JAka3ZB6rkDEZ3ndd/wcV2Ue4FfY9sBPZUIf8AdV/5kHHDszTGC
	aIy6jZ4MSttRlJdkBCevJFrn0RqOFUPsUPzS0Ai45JKVkSbF9PN2PezI+uw6ivA==
X-Google-Smtp-Source: AGHT+IFNsX2CFHa2G036CMe378IQkChcJe1MMT6YQRK/T9j9FKii6Q2iEZlfN8aDFpYcXJzmpo4LPA==
X-Received: by 2002:a17:902:f683:b0:240:79d5:8dd0 with SMTP id d9443c01a7336-24096adc97amr139304575ad.13.1754000745657;
        Thu, 31 Jul 2025 15:25:45 -0700 (PDT)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com. [209.85.216.41])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e8aafb34sm26641905ad.173.2025.07.31.15.25.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 15:25:44 -0700 (PDT)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-313eeb77b1fso177872a91.1
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 15:25:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWQHPgWOjbHhW8nkuquytYY23JfO+TZu4JOr2tuVP3ZtJgHEt3myze58rHDAvmutHuVZ0a8a5rrlI/o@vger.kernel.org
X-Received: by 2002:a17:90b:250a:b0:313:dcf4:37bc with SMTP id
 98e67ed59e1d1-31f5de59cf0mr7700439a91.34.1754000743815; Thu, 31 Jul 2025
 15:25:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250731215635.206702-1-alex.vinarskis@gmail.com> <20250731215635.206702-3-alex.vinarskis@gmail.com>
In-Reply-To: <20250731215635.206702-3-alex.vinarskis@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 31 Jul 2025 15:25:31 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WBaNJ7VKmJ5oqEb_HxEKrpRWmaSCkVejvRwjMVdvUdqw@mail.gmail.com>
X-Gm-Features: Ac12FXyO7QutJwaatVpGbTWcIaoRXNZfqpiuPLqpynloYzM1ku_IwCQ5zDIp86s
Message-ID: <CAD=FV=WBaNJ7VKmJ5oqEb_HxEKrpRWmaSCkVejvRwjMVdvUdqw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: display: panel: samsung,atna40ct06:
 document ATNA40CT06
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 31, 2025 at 2:56=E2=80=AFPM Aleksandrs Vinarskis
<alex.vinarskis@gmail.com> wrote:
>
> The Samsung ATNA40CT06 panel is a 14" AMOLED eDP panel. It is
> similar to the ATNA33XC20 except that it is larger and has a
> different resolution. It is found in some arm64 laptops, eg.
> Asus Zenbook A14 UX3407QA.
>
> Raw panel edid:
>
> 00 ff ff ff ff ff ff 00 4c 83 0d 42 00 00 00 00
> 00 22 01 04 b5 1e 13 78 02 0c f1 ae 52 3c b9 23
> 0c 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 42 3c 80 a0 70 b0 24 40 30 20
> 88 00 2e bd 10 00 00 1b 00 00 00 00 00 00 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fc
> 00 41 54 4e 41 34 30 43 54 30 36 2d 30 20 01 7d
>
> 70 20 79 02 00 20 00 0c 4c 83 00 0d 42 00 00 00
> 00 00 22 00 21 00 1d ca 0b 5e 07 80 07 b0 04 00
> e1 fa 51 cb 13 b9 3d d2 0c 01 45 54 40 5e d0 60
> 18 10 23 78 26 00 09 07 06 03 00 00 00 50 00 00
> 22 00 14 8d 5a 02 85 7f 07 9f 00 2f 00 1f 00 af
> 04 23 00 07 00 07 00 81 00 0b e3 05 80 00 e6 06
> 05 01 74 60 02 2e 00 06 00 45 40 5e d0 60 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 90
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---
>  .../devicetree/bindings/display/panel/samsung,atna33xc20.yaml   | 2 ++
>  1 file changed, 2 insertions(+)

Pushed this to drm-misc-next:

[2/3] dt-bindings: display: panel: samsung,atna40ct06: document ATNA40CT06
      commit: d7c2aad1254a1b4e6d76947cbdd18813b02a0e24


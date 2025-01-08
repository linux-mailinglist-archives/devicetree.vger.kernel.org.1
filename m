Return-Path: <devicetree+bounces-136712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 408F1A05E87
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 15:26:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D17D7A1341
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 14:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C78A91A9B34;
	Wed,  8 Jan 2025 14:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iUdz1mFG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCC9155382;
	Wed,  8 Jan 2025 14:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736346369; cv=none; b=ss3zzEZBJCV28Jb8UIu3fIEgszEdx7Zs9lF8R95IurbG5KU6Ysnm9jGsucIjnaaZ/0re1h0Zp6+Rr0ahbKxpJKKtHIa6s7AlKc46o3G79Fy9xbQVyE2AKB2qTjUYo7Hifd/3hRAW8B8Wh7boSTxGgy7HM8MYeM+ICFG8cg+kD6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736346369; c=relaxed/simple;
	bh=VzRkQFsbsZb3prYdm8IYnpC6IOEvvGL2fTo7OIg3jSI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QlqYf7xwt1/GZqrzdqKqso+ytTswFeYsDDaY3JbfeuIV0VKoHys09Prqb1ECQfwb9v4kO0e4bKVcjEDX1HRQe2jG3kEVYevJkP9ED1gDDbUVebVnkpXgDDB21DBe6fEuw3AkMfdfRw0RBUnUq+QE3ihulaZ8mEpgd44rsqjCQ8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iUdz1mFG; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54252789365so10624606e87.0;
        Wed, 08 Jan 2025 06:26:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736346366; x=1736951166; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VzRkQFsbsZb3prYdm8IYnpC6IOEvvGL2fTo7OIg3jSI=;
        b=iUdz1mFGRPudTlRPFb2KwowOQT0S3pLk+u800wSGp2F4k4oaXpxx6fRCv392l7CYgq
         ak47gV5BZoGnU6g7jBqZRAjJ1OxFCctxigw7Ein4o1HnTgjulRfsEvSqT84eCuutCfrn
         cGW7B35+BqJEmX2IN0DbPU9a16f1h6xc8p4S+UBigsuK6MnS28uGGrQfuiYXSk/cy4M9
         yzrC6Ffth1HTLrAhPi4r8049lY04teFgPsDWe86qRObNqN1T5vJoSywWUHz0NXTnH36w
         olp4OSJP3t2OJtEj1CXoRLKLc5JxaCJOk5fkVX0HICx1UGb0iNZLoIKbUYT1Y8W3xmlg
         R02A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736346366; x=1736951166;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VzRkQFsbsZb3prYdm8IYnpC6IOEvvGL2fTo7OIg3jSI=;
        b=hXGeizoYaIqJjbN5z58I21S3/gSzOlyea/+TBqV7idMB7dumbk5q7bpnbYBn11L6Kn
         jYKRTUJUOcKceyT/i9DhM0En4bUdssHzirbsBIO42XbsjTVAHwZAUrL/++L/XcgsFQLZ
         qqXW8ZFm+MOIX28CO9DMFqDkMnBnJ7t3VswjuRRX/Q4KiYRJatnTE0znDg5DwK3uvyFG
         ASVq3ieTsieQODJ18IrMhkV+vIjcZ4eT891+D+g5uY+S1cGGzoVZZg6hQMMsGvJa7ghY
         3uSyPrWdAyP8uo+E+ahEtIdebB5v74crywv7nudsTq8VvAQ75HrQZNpJieQyveGiPSNs
         MdDw==
X-Forwarded-Encrypted: i=1; AJvYcCWCw1M0uGezy57jqeuD8CU/9n0Dy1e+vZhBwK9hYQG+JMSRSGuG70S0PptLWvth3kXA4T+IKrzmXi6nLHHx@vger.kernel.org, AJvYcCXdpGwVOreH7I634Oc69uCBSycMvffQxlSVw0ZGX3YVM4Ak5sOHWzgXURojkJ+eLgcS+NNbD14ba6Ah@vger.kernel.org
X-Gm-Message-State: AOJu0YwxQUi5B6SpSaT2QraWvwCbbfVo3Qll4SPuatfNx/rtUkcJ9DbQ
	Jp0R4PXmsJDxZlAGZ3pxxXqPEXy/CQWHniPoaYDSrlPgtWcjhPw9tzQL1fe4/RCvix5xSopvcJB
	We07htTrOa9wq2hO510aERqfJodQ=
X-Gm-Gg: ASbGncuYaW6Qsa+3WesDAC/0FATY/gB/QFXU0ULd7vpgq6n3GkZKzneMoXFrAkjMSxm
	eyyZjRkoxkw0raWTkqBsjnoe9XUDGoyLVIV4VE52qFuC58TUKQQOEdxDg65tPpsZNc/8B/Q==
X-Google-Smtp-Source: AGHT+IGS3A8h0Q/PUkaHrm1SeFvYbUscGOt6bkTAr2NyzolQMBSyfrUMesJ48vgLAB/IZNBnRthccsMB5/EPlNVzUcc=
X-Received: by 2002:a05:6512:1150:b0:542:2166:44cb with SMTP id
 2adb3069b0e04-54284815b35mr845905e87.35.1736346365946; Wed, 08 Jan 2025
 06:26:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250107094943.518474-1-alexander.stein@ew.tq-group.com>
 <20250107094943.518474-3-alexander.stein@ew.tq-group.com> <173629198495.2036683.9877314471091548361.robh@kernel.org>
In-Reply-To: <173629198495.2036683.9877314471091548361.robh@kernel.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 8 Jan 2025 11:25:54 -0300
X-Gm-Features: AbW1kvYHWbk5Czj-Ab9dHoICLA67HONxWPXgJEt2PMFBPH7OeOl5M6o3MpfGq30
Message-ID: <CAOMZO5DeGn1_i60r7Km40D13f+B+bTk8DndNEJVq4h6HZnnpYw@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: samsung,mipi-dsim: Add imx7d specific compatible
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>, imx@lists.linux.dev, 
	Simona Vetter <simona@ffwll.ch>, Maxime Ripard <mripard@kernel.org>, Inki Dae <inki.dae@samsung.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, devicetree@vger.kernel.org, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Robert Foss <rfoss@kernel.org>, dri-devel@lists.freedesktop.org, 
	Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jagan Teki <jagan@amarulasolutions.com>, 
	linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 7, 2025 at 8:21=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org> =
wrote:

> Fabio is clearly confused, and I prefer this patch over his. As
> it is probably past the drm-misc cutoff, I applied it to DT tree.

You are right. I am sorry for the confusion.


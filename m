Return-Path: <devicetree+bounces-137157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 92289A07B82
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 16:14:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F09071881E51
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 15:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DBD621D586;
	Thu,  9 Jan 2025 15:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gmY3orCS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E77215162;
	Thu,  9 Jan 2025 15:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736435540; cv=none; b=BMq1UKraoWN99DwpyXbgDtzjO5Ff/nDxrsSCug80Ynw+n2VtSQajImGRt6aU0byXGqkPoEXRfVWV7uNWzh7QFzoTNArXAZLujV3wh2XUQiqi5N48EnNtU2y3s0uWYay0gFKEpCl2vh8SRd87IYaMnTJ3no1b8TmwMaDkTs9IlFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736435540; c=relaxed/simple;
	bh=KZ/s86xLkYT+SehY6xTa0g1XsTpi9QTPMcjn8c8nw7Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ByNfUoF//3wGZhtVr4OCARxpOSyJE+9QRgdAZR4rOZOhtpaI2GftIwnhk58+4Iq385rX8EoMDLpXeIJZf7GJWnpoHkFHb2A3IlaSxpkouYlg9kWxS8W1OlLF35Qm8JTOsdHJwiVBkyOICNqcSPiIeHQjMisBur8xO0OOOeXjqDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gmY3orCS; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54024aa9febso978709e87.1;
        Thu, 09 Jan 2025 07:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736435536; x=1737040336; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KZ/s86xLkYT+SehY6xTa0g1XsTpi9QTPMcjn8c8nw7Q=;
        b=gmY3orCSOtaWHAb//HCKnFVu2zota9/reUJOsT9vYBfRhESz66nHZWg+v4EKTCRETu
         wuKmT8u9uuDZn3V2CWnlUEHWXQvVlY8oGBf+900+RfRplSgt9g1mn1JL/H0An40ejgv/
         p6y5A+wmI+tdOgVu8Dqn4yQ6oDszmzBTDWYpIID4tQS5GwmaYpAniHd39nH53tALqdUA
         LMEJWEiqNTpaZNeGWelLDdyo6Nlj8W6Zq6m/9nSZng6ISQMg3NQOTAONux0dePXXf4a+
         2YdxWkZbaiTVJKbwj8dEwX6fxTIueedEWvgr70AlJW1/1CnL0m3oHYl+BCYuF4QWLVCi
         /RNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736435536; x=1737040336;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KZ/s86xLkYT+SehY6xTa0g1XsTpi9QTPMcjn8c8nw7Q=;
        b=thq2ytV3iN3MLUPFMrnYsXNXXZmTTiWA+QMdsmuZ+wRMW2tEkU/OIQfxfUsMwd7/lC
         LSU2cmmW5MFzPxXTWvymcweX+OPGesDHuZa63Q0kNQ+6iLuKRjtSMo7nWdFDSwK1/N19
         ixvxsqK6RiI8p74bh67u2GeI7F2GdVddD1yNfXYxNQ/8ovipK3I0N7dzEgpxVU4q9ey6
         HLVgTWkw7azIuHYXxCBJM4jgr7lWtbX3qg+SY+RigW8ZKqu6ZQQfb94/gUA5Y6N/O9Zb
         Tpd+7F2dNoKrX5a0QtC7GfYTGfhwTKhG5CD7PPBCFWqyThmry2WD26jqsURtrsyorcXW
         xNgA==
X-Forwarded-Encrypted: i=1; AJvYcCVui8p1rAm3c4KSGaukGf/x05faa6vjEQ/RQo5JzGQtiBRSlcnSnRZuYXwKYMVAOfkOc4g5DQrKnC1U2khq@vger.kernel.org, AJvYcCWClAjnUEnrt7LdMVjrmqDCAyIblZ8Fg5+ZTPxF8xoFVgzNGBbUpNnS3wrhkttdRtlVmM1NWQqnQP2l@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx6weRj20PhNPoii6u2HYGq4dKHBUlV1yhIK1Jf10N6jfo+XNr
	D9PyNCKtVDD2ila5jYVTwgsh+yZ41PAJzPq96fETwO3ijTwIi2I6NVa2HLEZYLsXGUhlA67jS71
	M54Lm5Xv6WgaYJx9Ha9isIjEIJk0=
X-Gm-Gg: ASbGncsXkrcwHTSy+Wap/Fq1WoLQjgXW/ZVPO81fHN5cmYv1Ud3qb7KUjxhFUTMXdk9
	goYI8i+3LzUEaJ+gCqsAO1NlOyO0XMcOg+7olpJFcgEe53Yz4uGmyLVj6tKQrv0VSSQjm
X-Google-Smtp-Source: AGHT+IGL+Nhstz3ldj2Qzy3BUu8CvkJW+en+6Pugv+G34XFXJODm1l6h5QLV865NrxoZTWdlJIMugE0m0c4M50RMq8w=
X-Received: by 2002:a05:6512:3c8a:b0:542:28dc:b692 with SMTP id
 2adb3069b0e04-542845b9480mr1829867e87.14.1736435536184; Thu, 09 Jan 2025
 07:12:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241107085705.490940-1-lukma@denx.de> <20241209105240.72d8d84a@wsk>
 <20241220112950.4673bb3f@wsk> <20250109153702.2d149023@wsk>
In-Reply-To: <20250109153702.2d149023@wsk>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 9 Jan 2025 12:12:04 -0300
X-Gm-Features: AbW1kvYm4YHhAiGIME9YVA_LVAHfPvIy7l1kmlYvyF8IFfpGO4Q1dallC36xIoU
Message-ID: <CAOMZO5ABPnB9ov7jtEmDSZ=efNh_yx3JcqqS_UMTXgie=8PcTA@mail.gmail.com>
Subject: Re: [PATCH v11 1/3] dt-bindings: display: Add powertip,{st7272|hx8238a}
 as DT Schema description
To: Lukasz Majewski <lukma@denx.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lukasz,

On Thu, Jan 9, 2025 at 11:37=E2=80=AFAM Lukasz Majewski <lukma@denx.de> wro=
te:

> Gentle ping on this patch ...

You missed copying the drm folks:

./scripts/get_maintainer.pl Documentation/devicetree/bindings/display/panel
Neil Armstrong <neil.armstrong@linaro.org> (maintainer:DRM PANEL DRIVERS)
Jessica Zhang <quic_jesszhan@quicinc.com> (reviewer:DRM PANEL DRIVERS)
David Airlie <airlied@gmail.com> (maintainer:DRM DRIVERS)
Simona Vetter <simona@ffwll.ch> (maintainer:DRM DRIVERS)
Maarten Lankhorst <maarten.lankhorst@linux.intel.com> (maintainer:DRM
DRIVERS AND MISC GPU PATCHES)
Maxime Ripard <mripard@kernel.org> (maintainer:DRM DRIVERS AND MISC GPU PAT=
CHES)
Thomas Zimmermann <tzimmermann@suse.de> (maintainer:DRM DRIVERS AND
MISC GPU PATCHES)
Rob Herring <robh@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED
DEVICE TREE BINDINGS)
Krzysztof Kozlowski <krzk+dt@kernel.org> (maintainer:OPEN FIRMWARE AND
FLATTENED DEVICE TREE BINDINGS)
Conor Dooley <conor+dt@kernel.org> (maintainer:OPEN FIRMWARE AND
FLATTENED DEVICE TREE BINDINGS)
dri-devel@lists.freedesktop.org (open list:DRM PANEL DRIVERS)
devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
DEVICE TREE BINDINGS)
linux-kernel@vger.kernel.org (open list)


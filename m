Return-Path: <devicetree+bounces-35849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9959283EEBF
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 17:41:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E762284B88
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D662C19C;
	Sat, 27 Jan 2024 16:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JDKgMhgU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800D22562A
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706373661; cv=none; b=aJ/Tw0u5L8i3yl/oXedkqsnK8oS4Nb8hIQrUrGX6eZ+C1IgRmWyOwqLFtmNs3JOlbanxUN4ATXn+C838IIELXeGd9lQreXxHUGEFRmevOENzaFLojyYTlJtRNLL8zYJoempxPuF0zbp33zMM1b57wzTDQ5N0B4x4TKEeUnpNrUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706373661; c=relaxed/simple;
	bh=7RvZT44YBgdiwiKgWuRjay2EtoYYF+GO+FuLqTpQR7c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aetXqij+GNq2xEzL8b/soGq93Zttf0ecOPBwPW6AahOyYV/7wzYaerkrhaDMufgrReBAHtg6r8FjVelhRoXGojcPn6MinE2qWcenQ75vcptwOd8rsDc3sw1s29Si3VQfXH7uyRSfJG5voumLAlI/jZ4mV5OPnMD17zq+Z+ymrtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JDKgMhgU; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5f69383e653so19453127b3.1
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 08:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706373658; x=1706978458; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PT1Exo5HZPUej7pl3Sf7KYOhUnetXTHlbzzBJvg05vo=;
        b=JDKgMhgUGu56d4U3qs0ZdD+WNV4L6cU5Kdhg8nCynGL5vhtdf34Tf5QKv9jIDU/a3k
         /5teiCWp1SUoCSrKrDQfREeLebWIg02oF6BTqoCycIStNz6egAzQsVTqW5RwNhYRbmVn
         10LoUxuYXdtWuqxLCaWycctgGnsP30j3meqB27InL9eY1iWTMbT39JSyAEhhrDGfDxSP
         I+x3yYoIPVBh7syUX7hybC4eaMGM9KaZ40daaQIx63L8j2J7slGlzdN4Ky88Qx68ge1o
         sH78rbpxScGn7QCQLnEEAxGmLC0ARP8kQEF5+zIoQkTuYixmC6sqFr/bncQwsg/rV0X2
         3xHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706373658; x=1706978458;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PT1Exo5HZPUej7pl3Sf7KYOhUnetXTHlbzzBJvg05vo=;
        b=OjuI91rcE3m9IoieJ1mPE+PxlwgIPrzPEaXFpuBQwCFLoAQcyL2SJQuzZZNlNBge5Z
         OuRPGk7pYETohmrYUGHAbrovk6YZDB+BKizPFmiGWKB6ebOI/qV5yJPoAED/iGxWVIyE
         G3igSIPOVDgUslKcEJ0i2J/8B/F6sI0aBxUxGYG04TkUmIaC3RKcSwJoO4F85Gjm1lQ3
         mcViToPcz9XV92M6A53pWdSmI6RUdpjQLCct17fpO1/t+IGL4WNwiYMi1IeR1FwBqHF9
         FyG/CYmSYyV9YdhLS4vDrHnENqYdCAV5OUYNEj7ppHneUd7UcT1fpZm7l9JmaJrHjn6D
         UchA==
X-Gm-Message-State: AOJu0Yw9TszIxP9AHcG8XodRGXNSA7t1oHT7AJRwAcpDagK1JxL9jemF
	EqqkYBLHQvVH1BHM/v4WXXk7FqgBCsVRoVc2WQI/xKlwNmqXY6VQzJpr7YGkTIXbXBFIiFE4+nS
	UITIUiW4lwpCIAcu/HNOHXc0KO20N2Kwb+z+ZCQ==
X-Google-Smtp-Source: AGHT+IGxWylb3x6PvuiGls+63CDlOR2to8X1Yhb884+I2Osgi3EG4M3tSnJurIDqx6qxvZppFEGLmso+Wb2uaWlxFsw=
X-Received: by 2002:a81:a00e:0:b0:602:d04c:4402 with SMTP id
 x14-20020a81a00e000000b00602d04c4402mr1878416ywg.81.1706373658282; Sat, 27
 Jan 2024 08:40:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127152821.65744-1-dario.binacchi@amarulasolutions.com> <170637290174.2797231.1548285445759438647.robh@kernel.org>
In-Reply-To: <170637290174.2797231.1548285445759438647.robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 27 Jan 2024 17:40:47 +0100
Message-ID: <CACRpkdZRvGv4gKxuYpt+fczWCegsQWjP3yfrW=RgOLBFJxtjqw@mail.gmail.com>
Subject: Re: [drm-drm-misc:drm-misc-next] dt-bindings: nt35510: document
 'port' property
To: Rob Herring <robh@kernel.org>
Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>, David Airlie <airlied@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Daniel Vetter <daniel@ffwll.ch>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	dri-devel@lists.freedesktop.org, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-kernel@vger.kernel.org, 
	Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 27, 2024 at 5:28=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:

> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/d=
isplay/panel/novatek,nt35510.example.dtb: panel@0: compatible:0: 'hydis,hva=
40wv1' was expected
>         from schema $id: http://devicetree.org/schemas/display/panel/nova=
tek,nt35510.yaml#

This is because the checker is applying the patch on something that is not
drm-misc-next.

I think the patch is fine.

Yours,
Linus Walleij


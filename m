Return-Path: <devicetree+bounces-144053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0E9A2CAC3
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 19:05:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CFE61634F7
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 18:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C75219FA8D;
	Fri,  7 Feb 2025 18:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="B7t02w7+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A05D019C540
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 18:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738951519; cv=none; b=a6y2qdLH6Ws8aksVa9FHAP1GpOGjU7BgZnsKOumTIPi1S9I0U52u6AKjjyd5FuttTeBwnK3Py69gyLWN9EAPAFzXSIbEfrdw4Vlkb6drlHNKNL5Xwm6VwIjOegFOC/gffUnMXRDXppKxhij878d1Ej3FagKPwOZ4IoZzDb7qhHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738951519; c=relaxed/simple;
	bh=HzEQLP02Z2hiN4v9+HR7+/Ah5QElILgZPt/vrg4XGEs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dY0+JUWclYpAQmBTKyCRwad9px1m9mIj73hPafd8f4oYpwc1trK6Te1XXyW9pWfDZx/fjIepMIxWt55lRezixKcY4MOhM2HsS/DcHluwmKA1b0CK+xN0Jqae3CX5AwuilSgupByTXCxXBRlYx2pnQTbw+In0xkqluUT/ad5X82M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=B7t02w7+; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aaf3c3c104fso425527166b.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 10:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1738951515; x=1739556315; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UAyA9k3gE8c5Mnrd0sbdTuF+3Mk11ZW10JEKEegQbhc=;
        b=B7t02w7+J/tWnzGmA2AjnFdkEEzKl4/sq+qlKBrmnkbNF/auGL+ONe2ebQjGnmJ+Ia
         Ed0wQzOy32vI3Nprz49iN6f/4E3UokyfligLEUJe6vdFocXY8UrbBRGOpshiU7qIeMI2
         vSth7DzzH6BumRwIIwRZSsv143oUSZTK6cxhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738951515; x=1739556315;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UAyA9k3gE8c5Mnrd0sbdTuF+3Mk11ZW10JEKEegQbhc=;
        b=cqtSm3yCf8ZOnSI9mObtKG2B/zmFi0rttznZ8xD38RzUZYnuQgpNkWnWhe6fPonOYb
         XRT67L64V/1TmX18ygXa8tdTvR/ShARwEB+K1s5+M0O0ZrFNHQzUP2SNpg+CwsLBapH9
         JjfE0wq/O2ekTBFBhxWhmdpIbOBoCK0F9o9uG9e1ErrA10qhNrkZ6Rj0DcMZQtPo+XFv
         3hSZ6l8yikGznrL5cw9aJR2czrGLq8lrNQuo/u/uY0O50axRrNUdwtNbel6AR73XZocc
         6S61PnSHuEBbjNYbsYwCWY1LjJxJE4jV0w94MJmlf6ASBqNimXMi0KrSsnEnoUhPR4RU
         KRkw==
X-Forwarded-Encrypted: i=1; AJvYcCUGko3hJfXAKPSwor7TJ0E83SgtnNRbj6BKSpkkOqOFfhx5kK6zBTOghYxiSxkvnZ4oifOrs6T67qQa@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0i4+N36QNMCuISU134HDeibrLH6yuO6KSHcp3JjaKr/sWDhtJ
	tfL42xgewyzwsXMQDYjfzaU5AaGFJ8HYwtO4XoIQBhaMlrGeMZnj4VEzH8orXAEdOny+O0hmEqc
	TGiM9
X-Gm-Gg: ASbGnctheQ736OgtxG8XAihNm/Zi2/6dcCf7GS4kt7TGk4dOrDX7NGmSbiBUap8S8tV
	d2fLoJKvne6BvvyPFB2qVzDoa0QdTnfZ4mE5cb3ViklDrY4ujv7DQZ9T4vZnhvvNyF5lDIRNKMs
	/ei7KQ9de+VN4lsUuPdDrN7OSdZfomZxUzkYjlBZhTLuw22xknttIfixozOMGPIce+v9+dMovnd
	5t822ulTxSxt6sGLRddUINrvq1beCmjGE7hMokD2KZv6J5jSqZBK5EYS9fLcKUXhN211TPtKcZW
	KQ/VqqiP++ys+r0UjDaUMDKbz9Xbs7aQvLXrh+bgoTjlIfjwB2oBW8Y=
X-Google-Smtp-Source: AGHT+IHc4j6MV6fCj+vYlObUzfomsEhSQiV8AUA0G1hNmhi39/d2nMPMKMWYtwYhB0tOy37Du60pDg==
X-Received: by 2002:a17:907:9490:b0:ab6:fe30:f487 with SMTP id a640c23a62f3a-ab789a9df8dmr455134766b.12.1738951515318;
        Fri, 07 Feb 2025 10:05:15 -0800 (PST)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com. [209.85.218.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab789d50fb8sm171091266b.69.2025.02.07.10.05.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 10:05:15 -0800 (PST)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aaf3c3c104fso425524666b.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 10:05:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVkQfeYt1+1Ekkzo20YO/u6GFCKW4AY9+SZv86NHwm5Oi8PGqmzuBk1skYYmPU1fuUIuJeB1kj5E6/n@vger.kernel.org
X-Received: by 2002:a05:6512:4023:b0:542:98bb:5670 with SMTP id
 2adb3069b0e04-54414aa709dmr1057707e87.25.1738951165202; Fri, 07 Feb 2025
 09:59:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206131300.1295111-1-yelangyan@huaqin.corp-partner.google.com>
 <20250206131300.1295111-3-yelangyan@huaqin.corp-partner.google.com> <20250206-uselessly-riverbank-14c097e62ae2@spud>
In-Reply-To: <20250206-uselessly-riverbank-14c097e62ae2@spud>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 7 Feb 2025 09:59:13 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UybUjCSqtk0-QvYc4GLY-J1=hLep9eCoPwB73psw4BeQ@mail.gmail.com>
X-Gm-Features: AWEUYZk_zCmx3_FAd9S6oDwQX9ETkP9z4pnHHk7HPMygPYUX8J-m_i6ND9efCG0
Message-ID: <CAD=FV=UybUjCSqtk0-QvYc4GLY-J1=hLep9eCoPwB73psw4BeQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: display: panel: Add compatible for
 CSOT PNA957QT1-1
To: Conor Dooley <conor@kernel.org>
Cc: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>, neil.armstrong@linaro.org, 
	quic_jesszhan@quicinc.com, airlied@gmail.com, simona@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Feb 6, 2025 at 10:14=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Thu, Feb 06, 2025 at 09:12:59PM +0800, Langyan Ye wrote:
> > Add a new compatible for the panel CSOT PNA957QT1-1. This panel uses
> > HX83102 IC, so add the compatible to the hx83102 binding files.
> >
> > Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Pushed to drm-misc-next with Conor's Ack:

[2/3] dt-bindings: display: panel: Add compatible for CSOT PNA957QT1-1
      commit: 36947218ca90c1f560f43c88c438124f8df884d4


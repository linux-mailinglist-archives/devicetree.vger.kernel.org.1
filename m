Return-Path: <devicetree+bounces-119154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B1F9BD36F
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 18:33:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC2C9284081
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 17:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AFAC1E1C11;
	Tue,  5 Nov 2024 17:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CgRxGmKv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A381C1D9A71
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 17:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730828012; cv=none; b=LwPnkKUe+HKnzAMzfFMrzICIK/AicZrtbrHVvLOWeDUOrEVfzAIPy3wNi/ahsV3ZmszRd5IepWs0wAZvLlyiYNaYbumI8S0r5mtvZhG7kh8RBPb5n6QM3SUdiRAEXiPTJZJ3Wt7voOqBmHFwYIm9IFK8iOz7RylEQbl/f2gzzms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730828012; c=relaxed/simple;
	bh=5p5IeNeTEKhL8Xp6W+OqdaIXLw2VE5PGJNso+vOelo0=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=VtnoU/rlyY7TbKJdyGEbxobgW6PG1zdVtmb8hQp28+KhHIu+ECzbpS/nESneZtAicmtKR3U56kVRtRpPuQwVerhu0vbLs38UKCtzOUB18Y3YKuN+ekVwXcT67PYm72FaP0hggtg8WQNXGFni/QIN1cFeZCz9cirWlxfssIV3JZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CgRxGmKv; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539f72c913aso9290521e87.1
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 09:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730828009; x=1731432809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wL1RRdJvbyow0/4Gx8okr/VQzPzKmrgzOSUtxcyZLw0=;
        b=CgRxGmKvnsDDvM6kBaM8CKGcVt2nrtVToTwE20n54ArcJR8yV2kVu5/hdNW1y8Xws9
         VN5FMZ5DW8ZsE+QFjSC7PLABjp42p3UtpqSmDiar1v9A3/LTXiC8MzSTDrJtCji5x4WJ
         xkvHXgqvypv8cGAQdpKRTRMxrz0qir9A5cz0TODIEwodZaXoPLYCVgDKG7dzKeoD+4IN
         kbTPLw7fOnL8LGCbtPKK+kDdsu/WyR4rfu5Hy2/GXVsWi5kiSyx0COvlu5XR3QHAFj4c
         YMKPkIliiMlskENDA53uWVl6UDEQIrXMQDv38MmFq21fhgolLgitT71sSY1AKS6XuC4V
         SF1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730828009; x=1731432809;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wL1RRdJvbyow0/4Gx8okr/VQzPzKmrgzOSUtxcyZLw0=;
        b=Wxza5FguuSfblhW4xFTnDJc0gbWZwkN8WGTfzUZ5DaSWa/szU2rNgj6BewhBbwEaKK
         Xo3XGHLClYCWUQX9CZP3kqCY4wIK8gp9GUn2ePYyRTGOBCyt1nPo0iQeWAZnmbDgRi6G
         hwNcLlVt34lIiAruVUCPwKpD6P7XUOSLMH8yYbpQXvlnv8DxKWrdUz0jTz/VDYf3jQ/u
         UHzRTiRhuPPbAzgTzQQFQWWzkWGEd888GnVBrYM4mi5TaWxefRFXjmrwk4iI6PyawrvA
         hRd8Vopc2xmJiU3qE6XZrKihQ3VxJOyWpg78APocLdMcJq1nQakVEJgDXWgc1ZUQOrvP
         EGGg==
X-Forwarded-Encrypted: i=1; AJvYcCUJL9hJ2vprBSUnmQ3y9fyiAAYPUlXJvjWFpkEWnN7VoWoHfeA45yWQcf9s5kyrWtZ9vrzB+n1UyH9L@vger.kernel.org
X-Gm-Message-State: AOJu0YzlIYLbaHVBMYw31uR3fYeOiBxIpb6fLDSjLoS5UsiWJSSo8lob
	gE9jGqDxndCcmUYzju96+BhVX4RpzzShqQ6fzHGvzBLdZLBI0U3WbfkBsO5hsxQ=
X-Google-Smtp-Source: AGHT+IGi18Sva7NE2bGd9ATSS1dZp0tYBcKab71BKwIRnXTz0bTETPbOkVUJ2V8gRDOK6fT7ixUiNA==
X-Received: by 2002:a05:6512:1307:b0:539:f886:31c6 with SMTP id 2adb3069b0e04-53b34a18f24mr19326836e87.38.1730828007874;
        Tue, 05 Nov 2024 09:33:27 -0800 (PST)
Received: from [127.0.0.1] (85-76-138-48-nat.elisa-mobile.fi. [85.76.138.48])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bdcbc3csm2221064e87.193.2024.11.05.09.33.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2024 09:33:26 -0800 (PST)
Date: Tue, 05 Nov 2024 17:33:21 +0000
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
CC: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 Liu Ying <victor.liu@nxp.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, rfoss@kernel.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com,
 maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com,
 simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 quic_jesszhan@quicinc.com, mchehab@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, sakari.ailus@linux.intel.com,
 hverkuil@xs4all.nl, tomi.valkeinen@ideasonboard.com,
 quic_bjorande@quicinc.com, geert+renesas@glider.be, arnd@arndb.de,
 nfraprado@collabora.com, thierry.reding@gmail.com,
 prabhakar.mahadev-lad.rj@bp.renesas.com, sam@ravnborg.org, marex@denx.de,
 biju.das.jz@bp.renesas.com
Subject: =?US-ASCII?Q?Re=3A_=28subset=29_=5BPATCH_v5_00/13=5D_Add_ITE?=
 =?US-ASCII?Q?_IT6263_LVDS_to_HDMI_converter_support?=
User-Agent: Thunderbird for Android
In-Reply-To: <20241105-secret-seriema-of-anger-7acfdf@houat>
References: <20241104032806.611890-1-victor.liu@nxp.com> <173080602214.231309.12977765173766280536.b4-ty@linaro.org> <20241105-secret-seriema-of-anger-7acfdf@houat>
Message-ID: <CD810D31-F9C5-499D-86CF-B94BEF82449A@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 5 November 2024 16:13:26 GMT, Maxime Ripard <mripard@kernel=2Eorg> wrote=
:
>On Tue, Nov 05, 2024 at 01:28:48PM +0200, Dmitry Baryshkov wrote:
>> On Mon, 04 Nov 2024 11:27:53 +0800, Liu Ying wrote:
>> > This patch series aims to add ITE IT6263 LVDS to HDMI converter on
>> > i=2EMX8MP EVK=2E  Combined with LVDS receiver and HDMI 1=2E4a transmi=
tter,
>> > the IT6263 supports LVDS input and HDMI 1=2E4 output by conversion
>> > function=2E  IT6263 product link can be found at [1]=2E
>> >=20
>> > Patch 1 is a preparation patch to allow display mode of an existing
>> > panel to pass the added mode validation logic in patch 3=2E
>> >=20
>> > [=2E=2E=2E]
>>=20
>> Applied to drm-misc-next, thanks!
>>=20
>> [04/13] media: uapi: Add MEDIA_BUS_FMT_RGB101010_1X7X5_{SPWG, JEIDA}
>>         commit: 5205b63099507a84458075c3ca7e648407e6c8cc
>
>Where's the immutable branch Laurent asked for?

The patch set has been picked up after getting an Ack from Sakari, before =
Laurent's email=2E I am sorry if I rushed it in=2E


>
>Maxime



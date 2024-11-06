Return-Path: <devicetree+bounces-119380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D0D9BE241
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 10:20:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E25B1C22DD8
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:20:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57B0E1D90AC;
	Wed,  6 Nov 2024 09:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K4RpLId8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78859183CD6
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 09:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730884817; cv=none; b=q2ZWuLZDcDyazsmNbJdq6RdrYuFWhj0tSFw4k9N7kivUvGCg7ZSYFR3Stqg+hrWeAYHTSXeFuW2anyYuZ8YLpTQapy3UXmR4fQpTNd1bzdRGfu/l8aat9RLYljvc1ohJU3ibW1Y5qGoYYHxq5jQ1noLUbS548CrEqbIEMijT9ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730884817; c=relaxed/simple;
	bh=NICnhTyDeFjw5xDNNJO75dAzGin9vebw41liMa/LWfQ=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=FNKiG65SHGPfkXJ9R3PAyMO9bLFbytbSsryjx3z83NWrxYgtEcu39dE/SKKPjVhoGYBFDYQ33JULLzF1d+ir7NZitvSqrfLTSAm1J8c2jBXUXMQCytABSfhx+TW1Wt1iTGexX+AyDoLt+DaJr8JpzEFYKO3qNdY9h1zgMP2JaQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K4RpLId8; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4315f24a6bbso50631165e9.1
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 01:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730884814; x=1731489614; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nFpPn0d2yFLk+e22ei9wc3wv5WH7ZWHa4AxPfroJzYQ=;
        b=K4RpLId8FOia2ZTw8xNSkQFgJeaDxHVh9Ety0ZAKGtoB895RP4mkoG+fG6bfoE3lpF
         bM4WA8eBh1Zty75wiLDGvUOpIci7UzbbNsKDDs8YkJJt/srd7Ysz1zT84aaGrD/jR/XV
         913KBuYwgDGjnkd2SXuTd+g9n/ZbpEISROpyDtTJsxzFNylcOdWDa5TN99p7Rzf5J2id
         obnnCDPhXaI3gZ3DjOabw3QPNAjvuu++8+jzQVJJ8XAsngf79LoxfjbpfPWOglDVZmCi
         Fcll7pJ44K9MC07ABWIokLr9FYFrrOZO6fI8Etny7pm2awvWDkEY9A5zzXcJlTfXig6A
         mu8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730884814; x=1731489614;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nFpPn0d2yFLk+e22ei9wc3wv5WH7ZWHa4AxPfroJzYQ=;
        b=M597UasjLLWSuu50h+LihlUI9dZUnwq6mzx8mWVNNjUcBtELr08GTLPI599jArIVAO
         BFj1TiIKk+QTYn4r0xqHjderdQ/ybVUBj/pQ149chYPnrAG+/QgnoKKKRh4qDo3P7Wyo
         frkTbSTsVv6cLwh1rAmGLfdzbMyTZAf2rWUbDDMoaH4DwDTgHIxFh4fEUIwAmu1Mk47a
         meidi7HKz+aPqE2ga3kUYY4SkkgrD2Mx0U1d+vSNLeqnvV38wXwdivdwIWS3UD+FFN1Q
         60XL1mLp+AJ3zukdyC9RjEDkFmhWNi1bhVArJSDKki5AaCdUs4QC8svjAnpYc+/OZnrR
         hdZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTQchGbIMcksBsoPNe1Se0nPXwGQyLZQcl/Av1bhFCsO2Dmin26VM/vFc8exYaf4C2L8nWfdK9abdH@vger.kernel.org
X-Gm-Message-State: AOJu0YyUVsDr6KgmigQeZfaGSxNB7GKAhYfl2L2ZtiRw4qyCKnK4I1mt
	bGtRGpECWTHyDDhCxFiWLssHyA9Zt1nNwP5Vgy283EvXxY266MNmTYmeXQyzy98=
X-Google-Smtp-Source: AGHT+IEYpLtbvoq+DLNXwR3nRAmR6avtTq4h+YsWpETFhBlqaeNqXWJjhte4lroosj4mGd9kd6ILbg==
X-Received: by 2002:a05:600c:4fd3:b0:431:60d0:9088 with SMTP id 5b1f17b1804b1-4319ac9acedmr359810715e9.13.1730884813855;
        Wed, 06 Nov 2024 01:20:13 -0800 (PST)
Received: from [127.0.0.1] ([89.101.134.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432aa6da939sm15286495e9.31.2024.11.06.01.20.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2024 01:20:13 -0800 (PST)
Date: Wed, 06 Nov 2024 09:20:12 +0000
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
In-Reply-To: <20241105-succinct-pygmy-dingo-4db79c@houat>
References: <20241104032806.611890-1-victor.liu@nxp.com> <173080602214.231309.12977765173766280536.b4-ty@linaro.org> <20241105-secret-seriema-of-anger-7acfdf@houat> <CD810D31-F9C5-499D-86CF-B94BEF82449A@linaro.org> <20241105-succinct-pygmy-dingo-4db79c@houat>
Message-ID: <7C2A2BDC-07E8-4ED7-B65B-BD7E4E5DC53F@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 5 November 2024 17:39:40 GMT, Maxime Ripard <mripard@kernel=2Eorg> wrote=
:
>On Tue, Nov 05, 2024 at 05:33:21PM +0000, Dmitry Baryshkov wrote:
>> On 5 November 2024 16:13:26 GMT, Maxime Ripard <mripard@kernel=2Eorg> w=
rote:
>> >On Tue, Nov 05, 2024 at 01:28:48PM +0200, Dmitry Baryshkov wrote:
>> >> On Mon, 04 Nov 2024 11:27:53 +0800, Liu Ying wrote:
>> >> > This patch series aims to add ITE IT6263 LVDS to HDMI converter on
>> >> > i=2EMX8MP EVK=2E  Combined with LVDS receiver and HDMI 1=2E4a tran=
smitter,
>> >> > the IT6263 supports LVDS input and HDMI 1=2E4 output by conversion
>> >> > function=2E  IT6263 product link can be found at [1]=2E
>> >> >=20
>> >> > Patch 1 is a preparation patch to allow display mode of an existin=
g
>> >> > panel to pass the added mode validation logic in patch 3=2E
>> >> >=20
>> >> > [=2E=2E=2E]
>> >>=20
>> >> Applied to drm-misc-next, thanks!
>> >>=20
>> >> [04/13] media: uapi: Add MEDIA_BUS_FMT_RGB101010_1X7X5_{SPWG, JEIDA}
>> >>         commit: 5205b63099507a84458075c3ca7e648407e6c8cc
>> >
>> >Where's the immutable branch Laurent asked for?
>>=20
>> The patch set has been picked up after getting an Ack from Sakari,
>> before Laurent's email=2E I am sorry if I rushed it in=2E
>
>I mean, this was less than a day after you've asked that question
>yourself=2E Waiting less than a day for a mail to be answered seems a bit
>short, especially when there's no rush to merge these patches in the
>first place=2E

Point noted=2E I should have been more patient=2E As a lame excuse I could=
 point out that the patch has been up for review / comments for quite a whi=
le, etc, etc, but this is really lame=2E=20



>
>Maxime



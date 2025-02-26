Return-Path: <devicetree+bounces-151746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23081A46DB8
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 22:41:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C3623A2B29
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 21:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F23925E46D;
	Wed, 26 Feb 2025 21:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xHfLVn6Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AEDF25C6E2
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 21:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740606008; cv=none; b=Us6QBTWYbJmurS3+ZjbnZnaccTCht25A0MazHM1SYgH6sk0BvduHfkmTI66OYxp9m7f+HC9ORHfu8i5+p4iHcf8jeDjedXzZMtzQqTFBTQfdU0Cm8NI0Z333aDpKFEq99Riq8HB+OAG7co5ljR6Yg6IF181wbtERQJ8xrj+/TS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740606008; c=relaxed/simple;
	bh=XmQRIyIS2TIQ3FYwT/lQVWnjUvJUJoqOY/Xxdl0Z+/s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WK7+uhcSk3rKFA8rN1uPZyykEv6OMdcgO5jGJIaE+RDn8wdsUJBiNAGcL814aWvdnHQ+jlz/6tA3XRAmLDLLD3YOhSek9ZrNSVIqX2ObpnPvgH/QJSREz2HzketL9OOty4zVz1nBJX4fP46T+R9mbqF81X0Y10souFPNtweFjQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xHfLVn6Y; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-439999d2bbfso388385e9.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 13:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740606005; x=1741210805; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=JgO9NpdCEGs6Z6jBDJsgB6BtDtxW71jiKGyTEKJKCGA=;
        b=xHfLVn6YEjybhQob9sVxvmj+zUWxIQC9VV9hfZKhreVI67cknRboLfzSDUGQD0ZsUK
         +tZBkMvpydBdAIFT4BQGugcalNNQI/8d3KNPZGdWlpdM/tzetx0xkN3TBwAPTQ6bN1YV
         QPGnPpvjMHWbyMT5IMYUVVNPAff6S31KnHTjLRZkIKNvsyTNhjyWdr+kNYH3imzxm09A
         r47Htrxff1Q2FTjGnlp1QqHF0fwSy28+f+TqL5aGdWo35Zic+g8MXCiS24ZODbWIlJvK
         aXpU1SsiJDSyqzj0j1rrjgydAcGSk/ZG+Y6R1cVcNxIbtbyIadaXEZ4HgcOD45y1ihbq
         SojQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740606005; x=1741210805;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JgO9NpdCEGs6Z6jBDJsgB6BtDtxW71jiKGyTEKJKCGA=;
        b=L2lIujzc6guaMi0kTaAV4FB+HHoyfGoTNsrdF2L2jwelJ95Vkv5pOfYSAr1kJwSfoX
         RLI1xjcTUmBWhIS4TTAbSx+tvDuWtWTHf2q2N46mLUSykmZaDsK86UflsyYYRlwC/8iS
         poU1FVjS2JHTysEHc0Etd0SCiSojo5W8J3EjHRtYOW7sSc+3ni7CTFfN2+/gQQ2CayiU
         NMW4kdBjSZzUio3wWfnIjF10psROWfa1sP6C5uMGMuXevO8ZwENG7a0/HA3xLguDxo0U
         Y6j56s9G/ScmElfNenaFGkK80lxPoGzGUv11SIQVSqbTT/2eixJHX7Pm6YXbxUxdUC0K
         mBsg==
X-Forwarded-Encrypted: i=1; AJvYcCWSagpH3Kc9tABcoacyickw4Bm+cM/umlDZwH3RuI3mKdd2U7aDyrNmrPovxR8i35Y+9PEnldaHDlpm@vger.kernel.org
X-Gm-Message-State: AOJu0YwttoVlVwa/QcKSRC4tm81WGESC3tgfWPnWT+8WnOouy7J9pZtU
	7oaj1WPQ6hhpaxobSsbj4/a9BvOAf0+e8ZwvXmQOA7L9ajt2MYR35VrvZ48z0To=
X-Gm-Gg: ASbGncs6GSh3F2lAXIs00+Pj16rngr87O6v+Q8qzQItGV5pd+Ae901hpsb5lne5xQ/M
	2rNaM/NuXUcCibfIp++Al5/lVBCJE9ZodYQJrzEq1RjmJ5uQ6GvZb/JHRVFLZuBEl4Z2zZ3hssp
	dbH2eSLdAfZVn5psaE+fvp+3DcBRK344pNCi5LgnBsU7x+K0XMrsKs7yMlquhEcnNrkk06GG2WH
	1TxgCdV+bxPLKFh8JmjF8Q4V/0ZGCnUYH9YLDbh61bkeZVUcRGROHG6Xqix3uqyBTamxlMB8SmT
	TnL05kpWq95fgtJ1ZWKuNwgo077LS9KanTWyGk/oV3Zm7A==
X-Google-Smtp-Source: AGHT+IH5K8VXJUv24C/joRhmZsMKIJdarB1HjHPAB90m4NhFdVMZeL3+c4slkqthb1e8MrMy4FkHHw==
X-Received: by 2002:a5d:6d8e:0:b0:390:e150:96b8 with SMTP id ffacd0b85a97d-390e1509a57mr323111f8f.6.1740606004983;
        Wed, 26 Feb 2025 13:40:04 -0800 (PST)
Received: from [192.168.1.20] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47960b6sm67703f8f.17.2025.02.26.13.40.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 13:40:04 -0800 (PST)
Message-ID: <ac6a461b-44f3-414e-b5a2-2d5a0a87cdf8@linaro.org>
Date: Wed, 26 Feb 2025 22:40:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] media: i2c: Add driver for Sony IMX728
To: Sebastian LaVine <slavine@d3embedded.com>, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Cc: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>,
 Abel Vesa <abel.vesa@linaro.org>, Achath Vaishnav <vaishnav.a@ti.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Biju Das <biju.das.jz@bp.renesas.com>,
 Bjorn Andersson <quic_bjorande@quicinc.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Conor Dooley
 <conor+dt@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>,
 Fabio Estevam <festevam@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Javier Carrasco <javier.carrasco@wolfvision.net>, Jianzhong Xu <xuj@ti.com>,
 Julien Massot <julien.massot@collabora.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Kory Maincent <kory.maincent@bootlin.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Mikhail Rudenko <mike.rudenko@gmail.com>, Nishanth Menon <nm@ti.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Stuart Burtner <sburtner@d3embedded.com>, Tero Kristo <kristo@kernel.org>,
 Thakkar Devarsh <devarsht@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Umang Jain <umang.jain@ideasonboard.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Will Deacon <will@kernel.org>,
 Zhi Mao <zhi.mao@mediatek.com>
References: <20250212195656.69528-1-slavine@d3embedded.com>
 <20250212195656.69528-3-slavine@d3embedded.com>
 <416d75fd-40d0-45d7-9590-0322abb480ca@linaro.org>
 <D82NHO05EBSQ.3AZF1VYBU17V5@d3embedded.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <D82NHO05EBSQ.3AZF1VYBU17V5@d3embedded.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/02/2025 21:13, Sebastian LaVine wrote:
>> ...
>>
>>> +
>>> +static int imx728_set_stream(struct v4l2_subdev *sd, int enable)
>>> +{
>>> +       struct imx728 *imx728 = to_imx728(sd);
>>> +       int ret;
>>> +
>>> +       mutex_lock(&imx728->lock);
>>
>> Just use guard. That's actually perfect candidate.
>>
> 
> Okay -- I'll include this change in v4. I'm not so familiar with using
> this interface, so please let me know if this is incorrect:
> 


Yes, looks fine.

Best regards,
Krzysztof


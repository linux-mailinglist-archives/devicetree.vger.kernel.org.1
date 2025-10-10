Return-Path: <devicetree+bounces-225358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1A6BCCD10
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 14:02:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1695B4F250F
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 12:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40390289E36;
	Fri, 10 Oct 2025 12:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IHIaMYOQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151E3220698
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760097722; cv=none; b=ddRHQJCT+UcTE1n1Z5Gw1HrJTn/37YdcGZNO4TpkC/U9OjbxjjBNM8ce34gVltbS6YD/JX5R30SjYNzTa8rkwNplJMXL3cM/SaG4k209Q7nyC4l4S6zmOvaHuPFCvhx//6sVGuszcFPN/6tPIDy2egQPRj/TIcwqk8aUU7phTOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760097722; c=relaxed/simple;
	bh=kPRMI+tX+SAktSw62vIiHfaL8Bu0DpE6vapi2eb3NmI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JWmU+haKzH1sedKHbq2cbUUNhdzekENiNdOKWhOgc008ruTa4eU8qAURPOyXUuk5qDyfEq8GfJ0YBU+lYyi+1tB6mNRHmEnvAX9R79iu64Xtim8XrlIOQmd3DrkftalWaXpVttrjtvV9I5fNYAm986JEGOT3eStc+YYtG5z6mwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IHIaMYOQ; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b3d50882cc2so373692466b.2
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 05:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760097717; x=1760702517; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s90KB/NTrY2uO7MTlr/2on1AH8hzlT2J0wqk/Ex7Qg0=;
        b=IHIaMYOQnTcz0uhyYwn5zMFmwYnGKbiFAkMusqnePKqLNuwhGft7skvVjxu1BvBISv
         cUEUNOhfjMBX4P7MC4fkutJkvPtXx/N0t2aB+SdJXld2v/962q4/6g+GyRgUSTIwawqk
         /+llb4GiSS3Dqf5QgZPm453wGL9imy48skja9desvEOosu/LWhEzk5GD1ECyZs3SjTvE
         6qtnL3jhOwrkP1GlCJOazVR09MV/aRyqNYgprzJfwuH7Vp/2UcG/JvYIuAbpEBYDdyS5
         EFJDZOz8wc3W4IqPWxwvI4l6SYQDblahHfh3k4biDSwFbdBBETRuz5CS11jcLXEA4s90
         tNNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760097717; x=1760702517;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s90KB/NTrY2uO7MTlr/2on1AH8hzlT2J0wqk/Ex7Qg0=;
        b=g7doKers7J0T3GcLVE6nJxvnIDk6Tt5TEDzXzyIjSX3oE0K5giXvhUzH+x5ntkOjb7
         1z5//85ipqC88fL6mk/TlPgg3avpKyh35gFGtuK+21mN9yog2PqYVm1nJf+HYK63GsfW
         QNYcEw3WZlI6WxKSnTijdhG+yQF2G3+i7mAVpawv1P6jJV+2bBrNIyZNjkVLtNKFukey
         JK+4NpE1eBNkB3R5FvwgIkY+sMto7Hdb0swLyzLkVjYduLCn74pyQPb5CHBnsWRJIr30
         M8r8MQ6YGm/KG7lyJK/++QIVseEVaTGOw1bimwyktf5PnpztPWm5yFMjs3dDB3od1u06
         /joQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsITkf2PgHF3xyDGhQk7aV/UUkiMvsfC2t+HbjUEAeach4+n68CfCw4bB1MkDoY/imjK/j2Yb/FatE@vger.kernel.org
X-Gm-Message-State: AOJu0YzLhhwlq7xRAhNfzrjQbDxRjljdxNnX7/J4c54HeWoRu+V0HJ5D
	Z9JmYHeF2Doxm1LZQLf3o1bWwiM/Bp7frxdvQNeTrwzHCfu/jHkh8VubH2hE5YceT8o=
X-Gm-Gg: ASbGncudutptmA+SpNfM7ikxTGHi/M5oyKxoe1fE7McHOR72yDCvtpBZa7r+1+eNN4U
	whIwGNMniJ/UL5iUSmKwXR87+eEiQaoizPIZsLEnd1zns4RTeaK3X9gj4/5ZeFERDQZ9FLMMadV
	rQGbht84A86wfr1ACK+q6iB3/uWnT+Iqyxtf+2bXCjXBWZI71qYB9G3mcdA4vV9OykCQ0t2+6ra
	TVaQJTzUwgY1Op8roLZL/NUHIemwAORhNsdnzd7tCbpLbBA/9ezWw0BX3R3sLEeTBpIh8LLRQN4
	MeKHLoqFp96MPcxF5nR3sJydxHHYv66pjyGIxkeRR9No/XUAkADsADwifvKGOF7paSXF7LD1Ucu
	ZR/YKJC9/zp/uDs6+wkRjnEM/wHDOGyDp5QiUA5QGlcVBVQwuHt6G7fy60aU/P4gxUVdIiUS1Eh
	QMBOk/wq1QlKA=
X-Google-Smtp-Source: AGHT+IHFEbOgc0ODAF0VuKf0ziv5aS2t3f+mpFW0dy7lOT4Bfjw96VQjQByGIVRZZDYAlQhb3Y/lvg==
X-Received: by 2002:a17:907:7f0b:b0:b3f:f207:b755 with SMTP id a640c23a62f3a-b50aa48d873mr1107494166b.6.1760097717302;
        Fri, 10 Oct 2025 05:01:57 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d5cada4fsm229334066b.6.2025.10.10.05.01.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 05:01:56 -0700 (PDT)
Message-ID: <f71052d2-8969-436d-9109-d5abe70b81a4@linaro.org>
Date: Fri, 10 Oct 2025 13:01:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 06/17] media: rockchip: add driver for the rockchip
 mipi csi-2 receiver
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240220-rk3568-vicap-v11-0-af0eada54e5d@collabora.com>
 <20240220-rk3568-vicap-v11-6-af0eada54e5d@collabora.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20240220-rk3568-vicap-v11-6-af0eada54e5d@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/09/2025 16:38, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The Rockchip RK3568 MIPI CSI-2 Receiver is a CSI-2 bridge with one
> input port and one output port. It receives the data with the help
> of an external MIPI PHY (C-PHY or D-PHY) and passes it to the
> Rockchip RK3568 Video Capture (VICAP) block.
> 
> Add a V4L2 subdevice driver for this unit.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
I've been stealing ideas from this patch series for some time now.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


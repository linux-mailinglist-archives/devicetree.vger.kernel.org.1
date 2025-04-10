Return-Path: <devicetree+bounces-165413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF612A8435F
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 14:40:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21C7E1B877A6
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 12:37:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B61542857C9;
	Thu, 10 Apr 2025 12:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NOV4rMa8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA6E2853E0
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 12:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744288626; cv=none; b=c4WMaAT/TymgDbMHVXzA5p5alYZTvfwDmJ2MGXlVy5tZ+rIDCtkcwTd7TownUle+uv2iYgmmGjd4fe9gnk98trMbctKs5L19b9wRpUD/Y/C6sBiruFSJABaJiCWhAoPD8KFZfIm4CbTG4jN/wyPyLtvJf5zZ6Cqy/a2uVeASOGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744288626; c=relaxed/simple;
	bh=ABz4cDqiNS3kQXrpTOAbpSPw5QYVtGShy0gfjNUg76g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f4Azi34wMe7djPxAKbVIfnHszqxvtwTnsucLDwyaGr/QopnAIU028+eeA5DqBXXH3JCvEoLERcdx4yQnBRtbF7zQ9C/MZkBH3ltBBSlODSPFKVUJxWlP12eOj2XdQUqwhKqYN6EPri+C9nF2zGvpqHaNKjbxL9CSLCIw/NYcVXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NOV4rMa8; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so8787675e9.2
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 05:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744288623; x=1744893423; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9VoKRS+yOUVccmHWqHCUYdtGt2QnJX1Av3s20gfz76g=;
        b=NOV4rMa8QMEc1TVhjAIqYIGZmJEfEaMV0wWzzFFqJUR7uQHKKQPAmse7sK/wo4ukZf
         zedLA1q0E+Lbx94iT6YqFRz6Jnf9BeAb6jxI+nS/ixwcrhNdLWLT+W55WtI/NEKuwzQe
         R3V66jMYVLNQZAM7UPJxpMkNC1KIswxFKbQ813d10tN3xrW5narf7Dzh9AejOS8jLyqP
         NB7KAvFMG9TtUvYkkBALHKB6HzuFS9uiETs7feTiJtuFykGcVbiXfs4NDdO9j6CUohBi
         rPIBWbXOV69V71DmyWEE2rvqbCsBnW2JDSklReyPmD1x2P3wQ8a3GA4Mw8ZNzwY6TwRL
         YaOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744288623; x=1744893423;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9VoKRS+yOUVccmHWqHCUYdtGt2QnJX1Av3s20gfz76g=;
        b=pkNkia4BUuf5fZ4iydLKx+tbpCxiBkdh6lKY7d7rwxlZgd6zdAzmcLL5Oh9N0JPsWe
         ThYo8yo/6zzC5lzbIgu2u6fXt96M8tRt7n6+qPPK2ja2WMOIg6Z126Moc8Q9LO3URMbl
         T1icvveFUX0CJ0sivGQAOyyb/eRx26UWHX36xKDGruno6/ynQX2HcyWtV5n0wGWQGbnA
         +7orS7R20nItgiLnjFhBFcTkOqjG1fofREELC53JDBKr29mYqlp/D/ml3H80wWy/NyDh
         eEjPwXQt4rwfyVPxOL2feyoAe3aOra30jwrl05YzB922H4Thn9qVblqrjkFyV0levRoT
         IWmw==
X-Gm-Message-State: AOJu0YyHFrO9pnF1nn7muiMvBU59tJ8GOA6j8NYj4W9qW07dP+8ocNTP
	5lfAYgVtX7ROwK5cnPzLgPOsLATU6Kjvmtr2DNCOx3spxjTN0g8GQbF1l3ooncU=
X-Gm-Gg: ASbGncvV50/BVjC/xCNHqZCGnyDw/s3ldgnTDYeI2HhQf2MQJHl3e1JflnD9NZLpRoq
	ppeToVaVUdDF263MuU1S/BEBjS9DvzzwCp0cNXllmbm8FLPLUXBW8ymHcID1eAAZ6nZBfqoixol
	6dsna8lx1rWOj7uMq1H4At7Uii65Zysdi6hAcCVt5xwHaW8Nzu7nRBsmzASDUpNL/HL7msZHwwx
	jNdbUCsbFlELUuDVXVtzqjU2PvxzLyk8lEx7ASYoMjRckz0hPZLP5yJ9owc7beFRDYF2YV6E7EI
	Gk5EuH37ctWUbBIcvTiFiKBKhAU6SIaYaeT1y2aynIkuIWGAMKC5E9VcHviV68k/lB15c1VEjMu
	G2WxyoiNuZKXHRA==
X-Google-Smtp-Source: AGHT+IGMoIZKu18tKxGlE0nCM035PBeR69RdqmMHuq8h1Eu58CnOlQWvz4UQddkUAElDY1GsfzU8ew==
X-Received: by 2002:a05:600c:348a:b0:43c:fdbe:4398 with SMTP id 5b1f17b1804b1-43f2fdceccfmr22721935e9.6.1744288622955;
        Thu, 10 Apr 2025 05:37:02 -0700 (PDT)
Received: from [192.168.69.238] (88-187-86-199.subs.proxad.net. [88.187.86.199])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f207cb88asm53015095e9.37.2025.04.10.05.37.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 05:37:02 -0700 (PDT)
Message-ID: <20de7ce7-1cfc-40bb-9457-84e462cf4483@linaro.org>
Date: Thu, 10 Apr 2025 14:37:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/19] arm64: dts: morello: Fix-up cache nodes
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, "Rafael J. Wysocki"
 <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com,
 Conor Dooley <conor@kernel.org>, Nicolas Ferre
 <nicolas.ferre@microchip.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-mips@vger.kernel.org,
 imx@lists.linux.dev, linux-rockchip@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-renesas-soc@vger.kernel.org
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-3-076be7171a85@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Philippe_Mathieu-Daud=C3=A9?= <philmd@linaro.org>
In-Reply-To: <20250403-dt-cpu-schema-v1-3-076be7171a85@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 4/4/25 04:59, Rob Herring (Arm) wrote:
> There's no need include the CPU number in the L2 cache node names as
> the names are local to the CPU nodes. The documented node name is
> also just "l2-cache".
> 
> The L3 cache is not part of cpu@0/l2-cache as it is shared among all
> cores. Move it to /cpus node which is the typical place for shared
> caches.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>   arch/arm64/boot/dts/arm/morello.dtsi | 22 +++++++++++-----------
>   1 file changed, 11 insertions(+), 11 deletions(-)

Reviewed-by: Philippe Mathieu-Daudé <philmd@linaro.org>



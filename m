Return-Path: <devicetree+bounces-164137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8233A7F477
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 07:57:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBCA1177F3D
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 05:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4483925F7A0;
	Tue,  8 Apr 2025 05:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z5rDNOzu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680FA213E67
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 05:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744091843; cv=none; b=uAbV7GY2fm4SBzaRYnzEf7Ix+D7Xpxb662c6Vc+SHqSXFhq6WyW4FdKTJr7osW3LVOI/tdK4z8mYBDdSkbq5H2K4voEEv732nSSjegCg2GEIxeti+WGN86A3MjzZP3yP/Sovt7gWFDMiz8L/3mPcydilfBovYInqgxlWHyAEEoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744091843; c=relaxed/simple;
	bh=8doy6BPiTFR/YKQpo3lR/yUwQX15c/frOMlav3ozNUU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DdqmsNihdLMGg/q9hdTXdKmWEMH6DD3lYSPmvRBU+rPPnjFB5HDNYAcALW4noXyq0ljNqC+qpr7AcZxOVy+N7EGWzPwKrDjB2kAVGK/VWsGj545XpuU2gC+mXiA0bJ3N+mpV509jdQz5Hy0cRzHQMZiruj/gtWlJkOBCsdoaPws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z5rDNOzu; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-301c4850194so4039742a91.2
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 22:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744091841; x=1744696641; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ntWAqYw/FbTf3Hq91IVHWRfD1c0otTEdS+CQ7J427hE=;
        b=Z5rDNOzuBQvyuDNrKy2P269s0ejKtK6vbzQo/y23vsVY9AKPkpowPYhA5tFknWCqAY
         B7sIQZbDXW05/zjt4SfDYqDz1DliHNyGLxRkqzUYO2EXT2DHol2D4VRapZR1bP2cTDne
         p2MydcPR29d1bIxXN1VKP+QVnfX6iuFhiwcQRDU9HGImPXbSMJPU8b/Ps8V7U7IafxCf
         B2DsQWdMj54gu7EKUVF+FxdAwOGYzsjPEVNVfQtiMf9cuaVNeQhEdEiBEd5u+9/IIVDu
         caPXVsvTU9x5gFQ/tRuIoQpLZIeKmG9SFRvxS4U53laRJmLiGpq3lMNg6oVJ+u7Xyb3k
         T5Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744091841; x=1744696641;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ntWAqYw/FbTf3Hq91IVHWRfD1c0otTEdS+CQ7J427hE=;
        b=mLES4CB4ssFbY/G3qCNbRrCgCFoS4vp3D0KNm5+l/Uo6dBaFXvkU16KMZIMNP/ny0r
         qMsvc/6ORM4Y//F+kzuKRcaDsBvD51+rHMxdmCWwmu6sHpyktTxhLcngheSs9iWslA5H
         blBabDMD9lWyq0wQ6I4i0DX3HZ9y9DRDGejtLDKXj9mv6/0S8qrSWV8yr6ab99mP4GkX
         uzwImMk3hdfgVk4sK76DrTsa8s+zF+AoTkzijY1ktaD3+M7w/pQqXDFf6Jewf87h2Wo5
         NaNfdWGXCODnbO5hSwVfaqFrCcoeFJriD2+LwAtqcxP2ueuh3lM3My623X0APJpP2Cu6
         0jQg==
X-Forwarded-Encrypted: i=1; AJvYcCVmANozYTjSXfHo5Rx60aivdfoa/GPxel/G67P/IfTa0KxXGka/QLe7KGiK3iMG8WA7w76+Wb2EnEAP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4KzNnCVCA2t3E2AkwJicDbXDfewiaqTLYhaa2yV28XDp6f6My
	Ntgcd65sOZnXplH6hfaK/sqsmaJ74BRBLhBf5bQEGXQX/6KkF9JxFL6b+IeeOIE=
X-Gm-Gg: ASbGnctvp+4hlAcUlhoaBwTPf7bn1bhAge+FiFVMmfcomiSaR4u85q7mrAcybWX8K0z
	LSdRSwCeT/zikBdjC6Bi4q6yq6OMTS1qcH9wjk5md8eN4LrpUOMDXaZ6T0+/2Q0Z+yiyB0bukzc
	gR5jXCP/6tRM0AF5o1h2QN35tzKO7qYjYBlvmrjPSefvFCxySLRAto+HwCcgLwpOzP63jwBNuV9
	iUgt9dPWEcCAm/xLX3s54sAzKvHvNOqsMelb+P1VKTEp6pXwrTmGeBIe14qq4BVLOmp6EypuSm3
	xBVI3Er88eqpKjNmQhFjtdaTJnTvRMU/QrCDqJIGfUEaHw==
X-Google-Smtp-Source: AGHT+IHa7mNtQoh2kE0P3zD2ru6aZMt+A87LdNqpNKujZXMzxAW0s8D/vDJRFgVZKF/JyFi3WYplYw==
X-Received: by 2002:a17:90b:2d08:b0:2ee:9b09:7d3d with SMTP id 98e67ed59e1d1-306a4894cd0mr18110280a91.19.1744091840732;
        Mon, 07 Apr 2025 22:57:20 -0700 (PDT)
Received: from localhost ([122.172.83.32])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30588a3140asm10075622a91.29.2025.04.07.22.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 22:57:20 -0700 (PDT)
Date: Tue, 8 Apr 2025 11:27:18 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com,
	Conor Dooley <conor@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-mips@vger.kernel.org, imx@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 00/19] Arm cpu schema clean-ups
Message-ID: <20250408055718.4azlqljvo4qxhnu5@vireshk-i7>
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>

On 03-04-25, 21:59, Rob Herring (Arm) wrote:
>  .../bindings/cpufreq/cpufreq-mediatek.txt          | 250 ---------------------
>  Documentation/devicetree/bindings/opp/opp-v1.yaml  |  18 +-

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh


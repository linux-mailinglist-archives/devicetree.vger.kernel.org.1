Return-Path: <devicetree+bounces-206095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDFAB2B87A
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 07:07:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE800561F9D
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:07:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2151227B334;
	Tue, 19 Aug 2025 05:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="SoXSkFxL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43359254AF5
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755580043; cv=none; b=m83lKHLrWbyF46xXocjnH4wR/Xbud3N8hX1mmiOHGDEG8LXI63sDkuKTDJfzYLZumqnNGRHxek1TnbSMLJ7mOp30OzszWQPBu8YwXcKm4dm1r8YOecP4RrjwDxjC7gBNX4puB3TMI1b+2Gg/EzXv1LdI06oR/pYVzha+widTAps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755580043; c=relaxed/simple;
	bh=ltXNHRhOhUUl4xR8T4+Ojndq1rFeuYUH2BMxeu0RtmM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cZaZpD4H+BptctMe0o0CgeHm1t67f2jqp3Yg6NzzGLYmKA/kETl/u0UMpG8+qihE/n4srMbkIfo3dRiXi0RtSKa760ebp019C/Wi0/gA8bVos0Ue+thwLCVkOs31hHx1b2YTJFjYJmeWqvXJZ66zaaqbi2p8eggi+qGV1iqFIe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=SoXSkFxL; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3bb30c72433so1543089f8f.3
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 22:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755580039; x=1756184839; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fga+lbodUmPAZazOf43yy1bTgzdU2LByeFqojuOQ83w=;
        b=SoXSkFxLAXwWKCM+ck4BQyG3Kz10Cs5HOEmcjcltNTbDIwHOC2NcX6ZR2ICOcmUNST
         7xGqEImExFpdAq/UFWqdegH0yflXjYvP+BgczT6shJ+am5rgG2vEtDimk9T+y46sqCWA
         tQwnxvxw63Mz37Pi2WtjyNSLe0Glwo6y1SsQtbA7Nns9qM9RfzYEy/Ghsca28B3oeTxi
         /CCHU6aHXS6A11DwC1s47+bAYeQKTTJ3f4tffSwJnt0ADdABgAum5xOjTSqo9pLf0G8l
         /DfrLBj/wSiVcgHPHfX2ZVnlwGdGeOp3mHl+cT4L28njTrhX95MSNL+G6N057lcG17yT
         MOGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755580039; x=1756184839;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fga+lbodUmPAZazOf43yy1bTgzdU2LByeFqojuOQ83w=;
        b=VCFYLf6qkvO9QbbtoB08NnUg6RrS0cfeaJyoIXfEKfrOUGrRUrGVYlxKniVUoQ+QdZ
         /2YodzLhgdTLu9k+HokhhxKKDK0GAhljuUl/QUIp1KIfP+bBJqyQS44g3hcdFdHea/kU
         EoOU+Tfokx4EPtclxMfi/gsXoybSDAEPXk9u8uBHg/00g7/OdwPz5qASIHaWqZY54Hbd
         GejfNbJejHVRf+GScjXL487NwMNkdvl/PwvedJb241qOF5sjUvvPcRDGLPs/1iIUx/BH
         diNP76ba7Be8HeWFMnjhFmF1FiI5SHkv0UhPKdghfi7xw5t9AY1vrk7rJnddXJ+ZdAoR
         yGdg==
X-Forwarded-Encrypted: i=1; AJvYcCVrwSFkmtxsfiFkM6euxWPWGzCHn3m3Si6IPVbSXvUgNKPi9m82ZOUlc5kPruyK/OtBDit0+oYM7mvK@vger.kernel.org
X-Gm-Message-State: AOJu0YwSvShX4gNR86smbvhoYwLditKk11DJEHMNAqoGOibkie/w2DY0
	aSeMTVDa4LtVjuSkJgBhdv7nZ362n+1dJudX4jSCBkpTL6Pxl+8mDzICj70Fh1J2XbI=
X-Gm-Gg: ASbGncsSLFM0ARQySP1eQbeegCVxmOI2t3VJeL+a9DJ71/3l+Z9S5p5wqt7VarpBbUH
	Hdk6O47EA3Ln4IQqJtjQYLc15LcgEQw1EEt0x0wBv+MPuS9RrTiCBOT7IVQXYaz5JFp+LKnN8FR
	vdNe/xeYjw3e7q5tlyux9+7mxOuoAR0GKwelR1BBylMvPb2Qn01PmGEh6BMBAISeUNeXgY5wStW
	fs68W4OoU24M2Oyi2HsCJjK21ZcMp9gPZYgI7Y2RO7gv6TzfMypvbxqoLQQcA8goghM4RXEsv6W
	QeYpSDGSpnWm6ebo5PkL/kM6HT0FIJyQbwfmfTWsdN3Tgwq7gexB3RykMJxE7LyIiTinJVZk4cq
	Td+QJJrTsna351g15X1FyaQZVmRz/692HmR0Yeocg7pjoWPhDk1EKGH4pl51jQYFQx8XnhDPBtN
	ig8A==
X-Google-Smtp-Source: AGHT+IEGAIFSV01YojFxZG6ti+gZSOdnTisUwlACnGc8HPzYTSLd/Yrx6ey+bzDVw52KF6DYn9VA+A==
X-Received: by 2002:a05:6000:2485:b0:3aa:34f4:d437 with SMTP id ffacd0b85a97d-3c0ecc31e8fmr784959f8f.37.1755580039233;
        Mon, 18 Aug 2025 22:07:19 -0700 (PDT)
Received: from ?IPV6:2a02:2f04:620a:8b00:4343:2ee6:dba1:7917? ([2a02:2f04:620a:8b00:4343:2ee6:dba1:7917])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c074879fe5sm2018512f8f.2.2025.08.18.22.07.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 22:07:18 -0700 (PDT)
Message-ID: <d00ce701-2ddd-485e-8bfd-12cddec62fef@tuxon.dev>
Date: Tue, 19 Aug 2025 08:07:16 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/6] soc: renesas: rz-sysc: Add syscon/regmap support
To: John Madieu <john.madieu.xa@bp.renesas.com>, geert+renesas@glider.be,
 magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org,
 rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com,
 lukasz.luba@arm.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, catalin.marinas@arm.com,
 will@kernel.org
Cc: john.madieu@gmail.com, linux-renesas-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, biju.das.jz@bp.renesas.com,
 linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250818162859.9661-1-john.madieu.xa@bp.renesas.com>
 <20250818162859.9661-2-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20250818162859.9661-2-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 8/18/25 19:28, John Madieu wrote:
> The RZ/G3E system controller has various registers that control or report
> some properties specific to individual IPs. The regmap is registered as a
> syscon device to allow these IP drivers to access the registers through the
> regmap API.
> 
> As other RZ SoCs might have custom read/write callbacks or max-offsets,
> register a custom regmap configuration.
> 
> Signed-off-by: John Madieu<john.madieu.xa@bp.renesas.com>
> [claudiu.beznea:
>   - do not check the match->data validity in rz_sysc_probe() as it is
>     always valid
>   - dinamically allocate regmap_cfg]
> Signed-off-by: Claudiu Beznea<claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Tested-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com> # on RZ/G3S



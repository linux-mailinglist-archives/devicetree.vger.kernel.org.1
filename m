Return-Path: <devicetree+bounces-10094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4F27CF949
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:47:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8F20EB20F10
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:47:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F5A51947E;
	Thu, 19 Oct 2023 12:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="i0gfMSmO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D112A19467
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 12:46:55 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69D8D12A
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 05:46:53 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4083dbc43cfso13030955e9.3
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 05:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1697719612; x=1698324412; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=naO0ArV+Rq86QocR3tMDAsTcPVQkObJXSWE2h8O75mE=;
        b=i0gfMSmOLtGEomRLM6TRkNF7O4hnGhPgdpxg8mr8lf1Rb4W7c194DfjgVc4dAkwkJL
         UthH1Y3drGoabhdQXav7d/jNPTYlnYqqw/dLzsQmrM9nln4NHhKpDThVdD3i7bkWjDwO
         WVWSekYaSASlunWkrTyRKCMejKL0H7/9HpseIlZAg/4UBAz5jtVM2mN8ZC0S8YoJxadJ
         XUMlCAR0sJn1vFKmJpXlhLegZDhr2xVl/03R3g942oSEPapwPAdNIGYtCmiy1Mz7cgm+
         7nwDh1KKb2Xc6bydTgtydlcmBA0yz0V4C0PKT87DJVvY3Pctc2JCudnUHk+wIgnxOgxy
         eW4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697719612; x=1698324412;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=naO0ArV+Rq86QocR3tMDAsTcPVQkObJXSWE2h8O75mE=;
        b=Pr00r2yBXosLsQQos77i1Z6YDMXbazAzr7v/9ALLl0QhtdaXe+bR7GERtaaZzX8fYB
         OW5BxKlXnmhEYdCXrRXxRsYvX7OmFG6EGEVswX63ESJQT1p7E/ruwQmixgEDyrxW97AJ
         o+4IJbinjfgEXlnd1uuiIiYirIK+0EeqPH3eg0J1CsC3wQhY35P75+BRtw/w2WIY9opv
         BImMPYcPhaTJhmLgSQS9xFPoh6HuMvv3gaLOGHZlN/Mvyps7ObUSwWg8dvpNocsJAd5D
         YYYGSH9QG1k1IS7tBEE7oE4fiAUWZ3//sZnDBha1jU6OPQyG41oEWwsbI0Sc7mEMQYb0
         13jA==
X-Gm-Message-State: AOJu0YxmiooMR6wWaHMuvpnkj8INhK4MZkT300wSB859cA18LDkOzPQG
	UStpJu+z1CcMXfg9TcwVRkrb8Q==
X-Google-Smtp-Source: AGHT+IEww6Zn2OArX7FoTzmoLU1HGPD7xbs5yK+OIFpoRrGazQCxszROKhxnLYgi/b2b2bUJfLhwtA==
X-Received: by 2002:a05:600c:4591:b0:406:8465:d299 with SMTP id r17-20020a05600c459100b004068465d299mr1797890wmo.7.1697719611910;
        Thu, 19 Oct 2023 05:46:51 -0700 (PDT)
Received: from [10.1.5.76] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id r4-20020a05600c35c400b0040531f5c51asm4476866wmq.5.2023.10.19.05.46.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 05:46:51 -0700 (PDT)
Message-ID: <68bb1c4b-da47-44ec-88b7-9ec18d607f7a@baylibre.com>
Date: Thu, 19 Oct 2023 14:46:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] dt-bindings: arm64: dts: mediatek: Add
 ologic,pumpkin-i350 board
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-mediatek@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Fabien Parent <fabien.parent@linaro.org>,
 Julien Stephan <jstephan@baylibre.com>,
 Suhrid Subramaniam <suhrid.subramaniam@mediatek.com>,
 Ted Larson <ted@ologicinc.com>
References: <20231016215123.30343-1-laurent.pinchart@ideasonboard.com>
 <20231016215123.30343-3-laurent.pinchart@ideasonboard.com>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20231016215123.30343-3-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

On 16/10/2023 23:51, Laurent Pinchart wrote:
> Add a compatible string for the Pumpkin i350 board, an MT8365-based
> board developed by OLogic.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>   Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> index ae12b1cab9fb..dc34e62c6756 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -247,6 +247,7 @@ properties:
>         - items:
>             - enum:
>                 - mediatek,mt8365-evk
> +              - ologic,pumpkin-i350
>             - const: mediatek,mt8365
>         - items:
>             - enum:

-- 
Regards,
Alexandre


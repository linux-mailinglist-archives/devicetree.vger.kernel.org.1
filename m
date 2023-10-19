Return-Path: <devicetree+bounces-10093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8447CF948
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:46:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6DA6528200D
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:46:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D923208DF;
	Thu, 19 Oct 2023 12:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YAP+MxVz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FDE320313
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 12:46:46 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBBEEF7
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 05:46:44 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4064876e8b8so79000395e9.0
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 05:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1697719603; x=1698324403; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CTgl6xngO65iKhymXT7HIetO51+xtsYJiS6ML4a8e/8=;
        b=YAP+MxVz+9DS0/pFoetWUvmW9JBA5Atc1vGY65WdmiCNDNrIbb265I5wMhcJZr3nzS
         RJamcFhLfua2Z9sdLqBof+sALi6o5CciE90ujvHRpD9FzNZ9CiaPSF4Llssr7ThBAFae
         17ss8Ee6/9/QWRkp0hxP3PfmiXTjJ8YKg4jyVmo1IRmKE2n/4Mjf8YZazkHQY5a0Cr0X
         amUHEaJdNRZtSl2vwKVdiLbG6s7JxC8sMTKR4WlIgd2CG4AeDQvoLip2Htj6hz0PrxuL
         3FVXmhoXjfsBvMRa9IxI35buEJQ4inafxn/sqoH9Uzpnh6imte2aOERlZLydqnL273ig
         r8jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697719603; x=1698324403;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CTgl6xngO65iKhymXT7HIetO51+xtsYJiS6ML4a8e/8=;
        b=DY6t1dWIDvkV2jjn2acD57fJKNHJ+asDpYDxAwl+ws+0lv0VHaKlXc8qoHmuS9VEpV
         IZGf6ZlBKTgrAQZwdt78NgTXWltMyxfTEHam77gaj4w6cc6vpqOD9DhiJeUecNL68VDY
         zushkJeOfD4PjjAGZh88eTeMNgg+aVVR3uudHGPlFLn94XXq998IUoCw364Oa+3SvMza
         GgLSFrIF4KeKMZ3CqIhjH+jFpCfRbF1oDzNCXPFXY6N1TIkohEgW84lIL3OtsJeLhgOK
         4rmwiDhsa+9vIB4q8kh2U7y+TQZep0c+C9CNBsQaC5D0BFZnUuvwU5F8ajGVNOzPHYvT
         XFdg==
X-Gm-Message-State: AOJu0Yxb0i9PGzyiJiQXZ9TWA2QS85/YX72YdI8cSUC0dUIMWutsWTpx
	j9+2MUscCGdbNRTiB79VgryuxA==
X-Google-Smtp-Source: AGHT+IG7h8a4Xd5yDZnL4mNiude1M2sXIEnG8lQMAVhxRSv7BWqLsyYopBV+Dkbb9yKTdr/dF5LqOw==
X-Received: by 2002:a05:600c:46d2:b0:408:4120:bab7 with SMTP id q18-20020a05600c46d200b004084120bab7mr1794262wmo.15.1697719603324;
        Thu, 19 Oct 2023 05:46:43 -0700 (PDT)
Received: from [10.1.5.76] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id r4-20020a05600c35c400b0040531f5c51asm4476866wmq.5.2023.10.19.05.46.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 05:46:43 -0700 (PDT)
Message-ID: <5b4e2ed9-c312-4df8-8d5f-65fb4a619b2f@baylibre.com>
Date: Thu, 19 Oct 2023 14:46:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] dt-bindings: vendor-prefixes: Add prefix for
 OLogic, Inc.
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
 <20231016215123.30343-2-laurent.pinchart@ideasonboard.com>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20231016215123.30343-2-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

On 16/10/2023 23:51, Laurent Pinchart wrote:
> Add a DT vendor prefix for OLogic, Inc. OLogic is a hardware and system
> design company that manufactures, among other things, development boards
> with MediaTek SoCs.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>   Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 573578db9509..247b724bc01f 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -981,6 +981,8 @@ patternProperties:
>       description: Oki Electric Industry Co., Ltd.
>     "^olimex,.*":
>       description: OLIMEX Ltd.
> +  "^ologic,.*":
> +    description: OLogic, Inc.
>     "^olpc,.*":
>       description: One Laptop Per Child
>     "^oneplus,.*":

-- 
Regards,
Alexandre


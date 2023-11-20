Return-Path: <devicetree+bounces-16999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBC87F0DB2
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 09:40:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BABF61C208DC
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 08:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC4A94A2D;
	Mon, 20 Nov 2023 08:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mrvFOrFU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6F3A83
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 00:40:25 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4084de32db5so16526495e9.0
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 00:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700469624; x=1701074424; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ITTlts2FMAHsu8yiJvG2iiuD8q4hyDHNB8Yd0fE8j4A=;
        b=mrvFOrFUs0r6qnHu8RWMIijDjaM9vzJO/swlWQCmNz9GtsN6U22eG6JNzIcFFsPfS6
         6Era4BdBZSWdOWS7Zl8G1hgqQ0pBhLcIqkP3W7SjZRD9NJlgJsIuRvCItojNg5P8U1qC
         /BV0K2ZWk+BUWgc17ACJBTqYjVK9Rvpiisv9w4ENud20rF9Sax3/qt7FRTzywEzU9Jfn
         bUQpF8gDel0nZPO2B+oszQTCOeWZ/RHTLP8j6Dg6et63Ur8TZU0P7MOA6DHtM6yLOXPd
         fVNpkYfupPRjnGV/ZALzftyp+r2RScwYPSJKPwJwZe40yK69E3HpnhbG/kGCilJN3bc8
         NsdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700469624; x=1701074424;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ITTlts2FMAHsu8yiJvG2iiuD8q4hyDHNB8Yd0fE8j4A=;
        b=HZHyQjoou9wyZcpzz43yVKDUYVatu2VE4JjEnMHkUWFw2HpR6ooMtCw8ijeAZbHT5D
         W4n1HNQWce7VFc6Ec31AiMxqloD1ylTAjMPT8d+Bie8D2m/QUscG7AenTMCbUnUVabyi
         JNUPKkUlrIPlfa0dyuSyQnoUpYroJOmog/a3z3dgNxUERcTV/QijkM97RJIQRuW8wG2R
         O9FsTs5mOj3E4Coc+TiHC5W9I2SQmZIPsVObw7InDqCXTNfkxx4EWnfjvXwt49d3LHTP
         hC94Otbkt02/lzbvdOjRpziKuVAG0APdaIULf06HhjaJmxGpMl833tItHCljs0qbH8at
         9P6w==
X-Gm-Message-State: AOJu0YzfTfBwXoQZN+1OjAsYm++EiuMjDImtpXdDMnWG7Mo7Q7K2+S3h
	5XWGQ5jXhrs6Ag9R5PfE+NxZcSeM+bbkfmerS2pk0Mf6
X-Google-Smtp-Source: AGHT+IG//wixe+QsViWThUQ8nC1JWJAiQgbIKXGNz5qbnCz1AkTvk72ZCJXZVHyHW1cqX31G8TUDPw==
X-Received: by 2002:a05:600c:3109:b0:40a:3e41:7df1 with SMTP id g9-20020a05600c310900b0040a3e417df1mr5565578wmo.37.1700469624315;
        Mon, 20 Nov 2023 00:40:24 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id z16-20020a05600c221000b0040472ad9a3dsm12386618wml.14.2023.11.20.00.40.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 00:40:23 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-rockchip@lists.infradead.org, 
 Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 sebastian.reichel@collabora.com, daniel@ffwll.ch, airlied@gmail.com, 
 sam@ravnborg.org, heiko@sntech.de, conor+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
 Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH V4 0/6] rockchip: Add Powkiddy RK2023
Message-Id: <170046962348.1110472.9022953040371276101.b4-ty@linaro.org>
Date: Mon, 20 Nov 2023 09:40:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3

Hi,

On Fri, 17 Nov 2023 14:25:30 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Powkiddy RK2023, which is extremely similar to
> existing Powkiddy RGB30 device.
> 
> Changes since V3:
>  - Corrected commit subject lines.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/6] dt-bindings: display: nv3051d: Update NewVision NV3051D compatibles
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=8bcac1be55e188e5bac3353b550c9cddb70fbbed
[2/6] drm/panel: nv3051d: Hold panel in reset for unprepare
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=697ebc319b942403a6fee894607fd2cd47cca069
[3/6] drm/panel: nv3051d: Add Powkiddy RK2023 Panel Support
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=0aa1cfa3d287930cbecc52cd2b38683a4bf98463

-- 
Neil



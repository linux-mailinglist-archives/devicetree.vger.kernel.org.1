Return-Path: <devicetree+bounces-23759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69ED180C432
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:16:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B6371C209CB
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:16:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3E1121108;
	Mon, 11 Dec 2023 09:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bkPsSXA2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0D52F2
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:16:16 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40c0fc1cf3dso44726105e9.0
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702286175; x=1702890975; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W68af/91Atj1zDTUN4IE+pQHHryD09cfa+2lKqJ1RE0=;
        b=bkPsSXA2xvV0L0ozvXYdNvuxwhDUnmtuL1mKSIMmJmuSTA1VhCDYONRYH/Udc5cLJr
         GHMoJ2XFqjGyYZNwFAzfuiKcqhmUNYi4irejfNHZN8EPyj0GDCxI9ZMMCOaDC9MT7FeY
         alR7VRkO4nMN0JrivvV/QHswtoVRtrOPVOkbaRBuHsFAI0RkamUvOIRy5tWEfY2eZVKj
         DmCcNt5vuDXCBxcWsorv8T6d+2VSTebqRb/t45k4b/E4jR7k8n/Km2LrtM3QR6RALHEs
         gALSMIii3DMPx8eU8qCIsQ1ZfR/oICKq2gFZALNPGTOX4/mT+aaLL/VF0NZloS/BMwox
         k4Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702286175; x=1702890975;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W68af/91Atj1zDTUN4IE+pQHHryD09cfa+2lKqJ1RE0=;
        b=tMtm9UzJnTYQMzL0Z+Oh6BTnv4ji54VZAFmT5Jyefdj6AEmw5Ry6+cD0aj6iFpj1xl
         iV20cUUvHm1GUZEqgvW3qsxIYgdhT87ygOMO29QSYB+fGAaS3KnRvoIS8BfwDcjRKkBo
         kwzol2+XC2M4BHo17qRcs7TenXLzOMwfmCV49DQWnnte3X0ivaAP/vCmnWRSbZEn5+UZ
         PYRRcR9YAoyzo4lsdGyjpzCJjnEsXRUMyiuhHemuqnd1gk1fCYw0BIa545MtwoN72WQC
         JhrGcrboIp7WSNcqTsBq2Z+8KHeK6Ct52S6fcG9IY+1ChHKBOwI3ejbyFy5wLR4Opix+
         M+kg==
X-Gm-Message-State: AOJu0YxLwWf37XmzKj7gjTeVPXL/LMHLs9ziE4FlaqKQDuVt8LaTJqFn
	mxo45BjOaLcmNnt0H5Vd0p/jRw==
X-Google-Smtp-Source: AGHT+IGc7ZBXK1VFhnwmlIkMnqFbV5XQIhopbQq2WBKyxWy0zx/bRn3t4fW3cKNsLP/owsKA6iuFHA==
X-Received: by 2002:a05:600c:492f:b0:40c:3464:f816 with SMTP id f47-20020a05600c492f00b0040c3464f816mr1942464wmp.51.1702286175116;
        Mon, 11 Dec 2023 01:16:15 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id bd19-20020a05600c1f1300b0040839fcb217sm12398470wmb.8.2023.12.11.01.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 01:16:14 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, John Watts <contact@jookia.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Cercueil <paul@crapouillou.net>, 
 Christophe Branchereau <cbranchereau@gmail.com>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231210-fs035vg158-v5-0-d75adc75571f@jookia.org>
References: <20231210-fs035vg158-v5-0-d75adc75571f@jookia.org>
Subject: Re: [PATCH RFC v5 0/7] Add FS035VG158 panel
Message-Id: <170228617410.2409693.12184151943497966820.b4-ty@linaro.org>
Date: Mon, 11 Dec 2023 10:16:14 +0100
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

On Sun, 10 Dec 2023 17:55:48 +1100, John Watts wrote:
> This RFC introduces support for the FS035VG158 LCD panel, cleaning up
> the nv3052c driver on the way and documentating existing panel code.
> 
> This revision is mostly a resend and ask for more feedback.
> I have tested that it works on next-20231208.
> 
> John.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/7] drm/panel: nv3052c: Document known register names
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=f48dee9ed7c992eaf6a3635db304a61ed82827b3
[2/7] drm/panel: nv3052c: Add SPI device IDs
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=095e3a99e793767ca6c0483d31fb5d4087966d51
[3/7] drm/panel: nv3052c: Allow specifying registers per panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=2e6b7be84d88c0af927967418a56e22d372ce98c
[4/7] drm/panel: nv3052c: Add Fascontek FS035VG158 LCD display
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=bf92f9163097dc717518d598116c1e385004b5ce
[5/7] dt-bindings: display: panel: Clean up leadtek,ltk035c5444t properties
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=43cc1ce456b57ad48220393bbb7fac6e32369233
[6/7] dt-bindings: vendor-prefixes: Add fascontek
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=8fcb387a210cfc30a3b61abae21d5c8c4a55e470
[7/7] dt-bindings: display: panel: add Fascontek FS035VG158 panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=267624378ed6bebd733b4917452d78780db032dc

-- 
Neil



Return-Path: <devicetree+bounces-5022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4167B4C56
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:12:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C00272816C0
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 07:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D51517C3;
	Mon,  2 Oct 2023 07:11:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB43633
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 07:11:58 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63E28B7
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 00:11:56 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50567477b29so4914096e87.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 00:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696230714; x=1696835514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ebhLT7Bk8BegSoKqGP/uGHgUFUu9P9Y8HhtEWWMfVHo=;
        b=xq0S0horA4OdXjx1Os3JqPE8SdoHKDJiKvFhGHQiZ0fMbl8uoU/86R9/AwVfp0CJlu
         Wl5DFuctcXIXqSwxcXH/ppXO87s+OpWRHQuBcqmO2NbtrrM7HwIcqli5GdqoTYmxQ5bP
         qiSFyjZmNDmgTWgav4HLT+KpdG/didiJZvXJWN6QXnz+hMAr5NBz0wlKrh/kwKJr3pMf
         cuQhCOHSeV56v1llzBy+lsaZJ3MroXpvwAfmBPQcMxyMzzQOnSqAH1GatJ5I9yzg7BFb
         wFfuV3FP0tOni7lBJLz31AT+Hl3RCZDUTCucr7PCIEJBzYB8dSafGITd++4CnT/Q5BA2
         DwQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696230714; x=1696835514;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ebhLT7Bk8BegSoKqGP/uGHgUFUu9P9Y8HhtEWWMfVHo=;
        b=w+RUCSF6kHtlYg0aChw6mpXarOycdcfDcC/GPS/yxtVh6O1zRLEel/9DmB+zG6irsz
         0XNpNOKiG7fP1Iel6qvZqcXMh+bjdjlRdV9R+uktjIaJ9z+xfP4SSX2NOZlo+8XDRbIW
         3baH67Xjrjr/XJHo0xIjd4rMwgMZ6guyEoihxRpS/C4mbPy1UhJSfnxQC00ZDiCIxciN
         QgXnj6s/v+DtDv/KwIVZN9nKpyeNJpTim48SxmaV1JKjLue4Hwl4RBFmAv2SHbG1jouq
         fgH4ycKTOGDS9tcq+I+InC1MsIp82hpa4qMqcYKF73fW+V+Q1ZvIgv0wGA2234S36HQs
         qTBA==
X-Gm-Message-State: AOJu0Yz/CRXhOmO0yZqu34AiUr51cADY7dO+XbgO0ZcxEY/bGzCOk1J/
	n0LXt3QXaFqDAC5qXFCJE0Bmkw==
X-Google-Smtp-Source: AGHT+IHuSrV2k6DA9B2OyyK5jQodlrfkuCDECVUkCMO3P3mkH1WF48HtXVeYwdF/JDJumnd9eE3aWQ==
X-Received: by 2002:a05:6512:3986:b0:501:bd6f:7c1e with SMTP id j6-20020a056512398600b00501bd6f7c1emr10840429lfu.33.1696230714694;
        Mon, 02 Oct 2023 00:11:54 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 25-20020a05600c025900b00405623e0186sm6601371wmj.26.2023.10.02.00.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 00:11:54 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 Luca Weiss <luca.weiss@fairphone.com>
In-Reply-To: <20230927-topic-fp5_disp-v2-0-7b5e1d1662a6@linaro.org>
References: <20230927-topic-fp5_disp-v2-0-7b5e1d1662a6@linaro.org>
Subject: Re: [PATCH v2 0/2] Raydium RM692E5-based BOE panel driver
Message-Id: <169623071357.3600226.13335704878597295966.b4-ty@linaro.org>
Date: Mon, 02 Oct 2023 09:11:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Fri, 29 Sep 2023 14:54:19 +0200, Konrad Dybcio wrote:
> The Fairphone 5 smartphone ships with a BOE AMOLED panel in conjunction
> with a Raydium RM692E5 driver IC. This series adds the bindings and driver
> for that.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Add Raydium RM692E5
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=d1fd19e6bd7d276cf2290300cc563e2e5ac4ebf7
[2/2] drm/panel: Add driver for BOE RM692E5 AMOLED panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=988d0ff29ecf7ab750b9be29fddae588156c3d03

-- 
Neil



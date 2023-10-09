Return-Path: <devicetree+bounces-6880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDC17BD67C
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 11:12:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 452282814DD
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 09:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB0FF9F1;
	Mon,  9 Oct 2023 09:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rh9MhLvM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E27D800
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 09:12:53 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18FA8A3
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 02:12:52 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50567477b29so5539181e87.3
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 02:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696842770; x=1697447570; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yf7MiBunBZOqUWS6hOjNshMjhVlI4vDHakb12kS/gTs=;
        b=Rh9MhLvMZolNYA0Qic9al0bK09Vq//oMYeb5YWBxMveAS9yQ1/n9LLukleDx/X7M6o
         NvmFdbA57VGR0hGAk7vNTFnsWvVv63qV9PAMhL/XcIRHheR5qYABsG9owjxoUb5N2bOy
         MdxuKd4iMluGVFAJcwy3HLt5Jv3qhO6sIp6/v9y0Qxv2wWxo3Dl6eoyxD4S7PBr4cYTl
         Be0MzUASfxtNVWVdzvF3A9qTLgrH3TGiz4cnVSFEEgnuwWEp9NlLafh7aNMBgk89wP9m
         ymkTi+kLToSB9meHS6ppf/cjFJdOoVEwQosbu90OLG8vQQ0FuYDQ2c5iCffiyD79wmKE
         fGOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696842770; x=1697447570;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yf7MiBunBZOqUWS6hOjNshMjhVlI4vDHakb12kS/gTs=;
        b=mtLdjXTb/VnUD1kLL1gOQVC5tbiY2M11j37ltfvhgfNS5uGrS78i1QOj1Jv9yYzotb
         qKLBJaGcpOdr4Ei+ofpmptxBcBS14G5R+df/b8MZpUkrgxa241Q2JLcg6eaOpisQd6me
         JRY3QpH5WpsonK4zd5qw1ZgMkJrlt6DBdNMlLZmIU/Y5Rf2Sg3D46Mgu2r6Bt57YPbIv
         kAYZabOlTuoTFnnF1ILrLclgbJdQN+V6rHklej9OvkWBlJNyaNwXB8XqKt1uZZtD8hx8
         zouD+E4ogro0kp1D6upcyjzJZPpk3NGuRSIaoTSZVUdInlILpGEcIGyznHYrb+jJSHT+
         UFIA==
X-Gm-Message-State: AOJu0YxQAoim9YIcCNzTEQkKdKBzgALo+ly6PEaBZZvXupO6pqhINBH7
	qiNxcxOrQQCuHXLpj/mWpwfEfA==
X-Google-Smtp-Source: AGHT+IGMyxnedEUG4uP7pO+e1T7JWEiTXPEDl31ulZdWNKEeL1Anaezb98mfuU0uGdkstRj7BEbFgg==
X-Received: by 2002:a05:6512:1391:b0:503:17fd:76bb with SMTP id fc17-20020a056512139100b0050317fd76bbmr15933979lfb.39.1696842770301;
        Mon, 09 Oct 2023 02:12:50 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 1-20020a05600c230100b0040644e699a0sm12885533wmo.45.2023.10.09.02.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 02:12:49 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Johannes Zink <j.zink@pengutronix.de>
Cc: kernel test robot <lkp@intel.com>, Dan Carpenter <error27@gmail.com>, 
 patchwork-jzi@pengutronix.de, kernel@pengutronix.de, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20230523-simplepanel_support_nondefault_datamapping-v5-0-0d7928edafab@pengutronix.de>
References: <20230523-simplepanel_support_nondefault_datamapping-v5-0-0d7928edafab@pengutronix.de>
Subject: Re: [PATCH v5 0/3] Support non-default LVDS data mapping for
 simple panel
Message-Id: <169684276928.2063772.9134634213645233063.b4-ty@linaro.org>
Date: Mon, 09 Oct 2023 11:12:49 +0200
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Fri, 29 Sep 2023 14:33:30 +0200, Johannes Zink wrote:
> Some LVDS panels, such as the innolux,g101ice-l01 support multiple LVDS
> data mapping modes, which can be configured by strapping a dataformat
> pin on the display to a specific voltage.
> 
> This can be particularly useful for using the jeida-18 format, which
> requires only 3 instead of 4 LVDS lanes.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/3] dt-bindings: display: move LVDS data-mapping definition to separate file
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=5437d667a0cae87d34c321ce1819ea78011efdc1
[2/3] dt-bindings: display: simple: support non-default data-mapping
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=66b66c97f4074c38b1c53c49625ebdd9a33ba56d
[3/3] drm/panel-simple: allow LVDS format override
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=1cd3ea3e4b124120dbdff3faf00a71c8fc6f6402

-- 
Neil



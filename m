Return-Path: <devicetree+bounces-23760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD4A80C434
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:16:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A85B1C20D4F
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:16:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4115621111;
	Mon, 11 Dec 2023 09:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DZyjfvt9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC786EB
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:16:17 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40c3f68b69aso17414125e9.1
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702286176; x=1702890976; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ituXlXKe0fJCkyKQxUR0l5+9ChW5TSXn8+gGp+m+v8=;
        b=DZyjfvt9ufM1qVOfjRNooSohaTuy1iqUXk55MQ6tYw3cBO4NosG3myNIT0Qpx8mXmn
         /9Jam0Dqf/A2DZSBROYagAwc86ISsAFmg/ZK80txkxKbdwgRBnhKr9dNkNQh1hXNfSaQ
         bWaFf0i2PNmeTcRsbFbbknHKkwfgf6WKtp+pIu3jdlPXEZb1N/gYWAZ7SHXM9EVASoYT
         SFLl/ZgK/UDSze8tewiCtfHroQpggwcje1EcfUhhb+zbUS/QD2SaQq1VucRyySh8Kstd
         MJQdg/aPSwWIAeHTj6Jhv4MLnSgNzUs5mtqZMD2zjr7YRYXq7OoJSFTJu153BDps8+aN
         43Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702286176; x=1702890976;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/ituXlXKe0fJCkyKQxUR0l5+9ChW5TSXn8+gGp+m+v8=;
        b=o47DZRzxrrdbq+qnOnL5qPg0cHrNK0LQxvxsZJrG0bk6Pv5GDTUV0WAwWsu95WfUVs
         hkS/7kUO8juJlzUHlsBRCF44KSKj5cIT7QkvLoSXzfR7aXQ+3emIDQPPmfJL3f8c7ihx
         WW7PY4d7KvYBchBE+oCGYq3Exbhp/VVIzJPWOplIGre76Ii/L+GRZsk+VLHHs6klUUwM
         wQMTTd5I1LY+DoZpQK+qyTTnyB6EaKM0S87DqRmZ35tJz+7+53DLQwtvepLgfU/FdqQh
         JxVu8Wonv58vEnQFsTpXKeUMwWh03EwWaoFVMDC1r5Rw1p3aP94zZTKxy4HSDMW7zn4U
         i0/w==
X-Gm-Message-State: AOJu0YyHlXda+Go1KDpTsvILTHVYzR0vS1desb6JbBzW3c+rBO9YPPI7
	lwyGe29cQ73J9cHNmxJ7bgFPPQ==
X-Google-Smtp-Source: AGHT+IHOd1ua8XNnZwzl2F7B3iNmHeSOgbkbmQ4SeoUEsIsN2Y0VjRUCKLzDXzMljnkqZQyjpxXHMA==
X-Received: by 2002:a05:600c:c1b:b0:40c:27af:2ac8 with SMTP id fm27-20020a05600c0c1b00b0040c27af2ac8mr2088754wmb.6.1702286176108;
        Mon, 11 Dec 2023 01:16:16 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id bd19-20020a05600c1f1300b0040839fcb217sm12398470wmb.8.2023.12.11.01.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 01:16:15 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: devicetree@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linus.walleij@linaro.org, 
 marex@denx.de, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org, 
 quic_jesszhan@quicinc.com, jagan@amarulasolutions.com, 
 Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20231208154847.130615-1-macroalpha82@gmail.com>
References: <20231208154847.130615-1-macroalpha82@gmail.com>
Subject: Re: [PATCH 0/3] Add Support for RG-ARC Panel
Message-Id: <170228617524.2409693.18249694265384337342.b4-ty@linaro.org>
Date: Mon, 11 Dec 2023 10:16:15 +0100
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

On Fri, 08 Dec 2023 09:48:44 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Anbernic RG-ARC display panel as used in the
> RG-ARC S and RG-ARC D handheld gaming devices from Anbernic.
> 
> Chris Morgan (3):
>   drm/panel: st7701: Fix AVCL calculation
>   dt-bindings: display: st7701: Add Anbernic RG-ARC panel
>   drm/panel: st7701: Add Anbernic RG-ARC Panel Support
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/3] drm/panel: st7701: Fix AVCL calculation
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=799825aa87200ade1ba21db853d1c2ff720dcfe0
[2/3] dt-bindings: display: st7701: Add Anbernic RG-ARC panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=acbf9184a87d5d6868809baa3a6c7d0537d1f321
[3/3] drm/panel: st7701: Add Anbernic RG-ARC Panel Support
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=a7890252c1a314654862944cf4733e4333b76e25

-- 
Neil



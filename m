Return-Path: <devicetree+bounces-3063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 492A37AD3D4
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:53:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id EC7A5281670
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1AB2134DB;
	Mon, 25 Sep 2023 08:53:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958B863B7
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 08:53:39 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01684C0
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:53:37 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5031ccf004cso9417761e87.2
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695632016; x=1696236816; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YtI997mx1rM8X0/71M5+PWf5Nufqc+4odO3o6nql2f8=;
        b=c31SXaIdVRzrebBA5fmnipP+We7MNdX1mAPYXoJrLG2uTd8XM9JTZLRIu7viqfG4iO
         4LkQzqPu3Ar/AH0EagR7XesST02OXoLsoz4taq246LIX5If6y2mBRR137dNAf6h7peaW
         Vw3HWrZ6JtFpLh7YHFQA+ASdRHPsD5H0sme3x2UHsmrIWG/+RlFGtQN4WiWCVx9ZhLVp
         OrJpsVa1paVgsrexDHgRBjb/gvAlfzf9ay+qJ+hO6+Ubtovr1yCBZSsr1DxHIheRY9sq
         nfffRdfNQEJndke5xvAxU9Gi9o8AWlkfCyW+15bRIUFbyQ+MZ46Md+OgUfiSkf0t2kcc
         b1oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695632016; x=1696236816;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YtI997mx1rM8X0/71M5+PWf5Nufqc+4odO3o6nql2f8=;
        b=P5IUJXlAi214IqXI0tUxBGml3FlVoh9PecQOngex3t5VABg78LHMPNp0ug6xMy3Y78
         itw61LG1QElhZAFrRV1/Odoq+DVS3SofsVtxy6BVhSv3quWrg3JGFB7XAGURKpeUwBeX
         M86wnlKxxs1qiGjtPKaYSsMlMXp/9wbWiqt2xbGxpeITYys+VTFY71pF10EzalBdBG12
         nypruN4FBZfnHTWBnOaCbSsgyS7H7kpeImlLGR9IVoWOwloRh2Ufz421oyTugifzMKhz
         FUwloA8EHRILL/eN3jks4o3akF+dERR+YJXlNOifEpohqjW0hKLnBiEr6fYWLa+nBW1S
         ML4A==
X-Gm-Message-State: AOJu0YzvqF+jFpYPgV2leJs5LCtXOm123kwrDBprahfBvEBUkx/UTsNF
	tAq0jnjzOsd7Sp2YwEGkb9jw0g==
X-Google-Smtp-Source: AGHT+IHwfuLAPjsEW6khB6T4XLcQKQPBLRQ0uek4NFB0tZrgICpPw/F4P9Crj5XHPu/7GBSoZw22+A==
X-Received: by 2002:a05:6512:238f:b0:503:3682:2624 with SMTP id c15-20020a056512238f00b0050336822624mr5963440lfv.48.1695632016256;
        Mon, 25 Sep 2023 01:53:36 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id bi26-20020a0565120e9a00b005045bb669d7sm465485lfb.62.2023.09.25.01.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 01:53:35 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/2] Device tree updates for IXP4xx
Date: Mon, 25 Sep 2023 10:53:32 +0200
Message-Id: <20230925-ixp4xx-usr8200-v1-0-cd72a2e1ce91@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIxKEWUC/x3MQQqAIBBA0avErBMms7CuEi0sx5qNhVII4t2Tl
 m/xf4ZIgSnC3GQI9HLky1d0bQP7afxBgm01SJQ9Tt0kON0qJfHEoCWi2KRCbUe3GztAje5AjtM
 /XNZSPmPN2/lgAAAA
To: Peter Denison <openwrt@marshadder.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Krzysztof Halasa <khalasa@piap.pl>
Cc: Imre Kaloz <kaloz@openwrt.org>, Ted Hess <thess@kitschensync.net>, 
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This adds missing vendors and compatibles.

I can merge this through the ARM SoC tree unless
Rob wants to take it.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (2):
      dt-bindings: Add vendor prefixes
      dt-bindings: arm: List more IXP4xx devices

 .../devicetree/bindings/arm/intel-ixp4xx.yaml          | 18 ++++++++++++++++++
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 14 ++++++++++++++
 2 files changed, 32 insertions(+)
---
base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
change-id: 20230919-ixp4xx-usr8200-b2408d6fcad5

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>



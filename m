Return-Path: <devicetree+bounces-193098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCA0AF9339
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 14:55:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 491907BDB9F
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 12:53:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CAF82D9EED;
	Fri,  4 Jul 2025 12:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UNx/YwSz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 888C828C2B3
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 12:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751633671; cv=none; b=Zr6iZ+QHoI12pKFW4oBr0Qjnx/hZNbEdvUMRflc0O6JmgNN7L4ffYg3qoO748+ZwUHVmpitCs/IxrCzSxPLORlTAyadG8ofkPyFiHY/nHnmRm4vEMoiCHTWVhCgBq5wJmlidIUnuDrTnfX6duloXbAieR00xchQNv8CpZv+IgBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751633671; c=relaxed/simple;
	bh=sGt0j8wfgyR59Qi4qx3dd+mPQSgHo8ZxkbG+sN9/yAs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=dcFmWnVSqNL3+lNbste35wwimh0iEycZghZXEJIcOmTfJ6f2ndu/Ren6swEFaggFptGqIwqh1vwdCFfvjjy5zvem9OQiQE4wOQ8zkyn8uj2wEvHWIj/37uVdU3i6Xs36Nq+Q6IfQwh1wzLnZ+iGLODPjp6jRzurs2TPA0GsIxV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UNx/YwSz; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-55622414cf4so962641e87.3
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 05:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751633668; x=1752238468; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=df4s766AtSDMBj7EKonhWyVJqcdQEtK7oOb9T8S70vw=;
        b=UNx/YwSza6OH5SOTi6LEmWw89fl4pvwUQNdafzCtx1N4ljw/wYfPCPxtLaGbb4hPai
         k3KSdm2yXj7ZtkXdh7tGFkybd/fqP1lIBRp+d8qalGOPdaj5hZrDl2ncQt6qv/pWYk5+
         1xnh9g11Ty2QGT7pzDgf8c7eHZJZ/y0wy/JqwrJ4phcrYGuL/Ou0kRZG+dmgEkJgErLs
         SF8FGPVT+QYnsJl017j+BFzmT1hQaBJmM/zyL4273rCHt1ncoY+Hg3q5rRtJqxeZkXXq
         7pHaMj1Nbiz6+CFYtz4jmi/mbUWib7/c89ldcBIjqjgCDaNv+wYA/WJSjeeqQ2A02vYH
         C6XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751633668; x=1752238468;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=df4s766AtSDMBj7EKonhWyVJqcdQEtK7oOb9T8S70vw=;
        b=EKnItEs0EKN5vd694o83OhLsCJ/Wj+zEWwBUYhig79J2qhwcQUJ/uQ+jHyQvbiGXSf
         u4N2MZ3RaeSBVerpjWf/BHnfxw/a1i4+QybTulHK0tnJ+S06+UCem10FLjgb8C9+bDDK
         UBq7wNZ2rOUgftIJKyY5Qmkc0dQGybFiyPN9gYdGSlqpSKZJWyUWMUT+HkqgO8BR1SWe
         JcN64iTROuszwcj7TsRoxdVtrOs5c9KWPPzOa7rmPFisk2OXaY21YF2PhQ4W/c1VouFk
         Ur3dMRrS6J2uAYR11pyzzSB8NiDs4P0dGMOvLfGJtu0jaVCmPdIm2TCW8JLzx0jKXz48
         23qQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPfrURnq8bRbmdMbNputh+luClPP3w+ypBzjJ8GEO0eWXZ62Nlmlh0pueNMerCjWlQ3W6k5O6CWPtM@vger.kernel.org
X-Gm-Message-State: AOJu0YwIA8b95imaa2VbBfNlhDnB+vtmRAd1WdJDmAYURa6D2VrbU3VF
	d7rQD1tQZTk2kTte5ONBpk5vjZ+tmnjatapjFnxdWlilKUvNHAAoX5lUIw1Uu4qzX8U=
X-Gm-Gg: ASbGncsPXWQpABofxXguqciAxrdhUo+I4piXDF3V6R4tERBIdk9PAxvkyP7m2GdDfQT
	Ha22wpay0YgI6d7Ckdw+wG494U2qw89Tk2SvPfp5MZQ1kOJoq7eQccgDiXSR2moX4ngFBNOO/Bh
	mAuvlc10PmRwwAvg9vauc2lkhNipQ/p6sl+xJZLBNQOQMh5w56y1p99FIlp5rOdgnnE4WLypCHo
	pS79tFsxWF3F/RORgHWY5p6zpKpy9GIxqn2yY6agcCnwHMmPmGENTDbmGVdpAKervUO+OVWEbT2
	7WpH/sNWaBIMgVoxeWdRErg7CP5OAelrn5j4+zPvMZFefGvrp23aWVuh5eiWsw0H2XiXqB5k
X-Google-Smtp-Source: AGHT+IHicQRG29Orgh83l7ZnK/DmvmeksKeirmIzUhPOzFJZqfryTtaMRPdg66jbn8op35IbWG+wcg==
X-Received: by 2002:a05:6512:3c94:b0:553:2f8c:e615 with SMTP id 2adb3069b0e04-556d151a3cemr753161e87.11.1751633667639;
        Fri, 04 Jul 2025 05:54:27 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-556383bbaffsm246528e87.38.2025.07.04.05.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 05:54:27 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 04 Jul 2025 14:54:26 +0200
Subject: [PATCH net-next] net: dt-bindings: ixp4xx-ethernet: Support fixed
 links
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250704-ixp4xx-ethernet-binding-fix-v1-1-8ac360d5bc9b@linaro.org>
X-B4-Tracking: v=1; b=H4sIAAHPZ2gC/x2MwQqDMBAFf0X23IUYlEh/RTxU89S9bCUJsiD+u
 2mPMwxzUUYSZHo3FyWckuWrFdpXQ8v+0Q0ssTJ553sXXMdiR2fGKDuSovAsGkU3XsU4hnmFdyE
 Oi6d6OBKq/t9H+sUKKzTd9wMCyobfdwAAAA==
X-Change-ID: 20250704-ixp4xx-ethernet-binding-fix-d7bfe207d8c2
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 kernel test robot <lkp@intel.com>, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

This ethernet controller is using fixed links for DSA switches
in two already existing device trees, so make sure the checker
does not complain like this:

intel-ixp42x-linksys-wrv54g.dtb: ethernet@c8009000 (intel,ixp4xx-ethernet):
'fixed-link' does not match any of the regexes: '^pinctrl-[0-9]+$'
from schema $id: http://devicetree.org/schemas/net/intel,ixp4xx-ethernet.yaml#

intel-ixp42x-usrobotics-usr8200.dtb: ethernet@c800a000 (intel,ixp4xx-ethernet):
'fixed-link' does not match any of the regexes: '^pinctrl-[0-9]+$'
from schema $id: http://devicetree.org/schemas/net/intel,ixp4xx-ethernet.yaml#

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202507040609.K9KytWBA-lkp@intel.com/
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml b/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml
index 4fdc5328826cf178968a2208aaabc1e05b3a2b55..8689de1aaea15f032ee0b6b30858385a910373eb 100644
--- a/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml
+++ b/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml
@@ -47,6 +47,8 @@ properties:
 
   phy-handle: true
 
+  fixed-link: true
+
   intel,npe-handle:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     items:

---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250704-ixp4xx-ethernet-binding-fix-d7bfe207d8c2

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>



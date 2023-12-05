Return-Path: <devicetree+bounces-21964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEFB805E04
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:48:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA4561F20FB8
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 18:48:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5873163DFD;
	Tue,  5 Dec 2023 18:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="YV2NNP5+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 058451B9
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 10:48:05 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1d0481b68ebso10158855ad.0
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 10:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1701802084; x=1702406884; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=n9X0r27/UbN68GCjekZeYhwtKfth61JxLqxfjcWsu3w=;
        b=YV2NNP5+YFYUnHdaeV4f6/85wPAFHWoasarITInW0kh+SFHFbfPwIyYU6WgGtvE98P
         xP9YrLa2YLFqpTVvsguubIcm9Sd+HxuIE7XW252He/6OiWRYT3v1NJlneHu/1WjpqFU6
         Z+LWKyT9WKAFwEFMpEA9SLzDKtQdfj+td3nEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701802084; x=1702406884;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n9X0r27/UbN68GCjekZeYhwtKfth61JxLqxfjcWsu3w=;
        b=GZtJIVEU+FHS4rTw5RewLFVKfeHnGPAHcVeFOXrYG3Et8kd/TdUfIsP9DX3EHaIXcl
         N/bWDu9UlM3GkOg7uJoxpY1uGl1yw0uQj7pIk4pf7O19ozzTTUDC7+6pOakD9c61ZMMx
         Q938UY4TNCx9Hg634fu0qjfNILNDXhq7m3upmEu47EzFyzYtCd0e9xCWdtr84YVwvgg2
         ORcL7fSRwhkF5yy86tedBYWtcoYVHk2RYLVKudJJksm+Obw/cUGQ98gE/+PUO1GF9GFV
         Lr6qxO5+nY+3nhmetKC84aBJgbgpYHGhMoSUtfM6/TQAjZAMlScM00jHMcd8z2E1CXiw
         mMvA==
X-Gm-Message-State: AOJu0Yzhdv1vQ/TFh5cSIP0HykYIjvx8JOJi2POJgvlDtvUbVClzDmvX
	mAePRvT5trbYSCsmOhaP4arD8w==
X-Google-Smtp-Source: AGHT+IE1+yOzhmVcL8taX+gYSSTqB7TcNtmGAbJ+dH168Aul+Cu6lmHkkattSuS8hRhsTx9zw4Jk4g==
X-Received: by 2002:a17:903:41c1:b0:1d0:6eae:8e57 with SMTP id u1-20020a17090341c100b001d06eae8e57mr12590444ple.1.1701802084368;
        Tue, 05 Dec 2023 10:48:04 -0800 (PST)
Received: from lbrmn-mmayer.ric.broadcom.net ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id b11-20020a1709027e0b00b001bbb7af4963sm10726422plm.68.2023.12.05.10.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 10:48:03 -0800 (PST)
Received: by lbrmn-mmayer.ric.broadcom.net (Postfix, from userid 1000)
	id 7555AD00; Tue,  5 Dec 2023 10:48:02 -0800 (PST)
From: Markus Mayer <mmayer@broadcom.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Markus Mayer <mmayer@broadcom.com>,
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
	Device Tree Mailing List <devicetree@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/4] memory: brcmstb_dpfe: support DPFE API v4
Date: Tue,  5 Dec 2023 10:47:33 -0800
Message-ID: <20231205184741.3092376-1-mmayer@broadcom.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It has become necessary to distinguish between the various DPFE API
versions by version number. Having just chip-specific compatible strings
and one generic version is no longer meeting our needs.

Also, a new DPFE API version, v4, needs to be supported by the driver.

As a result, an intermediate compatible string format is being
introduced: brcm,dpfe-cpu-v<N> where <N> represents the API version
number. This is more specific than the catch-all "brcm,dpfe-cpu" and
more generic than chip-specific compatible strings, such as
"brcm,bcm7271-dpfe-cpu".

The changes are split into several steps.

First, we update the binding and introduce the versioned compatible
strings.

Secondly, we add support for brcm,dpfe-cpu-v1 through brcm,dpfe-cpu-v3
in the driver to match existing API versions.

Thirdly, we introduce DPFE API v4.

Lastly, there is a change that isn't directly related to the
introduction of the new binding format or DPFE API v4. However, with the
increasing number of API versions, broadening compatibility can be
helpful. If registering the driver using the DT-provided compatible
string fails, the driver will try all DPFE APIs (except for v1) to see
if one might end up working. This can come in handy if the driver moves
on and learns about new API versions while Device Tree cannot be
updated.

Markus Mayer (4):
  dt-bindings: memory: additional compatible strings for Broadcom DPFE
  memory: brcmstb_dpfe: introduce version-specific compatible strings
  memory: brcmstb_dpfe: support DPFE API v4
  memory: brcmstb_dpfe: introduce best-effort API detection

 .../memory-controllers/brcm,dpfe-cpu.yaml     |  8 +-
 drivers/memory/brcmstb_dpfe.c                 | 95 ++++++++++++++++++-
 2 files changed, 100 insertions(+), 3 deletions(-)

-- 
2.43.0



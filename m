Return-Path: <devicetree+bounces-23217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B28FB80A7D0
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:48:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E37751C208C6
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:48:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A2F32C84;
	Fri,  8 Dec 2023 15:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HknnIwy3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CAB71723
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 07:48:52 -0800 (PST)
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-59052ab970eso883440eaf.1
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 07:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702050532; x=1702655332; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VH9mWAmxSn+cPrMUEhx3/KgP93jhawX7PN/8XP2NR4I=;
        b=HknnIwy3LaQMNJB9w0O5hOOKtfPzj7yZtYdj51JYSO3f+lRWCNRHBZp5HYEEtyXx1w
         kY9536HQM60HaNp0lccHhdDm8q+EhTvA7g1daU2j6XNJOcOhK8ZshwmxGvZssdVkiumX
         L8rqWV5BUw15xAL5EXnR3EUVr7votYKNsqSHYclyYtiDfPJZLeZe/JnS8Ubimb9WTxxV
         RhvSb8DL+nqnMllz4X+U/btbvDUUtXOp17XgVnhmhm6ZuEIYKx69iDSxG5bKE2ToXdHz
         lIOo+zU4E8M2Mo0F0nuGjwTLoGH3wNrlhY2qGWeQVGDMbjFv9Am84W7xhW7iEl1jBkJp
         c+ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702050532; x=1702655332;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VH9mWAmxSn+cPrMUEhx3/KgP93jhawX7PN/8XP2NR4I=;
        b=NeV3FsLxwEspoO/xHp3d4DyCcWU0QJRJzYS0Inmamqw/Q14fGKeiIYSXtjoin6C2iz
         86pSREUNIrQ090cQf3QJX5im/Qtyr+izmQEfX6YmGzIxzfnAaGc9NqGwA3eVd9SBtHJk
         OA3QkGQ8RnU3PNBPZftycqwJYVHPUC2TBuQn7Z5VzQMMDASPTIFIK4Ba6x4MExt55cbs
         wemHOKfW41hAezOVwHdKirv0HlaDngh5XxCj18JaqzxpGQGeOJ1bqsgMI9Gre5uUDBFN
         y2OTT8lAAmXoOL14Qbuqtd+4lYfJ1Wk5EeeTdgGpgxRgcEby0OHTcWRCS8FBaVWFD4XE
         uP6A==
X-Gm-Message-State: AOJu0YyorZsqgHTLc6OulO8pZjKRLBJgZp/AB0b1xIZ5yCRjfCyNgDeM
	6Lk1XdNX+EWh4ay1KoCVcsDIuVbf/qM=
X-Google-Smtp-Source: AGHT+IEzUfF4Wj7qnT7w6d8mdcbROihe8LKufcuC10M8YN+tbbg8oO/34Jti/g2sLcC8t3DOHSU1ww==
X-Received: by 2002:a05:6871:6a1:b0:1fa:f6ad:8580 with SMTP id l33-20020a05687106a100b001faf6ad8580mr515392oao.9.1702050531746;
        Fri, 08 Dec 2023 07:48:51 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id os25-20020a0568707d1900b001fb28cd0e9asm444624oab.3.2023.12.08.07.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 07:48:51 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org,
	linus.walleij@linaro.org,
	marex@denx.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	jagan@amarulasolutions.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Add Support for RG-ARC Panel
Date: Fri,  8 Dec 2023 09:48:44 -0600
Message-Id: <20231208154847.130615-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG-ARC display panel as used in the
RG-ARC S and RG-ARC D handheld gaming devices from Anbernic.

Chris Morgan (3):
  drm/panel: st7701: Fix AVCL calculation
  dt-bindings: display: st7701: Add Anbernic RG-ARC panel
  drm/panel: st7701: Add Anbernic RG-ARC Panel Support

 .../display/panel/sitronix,st7701.yaml        |   1 +
 drivers/gpu/drm/panel/panel-sitronix-st7701.c | 138 +++++++++++++++++-
 2 files changed, 138 insertions(+), 1 deletion(-)

-- 
2.34.1



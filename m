Return-Path: <devicetree+bounces-23014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CC494809ED9
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 10:10:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 82C671F217CF
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 09:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3336125BF;
	Fri,  8 Dec 2023 09:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="g0T4xKQw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E451D172B
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 01:10:33 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50bf37fd2bbso2313484e87.0
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 01:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1702026632; x=1702631432; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=12BmaJuhbEbncP7+ftMTLuwVOUi9eU3Yjw6BIudZUgw=;
        b=g0T4xKQwuY/YlPHarRAPgYZlqMl+vNy2vzQmd0TjjyCRW3vOWM6PYBqAYIpnY75m47
         PLzhwABk8Gus5HZV4JV+l4aB957/j/13L3oJTDFq2oI6APF5OtlROJTdR6Dc9/qhhNQJ
         FKKNotPAdHUAgNebeRMyTH7XzNqhI+rKymtVGyxu/l6mnzvu3rXDBiCW7/uwbzS9AcGD
         GbTp3OnwAj34PQNxtzaYH0O6fgnMqC6TghzXBULSye6xHHB1j9mtRg6mPHYnYiU0se4h
         0Ff6tjDtv8KA2M3WI/cYG4ZzgHwWfOgQUSOcgVwQq66NpRl04XYcFo8XfnQ6n27ZQBAs
         ZjeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702026632; x=1702631432;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=12BmaJuhbEbncP7+ftMTLuwVOUi9eU3Yjw6BIudZUgw=;
        b=NGOSfhKc1S4NE6xKS09q8zoaZMQDSJpbQEqdxzA8yjFusPYFcc9Zc4R+ryf7dfwUjk
         2GM9Xkvv+2TQz7Jg+j9XMDopILsHkVOakKuMl032v/qfI/crt33aSviQyU2WtHHR+QHt
         9WgfbDv1vJx3cdRWjd3CZNJdZtUOmPQw2d/qnthJQN9tbVJvSmZMW+Hy5fO+yq/+qB0p
         ZTd2ztLwAz46dhYnc5/gptmZaRqMmOw+IH2OHmc9xf3CYfYzg5q+JJ0vVc7jZ353RbHP
         bN268U5cEOCG8EZ0uPMu3jHT0uB19bK07NQhwa6kdweOyLQEXPQH1O3WsqD1RY+VtbjL
         id4g==
X-Gm-Message-State: AOJu0YwYjHwE+ecqqvmOgWxnkffMTWq3XPgPbtFGqO7IR5YWVV20/Idf
	XqJeWzz1zko5qQ7DeNIYfGU45w==
X-Google-Smtp-Source: AGHT+IEuAvHPJ6MPE6Pyhi39JMfaPxgtraeVoZbvofdAwVPfKIYoAMgYX+RB88hkBR3//GVeQ8tsTA==
X-Received: by 2002:ac2:5316:0:b0:50b:efe8:f5e8 with SMTP id c22-20020ac25316000000b0050befe8f5e8mr2266675lfh.88.1702026632109;
        Fri, 08 Dec 2023 01:10:32 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:b162:2510:4488:c0c3])
        by smtp.gmail.com with ESMTPSA id a18-20020a5d5092000000b00333415503a7sm1572705wrt.22.2023.12.08.01.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 01:10:31 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Marcel Holtmann <marcel@holtmann.org>,
	Johan Hedberg <johan.hedberg@gmail.com>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
	Rocky Liao <quic_rjliao@quicinc.com>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-bluetooth@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [RESEND PATCH v2 0/3] Bluetooth: power-on QCA6390 correctly
Date: Fri,  8 Dec 2023 10:09:33 +0100
Message-Id: <20231208090936.27769-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Resending with all maintainers in CC.

Patch 1 is just a typo fix as we're already touching this bindings. The
second patch adds more regulator definitions and enforces them for the
QCA6390 model. The final patch enables the power sequence for the BT
module of QCA6390 in the hci_qca driver.

v1 -> v2:
- squashed the two bluetooth patches into one
- changed the naming convention for the RFA regulators to follow the
  existing ones
- added dt-bindings patches

Bartosz Golaszewski (3):
  dt-bindings: net: bluetooth: qualcomm: fix a typo
  dt-bindings: net: bluetooth: qualcomm: add regulators for QCA6390
  Bluetooth: qca: run the power-on/off sequence for QCA6390 too

 .../net/bluetooth/qualcomm-bluetooth.yaml     | 26 ++++++++++++++++++-
 drivers/bluetooth/hci_qca.c                   | 14 +++++++++-
 2 files changed, 38 insertions(+), 2 deletions(-)

-- 
2.40.1



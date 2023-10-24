Return-Path: <devicetree+bounces-11404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D473C7D5A9A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:36:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1191E1C20C26
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:36:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A8F03C0C;
	Tue, 24 Oct 2023 18:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gerhold.net header.i=@gerhold.net header.b="nvYWrKbY";
	dkim=permerror (0-bit key) header.d=gerhold.net header.i=@gerhold.net header.b="Ad7+yHlP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE293CCFB
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 18:36:05 +0000 (UTC)
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [81.169.146.168])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6E2910E2;
	Tue, 24 Oct 2023 11:36:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698172553; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=jB8R16IvRzvvTDAPSq6QdtZpKSuH8zsHYk2tkmmy17qgXf1FA7DlaMtwOvF8WnEtUw
    E1yAnyg5vIGe9gS2zbPPfZUghLi19G0FytmioOmAZssgsH6EYGvSwkWw65DFOcehoxvT
    ybFzXdKhYnLCXoOclKnjlAvImAS5HS5HUHuaQKkDNgZJvAAcyN3dIFUUce94CVYAZTNA
    VFqiazlREZ/5HRrx7mk3NOyfTnclxxrnmd5DquHM055cgvWrk0/qiYipQTbBcliFKF9m
    6NZ4NNVyIpqWug0JwHEL/rOdTxGidHEhvxlrDX7KIKiF739/BlA32LxcNU4AyJC53aLW
    qcLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1698172553;
    s=strato-dkim-0002; d=strato.com;
    h=Cc:To:Message-Id:Date:Subject:From:Cc:Date:From:Subject:Sender;
    bh=b/As5E+nbaLOA8ytnd3mEnj7+r75cDnqULM0+ZGli3M=;
    b=n6ic96GmoPvMDM1DJb3DvB9/AFyZfsdQu5LAWycDHrhqy9rRzgfPRO3Ap/nfDt/yqx
    SexM4XdfSHesmeR4u3w6Cb8+j2QXcNvVT8YVCaZK/283f6SerceV3TTtNQf9dMEFV1Ob
    plVRvRcPIAry5o0ZV+ChcJXGBGG8i1+wUSfqvzupFVHPQItXoyhGSAiCSyjZMujSnDjb
    4J7kRVvphf3zdkDI8HlG72LIOJC2hF1RtTcs03whw75U92uxjpnVEAd0ZZYF3bhPJJJl
    CDfM8JuJIOJKPY+deEwyB3F44AgAV2etz6b17owIna+IO1rfSthQiU+mG6h+0m7heXfg
    iluA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1698172553;
    s=strato-dkim-0002; d=gerhold.net;
    h=Cc:To:Message-Id:Date:Subject:From:Cc:Date:From:Subject:Sender;
    bh=b/As5E+nbaLOA8ytnd3mEnj7+r75cDnqULM0+ZGli3M=;
    b=nvYWrKbYvU00LywrC3/vXukEUrS4rswD7oxpMArtOw4S+LpjwxEQOqkUHmPvZXUEKX
    8cq9W6IOJFWRDndGLpi/TeI7Aow+YGv2xsbixcDlc7a+vQOwzclwXcubAiqn12kYUCvA
    iS0o9y7xfGXjSHPcXk/gkKvto164kW5DT4N3/8zdXd0wqHl+KT39sgLdIe92XnuBKTAY
    8STfUWD4HwNDT97pltzn3lJ4LO5Od8Qd2s4fvjPzH2/Kv1TsXLdpyImB7BE3gNgHprY3
    kymALtjMvkaryVs8XqF5Z1FbqBdowDx5CFDzmuGTSyUo2sBpG7FmCWocQ0v9D3RBHmx2
    jpjg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1698172553;
    s=strato-dkim-0003; d=gerhold.net;
    h=Cc:To:Message-Id:Date:Subject:From:Cc:Date:From:Subject:Sender;
    bh=b/As5E+nbaLOA8ytnd3mEnj7+r75cDnqULM0+ZGli3M=;
    b=Ad7+yHlP/WFBhZpfIXCBq8nDt5ODwQYviJROyyIVmWDM9/OoTjl8ofE3g/MMIEwmwj
    3ZGUV6r42dZy0CxVgQDA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQjVd4CteZ/7jYgS+mLFY+H0JAn8u4p39TY="
Received: from [192.168.244.3]
    by smtp.strato.de (RZmta 49.9.0 DYNA|AUTH)
    with ESMTPSA id j34a49z9OIZrRxg
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Tue, 24 Oct 2023 20:35:53 +0200 (CEST)
From: Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v3 0/2] Input: add Himax HX852x(ES) touchscreen driver
Date: Tue, 24 Oct 2023 20:35:44 +0200
Message-Id: <20231024-hx852x-v3-0-a1890d3a81e9@gerhold.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIAOOGUC/1WMQQ6CMBBFr0JmbU07Q4G68h7GhcBAmxgwLWkwh
 LtbMBpdvp//3gKBveMAp2wBz9EFNw4J6JBBY29Dz8K1iQElkqxUIexcaZwF5Ua2WJZEiJDOD8+
 dm/fQ5ZrYujCN/rl3o9rWd8Io+iSiElKYRnHddZoKrs89ezve2+PAE2yRiD8iya+ISWx0hcrkZ
 Y2o/8V1XV8TmxIp1wAAAA==
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Henrik Rydberg <rydberg@bitmath.org>, 
 linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Jeff LaBundy <jeff@labundy.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Jonathan Albrieux <jonathan.albrieux@gmail.com>, 
 Stephan Gerhold <stephan@gerhold.net>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3

Add DT schema and driver for the Himax HX852x(ES) touch panel 
controller, with support for multi-touch and capacitive touch keys.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
Changes in v3:
- Fix device_property_count_u32() error handling (Jeff)
- Properly handle errors in hx852x_suspend (Jeff)
- Simplify error handling in hx852x_read_config() (Jeff)
- Close i2c_msg array with trailing comma (Jeff)
- Clean up error handling in hx852x_power_off()
- Link to v2: https://lore.kernel.org/r/20230930-hx852x-v2-0-c5821947b225@gerhold.net

Changes in v2:
- dt-bindings: Swap required:/additionalProperties: (Krzysztof)
- Use dev_err_ratelimited() for error in IRQ thread (Christophe)
- Use dev_err_probe() consistently (Christophe)
- Improve error handling of hx852x_power_off()/hx852x_stop() (Jeff)
- Add linux/of.h and linux/mod_devicetable.h include (Jeff)
- Fix %d -> %u in some format strings (Jeff)
- Fix other small comments from Jeff
- Link to v1: https://lore.kernel.org/r/20230913-hx852x-v1-0-9c1ebff536eb@gerhold.net

---
Jonathan Albrieux (1):
      Input: add Himax HX852x(ES) touchscreen driver

Stephan Gerhold (1):
      dt-bindings: input: touchscreen: document Himax HX852x(ES)

 .../bindings/input/touchscreen/himax,hx852es.yaml  |  81 ++++
 MAINTAINERS                                        |   7 +
 drivers/input/touchscreen/Kconfig                  |  10 +
 drivers/input/touchscreen/Makefile                 |   1 +
 drivers/input/touchscreen/himax_hx852x.c           | 500 +++++++++++++++++++++
 5 files changed, 599 insertions(+)
---
change-id: 20230816-hx852x-3490d2773322

Best regards,
-- 
Stephan Gerhold <stephan@gerhold.net> 



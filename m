Return-Path: <devicetree+bounces-10418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9A27D1187
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 16:25:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15969282555
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 14:25:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA03A1D6A7;
	Fri, 20 Oct 2023 14:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=helmholz.de header.i=@helmholz.de header.b="LcKfAfEI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0BC11D69D
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 14:25:25 +0000 (UTC)
Received: from mail.helmholz.de (mail.helmholz.de [217.6.86.34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13D3DD60
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 07:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=helmholz.de
	; s=dkim1; h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=nTOFZc7bq733wtuIoZXUDDS7Bub00zC+a3meUxD2d+g=; b=LcKfAfEIGJQN03zNzSTlt2QhXi
	eksZWe9n2oH8ug/xKPYE9zonOdUl06+MFCn/hBAOaA8UiZQnjUXUilileDodAHS4yUHibVhpwFcTE
	v6Ckh6mcvwhtSMq4Ojpku0bJBDNE6NGo8pOyyKhZRXmTbVr1Jr3y2wBqUi80kmSVpEGh86VE7B3X/
	2gv6Qc01QnfcHDJTzkAaWymWk+Jh7ku89mbIBn6SmriI73KaxUXJPQqViBK2TAQHjLlDA9DwvFkIP
	uBh9fCcaLqNtya5Rkp3tKjsdxO0PjHxyUdwUoR5N1ON3gMYJlak9OJNyG/WZ+Id3LA4ReFrJacdee
	nj/oKWiA==;
Received: from [192.168.1.4] (port=55465 helo=SH-EX2013.helmholz.local)
	by mail.helmholz.de with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384
	(Exim 4.96)
	(envelope-from <Ante.Knezic@helmholz.de>)
	id 1qtqR3-000769-1u;
	Fri, 20 Oct 2023 16:25:09 +0200
Received: from linuxdev.helmholz.local (192.168.6.7) by
 SH-EX2013.helmholz.local (192.168.1.4) with Microsoft SMTP Server (TLS) id
 15.0.1497.48; Fri, 20 Oct 2023 16:25:08 +0200
From: Ante Knezic <ante.knezic@helmholz.de>
To: <netdev@vger.kernel.org>
CC: <woojung.huh@microchip.com>, <andrew@lunn.ch>, <f.fainelli@gmail.com>,
	<olteanv@gmail.com>, <davem@davemloft.net>, <edumazet@google.com>,
	<kuba@kernel.org>, <pabeni@redhat.com>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>, <marex@denx.de>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<UNGLinuxDriver@microchip.com>, <o.rempel@pengutronix.de>, Ante Knezic
	<ante.knezic@helmholz.de>
Subject: [PATCH net-next v4 0/2] net: dsa: microchip: enable setting rmii reference
Date: Fri, 20 Oct 2023 16:25:02 +0200
Message-ID: <cover.1697811160.git.ante.knezic@helmholz.de>
X-Mailer: git-send-email 2.11.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [192.168.6.7]
X-ClientProxiedBy: SH-EX2013.helmholz.local (192.168.1.4) To
 SH-EX2013.helmholz.local (192.168.1.4)
X-EXCLAIMER-MD-CONFIG: 2ae5875c-d7e5-4d7e-baa3-654d37918933

KSZ88X3 devices can select between internal and external RMII reference clock.
This patch series introduces new device tree property for setting reference
clock to internal.

---
V4:
  - remove rmii_clk_internal from ksz_device, as its not needed any more
  - move rmii clk config as well as ksz8795_cpu_interface_select to 
    ksz8_config_cpu_port
V3: 
  - move ksz_cfg from global switch config to port config as suggested by Vladimir
    Oltean
  - reverse patch order as suggested by Vladimir Oltean
  - adapt dt schema as suggested by Conor Dooley
V2: 
  - don't rely on default register settings - enforce set/clear property as
    suggested by Andrew Lunn
  - enforce dt schema as suggested by Conor Dooley

Ante Knezic (2):
  dt-bindings: net: microchip,ksz: document microchip,rmii-clk-internal
  net: dsa: microchip: add property to select internal RMII reference
    clock

 .../devicetree/bindings/net/dsa/microchip,ksz.yaml | 17 +++++++++++++
 drivers/net/dsa/microchip/ksz8795.c                | 28 +++++++++++++++++-----
 drivers/net/dsa/microchip/ksz8795_reg.h            |  3 +++
 3 files changed, 42 insertions(+), 6 deletions(-)

-- 
2.11.0



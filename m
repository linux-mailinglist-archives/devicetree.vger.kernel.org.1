Return-Path: <devicetree+bounces-84424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F48692C275
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 19:29:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42A521F22BAA
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 17:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F40917DE1A;
	Tue,  9 Jul 2024 17:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="jgiTUpBr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.sberdevices.ru (mx1.sberdevices.ru [37.18.73.165])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A9917B03C;
	Tue,  9 Jul 2024 17:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=37.18.73.165
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720546136; cv=none; b=hmc8ynOF5n35Ek2ATb1nnBYpQBMnyQN66NikEW28obWpetkfD/ZkM/qz6j9GtgUmy1kMS8LMluUXKWDfchoSYfifeYoQDBdFEtaNRn7HAsy7qvg0LtMpyg+EWagxWn1rCbBOb6cmevpQ8hXChVdI7jLdtiObjWugyzK2tDZ31s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720546136; c=relaxed/simple;
	bh=dS5S9BguHM1vS4P1U3XrpCCXneI1h01yyFvwA5AGRtE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=cjCgLn6KsrBfWwAJz/yTbI8BTf3WcTtCW3R+oW8D73CHKZXPQ0B3F0Mx1Vv7SOUdeRVzK+/LTptW5dCyl2moRR8SPojTyyQDFf+3MnvldBWwrux7IkepDj572cpZSy+TW3nZqga39/N7Y80m1UHOBp8jPGCYYkwy5Xr1Nax8Uk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=salutedevices.com; spf=pass smtp.mailfrom=salutedevices.com; dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b=jgiTUpBr; arc=none smtp.client-ip=37.18.73.165
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=salutedevices.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=salutedevices.com
Received: from p-infra-ksmg-sc-msk01.sberdevices.ru (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id 61BFE100015;
	Tue,  9 Jul 2024 20:28:48 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru 61BFE100015
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1720546128;
	bh=TcDFy71/AXx2pzb0rvOUPBB3G3vJtOd7X2G3cLpovvA=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:From;
	b=jgiTUpBroJT9klmCru2FBllEFPACegOD4SspDNuyezS9+XJQ1yiNFfPqhO3hJOJu6
	 msnigEwKBvq3Z+319jYzXiBFx23jioC0NTqKj6QYn/6zgEXV8GwpI8TLe3qivyxXaN
	 z/GGDq5UQCwgMyJgY7zcBZHUp0gz5TlCJdgMxRh9Xd0sl1E9IcShChcTRKPBMtBcoK
	 W+u+TJOFp06M2t5UxQF7sHAQjTTfJyRGO+2XRADIhk2uDSshW0j17TdFXU5x7DDHbV
	 gj3WYkD7jI8SJB0mkm92Ev+kz+rSJyJRoOXHmzsIYq+3EwYlx5tScWjw9D2fXP3aNU
	 IXK+H2ppMs5JA==
Received: from smtp.sberdevices.ru (p-i-exch-sc-m02.sberdevices.ru [172.16.192.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Tue,  9 Jul 2024 20:28:48 +0300 (MSK)
Received: from localhost.localdomain (100.64.160.123) by
 p-i-exch-sc-m02.sberdevices.ru (172.16.192.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Tue, 9 Jul 2024 20:28:47 +0300
From: Igor Prusov <ivprusov@salutedevices.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
	<tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>, Igor Prusov
	<ivprusov@salutedevices.com>
CC: <prusovigor@gmail.com>, <kernel@salutedevices.com>,
	<linux-sound@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH 0/6] ASoC: Add NTP8918 and NTP8835 codecs support
Date: Tue, 9 Jul 2024 20:28:28 +0300
Message-ID: <20240709172834.9785-1-ivprusov@salutedevices.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) To
 p-i-exch-sc-m02.sberdevices.ru (172.16.192.103)
X-KSMG-Rule-ID: 10
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 186397 [Jul 09 2024]
X-KSMG-AntiSpam-Version: 6.1.0.4
X-KSMG-AntiSpam-Envelope-From: ivprusov@salutedevices.com
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 24 0.3.24 186c4d603b899ccfd4883d230c53f273b80e467f, {Tracking_from_domain_doesnt_match_to}, smtp.sberdevices.ru:5.0.1,7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;salutedevices.com:7.1.1;100.64.160.123:7.1.2;127.0.0.199:7.1.2, FromAlignment: s, ApMailHostAddress: 100.64.160.123
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean
X-KSMG-LinksScanning: Clean
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960, bases: 2024/07/09 15:25:00 #25923573
X-KSMG-AntiVirus-Status: Clean, skipped

This series adds support for two NeoFidelity amplifiers. For both
amplifiers vendor provides software for equalizer and filters
configuration, which generates firmware files with registers values.
Since in both cases those files have same encoding, a common helper
module is added to get firmware via request_firmware() API and set
registers values.

Igor Prusov (6):
  dt-bindings: vendor-prefixes: Add NeoFidelity, Inc
  ASoC: codecs: Add NeoFidelity Firmware helpers
  ASoC: dt-bindings: Add bindings for NeoFidelity NTP8918
  ASoC: codecs: Add NeoFidelity NTP8918 codec
  ASoC: dt-bindings: Add bindings for NeoFidelity NTP8835
  ASoC: codecs: Add NeoFidelity NTP8835 codec

 .../bindings/sound/neofidelity,ntp8835.yaml   |  65 +++
 .../bindings/sound/neofidelity,ntp8918.yaml   |  63 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 sound/soc/codecs/Kconfig                      |  13 +
 sound/soc/codecs/Makefile                     |   6 +
 sound/soc/codecs/ntp8835.c                    | 432 ++++++++++++++++++
 sound/soc/codecs/ntp8918.c                    | 356 +++++++++++++++
 sound/soc/codecs/ntpfw.c                      | 137 ++++++
 sound/soc/codecs/ntpfw.h                      |  23 +
 9 files changed, 1097 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/neofidelity,ntp8835.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/neofidelity,ntp8918.yaml
 create mode 100644 sound/soc/codecs/ntp8835.c
 create mode 100644 sound/soc/codecs/ntp8918.c
 create mode 100644 sound/soc/codecs/ntpfw.c
 create mode 100644 sound/soc/codecs/ntpfw.h

-- 
2.34.1



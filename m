Return-Path: <devicetree+bounces-245341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3D9CAF731
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 10:31:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D151301EC6A
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 09:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FAFC2D7390;
	Tue,  9 Dec 2025 09:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="duSD+Kz2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1452227F195
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 09:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765272693; cv=none; b=LAbpwGo9WzGoF4XjeGrSMqaMkO6MplkNmYUv9wIAjRzf4QWHAl9jkhyB3Aqvoqwul5qBZQsNvAlINv6AhxreI1mgWA0PBl8NDKdro0WpD+7P6We04myrBqFacUIyQ6X7TCrQiNZku2y11w71weLbHcakFEIHNuOstWlHrAl+fvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765272693; c=relaxed/simple;
	bh=L2NXhYYRLt8OIp+LSK83T3wVNVp3FYPqt22R7zQ43L0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=E0l1fJtVupgm0OEnzSGEHB6ILc38uYFvu1tB3qG4K6hvSgnwZMqsr0xNfsqvEjsP3fUcX7fHAiTz++gco1z3S3yAn6UHDUmneBDFMefKHzMVj26wPn2GSG/ZEdlCE9ELzAq7d4WSYGuISo2Q3xfewu4CIfLScU2aP74QmGqgU0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=duSD+Kz2; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-bbf2c3eccc9so2601405a12.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 01:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765272691; x=1765877491; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MRxNXZW5HGKhav3cQeIpm16SYzyMsJXYbVPLK0TzqeI=;
        b=duSD+Kz2X3Ha9zOWpS+WcwkgwLbBTLBjF+ZmogaMhUz7DNuZBwayVPFlMx+XN0KeJq
         Ih7eX9Ua00bTh72Q7T8pJ6gXsJrRgqBLdys4JuSs2r5nTyi7pstOiswh2LUyv8aJ/9os
         VMATXXt7MCfs7yIP6dD5WDKxNm2/NKzdgxGgcQwuTxJkW6BI3gHapnxn6PrZfk4Ly08v
         dd9A+xtYViuyVt8/d5yz2a7uq0nvLmyFMzS4Y2Q7HYq0O09+wil0ye4nQxYlI5B+ezBP
         OpF8ZfC4w1OFllNR18JFEt4K07OAwc54amTZkBDpW+hXtR3RYzQEPK7d2lmwQSPSZrDH
         +NZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765272691; x=1765877491;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MRxNXZW5HGKhav3cQeIpm16SYzyMsJXYbVPLK0TzqeI=;
        b=RZqJ7kF4jxm8z0umRzQYVl/T0D5Ut6K+9cUQskAB4hlR+BZDHVrmQ/5M1jIeAYcVyh
         PfbQtPEgUtEwREVAbuqCNqy3VCHxp/sQ3/9ipx8UaRcO2VYCfwQ2t3shRv61ZTyUGIyT
         ++j5iHbGPXqWwzsmIkjJGf8WfwpxVEU51fkJZUvJenPeruSLHEOIAGD2A+mxvnDvaA+w
         lwSQSeM/39sCY5Fm+NEY3Qaaa9bOsPWBJi/C2zWDSpdhyNWlG7jkPVr/p1cLCcFx5LUX
         p9/m1sqLvQguPwL6i2HeDMaZg/MdCDVkMXo0DezvMPQDoSyL+/9yXeaNPawHNr8sASHr
         lKHw==
X-Forwarded-Encrypted: i=1; AJvYcCXPOQ98PwFcC+eFfG9ltyvN2yTkWmI3rPgjMevuXv2jXrDAFAJp4K2LzuUfCB5dLhZO7ILb+pZKiHBX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2a9P9Zv/Ifzc0AzPQLR+MJbcnv/8E10g340chnRrGiy3n9RGb
	sB8zQyjiDVXaP4F+khjIs+VubumTP4P75fkqbzJlhjFuSXPxN0lIoWqE
X-Gm-Gg: AY/fxX6L1YI0TUckR/ymqKZ1/A8dwdztasYSCGV26MQHY+7FUse62RZkhdCWSjeI3Z7
	It9O3MHcK8OW1UG0WKprx6jl6WeFPYNjgcngsujZgF8ZfrRvP6WZv34KTzR2ukPMUXtiA7VNFR5
	PTJfqfNIabcrACDqVD44vCc3bkpKV2jsyocEVRCc/h5UmngXtqqGVx2+TbfkkykFpEfYZD0olh/
	X5OvSuBoSzuPxu7Qcxq7aYm7Xpy4LS+SVzM4/JZyXvMbYtfXBIa4hrrBpZa5UrShhxfuEViFNPl
	aopNXnbN1pGVrRB28lQD2zgziGPApeTui6Jdi/zi4QVmXUbOZAF3xts17t3F8eQD407zoPU7lR8
	nzvcotPIdX33DiLArM+/Go4A94XN6eKS8IodCt9xaP4U1kXw++4sQJEmw7+rObanuaiDECDkiSI
	tSrqu2GT0AFFfXHkvzz1Zt9HEpOkrZ81rzwSSxl+VosdirsIvG216PlT/p+QzF/H4skX3ej+Ewv
	byQDbfuDi6a8FKSlKnjzWlo2wZbXL4FjwwJhRSfT4H9POae+iGuZ5aCYbiwRGKJIEBlB+im543K
	fJngIYyKU70MeMS+GxTJetav02xEK+xGOl5AYF10b3IHr1dMghY=
X-Google-Smtp-Source: AGHT+IFL+1r/PaRqVVNGXNwojrxl0XaiTGaLLglD0VKcZyQgQAl1LXB5j5aWz2pOa2uC61OCwPtJew==
X-Received: by 2002:a17:90b:3fcc:b0:343:72d5:2c18 with SMTP id 98e67ed59e1d1-34a4f89b3d4mr722746a91.12.1765272691298;
        Tue, 09 Dec 2025 01:31:31 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a49658704sm1800408a91.6.2025.12.09.01.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 01:31:30 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Subject: [PATCH 0/7] ASoC: basic support for configuring bus keepers
Date: Tue, 09 Dec 2025 19:31:13 +1000
Message-Id: <20251209-tdm-idle-slots-v1-0-38dabf6bc01e@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGHsN2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDIwND3ZKUXKBQTqpucU5+SbGuoUFSoiVQyiwl0UQJqKmgKDUtswJsYHR
 sbS0AIqk2u2AAAAA=
X-Change-ID: 20251201-tdm-idle-slots-10ba92516da4
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Shengjiu Wang <shengjiu.wang@nxp.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Shenghao Ding <shenghao-ding@ti.com>, 
 Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3561;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=L2NXhYYRLt8OIp+LSK83T3wVNVp3FYPqt22R7zQ43L0=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJnmb7Lqeleti/sfK8JcZtv+e7XCRM0YuTVffT1bNnhu3
 WXgcK2gYyILgxgXg6WYIsuGJiGP2UZsN/tFKvfCzGFlAhkiLdLAAAQsDHy5iXmlRjpGeqbahnqG
 hjrGOkYMXJwCMNUJpxkZTjp4J+y6LttmvjF4Za7M3z0nFh2bcb7x6n3jb5a5zd3vfBn+Z2utDpe
 3nlC34vKxrdN+SP6WfPOB9UO38/QY/t3v+3lfsAAA
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Hi all,

This series introduces some infrastructure to allow platform drivers
to specify what a DAI should be doing when it is not active on the
bus. The primary use case for this is configuring bus keepers which
may be integrated into various codecs.

Consider a device with two codecs that report voice coil voltage and
current data back to the host via I2S. Codec A is configured to transmit
its V/ISENSE data on TDM slots 1 and 3, while Codec B is configured to
do so on slots 2 and 4. The receiving end sums the two together.
If Codec A transmits anything on slots 2 or 4 (and vice versa), the
result is a bus conflict.

Some codecs include configurable bus keepers to ameliorate this issue.
Notable examples are the TI TAS2764 and TAS2770. By default, these
codecs keep their SDOUT pin floating during unconfigured TDM slots,
however this can result in garbage data on the bus. TAS2764 can be
set up to fill specific TDM slots with zeroes, TAS2770 can hold its
SDOUT pin to ground.

This feature is necessary to properly drive the speaker systems found
on most Apple Silicon laptops. All but three models include six codecs
in two groups of three driving two woofers and a tweeter on both the left
and right channels. Each codec group has a single line for SDOUT, to
which all codecs are connected. The two groups are then summed on to
one I2S port. Each group must ensure that it is silent on the bus while
the other is supposed to be active.

In the downstream Asahi Linux kernel[1], we set up one codec in each
group to zero-fill or pull down its group's side of the bus for the
opposite group's transmit slots. This is done entirely in the codec
driver, however this approach is perhaps over-fit for our use case.
Following previous mailing list discussions[2], I have tried to
expose the functionality in a more configurable and generic way.

I have integrated this approach into our downstream platform driver
and select Devicetrees as an example of how this mechanism is intended
to be used[3].

Regards,
James

[1] https://github.com/AsahiLinux/linux/tree/bits/070-audio
[2] https://lore.kernel.org/asahi/20250227-apple-codec-changes-v3-17-cbb130030acf@gmail.com/
[3] https://github.com/chadmed/tree/tdm-revised2

---
James Calligeros (7):
      ASoC: dt-bindings: convert tdm-slot to YAML
      ASoC: dt-bindings: update tdm-slot.txt references to tdm-slot.yaml
      ASoC: dt-bindings: add TDM slot idle mode properties
      ASoC: soc-dai: define TDM idle behaviour modes
      ASoC: soc-dai: add common operation to set TDM idle mode
      ASoC: tas2764: expose SDOUT bus keeper via set_tdm_idle operation
      ASoC: tas2770: expose SDOUT bus keeper via set_tdm_idle

 .../bindings/sound/imx-audio-card.yaml   |  4 +-
 .../bindings/sound/simple-card.yaml      |  4 +-
 .../bindings/sound/tdm-slot.txt          | 29 --------
 .../bindings/sound/tdm-slot.yaml         | 66 +++++++++++++++++
 include/sound/soc-dai.h                  | 20 ++++++
 sound/soc/codecs/tas2764.c               | 95 +++++++++++++++++++++++++
 sound/soc/codecs/tas2764.h               | 11 +++
 sound/soc/codecs/tas2770.c               | 75 +++++++++++++++++++
 sound/soc/codecs/tas2770.h               | 12 ++++
 sound/soc/soc-dai.c                      | 40 +++++++++++
 10 files changed, 323 insertions(+), 33 deletions(-)
---
base-commit: e4deadb3e562aadf2825f28be3dcbbf01cf2ef17
change-id: 20251201-tdm-idle-slots-10ba92516da4

Best regards,
-- 
James Calligeros <jcalligeros99@gmail.com>



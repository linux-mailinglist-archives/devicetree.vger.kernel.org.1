Return-Path: <devicetree+bounces-262746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJ83A+eCg2llowMAu9opvQ
	(envelope-from <devicetree+bounces-262746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:33:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 506EFEB029
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:33:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFC5B300C017
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B453320CA9;
	Wed,  4 Feb 2026 17:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="clvVtXIW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29EA1A9B46
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770226320; cv=none; b=DNpe7TVYY+JK7ghIOHq34WsmnQQn8K9f59DfJkKoUrRVfCCHGlbFjfL/5l++Q4t5V6zfUxlQgXt6kXFlzajKpsDmx9d+fmwBXaHSBfer8dhYA/wZjouKv0Aqb8FtqnlbI3Lac3ujvWeeaNZibEqj5ciFqsLEOqW9ujJGjhwi/MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770226320; c=relaxed/simple;
	bh=C6shP06cuEngxEKVSJ3qzRffS/17oYn+h8XyIxe5bJo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QnspkAE3syzBRAPBmES7kIzURShK2vHDOPsfqMvgEdtWbO+tcJATQO9Gm7PhzwGzdUrpoesSs6ncAdHM8zrW8IrkBvNtg9pHPo5pZD+W+Kaja3SK4Ehw/weaISrif327eTZUlPjnXBXJ43u4HGOYzM/uSst3f+0oEpGNQFlaOvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=clvVtXIW; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-432d2670932so97452f8f.2
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1770226318; x=1770831118; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y2G2lXD141iBSL0L8iFrhRwAFQpSji3elNwlUZQdzaI=;
        b=clvVtXIWLc9JiMmrZsbIbls1mD8/wB8ezrDbQODl4ym/OoRxkTiXiXDexTatSfqohC
         KgV9q+LlMLcADmDWkFPB0PEZzMeIHhcg2phbbhC1w2QhangHWLuM14DI2kQDeE/46PJc
         nlki3LZSbt+bEbyifc/w6EsFvUM0ob15i7fQA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770226318; x=1770831118;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y2G2lXD141iBSL0L8iFrhRwAFQpSji3elNwlUZQdzaI=;
        b=CyreH0lbofyz8oQMzRlrG6GnDg3B1XG55Y2Dxb8CEhn+eSpuxTDy7rE6Z1u/hYBzP+
         mR79QM9eQ5BAx778DV9WFYcw+ONjLZX5m8yWSb/lXlYlNmUVdEDPkBiyvtV/2LUH/RZE
         muTsA4g9TmcdF5hyXubh0ylWiS7Jno3zsWD6wVDQl1o0sv3M/Hlu32V6MF7BX+kbl2bU
         TqUxJgXfcNu9nDZFtxxfVw6U+WcqawmVZzc8BbNHvRsGdUg2e993X3SzWX8A94jhsGLS
         oopZWXNlcVHhsgYarIe1Hp90vWLXRBLsWfO4LtZzic+84OX4PqIk7kagWtbLjTaSxL6G
         b9hA==
X-Forwarded-Encrypted: i=1; AJvYcCWkEoMJ3O7q7NuXiohLf2nvLDAsh2PcaLloBfmDM33qRJlr82yAuoX8kAwY0TlJPbsXP3fSQoU6Vyiu@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx4ksQrs9r/0KIt3kb6qIciuTl9c6Purme2/ncA6jRoOg1i1vJ
	l1p2ekf5Dh4wu8lv8OMcs+rdfIeUHp+Rk5re5t5paX/7fXHr/ImMALGU/E5Rv5Zher4=
X-Gm-Gg: AZuq6aIm6szCiDnPbClkAW6siXjJzAEdNqadvGeuhwuSWHqHbP5g9TxYUvKitsll5LO
	b/kO0GOzeOdrmcdjAdIg4EdyekN5fiyekS0oJplcRNDQUpayYOu91NoBLISf2n2BfNYSXF0cb1I
	kwjy/xN10sV+z3eCj4rcnWOtVq7u9GU0jCD0QBCPtbhtsd0qzFEG5wgs7c6lqSsNB433xAVg63I
	u4alakQ2bXRiEz9E2M9aGI/tiNj5pUpiBSZwh/1P+6PqW+k3mbma/lwsoLl3lnoHOH75lsIGfoA
	Ko4yNBmMbiv+HK0koRuqtU2FRjVhcEoMFQPExZl27L8eh9aDAJDOIcs1txBJ/vkVLvNnY1aVqDl
	w0RMeSQoYEjzHstnM+IlRBDUx2tvhg5GCYqeTzNVdW5XRWMsHHWyUWsnRPRyJlWkLXXPnTYoAm3
	KEQqmg3iLy2RumBqidU6AcIWL84PriXqnAJGxsZSzrAHd0pyVERcAc0JAS4jriFXSeUqIEfttx0
	k9SEyAhxGEghw7178/+4pmugYB4oNlK4fJBXecoapGh
X-Received: by 2002:a05:6000:3104:b0:431:35a:4a8f with SMTP id ffacd0b85a97d-43618059dc4mr4909933f8f.47.1770226317966;
        Wed, 04 Feb 2026 09:31:57 -0800 (PST)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com ([2.196.42.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436180640f2sm7241565f8f.39.2026.02.04.09.31.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 09:31:57 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v4 0/4] drm/panel: ilitek-ili9806e: add Rocktech RK050HR345-CT106A support
Date: Wed,  4 Feb 2026 18:31:16 +0100
Message-ID: <20260204173154.337674-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amarulasolutions.com,kernel.org,gmail.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262746-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 506EFEB029
X-Rspamd-Action: no action

This series extends the Ilitek ILI9806E panel driver to support the
Rocktech RK050HR345-CT106A model via SPI.

To achieve this, the current driver (previously restricted to DSI) is
refactored to support both DSI and SPI variants independently.

The series includes:
 - A refactoring of the existing driver and Kconfig to support
   multiple buses.
 - DT binding documentation for the Rocktech RK050HR345-CT106A.
 - The implementation of the SPI-based driver for the Rocktech panel.

Changes in v4:
- Fix "WARNING: unmet direct dependencies detected for
  DRM_PANEL_ILITEK_ILI9806E_CORE" reported by kernel test robot

Changes in v3:
- Add Reviewed-by tag of Rob Herring

Changes in v2:
- Introduce DRM_PANEL_ILITEK_ILI9806E_CORE hidden kconfig option.
- Split core and DSI logic.
- Restore vdd-supply as required for both DSI and SPI types in the
  dt-bindings.
- Dop useless settings in case of rocktech,rk050hr345-ct106a in the
  dt-bindings.

Dario Binacchi (4):
  drm/panel: ilitek-ili9806e: rename to specific DSI driver
  drm/panel: ilitek-ili9806e: split core and DSI logic
  dt-bindings: ili9806e: add Rocktech RK050HR345-CT106A display
  drm/panel: ilitek-ili9806e: add Rocktech RK050HR345-CT106A SPI panel

 .../display/panel/ilitek,ili9806e.yaml        |  38 ++-
 MAINTAINERS                                   |   3 +-
 drivers/gpu/drm/panel/Kconfig                 |  22 +-
 drivers/gpu/drm/panel/Makefile                |   4 +-
 .../drm/panel/panel-ilitek-ili9806e-core.c    | 134 ++++++++
 .../drm/panel/panel-ilitek-ili9806e-core.h    |  15 +
 ...ili9806e.c => panel-ilitek-ili9806e-dsi.c} | 153 +++------
 .../gpu/drm/panel/panel-ilitek-ili9806e-spi.c | 323 ++++++++++++++++++
 8 files changed, 576 insertions(+), 116 deletions(-)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.c
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.h
 rename drivers/gpu/drm/panel/{panel-ilitek-ili9806e.c => panel-ilitek-ili9806e-dsi.c} (82%)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-spi.c

-- 
2.43.0

base-commit: a14980444f418de53a7cc315eb4fbd8a89c72991
branch: rk050hr345-ct106a


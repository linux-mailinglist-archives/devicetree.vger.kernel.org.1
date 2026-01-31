Return-Path: <devicetree+bounces-261382-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JMIBNp5fWlDSQIAu9opvQ
	(envelope-from <devicetree+bounces-261382-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 04:41:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2798DC08E2
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 04:41:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 98D073004069
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 03:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32D0534F27D;
	Sat, 31 Jan 2026 03:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="d9UPXPj7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8B834A78D
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 03:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769830867; cv=none; b=Wqg1qe8Sp3Ua02rahc7ivbpODb3xaNMhJeQJYC7zg064gwd43V0uY0L39jdz3Xg7F40nEQRE/5akUoifaVrWNfYz/SBxMTOgtVZ93Sken86ozJwVtsvK2nDMfaZRZhMTd8x8OLtCZHKY3MsVd3Inl6YqWGYPXw/bp3UwAnqejbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769830867; c=relaxed/simple;
	bh=sAbp8EKB3hIuE8yD4q31O0YbG5/EhgdQQZm9l7LVCuQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lksI5Bs+9aY8dRCROMMBilLndPsQsCsOk6U6U/g3oNu8cEpaA1bowjpK5IjSswPIT7mOW+C9S8B5iZ+3Wc4S25ktazqWc/tgDOY0v3j1GwqKjX/YYcNZyn2acOssbQ31G/u7A+bjCXXExCRumte67bw3YPWo4mPd8GYnUee3n/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=d9UPXPj7; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-81f4e36512aso2629367b3a.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 19:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1769830864; x=1770435664; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JDZEer4ATr8JGUKyRRTgNAZXllWmyF2+QgTWm11sInA=;
        b=d9UPXPj7TrVwBfg/mb21QbZEVQ9DGTX9uimNvGLLTtkRUj9hRBJO+yg3iRw1zeaA4D
         t0JG+NtT/2bOMxNaQ3i1NpuX09lH40TIQ4wc9WpN23pbFId/H3WPH5Xjm+z4rtKwkMT2
         fgsdNNmqMMirYzpVneOzvmYJ75HTivsubvu49EsXQ22snxj/18lWjO0IlRKAXlhbCFum
         4fjjW//W9uz1FgaP/fok9rQa46C5UO8VeF55SGQQM13zH8kU+Vz2gQ7UHeA98rWJcPAh
         t25s5D0yDWZZdgr9xNcvOX4K8tSQ6BqUwRXdyGX4Ik9evmHChc3jbaUGzlhPINQQ5FIr
         kwPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769830864; x=1770435664;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JDZEer4ATr8JGUKyRRTgNAZXllWmyF2+QgTWm11sInA=;
        b=UEqz8Y6Gw/camBI1hePyrtQ83jBBb7U82z9S8sLKSK1qg+ELe6MMeJhTHfsRRxmRiY
         lEiUvvLM/OK4B3X5GMETMTz7R/RfJNOcBfoRGniURuptcJmjSUpgrzRBnwcqhk24y+jx
         KxvgIdH/TxUHJXhCK+M5SsdzH7FYDSCO9L1zFTPZK6zogNSHzm0M6G94hOiFfbpPY2lk
         RadpRj17VPprfSrwGuRiPMsgWfDQUL/zKR+rJgJ/M6WquBDtIjqRFWpIOSJsbk9mZfZV
         7fXPyizWc5wMj2jnuBXOJc9LJwWlFcA8q2e/fennupIaEOGzKwSbhKfbFZ339XHllAdQ
         C6FQ==
X-Forwarded-Encrypted: i=1; AJvYcCWB6o7B3NdqIa2YMlEaFKAZ1+Nw+jPqRliqfNnmaCn+/tHWf1S+MPCVezaLKPqgMcC6c0zBBXwIJq9j@vger.kernel.org
X-Gm-Message-State: AOJu0YwbHdq0II0zTO3uG1+0TxykNUgwkzQrudYcCkGrwF9kF+FJ9bme
	TavQ3ho0yh7KGdVXvUtR+gkoNx27qYUWItvsiiSVwtvYsTaNkPGc33WR8ZXgDIhSAAI=
X-Gm-Gg: AZuq6aIeG4k47bRiyCRLgjN3i7e01vmXed/GO5buACciLv42KqLUNYZsW4oNal+bFFO
	Rogt1hbdm0f81qEppjMoUfM8KK8H2TAoYhAK0aWXhZcWu8UWklCSxZCYJSd6AGUFb0fQWVJTZqG
	SSyVWDu1zLyylF29p7heNkgTPavLXKdz+MgiKIeUpVqDjp6pLnu6rJIQmncXUZWWTL3EID/kb+Z
	PTKZsFqJI3XsyE6EL+tNWXW0UjZ+DPh1exM6hsgl3Ig4qgln2A+Yv98BZi9DPSgCItpT/e79++6
	r3aleQEhVH6ZpLwTVZGHuIZ/L4PMkVlXR2IV7lmEUfFWI+LhKDdYJiC4/Z8gTEeO2g0jKF/byCm
	1iXw1xXod/Snn4le1kd0WAYwRnhk7h/nyOLRE7BP5lVDq9pagm61HHWtEu3uffHO7yn9viK97YU
	ETVrJMsL5dq3M6JF9MeqcCu0diTXc=
X-Received: by 2002:a05:6a20:2d22:b0:363:bb19:ed30 with SMTP id adf61e73a8af0-392dfff6af2mr5767681637.5.1769830863935;
        Fri, 30 Jan 2026 19:41:03 -0800 (PST)
Received: from z440.. ([2601:1c0:4502:2d00:f8d:9478:bfbf:7332])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f3cc71bsm8986062a91.11.2026.01.30.19.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 19:41:03 -0800 (PST)
From: Igor Reznichenko <igor@reznichenko.net>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	"Kael D'Alcamo" <dev@kael-k.io>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] drm/panel: Add support for the FocusLCDs E35GH-I-MW800CB
Date: Fri, 30 Jan 2026 19:40:59 -0800
Message-ID: <20260131034101.307486-1-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[reznichenko.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-261382-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[reznichenko.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[igor@reznichenko.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[reznichenko.net:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[reznichenko.net:mid,reznichenko.net:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2798DC08E2
X-Rspamd-Action: no action

Add support for E35GH-I-MW800CB 320x480 MIPI DSI panel by FocusLCDs.
The panel uses Ilitek ILI9488 driver IC.

Igor Reznichenko (2):
  dt-bindings: display: panel: Add Ilitek ILI9488 panel controller
  drm/panel: Add Ilitek ILI9488 controller driver

 .../display/panel/ilitek,ili9488.yaml         |  63 ++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   6 +
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9488.c  | 299 ++++++++++++++++++
 6 files changed, 380 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9488.c

-- 
2.43.0



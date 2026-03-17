Return-Path: <devicetree+bounces-276814-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBv9MKWYuWn5KwIAu9opvQ
	(envelope-from <devicetree+bounces-276814-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:08:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6B42B0A3B
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:08:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 99EA33045678
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15CE037D136;
	Tue, 17 Mar 2026 18:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="nFr/9wnB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 968FB379975
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 18:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773770892; cv=none; b=fRB7RyefmkuECPlxYaNTUldl1ITFt/jErjUzYaWFmisPZLQb2crxJIWixYj+um+aNx/PXmnezFjEi2QTG1TAR2bDw1oZPtPtRLd7Oo5ZaK2AJFqK8MEQJQazJXpXXyQDhTCeJOLaZRY8VlaOu0ZRMuvgvkxTWrQiSoRzlbptoUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773770892; c=relaxed/simple;
	bh=akAl2/DG0rdw7GlbNngJ+xuwwxnaipw/AQYp8maIV00=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=mjJ6kp8yl/UhYDUtfpzCaTFCOcrNYvS8ZXE8li/5hQqnhiNwNOj+DtJXOTcflT+wmXoVTgMVClle/EPcHCeGtVQkMbZsPioeC5HpVWEfJQ5dJrQ+SkwjTDJxeSWoIBepPMH339vGDRwfsMTVTRvGpd72fqA7J0TRMHFLxiWGZU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=nFr/9wnB; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-43b4fd681c2so642402f8f.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 11:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773770889; x=1774375689; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HT1vwWl+a38V7qIi5t2z8SaT/U8JFZY0mnIb8ncq2Gk=;
        b=nFr/9wnBAV5+DBAoMvmJ01HtGUUcrRjDoa18LaaKI3SyGLsBU2+pG6AfHsJWMUJ+v3
         0+ZUA/Q+ebu8oIXfwSHkFCPncOCWObgMRYeJAtMGJfFuAzlz2idMK+g6/J0/+KJXn/i1
         JmuRU8cfYKQx/bbMrl3cB0O9eZUcGXkkY8TQbdt4r4bOB4p+w2tuuE2vKxemjwYiW179
         n22XP99NiwGHp9GMhKXY3cBHFi3IOwBUr1vaa4zAccarALATqQs9Bs4MwB2NDWdX8qLs
         q2fBEz3AQ8aIi1ZRd7h8aqCyOYdy0GmzCvTok/9um+PSalgaJVz9IpYppY8Po0oZTAAT
         8a0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773770889; x=1774375689;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HT1vwWl+a38V7qIi5t2z8SaT/U8JFZY0mnIb8ncq2Gk=;
        b=gYfnNjTArOautfrQrILcZk9b3w7WInus3SM/czRFT1lAZCqtjFMSot9aFQrVKP6ed3
         YM+lxC9o33yfmuHKCDYW3rnKcjjP4BWIU6jpQkeka2GICjLHhz2Tz+JfNI5Myhq9Uxrr
         q6ICRy+qY6ZQ9aJBMWosmg6sW8RQRPwUW+UDk0MR3aVQw4WcD/XUfp/+Wrg/QtTw0gom
         l+xNpQ37EeEN304mBXgdv3G5SzU1KtH0/TzC4RLH2oTQbiiqynvKCFmzxVXfbOkiC+gU
         eDbY2BMXLc7S3VKbmySWEJGj+bIcFxDhCBfhYe5GtHjnzXFKjlUb4RY0QQHCfBQZoT1z
         7AMw==
X-Forwarded-Encrypted: i=1; AJvYcCWhlkqgnUwYRwyKqD3VallGT30Pm5SpUoUeVS8FAZnluvkm90rJGDlgAo6dOVkBwzm8QJdrNANV3E0X@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg63TUg8A8fssAVakmHuCc5VEGH1hvFGAlhrv2OxBqqV4MzYkM
	+L22XzFM+v6prINNKKTKcR4qmFlsS3hFPLM+YneizJontHsF0djPm3+bh2mp9HntOaw=
X-Gm-Gg: ATEYQzyaoc66jXIGc5ODowG5cjqDYIwPql3hRuUuoyZcgtNWpDstSM8mo/E6PdPqQWH
	BYrMxk9R+3vCpjp+ehC9xPCKsS/DmJWzCLZmg/1NvF7lzS3eEjUjDqbSzfyyZ6InhuXWIlcC5qn
	wvlx0ClvfJuOp8J7pSH8tR+Ae8aual5HvovwG/OeBk0FPXea1ixNVjo4/C2ma8xTdopct0myDo4
	ckazSZ1p2fKKPEIh6X+pMapneRFvnbIIdN6+b1m3N+FBsYaQQA068KXhQM6Xoa7r9nuvdlwhghz
	8HzGk1XNUWgzaBQ06H6TcT/mPqwaMwLNSO9dcTClQNkNdm+1meIqk2Bvvq8zmUydHUpjDQXyGjI
	qGqsrUHNn0mOm7dsbPiupr37BuPgNN8C9ChQxUGSUPe16/GB0AG7QpjIvXH9+F6AbMv2nh5Cc7b
	N/wc1YnwgC7Qeoi5c1AG6mqWLTgTLAzKox5fAueQBNraSVuiBI3Wmr4Lt9bN0zZGN8lsHxgVVUE
	8mpgg==
X-Received: by 2002:a05:600c:1d0b:b0:485:30f7:6e88 with SMTP id 5b1f17b1804b1-486f4577061mr8194215e9.31.1773770888892;
        Tue, 17 Mar 2026 11:08:08 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184b8b9sm1436536f8f.1.2026.03.17.11.08.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 11:08:08 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH v2 0/5] Add HUSB311 Type-C controller
Date: Tue, 17 Mar 2026 22:07:57 +0400
Message-Id: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH2YuWkC/zXMwQ6CMAzG8VchPTtDZ2DqifcwHCh20sSMZcNFQ
 /buDozHf9Pvt0LkIBzhWq0QOEmU2ZXQhwrGaXAPVnIvDbrWbY3YqOkV6YSo9AWJCAdjTAvl2we
 28t6lW196krjM4bPDCbfrz9i2fyOhqpXVDY3UnEdrTWef4j2Ho+MF+pzzF7urctmgAAAA
X-Change-ID: 20260115-husb311-291bbb1a7776
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>, 
 Yuanshen Cao <alex.caoys@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2698; i=alchark@flipper.net;
 h=from:subject:message-id; bh=akAl2/DG0rdw7GlbNngJ+xuwwxnaipw/AQYp8maIV00=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTunNF6r7Z+eZ2E4oJ2I+HNT2ROywbkLzbi7/zRrbxM4
 o/qsqxLHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEy1LBcjw8nDy1/9mst7L2zPdOOAlW2RyZm3DoeVcTIVL3mslC5yOYvhn37WtUW
 BX4vqPti9vzJPwm3qHTN+i5oTzdy36vprLj4X4QcA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276814-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,linuxfoundation.org,richtek.com,sntech.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6C6B42B0A3B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

HUSB311 is a drop-in replacement for RT1711H, used in Rockchip RK3576 EVB1
board and some other boards closely following the reference schematic.

The existing RT1711H driver seems to work fine with HUSB311, and publicly
available documentation does not provide enough information for HUSB311 
to identify any meaningful differences, so this series wires up the
existing driver to treat HUSB311 in the same way it treats RT1711H, by the
way of introducing fallback compatibles in the binding and removing
unnecessary VID/PID/DID checks from the driver.

Note that patches 2 and 4 are on top of commits by Yanshen Cao which are
currently in next but not in master. Maybe they can be squashed in full
or in part to reduce churn, if we agree on using fallback compatibles.
From what I can tell, ET7304 can also be used with a fallback compatible
alone and without driver changes once VID/PID/DID checks are removed (I
don't see it used in any DTS in either mainline or next yet, though)

This also enables a bare-bones DT node for HUSB311 on RK3576 EVB1, but
currently misses the connections graph for the USB SS and SBU lines, as
those might require the USBDP PHY ports schema to be updated first for
proper DP AltMode support as indicated by Sebastian.

Signed-off-by: Alexey Charkov <alchark@flipper.net>

---
Changes in v2:
- Changed the binding to use fallback compatibles (thanks Conor for the suggestion)
- Rebased on top of recent next, thus also adjusted the binding for ET7304 to fall
  back to RT1715. There are no in-tree DT users yet
- Removed the VID/PID/DID checks altogether instead of endlessly multiplying the
  list of matches for new clones (thanks Conor for the suggestion)
- Link to v1: https://lore.kernel.org/r/20260311-husb311-v1-0-f25bcb58cff7@flipper.net

---
Alexey Charkov (5):
      dt-bindings: vendor-prefixes: Add Hynetek Semiconductor Co., Ltd.
      dt-bindings: usb: richtek,rt1711h: Switch ETEK ET7304 to use a fallback compatible
      dt-bindings: usb: richtek,rt1711h: Add Hynetek HUSB311
      usb: typec: tcpci_rt1711h: Drop unnecessary VID/PID/DID checks
      arm64: dts: rockchip: Add HUSB311 Type-C controller on RK3576 EVB1

 .../devicetree/bindings/usb/richtek,rt1711h.yaml   | 16 ++++--
 .../devicetree/bindings/vendor-prefixes.yaml       |  2 +
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts   | 20 ++++++++
 drivers/usb/typec/tcpm/tcpci_rt1711h.c             | 59 +---------------------
 4 files changed, 36 insertions(+), 61 deletions(-)
---
base-commit: 95c541ddfb0815a0ea8477af778bb13bb075079a
change-id: 20260115-husb311-291bbb1a7776

Best regards,
-- 
Alexey Charkov <alchark@flipper.net>



Return-Path: <devicetree+bounces-269769-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LWfJkfxpGlTwQUAu9opvQ
	(envelope-from <devicetree+bounces-269769-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:09:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02ACB1D265F
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:09:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BC6F300DF58
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 02:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23BA8274FFD;
	Mon,  2 Mar 2026 02:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mCcWST/q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C632A1B2
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 02:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772417326; cv=none; b=X+OdzO0jc6KsHByy8/DLPkldJH2iPRDy9jY0p9c0humtdEXjdo+rGPiusv1mHjmkAEAsNipFZEvly80Tczq4XckEPiZoQtm2kpLg0vOTcRKdlaEJyLsWEjaTXuAdmVw98xhpt3zFuci7QvOrx7XrxWn3weV+nUPn3C7cYZLC/Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772417326; c=relaxed/simple;
	bh=Vq51sRK3RdC1jtxFUqgKzYqZCzaWApRRwMH2Phu6ty4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=shaDg0dIM8S14AkLyQpCIAmSTis/O3ntFVv02BtcDZefpTZwDJ9JTkBufDQGZ4qYL26/+MPlMbdcg5E9biQM6U9/Z84C/boqCKKqnEM28oahfmVcPJ00wQg+CK2Z7Vy7CXr6SnCkA/Hew1PDz/zpaaOolP/KeWdaNpHnx05MlCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mCcWST/q; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-3599019ae92so121983a91.0
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 18:08:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772417324; x=1773022124; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZRLmaJWutmjBaVf2ZkxnCmHqpfR7O4995L9wh5FFM+E=;
        b=mCcWST/qlujZv18bYkQC8nbr8dmz5I615ret5xdzCLHXFFaeLxQ2JaTaGPPCq+PN9p
         4Eue+vattYiLtr8TUPt2sVEAgkEYSRhPd+J1dIbnu4OSfKHNzQZgra/oIFNPBczba8sL
         iAApxOGmomSUnftAEGUsn0vlyaXcM7Nxycv4PF45AyTY/uWm1/7CrQTZU9/1Uli575ba
         qR8TcpDJ3MDkhA8VD1CkMpwl3TtMAILWjqK4EteiUhYvaG0J5mFXR2V8lw8yj1O2FHel
         tG1XCr7DlwpFIxFYwcj8gWnjCOLEDMLpf4KsjbQQvb7WPfs8XEB4/LLbzlzfqpyhn6XW
         L4sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772417324; x=1773022124;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZRLmaJWutmjBaVf2ZkxnCmHqpfR7O4995L9wh5FFM+E=;
        b=nT85FTrfXsx7nFgYGCZ2RHeoHm2U6SXivDKa9Yg77IqOsfTAMVy+Wh+P2m7Rx0ccpF
         sKSPnTjtckbrGghtWV+HOytjyNEIp4wbvQI0IBh70FeJhKCGnpQurOwhWipkH/X+CjOE
         rFfXw967puZMKlvBmuQejVJzWSElVGbpsDwAIcYyldcxIvzKYnriM6EAri8kHTw8w0hd
         M8RsL1gwqYj9rgdIUPJbE8EkHiTRs7qZENIS76/6XybtbiBQNpoHWzhTxzy4Y6TVJlUv
         V4naqzlRaerO3436QaCRgEFAZ0++3jtlZYmaivX0PHLF/fX6CrW2q+y8tDTWTsbtqAAJ
         l96Q==
X-Forwarded-Encrypted: i=1; AJvYcCXIOXyYAPEHMkMQJEtp2Q2ZJXy+dK0B1/s5RDbEya7ENCgOUcCpTcTnbc5dn+tktAk5Ws0mNg6e2wNN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9XAiiDhXceeF7+T8uN/Fmhfe8a6Z+bUOepN0xaq6/DSp9wPi2
	XzMLIDvTbiHyuq8dxPhCdqIr7q5wiecSlhKAS7hJs0TQTtpIc7FVH5I+
X-Gm-Gg: ATEYQzyw3MJIeLWbR4t9+syLFCKve4galOmXdOl4Wph0KKrr1ZX/SbRKagN264T8zUw
	2sJN5ye/6+aFPiPAlrNNNGioawf3oQ3M1lTwyjsuEGXE4tJL14iNnrfmOYfpAoqybZIxSG5OJJ6
	GPfptetvCIOdHWb1dMhbOLeZ5ebh39lDCYw/OGqXK3G3EEye7sWwnOkr+f6EJYiAU2Hmb/hfzaR
	BKoB9+Nt/41NtXzRkdckhYi42rwo+3MZZarlHv5RqEewh3XyuLby7BAZdfkwgJC8Z0TWdkcuWyM
	T2i6Sqxwzh1+a4VyHF+JStaU97sBR9GGYmBaKcqBDWa/HXS+zSUr2IrUOL6qOkeeS2QvWdAovdt
	nf85A6PCbL6tC4heA7sgYGhHbpKAmnaHYu0rxya59GS65hwFdnDkH51uKmJlBCLgPiwMygMdjeF
	hofmJePJAP3NQ4Z15DDybfv2XRdEXgPBm5mMFmoVSDH0QlDjriiDA5xeIjsk0c3oibV6wwtV91L
	U7z8onYmg==
X-Received: by 2002:a17:90b:54c6:b0:32e:a8b7:e9c with SMTP id 98e67ed59e1d1-35965ccac3emr9541808a91.29.1772417324267;
        Sun, 01 Mar 2026 18:08:44 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35987523629sm2764697a91.7.2026.03.01.18.08.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 18:08:43 -0800 (PST)
From: Zi-Yu Chen <zychennvt@gmail.com>
To: andi.shyti@kernel.org,
	ychuang3@nuvoton.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	zychennvt@gmail.com
Subject: [PATCH 0/3] Add support for MA35D1 I2C controller
Date: Mon,  2 Mar 2026 02:08:19 +0000
Message-Id: <20260302020822.13936-1-zychennvt@gmail.com>
X-Mailer: git-send-email 2.34.1
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269769-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zychennvt@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 02ACB1D265F
X-Rspamd-Action: no action

This series adds support for the I2C controller found in the Nuvoton MA35D1 SoC.
The driver supports master/slave modes, bus recovery, and runtime power
management.

The implementation has been tested on the Nuvoton MA35D1 SOM board.

Zi-Yu Chen (3):
  dt-bindings: i2c: nuvoton,ma35d1-i2c: Add MA35D1 I2C controller
  i2c: ma35d1: Add Nuvoton MA35D1 I2C driver support
  arm64: dts: nuvoton: Add I2C nodes for MA35D1 SoC

 .../bindings/i2c/nuvoton,ma35d1-i2c.yaml      |  65 ++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  14 +
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  65 ++
 drivers/i2c/busses/Kconfig                    |  13 +
 drivers/i2c/busses/Makefile                   |   1 +
 drivers/i2c/busses/i2c-ma35d1.c               | 819 ++++++++++++++++++
 6 files changed, 977 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml
 create mode 100644 drivers/i2c/busses/i2c-ma35d1.c

-- 
2.34.1



Return-Path: <devicetree+bounces-246445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75177CBCE93
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:05:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A6A69301A71B
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 07:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65751329E6E;
	Mon, 15 Dec 2025 07:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="maQsA5SJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83BB329E68
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 07:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765785597; cv=none; b=iz8T63tSBf8/H7wGsCX7pYWtk1T0EF/cs51f/kaSVKnIaRf98eO4YbLSvXsc7NhBBs/MaVVT2WL+oz3A2G4m7IxG1Aky2s+IhmHxxx+fYK26eMUP9/wcfclP8SiiJjbb4fwkfwBRYVhTAHKqa12C/3+dUU9LKtcA/R6xZrTreSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765785597; c=relaxed/simple;
	bh=pYWPUiYByiZkGu4rD+NqHdrKuVDp3YaH1DFpSKGq56s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lx0W8iqsnTD8bNOxUPtLsTJMRibeC1xguLE9CjrRFrojbNNnrKine18tmI6QP0fTjBBJ4qeLiF7PO7rWwUSvU35w5qULmx7pOJ88iRFbIh8I3mx7JMf9LiT2rmN7d3bERj8eDjf+cYS378qqM6nNBUdAmsah8wS1ppHlTrgvcck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=maQsA5SJ; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7b8eff36e3bso4829736b3a.2
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 23:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765785595; x=1766390395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J3y8U5/hQxLgvSw1sA3RfHATBZeuvFmSgboI4LGzrUw=;
        b=maQsA5SJ4QoChi4rx4Tej9TP4SAYp3dKC9R7JC5GxP0pfpmegRm9Hc6JVifRnxmf+r
         Tx16PpON63Ybi1mbVhd+myrPr1nEF5syCae3M/ibvz+ahBlG7IujgUxIvigWK1chuOOw
         Dal1BIdQLLh3TGDyhExMDiJQW8qXF90VhP6kCng7AmrvSJf9c9ujtI/PVNE/fQ/U+cWr
         XMkGB3xYpdkeGy6DuwBi1OFV9ZcfloFFfiIEDBcP8LnYtGmYBnEkj/8umDpivxCZLR1N
         HfjkX4WfFXVbLVXQFZVHKujIeHRs2n3Nrv08wVJHM/qvlt9ZfV13wytVjqA5ysdxH1/G
         uu5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765785595; x=1766390395;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J3y8U5/hQxLgvSw1sA3RfHATBZeuvFmSgboI4LGzrUw=;
        b=VB3aFnrGN4RFfLEwWF9nHzF6oy/gVVtnbdqqMgnOWRDtdbs4uAsXz274HIibqFfT7M
         0qxgqD9910KBKsy7cqAGD2QwE3GGCXFz4Z2z/o6HOdgNPZXW1TU84VPKuoz0AHAh/weT
         0M/0G/sKEsPMsSEGBkkIYEE5Vbvg2KYNF76Ss7LXxB/nw9RyCFWcVYnaUMeGP9R5a3ZP
         4kkGnENuzO869zIEYrfxBmvj0wlPw+MxklLAU5tRFify+Zw191tHO7n3HQrKHWDCM8XK
         DRpXCaKeP2yqjphAEb3bibFIxL9jJDi/ETCApt/BXt7ddD6HdpMdZgDbbi2aXwKQkKCz
         /eYA==
X-Forwarded-Encrypted: i=1; AJvYcCX4fD0HiHTYgSj1BgYwz7utj+IZuUbIovLg/fOE2mJV6K0LG3OcCZkUbNDAPydb+JCNAcWgpzyef5W1@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi39iUQogKblrV1oS8CDX9HSb25hFMi9k2HCHDPO63rvDGfz7t
	lw3KVCi+PQStKrstqgjeQM/62N72NI8jgbUSoWCyJYOVBKl7x+X3Bn40
X-Gm-Gg: AY/fxX6lwN4JKOF2Pcoz/ISzutURgHzZ2N70jmjnB/1TC+xEuvYDEyxfahv/mlsWE/F
	GGbd/9VVfx+HJbt33fEvLRkLmbbi+Z3QyhbyQ58/6atTAcMxx42GxcJ9I5zgT55BtH/O56RyMtC
	To5eGlQqvAq1rWHQuY/lMqi1bhxjJ7jCo6xGz+HxJziWXv2+wLUUuvbFgd537Rg6cz4SCTdHUBb
	uz/UwA10xZw6V74rRaDoi8o9+8VjA0QiS4quu3JpNuGlFexKtOxvgedcgyfVt/Tp3aEnbdXJcMz
	yRX/ABB8ktrOF5+HYkJToeYsQR/zlqpXW0q/5ol/GmRU9qTOqRysSdDPj3ZN2tjsyCG+YZtYswv
	p0aiJGGdR2LnP7p+y5odmb7CaJTDb71+dUGpQEPUhCT+Srlm5CaOxVfi89moxxUbE+Z4u6ul7Hr
	RpZzZ6Cx3IRlA=
X-Google-Smtp-Source: AGHT+IHQQmJ+wLeQ1qi/KuqvZJU/To7Y4dcl5fOzW093dtZDFZfBZPmK7O119hfs7hDvgn6WW0/A7A==
X-Received: by 2002:a05:7023:d02:b0:11b:9386:7ecc with SMTP id a92af1059eb24-11f34c43d8dmr7717987c88.41.1765785594831;
        Sun, 14 Dec 2025 23:59:54 -0800 (PST)
Received: from fedora ([172.59.162.202])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e2ff624sm43637473c88.12.2025.12.14.23.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 23:59:54 -0800 (PST)
From: Alex Tran <alex.t.tran@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alex Tran <alex.t.tran@gmail.com>
Subject: [PATCH v2 0/4] media: omap3isp/et8ek8: Add CCP2 CRC configuration support
Date: Sun, 14 Dec 2025 23:58:31 -0800
Message-ID: <cover.1765782992.git.alex.t.tran@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series provides support for configuring CRC checksum via device tree
for et8ek8 sensor and OMAP3 ISP receiver.

Previously, CRC was hardcoded to enabled (1) in the sensor driver and ISP
receiver. This series makes it configurable through DT, allowing both
sides to be aligned, as both must use the same CRC setting for proper CCP2
communication.

Changes maintain backward compatibility by defaulting CRC to 1 when the
property is not specified in the device tree.

The series also converts both device tree bindings from TXT to YAML
schema format, as required.

Changes in v2:
- Fixed broken patch threading
- Added receiver support for reading crc from device tree
- Converted both sensor and ISP bindings from TXT to YAML format
- Both sensor and ISP endpoints can now be configured consistently via DT

Alex Tran (4):
  media: i2c: et8ek8: et8ek8_driver: add support for crc configuration
    via device tree
  dt-bindings: media: i2c: et8ek8: document missing crc as optional
    property
  media: platform: ti: omap3isp: isp: read crc configuration from device
    tree for CCP2
  dt-bindings: media: omap3isp: document missing crc as optional
    property

 .../bindings/media/i2c/toshiba,et8ek8.txt     |  55 -----
 .../bindings/media/i2c/toshiba,et8ek8.yaml    |  99 +++++++++
 .../devicetree/bindings/media/ti,omap3isp.txt |  71 -------
 .../bindings/media/ti,omap3isp.yaml           | 196 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 drivers/media/i2c/et8ek8/et8ek8_driver.c      |  49 ++++-
 drivers/media/platform/ti/omap3isp/isp.c      |   5 +-
 7 files changed, 339 insertions(+), 137 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
 create mode 100644 Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml
 delete mode 100644 Documentation/devicetree/bindings/media/ti,omap3isp.txt
 create mode 100644 Documentation/devicetree/bindings/media/ti,omap3isp.yaml

-- 
2.51.0



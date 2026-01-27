Return-Path: <devicetree+bounces-260064-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id tRGcMwD5eGlFuQEAu9opvQ
	(envelope-from <devicetree+bounces-260064-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:42:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 369869895B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:42:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 540D8300B852
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F60C31D732;
	Tue, 27 Jan 2026 17:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IwEHWNY7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D18302742
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 17:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769535740; cv=none; b=bRHOjpR8iCX5u90KVls9JcitxzhwuSbMLdDId/wmghXYVJa6ZBIU/CD55Yym9+PrRnyq60jjifFGwVqXVheIewZ85/5KDYhZxaWkiujSmU3unV86PqyUtBdPpv4ickhVSUhrXvIvQdtYYZE2lPj/JTOkkxgcWre/39g/CTYx8ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769535740; c=relaxed/simple;
	bh=UQR5Q0TT0vE/il1SHh9UiNaX4lkSPM/Wsx64afUvF8s=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UMKfuPXh1tJ+asGCpUNXysttDhbLDv1oLs8NeuyfcSywKVpXylX67oNWhxbspDrSuxwX9k1o9MnGiV++9G504/i+fdolIpZ2Tz0oSrxc3F2z6DqUOFvfONtLISo1BV9a8oN4ghUo8r83RBU4jCEFcK45xO7Kvp3EOUdVylm7ZWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IwEHWNY7; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-34c868b197eso5060783a91.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769535738; x=1770140538; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E9H29XGRCWjq19aHAWGrvC5AjKxI+lrUGaklAUNmCS4=;
        b=IwEHWNY7XOUBvDIu3PqLmr1fsqJ0J1QPquq1LLmddlSZrjlHAoQHqCxO9NQ0l65Rfy
         5ddF5it51xV0L3x+eZ0v7hOPN9W1U+3GXcMTSCTnQzWjrtFLHbuoXNJTk3SgwJXm0to1
         OYEicUEblkIOmeKsN6SvMNQTPs/d9d/fz+lo6T70SZNtZQEdWfWi7MKro6UAXhwJ629C
         uww917vyJOmEcKYkmsj+HPo4zxaHSe+810jsaAwaB9F6pCLxmb3laxjxD955TdP4SE2T
         20jSq/ej7zsjx5Gh2un30ECPNm5rbyGHmdzBOxQiK4/MAL+gDVBuIQl4me/dBRA7qKeC
         Ujyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769535738; x=1770140538;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E9H29XGRCWjq19aHAWGrvC5AjKxI+lrUGaklAUNmCS4=;
        b=fM5Hp7NBKY5XCGvrqN3ZN2aFwxmalHVlLYW4IWqv648qw7pBAQQ/tCpyYrHqN425ZA
         U3mUjbic9Ge8VPjrpZn+M4ra5Yp/BtmuTVLnGV6jbGi8Ails28aiMSR/frRFpNx8WEZt
         5tcFwYgH3M0l+kwlmfYF7pa0rZQwG+Vqv8NWXwfepb9dqNX7r3kT4pAUTXn+Zx4EbU/s
         NnZWbcISCv55IN91JuXeAOVDi+V41hqxWXIIeARCo4YK9p5DK7OMlcNCy44WI8abS09t
         xQI7RPx3l89uk4pwdkXSmQoeqEsyKpxj4BF9qLG80LUfTvuH8g6YgyfhIdqtwe6Pp/4M
         XxEg==
X-Forwarded-Encrypted: i=1; AJvYcCUkDGMSwIwLIZTSyVhcHMzigp7uOdZpTA0u9OvRwcF8eF7DT2c40MkziYjgTrK5S71v8gZyxTbjLmj8@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9IINoJQ3OPOW7BoCRh2Y89OJ3EjE5P8XlfcMb8d4vZQ94ugru
	W89QjU2JuZnaRYIStBy3q5CYxgzqXwSYyX9qN9Xz1D2h+iH8VMlbXZEXyimMjw==
X-Gm-Gg: AZuq6aJXuD2EtgKVr32qbCYtRwf/OU4IlemjTa+ZZdnvgKBEeFoRCg85YX0muDjxvrc
	NhF3XahZzlaVZK7wek/oCbSjYEreps1l7MoCzrJphOq0+wP4l1fop58YqAlIIHmPLUts0uk1ZOi
	7ra9thnn2+IRluYFzKbkIPRAMZNNnpM+7ehxMKrC+h0TmMpCwMzDg/NC0YB63FolsSP7byC3X0T
	RNXV7Qdr7XLLrKTl29d8qhVycZCPC7gI75m02zZBsItTm05wZG/Aogn7kz5YU5v5qjlQMuLjfis
	3sw14BtF2Gps0EhknOH6C4z3K3aeWdzg4G0G1b5NdMzWnjUNX0O4hVS0tJ+25v0sdTm+GG41DLe
	Vx5S5gxaiV/RhfR3NWM/HN/i4oI5baiWwhSP1g4hFkKa33+AtU0O4WCG8ybDMpvu8LMk9oGuiAm
	mSRROdLmA/BDlOUwz3xiwJpw1SQvQbrx2O2A==
X-Received: by 2002:a17:90b:1805:b0:34a:b8e0:dd59 with SMTP id 98e67ed59e1d1-353fed0a019mr2364861a91.15.1769535738230;
        Tue, 27 Jan 2026 09:42:18 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3540f2cae91sm89251a91.4.2026.01.27.09.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 09:42:17 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Subject: [PATCH v2 0/2] dt-bindings: usb: Convert TI OMAP MUSB OTG
 controller and DWC3 USB Glue to DT schema
Date: Tue, 27 Jan 2026 17:42:12 +0000
Message-Id: <20260127-ti-usb-v2-0-9dd6a65b43df@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPT4eGkC/zXMyw7CIBCF4VdpZi0GxoDiyvcwXbQwbSexl0Alm
 oZ3Fxtd/icn3waRAlOEa7VBoMSR56kEHipwQzP1JNiXBpRopJJWrCyesRXWd+bkzkRKI5TzEqj
 j1w7d69IDx3UO791N6rv+CDR/IikhBV60dgottcbf+rHhx9HNI9Q55w9wlBwVnAAAAA==
X-Change-ID: 20260109-ti-usb-9df63c7ee152
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@ti.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260064-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 369869895B
X-Rspamd-Action: no action

This series converts the old text-based DeviceTree bindings for TI OMAP
MUSB OTG controller and TI DWC3 USB glue to modern JSON-schema (YAML) format.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
Changes in v2:
- ti,omap4-musb: Fix a missing ">" in the maintainer entry.
- ti,omap4-musb: Drop obsolete "pattern" and "ti,hwmods" properties.
- ti,omap4-musb: Update "interrupt-names" and "power" properties for clarity.
- ti,dwc3: Drop obsolete "pattern" and "ti,hwmods" properties.
- ti,omap4-musb, ti,dwc3: Revise commit message to justify changes in YAML bindings.
- Link to v1: https://lore.kernel.org/r/20260126-ti-usb-v1-0-2855c129eb6d@gmail.com

---
Charan Pedumuru (2):
      dt-bindings: usb: ti,omap4-musb: convert to DT schema
      dt-bindings: usb: ti,dwc3: convert to DT schema

 Documentation/devicetree/bindings/usb/omap-usb.txt |  80 --------------
 Documentation/devicetree/bindings/usb/ti,dwc3.yaml | 100 +++++++++++++++++
 .../devicetree/bindings/usb/ti,omap4-musb.yaml     | 120 +++++++++++++++++++++
 3 files changed, 220 insertions(+), 80 deletions(-)
---
base-commit: f417b7ffcbef7d76b0d8860518f50dae0e7e5eda
change-id: 20260109-ti-usb-9df63c7ee152

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>



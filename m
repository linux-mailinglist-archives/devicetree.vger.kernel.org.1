Return-Path: <devicetree+bounces-267217-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBjWANPgm2kp8wMAu9opvQ
	(envelope-from <devicetree+bounces-267217-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:08:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAB0171DCE
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:08:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A07E301CCEC
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 05:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB41D3446D3;
	Mon, 23 Feb 2026 05:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bWcpIYdX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90176344031
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771823307; cv=none; b=fdq6B4xCUjY2gBcMoxAga+yJaSRCRtxFrpDKsBBn4hYeM3FmE7i6xOIVpG54QDIn9u+B+59RpPqVJJleO6z6uWJm2KLL5XNHGZC56UCAbhJyqhco1Hdmt9eHlANqrIMszjICbhRGnaY3VF4Tu9ir6hVPNC9Pqkjx9XYp0FRC7Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771823307; c=relaxed/simple;
	bh=gK5UcnP7+ryexzD62DSrxNF+8euRw6xkI4U8en+SiXo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=jUhNaWEp+FOp8SaZ23G3RlKfgMs0XyhYUga/nFQj+hmOG8taItguPbI46gYjR0qNnyMND217SVF8qrie901MUfFbiwT8O8vvOjF5A+OVzBAfHGkbRq/R7IfT9NjruthRTXHq0SAZJtJwgQ33cZfCHy4ZC92+EiDQ5E2dfLTIgPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bWcpIYdX; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-8220bd582ddso1665296b3a.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:08:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771823306; x=1772428106; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2tSn1M4K/T38mI3fXvMLaaAuFU4OXK5FwHXc/BnLf4A=;
        b=bWcpIYdXEftWXOvOFRucv5SbdJgrkb4YLNrnQVzYud+Al3jaB6qUX+QRCUKXjqsWRP
         ylq2c3F8CCWoH54TwaKisZJopUUd+W9E2EhSHb8G8ye/jQcJJEoPodfuZNIno0EIFTqv
         vuXnqGJD5nEh3oTFAGTKUHMUVceEW/DfcXB9WHKkphnsAK8Y5udBDBsZv2E3ggxryZYk
         TsI+SYBzmruG0nSWBfrbfn6SMCBoeYLJc9Fk6lZSfGbXcn2e8r7ftVlOusfat4C73pVy
         Hfv7gEItzye1iikRG3UlFjpUt2ifwQHdU6/DIy3EZ/hWPM+rln1+VsLFM2B287g1+44z
         Oycw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771823306; x=1772428106;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2tSn1M4K/T38mI3fXvMLaaAuFU4OXK5FwHXc/BnLf4A=;
        b=L1QWhol/bt1VsQE6YQwmVq02SreAMzJGFLQ5Wfo9xKADBWa4ZfUHj7pTNuUjYNldxm
         tMuue4HVmvVYHAgepumvCDh4xmCt2x5FRxxSu1VIcGEnBU3gfpyTh72I58ROfuf21weW
         iUhYl3dSq/phZAehynqP8X2qziwiCFLbFIaPfU6vTIfmrn8qWDujyaxWcvORD+V8eqGi
         Oqk2llTH3kZVMwiGFkD3J9bYUPL5KfpAkimqckUqu7rkXpD8wtVzFZKjOY0KooV9qHrm
         nXi3XUCgTywHAa8ewg4Wi1rIbjkzLdM1qRtLLAefjpgtIPI95lqN3xouJSY7SbTPXpQx
         n36g==
X-Forwarded-Encrypted: i=1; AJvYcCVzr5tmeIlzPeqhBUFWkE5xmUNK4VS3bk+jD09W5N04AZoBH/1eIkgsRlU4jmUPlVfl267f5vVGqnue@vger.kernel.org
X-Gm-Message-State: AOJu0YwbHJaJc9iIA0Hcg+wUHY6Jv6zA8svp3eDuwhwjlsHPFWcmzAMz
	wBPqB4pmob0ObGBB3cFmvU/oMs5DTCc2y79kzVeVrwrDsmRpFC7ML+AP
X-Gm-Gg: AZuq6aJt94xO0b6I761vheRpMKWJbOKAxeqZqyIXZ33V3/BErY2udALM5uthxAiBOG2
	NEavtuTrLqgBmkHcXo3tq2z1R9/BsvpN0YzI5S2OuBis4DCf83CGSp1svLa1cyqJk+7r7fdK7j0
	+3GRJ6NwDEw247uLaE3w4b3+mGgnHlDtxEK6tQ3lyl6wt4+Hm1CKAuDX6nl9yRFJl6omq21mKlz
	UBUpCbX1MPnCzP41tIIXN6/+GrNRSNpgBRWxqDQx0RNU/eIRQd/oJ29V1PJ3LNTm/zLcvwsgyqH
	EEfUbxdc9gTY+ZzUT7Z9MgYqzj1FLTApIbAmDDB/LKOcTCVcfIM3tAmMGYZHzc82yM2ApPcwSVd
	ExdU64IOvvSR3iwjlbhvIW7MO37lwH3iiLxrLQeSGQLMJG3bt7KhbKJE7EEZdj+vP5+510pTCdg
	TS6DP71JjloGkB9cRnuLt2tiL5WEaDv2Shfk9wg+6gy655ywzDoZSgEk8U
X-Received: by 2002:a05:6a00:4188:b0:781:2291:1045 with SMTP id d2e1a72fcca58-826da8c0d56mr6066727b3a.8.1771823305779;
        Sun, 22 Feb 2026 21:08:25 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:93aa:64a5:666f:7ac0:de3b:1659])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd8bf9besm7502022b3a.55.2026.02.22.21.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 21:08:25 -0800 (PST)
From: ASHISH YADAV <ashishyadav78@gmail.com>
X-Google-Original-From: ASHISH YADAV <Ashish.Yadav@infineon.com>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: [PATCH v3 0/3] Add support for Infineon Digital Multi-phase Controllers XDPE1A2G5B/7B
Date: Mon, 23 Feb 2026 10:38:01 +0530
Message-Id: <20260223050804.4287-1-Ashish.Yadav@infineon.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267217-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infineon.com:mid,infineon.com:email]
X-Rspamd-Queue-Id: 9DAB0171DCE
X-Rspamd-Action: no action

From: Ashish Yadav <ashish.yadav@infineon.com>

Hi ,

These patches add support for Infineon Digital Multi-phase Controllers 
XDPE1A2G5B and XDPE1A2G7B.
Both controller supports Linear and VID Data format for VOUT using 
VOUT_MODE command.
The configuring both loops/pages of the device independently is not 
supported for VOUT_MODE.

In case of vid mode, NVIDIA PWM VID vrm_version is supported:
Vout = 5mV * (VID-1) + 195mV

With Best Regards
   Ashish Yadav
---
Changes in v3:
- Link to v2:
https://lore.kernel.org/all/20260219105630.11929-1-Ashish.Yadav@infineon.com/
- Address review comment for [PATCH v2 3/3] about return value of
  VOUT_MODE (vout_mode != 0xff).

Changes in v2:
- Link to v1: 
   https://lore.kernel.org/all/20260202080355.53061-1-Ashish.Yadav@infineon.com/
- Address review comments for driver documentation, pages with different
  VOUT_MODE, Indentation.  
- Created separate patch for PMBus core changes.
---

Ashish Yadav (3):
  dt-bindings: trivial-devices: Add support for XDPE1A2G5B/7B
  hwmon: (pmbus/core) Add support for NVIDIA nvidia195mv mode
  hwmon:(pmbus/xdpe1a2g7b) Add support for xdpe1a2g5b/7b controllers

 .../devicetree/bindings/trivial-devices.yaml  |   3 +
 drivers/hwmon/pmbus/Kconfig                   |   9 ++
 drivers/hwmon/pmbus/Makefile                  |   1 +
 drivers/hwmon/pmbus/pmbus.h                   |   2 +-
 drivers/hwmon/pmbus/pmbus_core.c              |   4 +
 drivers/hwmon/pmbus/xdpe1a2g7b.c              | 119 ++++++++++++++++++
 6 files changed, 137 insertions(+), 1 deletion(-)
 create mode 100644 drivers/hwmon/pmbus/xdpe1a2g7b.c

-- 
2.39.5



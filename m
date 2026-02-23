Return-Path: <devicetree+bounces-267570-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNrMLX6RnGnRJQQAu9opvQ
	(envelope-from <devicetree+bounces-267570-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:42:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 307AA17AFC9
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:42:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D103D3065846
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89273346A0;
	Mon, 23 Feb 2026 17:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RbnFRxNf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC69B33506C
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771868503; cv=none; b=az8mjzM5EYPMW6GmVNe1CBHrb4Xwj8h5u2dzJTOCKivWD9sJbKzzFZfbyu24o67HwRr0f17gU4AqbftJNNjTsCAI5qUJvHh5cBQ038F95L+y1SGIZD2yaUoryaiEbF248+94K4g6SJ4kzbJD7eIgOpVyFc9nAcwhPAl4f2b0DP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771868503; c=relaxed/simple;
	bh=y8FgvEUPFLx5N5MfQWc1DYRa3YliFsCd7Ior/FAKD2M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oCISxKDpf26exEergwonW1Z2mW8IMafYGZbI6nKKxTcZgWLi1jGt29Ug2KEdiFqOJ4K+u25HsiUFfcpBYjaUK3jeMgbp2h5pZvJhMfKdYwhIiIz8SkUBlopeJ4ultkr5ypwOEBewyPZaP6zf4Ox4oirX6APZZoVI4oH3HXd5dTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RbnFRxNf; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-824a829f9bbso2404654b3a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771868502; x=1772473302; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QOD4yYFluHKfZe3/008mC3oZMllQGZpUWYJJ9bXObRc=;
        b=RbnFRxNfttgUtgnC6RK271y0s/6DbKfLtGM/XYanigJ1/Hi3dQ1SR6pgNvZ4V46Pa7
         rztc6exVy/2B8Sbrh3PePsmf7jKF7XL++KcJBsdvpY4fnWoPgLXiAfi92cf++64MubZL
         kBmDt5/2zX7KP9Fo247mNDYTJs2LQF5tXuXtWTJbLXx02yPQuuNT3tr/zIAKJWoR8FRG
         d/OcRITD0/8UeLeVx1zsv6eg2HTKVs7ulhg6UI3a/7kGjL6nXdE0Ie2/5BDOF/1+ocfz
         6IwGE3t7+cCf5HTIIdUOgYnRqsWf/jU2ffEIR87WcsQnM5dbAg7kT4URHXcgM1vrGwXw
         QQNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771868502; x=1772473302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QOD4yYFluHKfZe3/008mC3oZMllQGZpUWYJJ9bXObRc=;
        b=I6hG8kXDnTi9mLiQObbAZMdngkcDRyLB61cWI3ajx+Oi8jwNc0AUXSHUzRUzrbA9YC
         JGvNCYPn7jo1YuuFb7wphegb4ROBVj3jMp4vPC0i8+iK4DFZW+VYDcmqd4OLIGxwGxIi
         WRb7YFVBXWyw5cysL/3ezGJbLGSNFLzNGKlrT6DMFPJ6AukXQwooCS5IlQY66ZTZuqcM
         WXN4YYbPi711UYDBHPlPPo1kU2qCvJK1UPYEeDNQ9+5S7T6nQDa3knqCVBvQi27Vr4no
         qjkvt0daIk1Z7qFJWqf86eNFYG0n4/AP0hbWW767L8YpQSM8aDqq3BkNpfbHdgk1VI2J
         vS4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVFPBiWmuklq1+iZ/weyONCai4zsC8qKS1HCGH+GO7pWeU/wHTo+/oHgMWk+oJCIEhTAAgI4bEmkQ45@vger.kernel.org
X-Gm-Message-State: AOJu0YwocCJECBlRL63MM7p2lkYhB+MyPBsXfaB4hy/XJZFP/zHAEB/G
	+GUoW2SjNeSn8Ye0W5oi7ig+ol+GiRHS0+f+L3kyr1os+wq3venrwzO9
X-Gm-Gg: AZuq6aK5Ix4mUTs4QhLlUbu9lyJ6+z8lMo8dBErd+Y3ssM5Brl/BdcNoFfZ/vCyzBbY
	kTf5zVPZn5r1oO3Gna/9/5CaR07dwmIPIhQfLJq8e7rXWqsZzQw0CqseduDPwa4w6hNG3JmjOT0
	Hou7vPvov0qi9s+n9l0m/qHqUMMXHfy7FBWk74I0w4A2wxywL6XRgmq6qKmNz+2IKShgC5OtHSm
	A0Yw9FT/xRfZjynYhXyFnrdjSLqMbORULcYtaCS8ZfK0hf1R4/lgezU9My6CYm1DBV8tVpeIr8a
	mquKahrFVoPezLpwarBFuO5SLHdXb+uN/2eJQEod2L5lye3P8KKg+rECop5z9PjIFpFMiuh7F2o
	CJS0p3H/X86pkLeXL/V7gSybt74QFhUrb+pa7QzRJmd5AftFktluBrLwRise8iMxA2zN7KTVG/s
	gNHn3cg5vSvxnZN7Ng
X-Received: by 2002:a05:6a00:3a04:b0:824:9451:c1e9 with SMTP id d2e1a72fcca58-826daab9eeemr8129818b3a.62.1771868502165;
        Mon, 23 Feb 2026 09:41:42 -0800 (PST)
Received: from yu.. ([120.242.225.43])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd47c737sm7873090b3a.0.2026.02.23.09.41.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 09:41:41 -0800 (PST)
From: Hao Yu <haoyufine@gmail.com>
To: krzk@kernel.org
Cc: akhilesh@ee.iitb.ac.in,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	haoyufine@gmail.com,
	jcdra1@gmail.com,
	krzk+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@roeck-us.net,
	robh@kernel.org
Subject: [PATCH v3 1/2] dt-bindings: hwmon: add Aosong AHT10/AHT20/DHT20 to trivial devices
Date: Tue, 24 Feb 2026 01:38:52 +0800
Message-Id: <20260223173853.30617-2-haoyufine@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260222105831.7360-1-haoyufine@gmail.com>
References: <20260222105831.7360-1-haoyufine@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267570-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[ee.iitb.ac.in,kernel.org,vger.kernel.org,gmail.com,roeck-us.net];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[haoyufine@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 307AA17AFC9
X-Rspamd-Action: no action

Add Aosong AHT10, AHT20 and DHT20 temperature and humidity sensors
to the trivial-devices documentation. These sensors use a standard
I2C interface and do not require complex binding definitions.

Signed-off-by: Hao Yu <haoyufine@gmail.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index a482aeadcd44..aa924a410fc3 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -59,6 +59,10 @@ properties:
           - adi,lt7182s
             # AMS iAQ-Core VOC Sensor
           - ams,iaq-core
+            # Aosong temperature & humidity sensors with I2C interface
+          - aosong,aht10
+          - aosong,aht20
+          - aosong,dht20
             # Arduino microcontroller interface over SPI on UnoQ board
           - arduino,unoq-mcu
             # Temperature monitoring of Astera Labs PT5161L PCIe retimer
-- 
2.34.1



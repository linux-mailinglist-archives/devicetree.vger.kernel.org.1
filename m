Return-Path: <devicetree+bounces-267569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SByIBGiRnGnRJQQAu9opvQ
	(envelope-from <devicetree+bounces-267569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:42:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8325417AF9E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:41:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 96BA530429B4
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:41:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C99A3346BE;
	Mon, 23 Feb 2026 17:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SLsaH7hB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82143346AB
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771868501; cv=none; b=RZeZ5PflrGxGy6hBqOaN+aG6CNcVbsVVRsRI8zq2ZS/L5mYvaaJbYYZDfyPtHwk9Gg/mU6EsBof6pNIPUXp00+Z+n9KNS+BMoCpBqFxxwGiW+AUGTILOFW05xhrabYZD69bUFG8iXMcEVxrqH1oVwu2meohmjp43NbffRSO1MRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771868501; c=relaxed/simple;
	bh=Khuq/ueAESYsT52wcqjFV2ZTYizmCzhodvxUMyJ0174=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=q1SA/ktQMSAZN32rHMt8VplYm3/zs0GGC+2JNwLZdjHZ1sgpYldYVOhxJ45Bdh2kKWQnU/sfRxOgXszZW6eMWXNWTIdzhqDG+cxtUTY/jLTNsihlzJQSbA9NvvDheYI82/2B4EdzbH/7xdIvylvhnAHMHYsIcQ0Q97p4oy6OwoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SLsaH7hB; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-824af5e5c81so4342629b3a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:41:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771868499; x=1772473299; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=erq69MkBx6/Wc04+kAo0cY5zISw8AsXOmfLz2/UvA1E=;
        b=SLsaH7hBTpGmDf2PE5i4YJcZlFLs2krWgigOBCNX4r/W004Coxu72SxOso3iw92WLS
         64YfL+ZzQWTaUpSMaZdjCJF7AWCpYC8xqf/6zKJdfTy+UHqI4wbrPiWliXkI27lVreHF
         2LTd2Y42/4riEniPPUy9SUMo3dSawKZcmW6krZlCEwrvHNPufJ/8qQLPZQMPIESoeL7+
         Lxo9k14k1kX4+cz7gqvBPHsWyrECJkMI/pp5l4AYL0YQHL3RGqFRjcBsG6EcNx/exgrP
         2E1IMLBton9eAzVE2t5493QON2C88K4V1uFRs3ezUwR+Qmi8XXAruGfhrxGM08yT/25y
         FshA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771868499; x=1772473299;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=erq69MkBx6/Wc04+kAo0cY5zISw8AsXOmfLz2/UvA1E=;
        b=NRb41uqbTzNrVzzbhr0oYKoeA377IOB76AUXteX0Hd/x3KOkufFMAo7kUT162BbC4V
         vNP1HQY4xxezzjqoVu93kd2m2+rnRXfdFl5c4TyCqr+2r28t3w+dTJOHLQhHLoIzyUiH
         ynGLUVIRJEGabwGi7lC+UcrEPfVtBg7znH2tBa/FFaQjknJuEUH7sUxVVE2z22qo5isP
         BoJNMjpSCW1VQeQXEAz7WxX/LWEqsyMuX7RW/LKZwH0NeL+VzTe025J0wRzam2fqAVGM
         swP9hhkXut4dKKrdE/G5lpf8D9JnWCAUJCVRhcH2+JaHAu43Uk5eyXTidSreYHYLghx6
         7ymw==
X-Forwarded-Encrypted: i=1; AJvYcCX5Nhqu86QndVPV1hgSobGT7pGW+nmiG06rsKYQouyZcI6ADk2jpZ+8965z1yfywBZDFJFb5pxJbbR/@vger.kernel.org
X-Gm-Message-State: AOJu0YyjJkWLggmCBrUhG9qUdWNM5hDfL+jLdqOfCXZREW9B5lqCy+oh
	TOaqED35smIlH+Sezp8NNpfeUoiGbd1b6jB1J51xJqOq/c7ZEFi7HdWt
X-Gm-Gg: AZuq6aJBalUsd7SPxiupIyq/UI2uk7PWeKlaHkIY2ng3Fbe9e14fwTb1xTbMhAw55Ue
	axVh7tXXisOsoMsrkgN0KhNBA2tcs/kRz/LlakQ9xIeQ9q9UbvYFkfDcG613SNaxTPAL0pI/WTF
	F9qv0dwbALAEiOszXqJ3NWaqeo5JdTPKatACIm1yAXJpsNTm2wTgQZ3RuRlVP6CJV+8Cjh5ZIUu
	RO/vLLhUPlRs8YF7xq8+5kEZE9Kc2zAYSwCEwYp1acixF47aM67AFT6b0DWytxyQYcV6LJDjurU
	ZdOcuUymeqza+ZH1FO3HEEUEG8xYb+3Ekwz/l0YpTbffXNWtKKSpdxlOK9PJEzO+1gTYJQ90APu
	YM4QHcmOAyVzJSrCaDtwhuhmz0naq5HpyTi1eraJp9tRh5WSHwpr5Z6j1SaSx1l93kPQHhtE3YZ
	xSl7Te0+S/ftV3p7A6s75BE0yiLfQ=
X-Received: by 2002:a05:6a00:440f:b0:824:93e4:2ddf with SMTP id d2e1a72fcca58-826da8c0f3emr7578974b3a.13.1771868499250;
        Mon, 23 Feb 2026 09:41:39 -0800 (PST)
Received: from yu.. ([120.242.225.43])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd47c737sm7873090b3a.0.2026.02.23.09.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 09:41:38 -0800 (PST)
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
Subject: [PATCH v3 0/2] hwmon: aht10: add Device Tree support
Date: Tue, 24 Feb 2026 01:38:51 +0800
Message-Id: <20260223173853.30617-1-haoyufine@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267569-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8325417AF9E
X-Rspamd-Action: no action

This series adds Device Tree support for Aosong AHT10, AHT20, and DHT20.
Tested on linux_lckfb with AHT20, and the driver works as expected.

Changes in v3:
- Move bindings to trivial-devices.yaml per Krzysztof's suggestion.
- Link to v2: https://lore.kernel.org/linux-hwmon/20260222105831.7360-1-haoyufine@gmail.com/

Hao Yu (2):
  dt-bindings: hwmon: add Aosong AHT10/AHT20/DHT20 to trivial devices
  hwmon: (aht10) add device tree ID matching

 Documentation/devicetree/bindings/trivial-devices.yaml |  4 ++++
 drivers/hwmon/aht10.c                                  | 10 ++++++++++
 2 files changed, 14 insertions(+)

-- 
2.34.1



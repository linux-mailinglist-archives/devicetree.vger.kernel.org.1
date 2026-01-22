Return-Path: <devicetree+bounces-258481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBi2JsxJcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:01:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F209969661
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:01:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40C1B304607B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551CA346783;
	Thu, 22 Jan 2026 15:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hVEpokdO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF4D1F8AC5
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769095648; cv=none; b=ltFt8v1E2krltlWH49W99WMB5/UYrnirvaVj4TUm6Nl00qD6Jd4oUKGo1AKpsDhHoP81hP04p1cxdhIKYX1ypkehDosZGLB9RUUNRBwdZJua5tIB8pVDtVJeevyCPmTEjoq7JCRxGBChNOZVGEJg6UfAMfECMT5SkePE5bY4amY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769095648; c=relaxed/simple;
	bh=UcV0AhIB6M0Bg3IInM60h5ZCcHgjHuL7ZH5ZfMOSocg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bUK9kLy3G+3AmBMF4iOrtAB173JhVydrEQBriJ1aIIO/6N+Xr1LP3SKT+u0wvEaGaN3xhArBwzoLkf2m02JNSEOcn6u2hzpI9uJ4QlVERHHi6BjDDFUe9Bo0ci2woblZxHD99m7tqAqfYNKf74yDbGEk5jiWeQjCDldsk0vBbiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hVEpokdO; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47fedb7c68dso11839995e9.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:27:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769095645; x=1769700445; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I+Y0827Y/vL3PDJFbPeKfU2v6zmQt8MpEnv8eci1e5Y=;
        b=hVEpokdOSLK5QyWon19UOvsKJ1MpNk6slswYHoKpqCUp1ghELJjdfZUq28EGR4gM8g
         wbaLOfphBkSt00KtzZgSEhZ53QNXwdoUtUbkgzKsxMRtCPtYXX/WJYkKDZXTXV/dhad6
         YR3YC8/+V6on3Kp8OtLsxU+5blG0mQghxbEo63wQzmrvmhosAAX/mx+C06i8ZS6LKWgN
         n37D5xXFS5im1q6FlzeJwLzGNkn96v+G4gF0Z7VVXjXWKi1dnJmEsyNOl3z4yowN/UYh
         QtT8+9ylw+sInpMP9QqZCw5fQ05z1KKpJ7xxl6Tkjc89BozdiitLrwkl4uPwtvIn4/DB
         nXXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769095645; x=1769700445;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I+Y0827Y/vL3PDJFbPeKfU2v6zmQt8MpEnv8eci1e5Y=;
        b=to6gLPDwNkNU0bxRDxn+FhGPYT3kditAlEM3P9AzCkY91dq0ZUC0N7mTeDVZ3jBRdx
         +BMBbLRjA8JqjyWDc+sMh3WIfyFi3ByFzXiHS+vMcSAXJoRSaljeQaswaVnJfpVcDs6S
         PYwp7+5nN1zcvY8Vdt4ogHcQRe9x2RUwZ1PDccI3tLPjxAKz/QBt2/nHSLIG9UK7qhLr
         KwPniX2TBKGomRTui6fS7k6emuPBtTqaG7aa7Imit+GiQGwhzlvhVQunDy+MY4ASqkFT
         eDHaOqW5mbAZuIzIhLdZ9/j35ypuq3BQPigGhiPMTnE5Hs7jQfdRfF/rUledf4uHpUhC
         80pA==
X-Gm-Message-State: AOJu0YwFdKi2Uy3ylVLmSgGFehMt37sPr/j4AmRtOpDUGnxhsHeWx45x
	XGzlsdJ/6cnoktc/MILZ1zriuv9uREIvaLjZ3UAo7ywaVm3uA1e0JIkY
X-Gm-Gg: AZuq6aIUag9ywRnuc5lQ1d+g7Q1YStravRx5+1GfehVO0KvElUssJugHmNYlCYwTBg9
	dCg8jOpXx8RlR/mDV6qhXwmew7j8AR0axgFgarNhVpdGjWP3iB7wbslKFhMQuVuJIrw5Ph3gJLM
	tdwTyr+UGsuY3U61OPlGw9ZrBQibLf8eBdiR/JgqVCLmg7XX3MDWKMp3pocz7uNpuJHYxU7Sk7t
	JTT6+2iHqnf4maz2i27vVzW2cumMMGvM5ETrZSv4NdkvikKGoDhEsYgGhx98yVdui6k6qC8rJUV
	lCddZS96YoiU39WKth0KBt9C7uvclIDA8WqPXtvMUTtQnDMyY9It7+nEhiQG3bYPTH42ThF7Wdf
	1ZkO2Z4VCBIPsyT4cxgIZ2EroU0yaBD9JsQoMv5jzxUXNV5YBgVS9P5nCagXXx5KQWiqkPxdAbu
	vF
X-Received: by 2002:adf:fa0b:0:b0:435:8d02:b9cd with SMTP id ffacd0b85a97d-4358d02c81dmr14327696f8f.26.1769095644437;
        Thu, 22 Jan 2026 07:27:24 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4358f138e26sm20762642f8f.17.2026.01.22.07.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:27:23 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/3] ARM: tegra: lg-x3: add missing nodes
Date: Thu, 22 Jan 2026 17:27:10 +0200
Message-ID: <20260122152713.8311-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-258481-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com,yahoo.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F209969661
X-Rspamd-Action: no action

With the recent kernel updates, Tegra30-based LG smartphones now support
several additional features, including an RGB-DSI bridge, DSI panels,
MUIC, a charger, a battery temperature sensor, OTG mode, and capacitive
buttons on the P895. Add required nodes to device trees.

Svyatoslav Ryhel (3):
  ARM: tegra: lg-x3: add panel and bridge nodes
  ARM: tegra: lg-x3: add USB and power related nodes
  ARM: tegra: lg-x3: add node for capacitive buttons

 arch/arm/boot/dts/nvidia/tegra30-lg-p880.dts |  23 +++
 arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts |  33 ++++
 arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi  | 174 ++++++++++++++++++-
 3 files changed, 227 insertions(+), 3 deletions(-)

-- 
2.51.0



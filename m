Return-Path: <devicetree+bounces-273165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id J53+Ir5jr2mHWwIAu9opvQ
	(envelope-from <devicetree+bounces-273165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:20:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD8F242F67
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:20:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 77D103008622
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 00:20:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F92A1EF091;
	Tue, 10 Mar 2026 00:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nXnJ6NyY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF701EF36E
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 00:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773102008; cv=none; b=ovw9EFMScBO1Sp4vV5QX9p22gqZPgttEHkcYks6P9Ul9VdJQvuugmMm+dM/fM/7CbKtc7xRKgOT8KqDBB4SJuyLEXxU0HUIVhpR17iwmUb3RaoYjZhNnD0NVxu3bcLh8DzAfGx2KZ3zQ1QeIfOQvhFdTE0ayDnYHFg7kBGaC8v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773102008; c=relaxed/simple;
	bh=pQS3+oY8uNxbqu4m+QxhwxvnOL2GT6e9/8qi7PByaVk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JV9wIiuBpY31kk+GQ6sul+1GD5QeCl0xWWdIJNYIGpivwV56Imz7erQCiQo2syvclQc5YavdBupTMxPosscLxS4fcCltM25osSZliMnE+ql86FEJ/+B/GWer+baoGtqclEU5jIwBEJ/oi/+o8XarqoTUxyweDxSQiZ5KkrZFZ48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nXnJ6NyY; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-899e85736e2so92400436d6.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 17:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773102006; x=1773706806; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R7YDg569U8MvXHa3jpNDu2jY2nnLQu1AklXEVajo+6o=;
        b=nXnJ6NyYMAQfj0ew3WW7lOn9GjYTK4YmJWCZMWBQHwhkdqIKiuWv8Bg6GMyTBDj+Kl
         bCJsRmD/d1YWRpyetD+qm31bx0RQvf4siJGpJl9HxjyAH6yDVe0san3m+wmCSY4Ydydk
         ixBV58WswuYjfzi+PLsl1yIrgksYswzi8r27me+QrSPIpx0S4Qh/hSPng0WLSrmIicxq
         QtQ+PWIoOPgshv0bP85NJFxhjt4sAvt50mVNqJJ5H52sXPTCL38m/Fz4PMuRBAiZwy8m
         l4QXVPgafnmiL4zH8GOujmD4BD2pK2UYsDoJv9bqKuprSeiesKZpAyWfSR1M9LWGl2ra
         BARg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773102006; x=1773706806;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R7YDg569U8MvXHa3jpNDu2jY2nnLQu1AklXEVajo+6o=;
        b=TSAhYmWsHjeL6mWzqfpy8en7cD8y+5loRUErw2SVYEpk9Er4cLqRfcz4Ve9J14PCVS
         vx3uldqWf+yePRoiCr4CmZ9ebMBza8/grUd/k9EXeULr56X9UpXulSbSpTLO2wgxjnsC
         KgvNkOzLmfYKyzNmVUGNO3Q67092nKE8Hwo6sN2VJHYwtp2x047MpbEjb2HXECAZ3ega
         zc97wvmuBvZTWWqH0b79geZoMVvD+1zLbgSiwTBcKmAeLOdmaO47Y8Ru9HkxK+ekVa1N
         Q2QJOVYS5Qw3yfB9koiDzU3eUw3bZjDVL5ZoUgG8x7i6NAcVBc/+RQsi8UK3//1b6tps
         XbnA==
X-Forwarded-Encrypted: i=1; AJvYcCWgpVPxXXsAnHSr6s+jjr9+rNpkSI6x9D0+JD7iXOM+5c5FaHLDqrQjq+DvW+VoEe6wBwAgK6PokP0h@vger.kernel.org
X-Gm-Message-State: AOJu0YxjGxdM3+qdwYj8R2KUGv9EZE4i6YJycSveFsMix1SePfMSMhrc
	7NYNY3f6BvSbFNe+o4msrdgTg5fKJtt5re8pQmB1LCLQR8uOmaolqhjG
X-Gm-Gg: ATEYQzw8TEXDVcr2U5mQnkEPs22ROm6mX53biVClt7+ajcSwOj5jp0X/Qn2FoVEEy2J
	XQ6B+WfBj/5AO5jtb+HBFo43c6jX7KHgubiQG4SG71PEFqCwirO/0xNTD0Enq1FjZ87wjKaWEyB
	BOc5sZXJyQyWlVZi9Rzk43WSJuczyLr+djeQNlUI9CIOT0CkebKDeqw18rjocOOivHlQSIubK5d
	P/nS/ui4WBhQwcwqmcd5MqNKKh2YZJeeLxES2v1DhV3mpto2wqoCERGlmELGK75IQ5uOM+PYLlm
	n4VZJmTGpovbwBBK7M7ijWj2LKkM6nLGmJNkbp+iZHeXYXJ8FTVxl07UdwJ3QTAoJM/8AcgdcF6
	/kze6FCNfURsAwYbFiY3NZiB+i60/XCSq1rb9h32daF5qul7uwZqv6PtVSZpvwJODV0KIj7yd3u
	LSwQ62AWNltM6dCF1eaU22M/mu8g==
X-Received: by 2002:a05:6214:40c:b0:899:ef7a:2425 with SMTP id 6a1803df08f44-89a57c8e7f3mr22310986d6.22.1773102006171;
        Mon, 09 Mar 2026 17:20:06 -0700 (PDT)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a57a3a9a2sm8380336d6.15.2026.03.09.17.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 17:20:05 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 0/3] SDM670 Basic SoC thermal zones
Date: Mon,  9 Mar 2026 20:20:34 -0400
Message-ID: <20260310002037.1863-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 7FD8F242F67
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273165-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,arm.com,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

This adds support for the thermal sensor, for thermal-based CPU
throttling via LMh, and for thermal zones.

Changes since v2 (https://lore.kernel.org/r/20260304014530.27775-1-mailingradian@gmail.com):
- remove cooling from memory thermal zone (3/3)

Changes since v1 (https://lore.kernel.org/r/20260210021607.12576-1-mailingradian@gmail.com):
- add review tag from Krzysztof (1/3)
- replace CPU thermal zones with lmh (2/3, 3/3)

Richard Acayan (3):
  dt-bindings: thermal: tsens: add SDM670 compatible
  dt-bindings: thermal: lmh: Add SDM670 compatible
  arm64: dts: qcom: sdm670: add thermal zones and thermal devices

 .../devicetree/bindings/thermal/qcom-lmh.yaml |   3 +
 .../bindings/thermal/qcom-tsens.yaml          |   1 +
 arch/arm64/boot/dts/qcom/sdm670.dtsi          | 400 ++++++++++++++++++
 3 files changed, 404 insertions(+)

-- 
2.53.0



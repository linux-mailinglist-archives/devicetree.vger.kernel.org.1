Return-Path: <devicetree+bounces-257960-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBBdCSvbcGnCaQAAu9opvQ
	(envelope-from <devicetree+bounces-257960-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:56:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0855805B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:56:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 299AF688668
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1846148B373;
	Wed, 21 Jan 2026 13:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q9Kc8f2y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347DF365A1F
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 13:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769001991; cv=none; b=IqMeR6jPgMK4Qg3s477+ZJ8mPqc3HVd/NdVCex11G8iFp4CDjZ/jQ1LZZPwzvVzbfitdv4CgmmDQTqTroed+WVH/E1xcPPuZ18FoTbI9aOyEVDKttssWKPf9yZO8MJJlacSO4w86o/hSzo5fu6NmC+WvXmlznWdYFH9Rgou1wlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769001991; c=relaxed/simple;
	bh=Ilw6wqzweYkqw4rgm0eEkLzCzIBlYAKWRV8Bde+ERSs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=KStNokTSnHrwGKnQKcUE3hpREYESorRKe7vS2hWXC56fNQYd7vb/PphQ2+mNd9ngU29Ks93DQgYeApd1pMmSQx5HhotgdSiwX8lQo3Z6wNZug0bJ22MiKTTOniN/5zyokoDqqiRLpXBmQ30pQCGzXcBNS5fJUl5MeYeYUWkRIlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q9Kc8f2y; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a0d52768ccso44694395ad.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769001988; x=1769606788; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iA08QGHrnMq/tvd0L88F2y5YQ7L4I/IIm3WGKx28378=;
        b=Q9Kc8f2yrVRGFAM8YrZyw5S+gLL3GdK/Tw3iLVodZIw46urko3vpMgJHhAjIPnPOts
         BiQnD0y9OVKHK/iusjwYavdgsTT2ao0PbbG/mgFVMpGrm25UyieEu7Yb8/Q0tp/xYu8d
         IgMyOmkUTSDXpEU38ZVt7Bbr+KZs0lxIMVtUt9np4YyRiaON46kAbLtjAbs8rbsBfpBn
         qtjYx3TzOBg4EYHSj+eISsqc042F8YCZEB6AkfyV1d35grdLiJSLN+Ajuhi4Qaokh8xO
         W2c0ItsZKrL27kZ6NrX7ra0dED3XLvWOAAn9//HD61AOjp9R/AdZz/vnh74GaY6kse9O
         0jwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769001988; x=1769606788;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iA08QGHrnMq/tvd0L88F2y5YQ7L4I/IIm3WGKx28378=;
        b=OsOhmpkJAn6bZKRC5yPWBzR/NPyrq+oCPP6jsrZAMHqPOneDygjMGjALjlPmXYZzSs
         ng2CJT7jMEjkRXaiHbXO2OsSvGzTJ19TFtAFg5SmjMwPXS3ourR2wvsQus6WKb/2B+CS
         B9/P6gr9/IRMcr1dZE3F3W/+3unX4ykYOFfllWHec2xaJzhdr6YEk/5L5BVFoHIy3VzZ
         nX9gXdOnJBcw03jvdIht6aoyDhYKErx2qi65aeuWPtPDd06KDJQK0675hqiMnQc2SXJ8
         YXWw7Oyt5UVXa1UjSXwt+tCIppmyJZ+/G2+TqId8MZ94Fb+knSWdQCeAV34P+kYwbDx6
         p8qw==
X-Forwarded-Encrypted: i=1; AJvYcCUCeYII4Re3MD1IK6ztV65rb3xFNg3Q9BueppO5MS9ZaB051J6oYuQKNFIKsuX3YLQ3fA42zcEkLTTx@vger.kernel.org
X-Gm-Message-State: AOJu0YxPNCxA5r1T/NBI6Au1QahCb83AHS8tKRKhhBZ97smgjp3GYwpL
	wG4gDD/RNMXnSUo+LXy9az+1EIoK+1697Myo78QIqDzH0bFHyiT/kNe+
X-Gm-Gg: AZuq6aLUfT7jcgwe9yWHIFkJoLWh8fGLagQYrJ/es+f9Dovr/LruX5NCvAYUmyftSl3
	5HqefA76W4CtzGRn7bdut5xLBzgfCsQtYcUjVf5plm/k1nWAFwasWalVPZ2PN5LBDd/NWzHxgUH
	zaurtQnIzzXRX2BmT76ol9xX2ljgwEKi3OSitM4NIa/Xn6P5LCMZwe8a2slBZgFHaAasdfPYtqv
	HcS0y5yL2/xj3R9YO5ZrKpRlMa9OYSdUP4sbPkSGi90fWUZSAs05iFWbGLOlOOtP2clmrDDm+Ao
	CVzScrc5ibhyk0Or2KX7HGsRfIWpq2r64Qzv2cn/DXNwXDvR5sPi0YZlLbdyVFIXOD0K1fEH40v
	k+0J7Gb0vf2OpmjlNbu2vncrY5GH95x3PchAdgvmw6ATryLqoS5K4QMrvQHpk6oqpAOnDYvX5tc
	fk2NKvhItmXRhbH3xA
X-Received: by 2002:a17:903:2b10:b0:2a7:90f2:2dea with SMTP id d9443c01a7336-2a790f231ecmr30187935ad.28.1769001988312;
        Wed, 21 Jan 2026 05:26:28 -0800 (PST)
Received: from [192.168.0.101] ([45.113.101.30])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a7194164dfsm151487235ad.88.2026.01.21.05.26.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 05:26:28 -0800 (PST)
From: Biswapriyo Nath <nathbappai@gmail.com>
Subject: [PATCH v2 0/5] Fix volume up and add RTC, PRNG, UART in
 xiaomi-ginkgo
Date: Wed, 21 Jan 2026 13:26:16 +0000
Message-Id: <20260121-xiaomi-ginkgo-features-v2-0-fb3ee94922d0@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3XPwQ6CMAyA4VchPTuzTYJgjOE9jIcxutkIm26IG
 sO7O1GPHv8m/dI+IWIgjLDJnhBwpEjepZCLDPRROYuM2tQguSy4ECW7k/I9MUvuZD0zqIZrwMi
 KUuYouEEtBaTlc0BD9xneHz4d8HJN/vAZQo8xqtnfZNsvX/z4G3Wdv7FRMs7yosoNNmuu26buF
 bmOHDm79MHu4G0fKQ4+POYfRjHjX6/6d+4oErzSpVFYlXnTqtomuVtq38NhmqYXM80iCxgBAAA
 =
X-Change-ID: 20260118-xiaomi-ginkgo-features-6824e10fec21
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Biswapriyo Nath <nathbappai@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769001984; l=1928;
 i=nathbappai@gmail.com; s=20260118; h=from:subject:message-id;
 bh=Ilw6wqzweYkqw4rgm0eEkLzCzIBlYAKWRV8Bde+ERSs=;
 b=hFjjXM4oiWiG0Texx/nnnzzFHgGJaQs86B0Q1cZ2Dx0FO3INl8wd4n/N8QAL/fxHV+7Tt2K9z
 2V6bOeUfh4TBuqL3X1lZte+ha9l2V1iWgA3IKcsUqosx6NO8OKdMnX1
X-Developer-Key: i=nathbappai@gmail.com; a=ed25519;
 pk=slmb/9yXbet+KTiT3EYLCp0p0MEOYa3EdjUXP+HXfjg=
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257960-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nathbappai@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,mainlining.org:email]
X-Rspamd-Queue-Id: 4D0855805B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The patch series fixes an issue and adds some components.

Changes:
- Fix volume up button gpio and power source in xiaomi ginkgo.
- Enable RTC from pm6125 in xiaomi ginkgo.
- Add prng node in sm6125.
- Add debug uart node in sm6125.
- Enable debug uart in xiaomi ginkgo.

Depends on:
[1] https://lore.kernel.org/linux-arm-msm/20260116-xiaomi-willow-v2-0-4694feb70cdb@mainlining.org/

Signed-off-by: Biswapriyo Nath <nathbappai@gmail.com>
---
Changes in v2:
- Enable RTC in pm6125 by default as requested.
- Link to v1: https://lore.kernel.org/r/20260119-xiaomi-ginkgo-features-v1-0-3c8fae984bda@gmail.com

---
Biswapriyo Nath (5):
      arm64: dts: qcom: sm6125-xiaomi-ginkgo: Fix volume up button
      arm64: dts: qcom: sm6125: Add PRNG node
      arm64: dts: qcom: sm6125: Add debug UART node
      arm64: dts: qcom: sm6125-xiaomi-ginkgo: Enable debug UART
      arm64: dts: qcom: pm6125: Enable RTC by default

 arch/arm64/boot/dts/qcom/pm6125.dtsi               |  1 -
 .../boot/dts/qcom/sm6125-xiaomi-ginkgo-common.dtsi | 18 +++++++++++++---
 arch/arm64/boot/dts/qcom/sm6125.dtsi               | 25 ++++++++++++++++++++++
 3 files changed, 40 insertions(+), 4 deletions(-)
---
base-commit: e5d16f0daba655b8c63032f7b0ae1f21881d821f
change-id: 20260118-xiaomi-ginkgo-features-6824e10fec21
prerequisite-message-id: <20260116-xiaomi-willow-v2-0-4694feb70cdb@mainlining.org>
prerequisite-patch-id: 97a500cccd7099f84f02d24b79f9632264ff0919
prerequisite-patch-id: a76649864084c6349d5bbd425c84489621e3d950
prerequisite-patch-id: 88844031b714eecc8185b968927ece52795237cd
prerequisite-patch-id: 7f01d4e3dafb4911244d6bf03db9ac03395f8609
prerequisite-patch-id: c339d93729aee842cce74ba1316f5b5c8d01d04e
prerequisite-patch-id: daad11c94235247984631a78b2c2cda74f8af5bf
prerequisite-patch-id: 816740927f2e464864884584e6af596b038074dd

Best regards,
-- 
Biswapriyo Nath <nathbappai@gmail.com>



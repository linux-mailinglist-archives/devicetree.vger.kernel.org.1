Return-Path: <devicetree+bounces-269908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH1oD0VspWk4AgYAu9opvQ
	(envelope-from <devicetree+bounces-269908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:53:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB2F1D6E61
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:53:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 331AA300B510
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E606C359A94;
	Mon,  2 Mar 2026 10:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="SLda1Ezg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C24B33F8D6
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 10:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772448630; cv=none; b=oXikdRJwug+5JOjDyA1Pq2gRRIrrTVrEXa+sujrMCQ24Nuc040QKEcLGiVM7+PYTHErkhPYY87I/xNek4UwtrAh9e6BTLxDSC1YoYCFUXOsHArXNJW/DXBtE9v9+C8sHsDv+B7nx/dRP4U91P69XcsSlVmIbXptPJTWMFnek/Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772448630; c=relaxed/simple;
	bh=GlADQjf3oqael0HpubNah13JMqhh94V8vrJ6afwoqIA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=WGnFaejf8QzaBn5a9QiwH9F36cXShoDdN1UpmqQ8wO3KKi5BS2l2dVr0jHIF9+33ApEll4i4k3CmYb7Jjr5vjXH4+M+Id+z5e8ZL3J2ICh25I3PoNxAuSvZ0DRlwPdE2JMpZ7WoNicJnDNlfDNnPMYCrpyHiM86iXwxxvl/lI68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=SLda1Ezg; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-65c0e2cbde1so8527902a12.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 02:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772448627; x=1773053427; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gRu/CGwKuJ7if/qJsZ9ADoBMjsNYwgR0/rcDykqWA30=;
        b=SLda1Ezg9b4Qc+QydBc2/17Ie6PWqBMUkRctSNo1JLiEwdKSbor8qibuUY2PSKCcU2
         QfMDft4M2uPHYrNQm982pOd+SMjwL3IAKfS2aDwFYh5G89JNlXnR/fVUDrNAYJY2iMU9
         5F1/zjo/Ke9x7kebLkszXHPTdJkh16vRTbVAaIyLDinnM/PAN+tWvcbKLg6nULDtpLwe
         2QykqMnTHPOCHwKpn8ctu4F6s10wHgXVVpEI60851Y1fkIvtG4ik1sH2Jjoq8kwMRnmq
         /D0fV7cL2TRpkDEb5RUzonm3FX5+M9J6Pqshk+PCPry5nN6Hmajr1uNPtzcuDoNU7ZWO
         XrFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772448627; x=1773053427;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gRu/CGwKuJ7if/qJsZ9ADoBMjsNYwgR0/rcDykqWA30=;
        b=C7S8dzunAnAh1MhGeiDW7N8Hz0V4me++9bITtpN6ka1qcoxfOB4uRxzOBwxVYim/5V
         M2l9um91rc5s6h269h5MCjkb+k+W5vrx9hcGsaPm25aPP2CpDTU7oM5w76vsZ118Qm+K
         P7WKUDASL96ps9ULo3ubJ3likJVd9aUnJOUF/yWrMIm078KnCFjGH91rU1Ekfdajd5UK
         PVFM8/qeTi1AH0ad5U5W0fqdg7Fw979NTwiwf765qkQ9JvS8UbK3lCtekrlE/69HyyCL
         FZ9c99/RQBQwdw6NyWIt4X6wHObU+v3GKOO0gM0devagMvz4xsP+9tV7sYbeGJbsV70C
         o1bw==
X-Forwarded-Encrypted: i=1; AJvYcCVFpyqlT3zyKRZSZG1C8bBhRguHb5vHd479FE3AYbnYRnen8yHWM+zAowU2vQDXRtmlUvyty7ap892q@vger.kernel.org
X-Gm-Message-State: AOJu0YwWiS3Wqnp82Pq/68+jdS1NglTEEQ46vLMHuQwXs8b8VD7bY1Ib
	0D3S2rVlBmMvHkd0NN0TctoRUQB+4xklQxij9XiErw57hjf4+Dd0WT5lRGi8xhvuFjg=
X-Gm-Gg: ATEYQzyXWpxlmcW6l88BJ0H4qS3i8R2UuLIoG0mHT/HZ1oNVdWpg3CF9pBVQTjHgpsn
	vZc0lDMV297VnczcLMbOnqIhp4d/iOJITeiuskcKF/7Op03rUPZ3atmSD1KOmqGA5DoMpsyCokN
	ZmOqqTridDgxA4QRzAJZAeUPM5u4mA9COdk0zqLslz2dk6Eq6+E6MiMT7xzOCKgq+GwUqPc7G74
	wXcMLMAxhLH0qzce4GH6yXccx83dgKHrwroTzN8O20LHysOwFYZdct8jIQMIjw0tDFFv7hGDjHK
	lShvXpQPHRFeLcIaTJXJuxHUO5iBygtcxSoyzM0E0r6t4+Ur7PMxkN80QiOd4xGFOXH1KoF/ZIl
	LksJcG/bBMdZ6sjKh+wAgV2PhYvexOwaSFvxiq1XSGckAbHUvjEckYxfh4ZGVeNeCrnCJ4GTaQq
	4FLXOk8P3bbcQLnShf8j6x2X0TejH5LirhGpRhO8yS4nMqOaIA/WPPp10ieIYJ7SsZZQrwj6JTl
	nznO4N8uUYRwY9fGYb4
X-Received: by 2002:a05:6402:1e8a:b0:65f:8b6e:e1e5 with SMTP id 4fb4d7f45d1cf-65fdd6e43cemr6617297a12.12.1772448627543;
        Mon, 02 Mar 2026 02:50:27 -0800 (PST)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabbd98bcsm3511769a12.0.2026.03.02.02.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 02:50:27 -0800 (PST)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Subject: [PATCH v4 0/4] Add support for Awinic AW86938 haptic driver
Date: Mon, 02 Mar 2026 11:50:24 +0100
Message-Id: <20260302-aw86938-driver-v4-0-92c865df9cca@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHFrpWkC/23QzU7DMAwH8FepciYocfqR7sR7IA5u41Af1m5JC
 UPT3h1vBSFtHP+2/JPts8qUmLLaVWeVqHDmZZZQP1VqnHB+J81BsgIDjbXWafz0be+8DokLJT3
 UEU1wAB5BydAhUeTTDXx9kzxxXpf0dfOLvVY3Ckx9TxWrjaYhdNa3PkSHLxE5HaZlpudx2asrV
 +CXaI0F/0CAEENjiYxvEWPzH+H+CDD9A+GEaMauH2N0pu7hnrhsVyY6fsi31u1UNWAmLf09r7t
 qptOqf3bsZOLyDXRm90RnAQAA
X-Change-ID: 20251113-aw86938-driver-b4fa0d3228a2
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772448626; l=1722;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=GlADQjf3oqael0HpubNah13JMqhh94V8vrJ6afwoqIA=;
 b=laLZkVwpvQTA1mGqn26YNE2T+h207d5p74Gcyhy2AqV0SyN/yzBelFrEY73xyHFxnqbmH4GQz
 ZlG0gufUciPCQqQuEfWWC+TJrWwd2+6lqhRU19Nzf6XUjhoN1EllLxJ
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269908-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,fairphone.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[griffin.kroah@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,fairphone.com:mid,fairphone.com:dkim,fairphone.com:email]
X-Rspamd-Queue-Id: 2CB2F1D6E61
X-Rspamd-Action: no action

Add devicetree bindings and driver support for the AW86938 haptic driver
chip, and add it to the devicetree for the Fairphone (Gen. 6) smartphone.

This haptics chip is quite similar to the AW86927, and shares many core
features but has some notable differences, including some extra
features.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
Changes in v4:
- Changed how vibration intensity was calculated, added a seperate patch
  for it.
- Link to v3: https://lore.kernel.org/r/20260209-aw86938-driver-v3-0-5c79cff30492@fairphone.com

Changes in v3:
- Changed how compatibility was handled according to feedback
- Added reset gpio config for vibrator node
- Link to v2: https://lore.kernel.org/r/20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com

Changes in v2:
- Added AW86938 specific registers
- Added chip model enum to differentiate chips
- Link to v1: https://lore.kernel.org/r/20251204-aw86938-driver-v1-0-ebd71868df3a@fairphone.com

---
Griffin Kroah-Hartman (4):
      Input: aw86927 - respect vibration magnitude levels
      dt-bindings: input: awinic,aw86927: Add Awinic AW86938
      Input: aw86938 - add driver for Awinic AW86938
      arm64: dts: qcom: milos-fairphone-fp6: Add vibrator support

 .../devicetree/bindings/input/awinic,aw86927.yaml  |  7 ++-
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts   | 26 ++++++++-
 drivers/input/misc/aw86927.c                       | 66 +++++++++++++++++-----
 3 files changed, 82 insertions(+), 17 deletions(-)
---
base-commit: 0364de6be161e2360cbb1f26d5aff5b343ef7bb0
change-id: 20251113-aw86938-driver-b4fa0d3228a2

Best regards,
-- 
Griffin Kroah-Hartman <griffin.kroah@fairphone.com>



Return-Path: <devicetree+bounces-272652-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHStLGYOrmnh/AEAu9opvQ
	(envelope-from <devicetree+bounces-272652-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 01:03:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3074A232D07
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 01:03:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A30B9300A7EF
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 00:03:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E469B3C07A;
	Mon,  9 Mar 2026 00:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ckpb5uF9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B539A22301
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 00:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773014625; cv=none; b=MVBAMfUyLIFiLc4cZ6WoG9PS2rawZDa+JX0diUeuXqXOUYHkJlNq7qhDKK3tgJg/9EVZcrF+w87aPmeHl9DtJ8U9Pf/ixQQmVhA1chczoQdwCXh5lPZfp2ICwfCYC3WDWDcO3nDmdClibrux1lcODYrbFiCGNX8jMyNGmOKDmT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773014625; c=relaxed/simple;
	bh=2CuwjY5H2zGtQt9T2CoGhnEcmdwVkk7JW6ZVqUKbW9U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hdgVjRnmvFkIFxC7ojji1DBt1xVLan8F0Gx9uiu8+pWtwbhJFSK+WUwaXOMktX7Yq2VOSD/obb7mnjZIMoUhWksfT+HxrJAtsLlTejSLMOoCJwgKveDCby8ohL/mG3l8Mx9My47Olyl/Rbqm73KvuUN5HXZYw0sLoZK3xR+bWE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ckpb5uF9; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2ae4d48dc2fso33574355ad.3
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 17:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773014624; x=1773619424; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SiMQer80U/YZH35WDQO5BKhpPq/Jh1VP3Y5MXqFJrL0=;
        b=Ckpb5uF954obzS7PDTlTqO52w8RYYIsT5quYSIvQGxob0NVgFmHc7LxSXOy31xLV6W
         Vpo2PLajqVcyAA8F7U4VY21goNMKy5cGjKOmQrZXcbX67lr2AikdzukFOcgWDtNaaPXr
         hO7qh2CxoQTZg8GVlmUSE9rBtrjrUO46CIHLQ5j5PwaYrLdvgRjfmqutRsSR/PZjO49e
         bgbDKhhuo/fXK8EjTUqTYankks/CgjP5Tro/mcey2nQzW/2gvqMkS+ZhQOrtLbQh9i+b
         mMKcaPtQ10iIH6nu1k2vRUp35JH5j0WBYyrWougH8cUIbJBH3092Iq+SXLwIv0Y7R0ae
         GteQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773014624; x=1773619424;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SiMQer80U/YZH35WDQO5BKhpPq/Jh1VP3Y5MXqFJrL0=;
        b=lRt30A8Q1dL9xVXZPuy/q6+nm062SUlSn7ArrKy4wea166THQnZOBXAy8Z6EuCSTP9
         5bs/+wzIH0aweUXw7i/7gVUNSVwxdozkzPf6eCLGNHSlx9XdoRZWWSc7xzyyRP6qFGDh
         gMbNJtNLqLnQnytUp5dBDi3BjAFLxusUllOY9B6N+qdjC7gshLOZWHazbr7KQSmFrQCa
         clAMZEEy9n9EBt9T5lBS2ztMbJrmh6q22qc6TExva7p9yfI8ek1ZJOdQjDy142yJiBgn
         Gi4s6H6/e9h0oCJmjU9gIa1VHgBM+9LZgSI2o7umRAlwo67Zo9NQPLRWrnOpGwu8JRI/
         ZbTg==
X-Forwarded-Encrypted: i=1; AJvYcCV8KZWLLdL11BgkzFjDVvyy6GwuZUSrzr/yu5qP1o8QoVEtBeoCShjcRSA2txIMip0M1nAzrlNhrk+E@vger.kernel.org
X-Gm-Message-State: AOJu0YyOcokLTg3Mm95MDFDW3iR/Cm17o3fU0+7q8vXjZItzOWbrBqxM
	+dqGk+aVqGuTpg+V8CYsGyNJ/I3w/yWz8YsVhUm9sn0dV/vv36KwLyj0
X-Gm-Gg: ATEYQzwXdKXWNzad+JHvyhCfw2d1JceAITwkIvwmKPcex+QDQPA5uVFvvhaBADT62Vm
	uwS3tGx1VMcA4wkUHKXZ9DJ6DQcieOAtXYRsxGqoZPBm4kmy9SCdU1O030HD5luajCJbHQnIBuK
	c9XuQfP2KGhyzmm4C7q0ln26b/mXeqWiVtOuJoU0F9E+IkvbyGyRgnJwCDQfEcSlNKM0s2PNnTp
	/QiwHlqM4OCXCUnNRo+9a9KpkKN2mIigSliHEF+MAIYW+iHHPZJQ/7keGQN3YHqblS1lRHPqrb4
	N5e7uk0oHxAjprI5BfvYUDZre2U/9ghbG/xJlUp1QXBZFp3VGFcdblneyuQGhc34vY5SHUQbOlc
	hrQ+TATVkDvnK+ylJsgTpTs+BdV6hK3r2Xv82zC8gEu1ReEAEQJu3myGNV7e9HChID/RWOrAivY
	7965Afz9mmDxdJCzynrK8hHsiBT38wKmvhSn/cBQPPJoQRTA4RV9I68JZBlg==
X-Received: by 2002:a17:902:e745:b0:2aa:d60c:d48a with SMTP id d9443c01a7336-2ae8241815emr92567495ad.7.1773014623892;
        Sun, 08 Mar 2026 17:03:43 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e9b9c6sm104845405ad.29.2026.03.08.17.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 17:03:43 -0700 (PDT)
From: phucduc.bui@gmail.com
To: krzk+dt@kernel.org,
	geert+renesas@glider.be
Cc: krzk@kernel.org,
	krzysztof.kozlowski@oss.qualcomm.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	hechtb@gmail.com,
	javier.carrasco@wolfvision.net,
	jeff@labundy.com,
	phucduc.bui@gmail.com,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	magnus.damm@gmail.com,
	robh@kernel.org,
	wsa+renesas@sang-engineering.com
Subject: [PATCH v4 0/2] Input: st1232 - add system wakeup support
Date: Mon,  9 Mar 2026 07:03:17 +0700
Message-ID: <20260309000319.74880-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 3074A232D07
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,vger.kernel.org,gmail.com,wolfvision.net,labundy.com,sang-engineering.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-272652-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,youtu.be:url]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

This patch series adds support for using the Sitronix ST1232
touchscreen as a wakeup source on the Armadillo800EVA board.

Patch 1 documents the generic wakeup-source property in the
Devicetree binding for the ST1232 touchscreen controller.

Patch 2 enables the wakeup-source property in the ST1232
touchscreen node for the Armadillo800EVA board, allowing touch
events to wake the system from suspend.

Verified functionality

* The "power/wakeup" sysfs attribute is present for the device.
* The system resumes correctly from 'mem' and 'freeze' states when the
  touchscreen is touched.

Additional test information

Demo video showing wakeup from suspend:
https://youtu.be/POJhbguiA7A

Kernel config and boot logs:
https://gist.github.com/BuiDucPhuc/ac7d5d732658ca293af4323ad04accca

Changes in v4:
*Drop patch 3 as the I2C core already performs the initialization, 
 registration, and management of the wakeup interrupt, making the 
 implementation in the driver redundant.
 The original intention of patch 3 was to expose active_count, 
 event_count, and wakeup_count to user space. However, this is not 
 necessary since the R8A7740 SoC has some specific characteristics 
 in its wakeup interrupt handling.
 Moreover, modifying this driver could potentially affect other SoCs 
 sharing the same driver, so the patch is removed.
*Going back to v1 design.
*Update the cover letter

Changes in v3:
* Patch 3: Removed debug dev_info() log messages for a cleaner
  production-ready implementation.
* No changes to Patch 1 and Patch 2.
* Link : 
  https://lore.kernel.org/all/20260306111912.58388-1-phucduc.bui@gmail.com/
  

Changes in v2
* Drop description for wakeup-source property as suggested by
  Krzysztof Kozlowski.
* Updated commit messages for clarity.
* Added driver-side wakeup handling in st1232.c.
* Link : 
  https://lore.kernel.org/all/20260306104025.43970-1-phucduc.bui@gmail.com/

v1 
 *Link: 
  https://lore.kernel.org/all/20260305113512.227269-1-phucduc.bui@gmail.com/

This series depends on the following patch which has been
submitted but not yet merged:

drm: shmobile: Fix blank screen after resume when LCDC is stopped
Link: https://lore.kernel.org/all/20260226054035.30330-1-phucduc.bui@gmail.com/



bui duc phuc (2):
  dt-bindings: input: touchscreen: sitronix,st1232: Add wakeup-source
  arm: dts: renesas: r8a7740-armadillo800eva: Add wakeup-source to
    st1232

 .../bindings/input/touchscreen/sitronix,st1232.yaml           | 4 ++++
 arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts         | 1 +
 2 files changed, 5 insertions(+)

-- 
2.43.0



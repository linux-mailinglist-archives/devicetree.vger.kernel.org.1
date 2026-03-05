Return-Path: <devicetree+bounces-271318-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aK62MmXPqGlIxgAAu9opvQ
	(envelope-from <devicetree+bounces-271318-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 01:33:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE1C20973C
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 01:33:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AC16630576B2
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 00:33:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B400D1EBFE0;
	Thu,  5 Mar 2026 00:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PrBuclfc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2934165F16
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 00:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772670810; cv=none; b=RxZtODJj8rzRt06tNxdDq63ELFvs2aUm497T7Fo+prkCGJcoTrmr9fv9na2IYN2kcKjuIVL0Uz+vaNkSxnKJNJtgoprvbxC39/EOmJQTMpGRZJDKjhRSi2/tVxjtCdkO85fuFp5DPz+Id708dtYK1mDCFbGFKxPNV7F9uRI816U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772670810; c=relaxed/simple;
	bh=jYZWIpEDvUIg6uWxGLa3xhe50hws5xo7lklZCfYbEXM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JuCGTesgCBavq1ptAtirHOew5u/wM0NoL3oil/GsMKibFsP9rvY6kV4CKBggHc8YtbHS+T/E1EGnWAfGWiS4aW2AeXJM60v789PmGgUwf9X8yAeWsdbTrQJkx+U1qbc1jqT0YNu6pG224dqjSe7aib5B2h+e099xCnL/yv/HUG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PrBuclfc; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7d4b9c839b1so3920015a34.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 16:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772670807; x=1773275607; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=upUg3ZxOy0Ji9DU1YGXp3LZIoYzzoDo9wLPMsUxZBkY=;
        b=PrBuclfct8VlIo08/TfrfQnS+m4VsG+7Fo8rsfz+zNy5J5qKzLAyu0mVTY7c8VYwCc
         6iVsFPsRFtCElSERY+F51tHh2CUhtTplrtWfG3i9hPog6cf9JOPFF8Mzg8cu7UHsrDt3
         oC65y2ZmyO6Ip+HzI9SDdrbfpjztsoD5p7Nm1dtkEtVcqwSRgx1QShcYF6gigrk5WYXv
         +rGrSfQGafaMBGt9jJ56NNNxja36T0VBaV4ZxfQmq6XUr11vAarjfwxT4jv0TsWo2flE
         9lokSPrH/vT4oFCbs8xuLBIHPqxtlQmbBYVoheipk3SrF0Ja3F1j0ACC8tjJyzROrNF8
         c+hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772670807; x=1773275607;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=upUg3ZxOy0Ji9DU1YGXp3LZIoYzzoDo9wLPMsUxZBkY=;
        b=lIJZePIbJvc8mIkxHwoUK9Ef1HpXjGDlvGtT7zllW/L9px8xyUaxccPUrNhwtCi8WH
         MG7MAYKKGjxc9LR1C7DSxQGFHFsAlTjJ4HIE4ybPHcsc9CQwZW6+EsG9gx9lXqoIeo1w
         i+J32RO5MhYnostFbvLLugJndXKnLtAELbmbwd9k5ZzvYD1JPuSWTl4AuY+MZDQrO0wK
         AMAw/9ChiVUjJ97tAHbO832HWTHh82GNq9Iwy/eEnfXsTcUa750yQLq2QRj/YbaQTzWq
         VTARVCQKLugsOU6IWB2m37zZrnZlZjD4C1HyU78IxG9SRnnXGt42c3wa2qsn/fYs3k3w
         7vJw==
X-Forwarded-Encrypted: i=1; AJvYcCXzPPLr1J9A7pNTColb4sGSjXl3TXCsGiT8ioPYza9g6e6WYCBV6pA40jbswYtShSdkNjPfZRRxoP8m@vger.kernel.org
X-Gm-Message-State: AOJu0YxlGFlCSDSH0yxmaFa8209InZ+uV4rPtyWyuvIi1zvsGNYLZiwT
	ht9cu9i/JtyNw6IhPGPj5UJ014Icx4g9IkxhvotWdLAutmICwJ321goT
X-Gm-Gg: ATEYQzws5Nfw7IpJ5qlfOyt72CfmaQxaMA+HOMPsOfKABFFGQWChMIyf2cdMf2nL14x
	BelZgEys6GpsHtEDEATlBq1/5w2z7E5zlAl8ePtgDew80ai2M7ZoiO8R2CgwtDS0fgf/v0RndZM
	spy6DtlF4eIVtFo515IPARdosK23qMtbCO5Ub648XszzrKhdZn0CrVkcCIajswTtvGtfyZlgkVG
	MfAUDnDuJ/BukZfeEeOgC0FHkv8ECqv0UOqP8xxw8t3oj4bwpX600COTtYGd5YpfLN8zkvoBp6V
	HKeEGILJl546ya9JpAkYRbW7z21jaRCpNgyrO8szxE6Nu6ZvdwX4+l8xAJ5ukvsCHkNq0tW+sk3
	TkqCg7HdTBvyNSq0vXaFzK+IxmuoGT+4KjInYuQkAp/j1KVdMKQ8RyEK0Kn1Qjv8A5rI7ViAu1h
	JpAdTbtz3St5aEz/qQsjQ9b6NIgS3KfCxVPh+/s7Bn/51eAY4oU8bg1tqvQusa5IXuE5wzak0Rb
	fr37BNEy6FNkbAX/NazUPgoDdqLj3Uw+lWvvo8RBjyjk+lpmHyE
X-Received: by 2002:a05:6830:3983:b0:7cf:c482:4982 with SMTP id 46e09a7af769-7d6d13b8e27mr2432945a34.25.1772670806981;
        Wed, 04 Mar 2026 16:33:26 -0800 (PST)
Received: from framework.misc.iastate.edu ([2610:130:110:25d:2aa4:4aff:fed7:9b19])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d58644dd17sm16633834a34.5.2026.03.04.16.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 16:33:26 -0800 (PST)
From: Kerigan Creighton <kerigancreighton@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: loic.poulain@oss.qualcomm.com,
	wcn36xx@lists.infradead.org,
	andersson@kernel.org,
	mathieu.poirier@linaro.org,
	linux-remoteproc@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kerigan Creighton <kerigancreighton@gmail.com>
Subject: [PATCH v2 0/3] Add support for Qualcomm WCN3610
Date: Wed,  4 Mar 2026 18:32:50 -0600
Message-ID: <20260305003253.1022386-1-kerigancreighton@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 8BE1C20973C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,lists.infradead.org,kernel.org,linaro.org,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-271318-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kerigancreighton@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

The WCN3610 is a 2.4GHz-only WLAN/BT combo chip used in some
cheaper Android and Windows phones such as the Lumia 550, and
IoT devices like the Anki Vector robot. It shares a lot in
common with the WCN3620.

This series adds support for the WCN3610 across the necessary
subsystems:

   * Document the new compatible string (patch 1).
   * Add compatible string in qcom_wcnss_iris (patch 2).
   * Add rf_id and CFGs for the WCN3610 in wcn36xx, disable
     powersave for this specific chip, ensure it is 2.4GHz-only
     (patch 3).

Tested on an Anki Vector 1.0 and 2.0 robot. Support for other
WCN36xx chips has not been affected.

Changes in v2:
 - Move the Documentation patch to the beginning of the patch set.
 - Move remoteproc compatible string addition to the middle of 
   the patch set.
 - Add Reviewed-by Dmitry (thanks!) to remoteproc compatible patch.
 - Move wcn36xx driver changes to the end of the patch set.

Kerigan Creighton (3):
  dt-bindings: remoteproc: qcom,wcnss-pil: add WCN3610 compatible
  remoteproc: qcom_wcnss_iris: add support for WCN3610
  wifi: wcn36xx: add support for WCN3610

 .../bindings/remoteproc/qcom,wcnss-pil.yaml   |  1 +
 drivers/net/wireless/ath/wcn36xx/main.c       |  4 +-
 drivers/net/wireless/ath/wcn36xx/smd.c        | 70 ++++++++++++++++++-
 drivers/net/wireless/ath/wcn36xx/wcn36xx.h    |  1 +
 drivers/remoteproc/qcom_wcnss_iris.c          |  1 +
 5 files changed, 75 insertions(+), 2 deletions(-)

-- 
2.53.0



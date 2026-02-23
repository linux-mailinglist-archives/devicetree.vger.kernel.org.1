Return-Path: <devicetree+bounces-267268-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHgMH334m2mp+QMAu9opvQ
	(envelope-from <devicetree+bounces-267268-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:49:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCFF1725B2
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:49:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AB6C530234DF
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EB143446AF;
	Mon, 23 Feb 2026 06:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L6yOMcml"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B4F1DDA18
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829201; cv=none; b=sene3q3AnCnAilM9QIRmZxn/ACxO0j2SMutxq7IznFxwo4wy2m4MpeHIfEDpJJUA2o0Vn/MPL9RX8NSTZIhEAofG7YoNg/ckWh5w1lfyYZnKia2eUP35qD/6lWJ53+MWMitNPUk9718QkTcolnHNZCRlRCWc5X7qu3lherxb4cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829201; c=relaxed/simple;
	bh=ymX0K+4nA6f5igtTYQY6uc91kowvvD8CeHfQFcLDJuA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fdkDPvdZwAQyK7692tnDHTpadfFLRTxb4Kfn7vebbolpKT5SZebLExGcL+gRV2FK3ZgofSB/Jr430Y/oOADVdvKAtUiqf8IXMvcRZEzQNXd2x4t2U15R7PZimHPnxGLOCubc3sDjVhq3EO/wP2vd2+Cbx8L9DDbdvPycoz3vNBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L6yOMcml; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-59dd54b1073so3847066e87.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771829198; x=1772433998; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lxcBP+ESvpawuLsGb9d/pcO8jYBLNDB5e/63teiMRdU=;
        b=L6yOMcmldLxd/piQnYLrL9YiWRogfaakRF+YGcb7pqzv1CqPlRHneFntp5KrmhbAzS
         hADgpvF5oyXMHA8RQwjDwpA4YzMtxHhHyd6iqOjnvkxXwSex9A4ahrF5ZtNiHKx9MDFt
         4hvgUhdO9RNrRlq01ULdtHhHNikwtd+ilG4C072JX3j16gI5d9xyaxXxxUYN6I9R/pVf
         Xd8uujk28iRFbjNzMIU1Qhz9iqwGE6Qz7opGYYWjFs7gjV5w0mvgPU29jpfKqaDG3oBO
         IsdIMfG74U5l60UIgBiaJdyfn05RTWZxmx+oZrCoTK4VulMWArlzZYiC/wxyJPEjRqMG
         jRiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829198; x=1772433998;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lxcBP+ESvpawuLsGb9d/pcO8jYBLNDB5e/63teiMRdU=;
        b=fAJr3nFz4AtoQvoTFTCoCHzdHe/cnG7aob+6SRdcj6TYF1g+LkUxVr+YHhm6BW8eDj
         Uw48zab5FyapS/YsFxaQLvY9YPSCvsZLbBWvHv65qNRTDE7h0nk5eAgOGgQclGLJcIfh
         GilIHXRDG4uTdsU+zFYHRx/Tplq4M8W5OkXl2rWAyLJ/hESerNRcKQ9gvE21+cJROnbk
         cUPMceVx7On63MJgLIJNVA9CEzF0gwDxZAnban9BlePfgRy4BmGGIjnBuWL26Ad/ULjg
         l70lu8m5L5060Y8eHjAVPVNKcqO9DC0bf9Uowszh86KZEZRi4m6lEM9RYWAyA0hVno79
         djtw==
X-Forwarded-Encrypted: i=1; AJvYcCUk3rFWvBWc/W6754Hlt2eyK4gx52mqIl40U/pBHcUsjtweeBodZzhIAsYvMC3trafatSDXLDjX1xqb@vger.kernel.org
X-Gm-Message-State: AOJu0YyusJwKX0eHguO2+dQNWj2G79PTPIStENlaDwbvJHbY5TpI1gAQ
	2M1yndct4TKOk6wm6EOy4mKxBOi3ixMDsrjmaR3vdY9Rbat/plmYtC68
X-Gm-Gg: AZuq6aJdWUycG1ZJrtGXwW/A1RCqyjzAPs+45Zqg615+NXLi/BPqcb4ZCWAa/6MiZZr
	0L+14OtRBs4T5D80XrfQB9jKFm7ByKq0XUVpsDOo5sNMZL7QcAzLJyvOdM8o9kKNRekseTRB7Gp
	JgOtK88LyX3u3rWzRceFFJigmteRwpw3eDHy6jQX1nKS7C1AkxPmFBaIvUhpJoYLKaQqokATyPk
	NG9+rsJ6vxAZJL7UzVNvkARlEuVLZLGw4E/levqvLKr7dWYCB50/voqFD4wzpaBtLTJHOLuCInA
	lNlSR9AjhPqlClY6TIGEGQ1HqQezfB5v4smsYPlFti60iJStBXuFwISXjI2TmuEzDBeWXW3qjHB
	6olKoOQNAk69L83EUEi3m8gfDdS3NQ31r3O/vYQJR/PdHxPJCJvWqEafCE8w9yMQvMCciP7ZSua
	6iGq/X8EenWU+A/IZR8XQJ8fA=
X-Received: by 2002:a05:6512:3f16:b0:59e:44fd:8047 with SMTP id 2adb3069b0e04-5a0ed8a5360mr2505423e87.28.1771829198192;
        Sun, 22 Feb 2026 22:46:38 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb0b89asm1386201e87.2.2026.02.22.22.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:46:37 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] gpu/drm: panel: add support for DSI panel used in Motorola Atrix 4G and Droid X2
Date: Mon, 23 Feb 2026 08:46:28 +0200
Message-ID: <20260223064630.12720-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267268-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0DCFF1725B2
X-Rspamd-Action: no action

Add support for the DSI LCD panel module found in Motorola Atrix 4G or
Droid X2 smartphones. Exact panel vendor and model are unknown hence panel
uses generic compatible based on board where it is used. The panel has a
540x960 resolution with 24 bit RGB per pixel.

---
Changes in v2:
- updated schema commit description
---

Svyatoslav Ryhel (2):
  dt-bindings: display: panel: document Atrix 4G and Droid X2 DSI panel
  gpu/drm: panel: add support for DSI panel used in Motorola Atrix 4G
    and Droid X2

 .../display/panel/motorola,mot-panel.yaml     |  69 +++++
 drivers/gpu/drm/panel/Kconfig                 |  12 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-motorola-mot.c    | 244 ++++++++++++++++++
 4 files changed, 326 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/motorola,mot-panel.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-motorola-mot.c

-- 
2.51.0



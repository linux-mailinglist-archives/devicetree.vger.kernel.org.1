Return-Path: <devicetree+bounces-259233-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CTDDncYdmnXLgEAu9opvQ
	(envelope-from <devicetree+bounces-259233-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:19:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DB880A49
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:19:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 74E033005D0C
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF8F731A7E2;
	Sun, 25 Jan 2026 13:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Eetsm0zY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCDA2165EA
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769347169; cv=none; b=KfVuklifaZlxJ2xfyHu+IUy+xfThWAUTw9FI1qomG3aaf9yHRuaYy1zhWv0yryE6zOxYtKg1HlgI+/Ni3YaWgadWwCYiS8mONtkSu5r49SXxk6iSOZZEizlTOEeyDS5dTo8WSrv9KHQCbaBXJAaj968HpoNjU0HHdq5DL9yAQmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769347169; c=relaxed/simple;
	bh=TkRt8QIeNHtfjyUeM4effZ1gZwbrzaC8pluPh7WL5y8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=N+W1X1gz5SmLUOf/shINmIq/JHbSdlYfCaDyR81MUB+fT1llryI0Li7ek6gCRCPNSHFXOXuEFIsIc8dJo6/QKwZKfAsc4J41i9vQasZNlga55F07focnT8jANGkLO5uTikxcR/W2zw0M3MCWjt8e1s1xq73+uDAXzmcOAyYOC3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Eetsm0zY; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so30991065e9.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769347166; x=1769951966; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AEzeKAAF3T2ngmqtGe3pjZXly3mcFht3AgWOWb36VhE=;
        b=Eetsm0zY2glOFp9oEat6IUmNx3bf2ExIXLEMDc2r5ZjPChWz2+yR3CO4LRNxs7S4db
         jqqPyirRkSGmvIk5e+sUbupjrAfQj80F3rdKFwm7o+IdXWhOxBz33PIrspZZZjnD0FA5
         X6swbyrsrs2mscekZxEBO2hf04JjtolanbdqbcdaGzrvWinUJdv4NDGpGotUOcDthlMY
         MoGu5E+yrfeIWwvO5bOxFLCCjeWguF2xod6zTTu3KeOUCW/EhkehV+ga9goEsMt+m8v/
         BP6eDkFncYSYW/SU06VzwCGa9g949xF3COX5O97h9jIdriUrUfBvyn+IOtr2Ggq1T+fV
         +wBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769347166; x=1769951966;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AEzeKAAF3T2ngmqtGe3pjZXly3mcFht3AgWOWb36VhE=;
        b=iBgMlTKGcqMRNPw4GtYYt+7jKxIRdkAX68IBvJu56iRJ88VmFrr+/AIUlSvJ2xLDTw
         BRJ4f4DNwzzhrzA91tqJO962X+K0kNvLDl/156yiwff3Zwft6pRek3dSAMrVd5WcOD9T
         S0yphFKu1ZyDOWMqcQmfG8DUTMWz52WP5IHNzx7GZrE88gunRLCH8AYcDV8BwNvm55Ah
         LgPRy5DFZ0kLIcn0q3xciersRHB86RIfY9fp7RH8r40xjNIUt2obLeHfqjYd/RcggHBP
         6MWD0HTmEgGRlrtHQjF1U+neZtFP9lT2c9+Di+IUUhHRqC5JNMe7oZXyCcUGh3aIhXt4
         QoQg==
X-Forwarded-Encrypted: i=1; AJvYcCWDB4GOSreIuRNLj4Q9Qx6U2zsiD6vw+YGYfFkSPdnNwkktrISKmHxDTJwNFqRbQsTJ337+atPf/nPA@vger.kernel.org
X-Gm-Message-State: AOJu0YxYqsUsY5KRALAAWvsw0++BE8eRRuFZn+d6MFHfQUt/iRkYrhbD
	EqrExXN9NYE2QvY2vNqra2uVCzqbJeMRK31SAHDukrpGMd7npIA9Z+EO
X-Gm-Gg: AZuq6aJHkZ/W94LDp0q+/pfy/A7gfEpLx7k3UX6vFEGVQid9o4XQF50/SXqr17HlVtv
	/RDc+Hbdt2+z17CTlaaizNZQ/iFt44Jbw6R3GbO1Jpqyb1e2xXIrx8fIaQelmOTMAylzV0sZq6p
	7unr51BABUuN0dCqPX5qBeAs6VcQaqLxzHpy8F3vJS4BeI8hex5Xhq0AaQmwFvF/jW/LcYmxaZq
	QhyNNrGEOIMqFDWftgUIDxnMpnh+cZTli4yXJX+xZEd9plJMwsiy2ubazPqpgcyLMoBvrq3baMA
	NgbN1sfcIicLECUDOpEl+sWKUD+HfdNIhg/5dMXpTI5ssrmQ19Y5neTgbLKd7O9pGdiDrGJytXa
	SSk8kEEoWAAq2iOVvkCZ/x+172FBCKnSXNMeSSWq/5w6q1ng4uq+LIDk2tFGfUiQM+7BC4jOwIn
	18cuvF3JZ7KeA=
X-Received: by 2002:a05:600c:c6:b0:47e:e38b:a83 with SMTP id 5b1f17b1804b1-4805cd1c150mr18318095e9.7.1769347166112;
        Sun, 25 Jan 2026 05:19:26 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48047028928sm382382215e9.2.2026.01.25.05.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:19:25 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
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
Subject: [PATCH v1 0/2] gpu/drm: panel: add support for DSI panel used in Motorola Atrix 4G and Droid X2
Date: Sun, 25 Jan 2026 15:19:02 +0200
Message-ID: <20260125131904.45372-1-clamor95@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259233-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[linaro.org,oss.qualcomm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C3DB880A49
X-Rspamd-Action: no action

Add support for the DSI LCD panel module found in Motorola Atrix 4G or
Droid X2 smartphones. Exact panel vendor and model are unknown hence panel
uses generic compatible based on board where it is used. The panel has a
540x960 resolution with 24 bit RGB per pixel.

Svyatoslav Ryhel (2):
  dt-bindings: display: panel: document Atrix 4G and Droid X2 DSI panel
  gpu/drm: panel: add support for DSI panel used in Motorola Atrix 4G
    and Droid X2

 .../display/panel/motorola,mot-panel.yaml     |  68 +++++
 drivers/gpu/drm/panel/Kconfig                 |  12 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-motorola-mot.c    | 244 ++++++++++++++++++
 4 files changed, 325 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/motorola,mot-panel.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-motorola-mot.c

-- 
2.51.0



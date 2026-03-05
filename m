Return-Path: <devicetree+bounces-271713-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eME2OgbhqWnDGwEAu9opvQ
	(envelope-from <devicetree+bounces-271713-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 21:01:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 87827217E7C
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 21:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 91EBD3090E9B
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 19:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D5503EB7F8;
	Thu,  5 Mar 2026 19:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I+7jOYYX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC1D3EB80D
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 19:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772740645; cv=none; b=l7CO8UkSFWP+8KXBn6FI0B7krw9iZzJQ8u5tMEoNqWdqDNxnwFOiXOf2kKnXrkGKzJDGHldsNEl4kQv67oqlSb+xb+8uQ+dpnii0+OemedF357qwawrcqCG0Tl2YxlTeD49uKqovWESTJJt9mzUcnUxoo9kf+evW6x+zKKT8Yes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772740645; c=relaxed/simple;
	bh=yzS/Bqt2ESmBNxPYzlsNcdiSXxrICZ3FcyvqmjHNHDs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QR5apgVmSHsUvHOrWQ6Uu5A1Z26JKbXQOvx67ymwejvBiueztmDenLasHf9iR1Q6Cl90FNKxhHVck5429bKkYScIiOifQuen2YGCtfj60lMzeo2rJPtwiIF5/w2KTrmrQTr1JcCaHtu3pIYvmTK1hj/W91XPYF04QJftrRfwvJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I+7jOYYX; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-439cd6b09f8so1066806f8f.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 11:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772740640; x=1773345440; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=idzPl1oHysl6/8oMk349FHdQyMf3W5G+eL7EEdW/pbc=;
        b=I+7jOYYX4KKexuFHb21sBpumYeb84aBq++LNeQ8kK9DpodzZTQRuws7BmQ4dveMuJ5
         sZSqEBQb2VJG+H4Qk6j6GBEI5uXWihaJ2jgfZ+tRVfAwhgL+9/UmyA9y6vG2wbEGLvWt
         F/VrdYKvrNhdW/qi41MPfoxFoWpexIojWLm7rUQe9EQAEZ76Q1QvlazoW/ievo10uYMP
         VjcVuhl1+XaTpEJT+R0XdsW1LTj+54RPLGwVUtxQeKDwXGqiosGIZZ4Mt5PBkkHNdQTV
         2HCGd/xRKX1mX2MmpWkO39K9BiAnzySm7xBdWqvJQj1/kvsyWdytWMzHgskDS5yTCGlk
         1CoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772740640; x=1773345440;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=idzPl1oHysl6/8oMk349FHdQyMf3W5G+eL7EEdW/pbc=;
        b=gEV/XMVC7rP7psQC4snXIUjZlOtCwVNoUoX7MGB+coj2q9JI4vX3vNNtN90AF0HKhW
         uzFF8eMU5WSdhyMwhAaX+q9+FELs0BLrZVkylN1eFvSLZfvHh0crPceWC6wz/UgDtKt0
         Z1IN686juImLRQYZ9lFdQZ9MpSuELqa6q2Ua78w2+N4qEfuf2OT961eIghLtpT94kKWR
         Q7nEl/JJ5sa8TfNSvZ282vxk4vh39icgjeQS26RCL+vlaIzJqLvxWWyS331Wv+yWuQqP
         cz2C3c52UVeGYqkOg1gZ1/yM9VBReYZZ/lKRhu2/0xlUgdu+eKAUyTtGlXO7pUkY4LQ4
         Gd7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXAqtZZTGHn7882k75q7plkV5HcCDS6tFiDJxaWNs66C41iskpM4pM5EKl9/Pf4WhAGzukLhKhgap1r@vger.kernel.org
X-Gm-Message-State: AOJu0YxYjoEHPh+7LVG+HhQtgzZu+ZrM2YY4hgie5sWvLxu15i1yvv0m
	3Jnei4u9FW/qDbRsBRFdLZm1z9weBZIUa/vfBgHwPmCzaqC9Z9wHtPU9
X-Gm-Gg: ATEYQzxEYMsjJwNR6dE6HqhYa8To/UAB9Sql6kbpjhAj6RLUsYEXq2SlIi+BlRSpWXn
	LRawNkFmPpBllCdxst6mewQPhk7X6F+5Wgjg/XFKPc1aaMnOpqESW5+QJvvDGurLlQNbu+Lhsdl
	yD7YHWaPV4wIc/L3J2YZX9kD4tiidlwEcHv41u7SKGMHhQo2tVzlZCUQEek4iTkfND7E6w8PIC+
	TRbjDK5HNpGGc4/zIkdLqjAnzV/NfqmWNJBQkWJk4dod5HV6I/yuwjO9gnxFGMW8yPjYfNclu1S
	/wqpHjGzIOardnIOOAKmJodqxL67cOLR3knb2d/vGZDC0UeE6p4ZuY7nffozpC8lI987l+fftV3
	lubuA2lTst7VkLhXAAmQ3NzGbmbwGM7FY2qDInjUsNj/hGfW4IR2VH434Vf08lbyoSudy74AgOd
	HEmiqTz2EmXO2b2A/PhNmCwdzPo42/YA==
X-Received: by 2002:a05:600c:1d0c:b0:482:df17:bbbc with SMTP id 5b1f17b1804b1-48519874e2amr112904215e9.20.1772740640050;
        Thu, 05 Mar 2026 11:57:20 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439bb686a32sm26974297f8f.13.2026.03.05.11.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 11:57:18 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Marek Vasut <marex@nabladev.com>,
	"Kael D'Alcamo" <dev@kael-k.io>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add support for Zhunyi Z40046 LCD panel
Date: Thu,  5 Mar 2026 19:56:29 +0000
Message-ID: <20260305195650.119196-1-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 87827217E7C
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
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[gmail.com,edgeble.ai,linaro.org,ffwll.ch,linux.intel.com,kernel.org,suse.de,sntech.de,nabladev.com,kael-k.io,bp.renesas.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271713-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

The Zhunyi Z40046 is a 480x800 24-bit WVGA DSI panel based on the
Fitipower JD9161Z DSI controller found in the Xiaomi Mi Smart Clock
x04g, apparently in two different variants.

The Fitipower JD9161Z LCD driver IC is very similar to the Jadard
JD9365DA-H3, it just uses different initialization sequences. A
partial data sheet is available at [1].

The two initialization sequences for the panel have been extracted from
Android original firmware for the Xiaomi Smart Clock.

Variant v1 tested on device. Variant v2 not tested.

[1] https://github.com/QuecPython/QuecPython_lib_bundles/blob/master/libraries/LCD/JD91651z/JD9161Z_DS_Preliminary_V0.01_20180803(1).pdf

Luca Leonardo Scorcia (2):
  dt-bindings: display: panel: Add compatibles for Zhunyi Z40046
  drm/panel: jd9365da: Support for Zhunyi Z40046 panels

 .../display/panel/jadard,jd9365da-h3.yaml     |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 308 ++++++++++++++++++
 3 files changed, 312 insertions(+)

-- 
2.43.0



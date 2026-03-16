Return-Path: <devicetree+bounces-276012-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBgZFKvCt2n5UwEAu9opvQ
	(envelope-from <devicetree+bounces-276012-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:43:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD7329663A
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:43:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DF5BF30269F8
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28F4F382296;
	Mon, 16 Mar 2026 08:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PKErVyFW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F82372B41
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773650480; cv=none; b=qU7vnUkWW6KW7GMSW/uPbtw+B6Hwbh7iPml25yETIhR70zq95uwiQDt6zti5iS/LEqtv8iH7Df5qz2GXheW5IeV+lTeF6Jk6J7hh9VRFj727QMqp+dUYDLacgQWFmzX7TePdGjNjbEeC9IdxjAYdPg9TGQWDzMCgIhcp8BQ7cFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773650480; c=relaxed/simple;
	bh=FQ7G7jik25iPR0PTH0iKC1YVeuz1IFQ+FjpapE8wAQ4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YsYNVROjh0CXitz3Jn/pAVevVdtDxjtnpL0xxZ0a4qJ5Ac0tKFgngLFkJaH2ALcSaYKE3un/9IJHuyUSaQAnDvHJQTat/FoB6mr6PwcCpnNDWbsfLK+COHEYRtzHKXwoorJWgnUyt+U9lBJaLrcZkzayFGQv22Pt+MNVh2Ops30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PKErVyFW; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b6ce6d1d3dcso1748020a12.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773650477; x=1774255277; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cz7mmWupQiHeJBt4/mLmGWxEIG5p++4iVJofkne7BcA=;
        b=PKErVyFWiofrnwjxBYCW2zl1xOg8QRUjmiCYqzdjcNX2F3vBYCe4OF5ZKFZFWdUVRv
         U9KTs2L+e1YlNDoYASMp6otYDsMypEBWwXoQguWFQgHTuJXrV9NTSslyhIWr/dlM3VSw
         TGfqrKabYEZo6+EMhnE2Qz2zDSrsonfGC+a1Mg85QyR9pqa9WKFXviO/7lrZ9+zw71cJ
         mPOqXk1QwjOjz2z3au+NZvndWzhcabMIUnqjPBz7dBftSQVEgIHP1hw7Xk49KYRZjz3j
         2S3JfmKLYBqTvpCKw1AiYKpbSNZrpDgEKFppmA1+wr3yOZBoxQsh66yZceLlfdldLyAs
         GiKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773650477; x=1774255277;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cz7mmWupQiHeJBt4/mLmGWxEIG5p++4iVJofkne7BcA=;
        b=KmptGcNBS1ci4Wo0RPTZOv3L2IYqU67SF33PmoAaJECLEFyHYHfr00sV2hMSmxdvhH
         199l8+Q+2T+//Rh6q3JNcBd9s9OVFrrTApGbtD7sJK28y8c3T9g4/XqReklneoOwlhsK
         8B9uwWK/hF4YS+W2x6p8vkJSF3TQ+Who1vKYyXSWc7bL0JpFRTBGzi82jSf7YMj7IZkF
         vIpGveWxtO2FQeYP8R0llFiNFPuq/rg1ugclmXINcGnnKd6kj2cQTMD6xHIOeBWXBcrc
         5+t0v9VJLJ5GmQ/4IB+0yUKePxajOfckzJIMpmbqm17+XGMgJjUppL6lgx+yuHUGsuC/
         smcA==
X-Forwarded-Encrypted: i=1; AJvYcCXL7I5WdnlTnLkdjobt13Deht/YCipm8GwegZ47SO3IKtyooSXb7iLYRpJW+hZa+0ysT4chHVVxgffA@vger.kernel.org
X-Gm-Message-State: AOJu0YwzPevEKTb36CA99EjSOUTkacr4Du3AtxJ+ucDt7e7EkdEClnOy
	dMMAyAjvgXalLC+rEyZ1bEevQ8HTzrGkaHRIJDsBuSOoDHvJDQUl8pIr
X-Gm-Gg: ATEYQzxeJMYcuOw3GLA23q84p6qZlExr45Lyn/GXHg5m3ZhXVICtHPooa4PMpLT05ur
	jwYi5BGJRSX7/PO7BvvV3asIIOcecO5a7yQXCNfbdmlzx+fWS26R9n1ikCYv0vbbv6+7cLDrYXL
	9yW6GlDFB1mMVBM7VPlQloPT8lZiGuk931NYO3gC6XjUrbpCm/Bq0m+Z5BTBQBZ+61DKZOGuZ5/
	VJgr/peEsNOMEsBHGmhoc6amYDGvNEd8amx4Ibnnqd/r3zdCpmYPcwWTT7I3HX5RACxn69Es4kn
	LcPorbQnOBuu1SLBai/eXgsnLSijMAKx7CgVGWWC8W7bmaXQxdAWmCyHErO+gJiXXKSLGt3llUa
	Th2OeviigDvHC9WpUv4f4J/8W4IJGzjLlAqRNU6+Q+gTn4N8wIar/9T+HIBrkDvUSMVC7tpu743
	x5JxsZ8OuQOyianfiEgA==
X-Received: by 2002:a17:903:17cd:b0:2ae:ac0c:5a1c with SMTP id d9443c01a7336-2aeca95fd0cmr120435875ad.15.1773650476824;
        Mon, 16 Mar 2026 01:41:16 -0700 (PDT)
Received: from nuvole ([109.166.36.159])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece83188csm101699045ad.75.2026.03.16.01.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 01:41:16 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH v4 0/2] drm/panel: Add Himax HX83121A panel driver
Date: Mon, 16 Mar 2026 16:40:38 +0800
Message-ID: <20260316084040.728106-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-276012-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DDD7329663A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a driver for panels using the Himax HX83121A Display Driver IC,
including support for the BOE/CSOT PPC357DB1-4, found in HUAWEI
Matebook E Go series (Gaokun2/3).

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
base-commit: b84a0ebe421ca56995ff78b66307667b62b3a900
---
Changes in v4:
- use v2 as the base since v3 was using v1 as the base by mistake
- remove '|' from description (Krzysztof)
- drop description for reset-gpios (Krzysztof)
- use backlight_enable instead of backlight_update_status to avoid NULL ptr
- Link to v3: https://lore.kernel.org/dri-devel/20260315144536.515032-1-mitltlatltl@gmail.com

Changes in v3:
- remove '|' from description (Krzysztof)
- drop description for reset-gpios (Krzysztof)
- use backlight_enable instead of backlight_update_status to avoid NULL ptr
- Link to v2: https://lore.kernel.org/dri-devel/20260305084810.370024-1-mitltlatltl@gmail.com

Changes in v2:
- fix dt_binding_check (Rob)
- use devm_drm_panel_alloc (Neil)
- move panels specific chunks before module probe function. (Neil)
- fix supply in .c file
- do not initialise statics to false
- Link to v1: https://lore.kernel.org/dri-devel/20260303115730.9580-1-mitltlatltl@gmail.com

Pengyu Luo (2):
  dt-bindings: display: panel: Add Himax HX83121A
  drm/panel: Add Himax HX83121A panel driver

 .../display/panel/himax,hx83121a.yaml         |  91 +++
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-himax-hx83121a.c  | 749 ++++++++++++++++++
 4 files changed, 852 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-himax-hx83121a.c

-- 
2.53.0



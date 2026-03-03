Return-Path: <devicetree+bounces-270357-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNx0Hv2ZpmnfRgAAu9opvQ
	(envelope-from <devicetree+bounces-270357-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:21:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CE11EAB45
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:21:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A939D300E6AD
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 410DD3822B5;
	Tue,  3 Mar 2026 08:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HK9ATd6G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DFC9382382
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772526070; cv=none; b=eZyw4tTtEWg4UEC3st9sDmgXWXRxtV4DDUMTlrwiAZJZlxwjGGJp8oO8glzq98FijgSActiXr/wsNKhOJpioLbxowQ0nfRGrrzmxuXtmHDdi5Il3+zXR9i5nhtla9dPN+Mypm7D84q+7NwIKYup3BmDap8lDGr6EOkOYNUlNkSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772526070; c=relaxed/simple;
	bh=XRCkqtFl2EmutrzZu9SglM3g8lfFjS58SmOubxHiPhw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dghn5V2gcFAtaMf5sd9HLXW5hwi2GpLBNzUDyexFvczg4Cmf1M9Uz2oVkImYeEU73EGoEeoUOLuQiMd1n3Cw1SMoohYnGmLWibehcLFvxtZIJwZuWmfWFX7Kl63Pi+9Sdq14XfYG6wTO9+IKfR/DbRbm5/dg0K3rzAX8ZZyJ2kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HK9ATd6G; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-389ee8efedeso83679531fa.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:21:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772526066; x=1773130866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PV5yIQv/6bTdgVUZVXXsO9kP+vu/b8exNKt22mhgJ3E=;
        b=HK9ATd6GpgAIwLOG9sZwZTCpujICADD+LlOBQ939Of/l6olPDgUxLO5jRyrDhvgBDD
         bivTQ/BRKOSYF9Tv1gb9wPuUano/u/T2YJBzyuMijP4YqKNapBErYM4mFM6nHau0OrT2
         IcqpCY1phB4kNz+JgRflFToQnRVC2PY3DMfsHfcXiAw0EYLr8SL3dcfHga1jnIvrEIt1
         kb3wP0zMQ5EOD2/krRE41xNnoUF8bXG1lpYHE5JcwvILSwGrVtatNBUUJoHVccNtIC1U
         rAZuxDbV372/Qpr5+KfNQFE/VZde/ok2NvXfrN0XGqhDV2q6R3na3/NBckv3rJ5J5+J/
         1c6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772526066; x=1773130866;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PV5yIQv/6bTdgVUZVXXsO9kP+vu/b8exNKt22mhgJ3E=;
        b=G65FtFZeYRD9cqXWDeXp7sSBHLIX8DFwh06lzBoHtKvMz0wXoq8OaF4e7xUSqzFXTR
         pmq3A/r/OgH4eQl7+UdKNMUUH1Us1mMnvp0Ld/Rjqq7W5rE5bueuAgzU6NEdJO+MWVEw
         JBycwY6o+I73rlU4MVYFue0zRKNyhwgqdJeBJtuKQZplzh6E8FCc4ItIM3fbnMMdR68k
         jiR5ca6bI1oeMP72WW9MpBZ9zHtEg0L6TSBGAbkYKbZJ1NZSuoQ7R9FVQEwzmX92xwSF
         aQVI8OTpvElc5WmFztpx9s/UeJPzwvd/Ae1opIQmrVnYvWdbbRZGYS1pVCuL47wz7pZt
         3ZXw==
X-Forwarded-Encrypted: i=1; AJvYcCVuOIzVqZ48GfDJuMEzRVH1zgKjsQuPkgz9ZLlqImw8isK2tc3fqdP5JAmpVBYeWbQH0TQ4R2PyU9/2@vger.kernel.org
X-Gm-Message-State: AOJu0YzBP7iqDaCEw0N5d2+823WwNgviqskOoVO5n4tPTQRvCDxgmpd6
	bDcZKkdUO9/ApIiqPsXBjyjmd0/qxGRVZ2bCZhB6Xg3ETlRSWm5hOCSw
X-Gm-Gg: ATEYQzwD3d7xeCq/zr8FRpg98zwG32w4y+eLJzAgcjSr0WVBKiSsLkt/qGnnBiQ0EcP
	dXYCmSxfimg7traVgdHnN0alGj+kEjplRYi1rSF2DjeTXbBm3XAxTdd5K7xUBJ/tIAb04yQjCVa
	6HKLqueo5zV3RPkOOVfjwXPcEeta3KwyVqHhsdOKKEcAI/JLt5YdLyOhwhmW6IUWMU5NsvwiGKo
	TKLZM6rcve1z24ot0N6Mb1DpOoJe7mgHMkZxRh4s5G/Gcavbp5gjGiqp9TCHPa7z1Wy3ilt1tdh
	hBFIV+cUQra61OoAZd+CPb7z4IdWv07KE1oSbJIOLXsmoNJXtTKCzC77DJ/uT5ocdCqYwnnHAYb
	/16VG7A8ix7tAXl3moX9OdB3eyM8csqCHVQxVxD2AZQvIHDkSUK4UMBZcZXo7pLMxKpDM8sK/F3
	aL+nz1s4nczcVEvqFWqSpiTJo=
X-Received: by 2002:a2e:8941:0:b0:389:ec55:8372 with SMTP id 38308e7fff4ca-389ff136f55mr83841011fa.14.1772526066096;
        Tue, 03 Mar 2026 00:21:06 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2ffe02bsm30856171fa.27.2026.03.03.00.21.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 00:21:05 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] drm: bridge: add support for Triple 10-BIT
Date: Tue,  3 Mar 2026 10:20:35 +0200
Message-ID: <20260303082038.11352-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 86CE11EAB45
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270357-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Triple 10-BIT LVDS Transmitter is used in Microsoft Surface RT and
MStar TSUMU88ADT3-LF-1 HDMI bridge is used in ASUS Transformer AiO
P1801-T.

Link to v3: https://lore.kernel.org/lkml/20250824092728.105643-1-clamor95@gmail.com/

---
Changes on switching from v3 to v4:
- rebased on top of v7.0

Changes on switching from v2 to v3:
- place mstar,tsumu88adt3-lf-1 alphabetically
- fix typos

Changes on switching from v1 to v2:
- sort compatible alphabetically in schema
---

David Heidelberg (1):
  dt-bindigs: display: extend the LVDS codec with Triple 10-BIT LVDS
    Transmitter

Maxim Schwalm (1):
  drm/bridge: simple-bridge: Add support for MStar TSUMU88ADT3-LF-1

Svyatoslav Ryhel (1):
  dt-bindigs: display: extend the simple bridge with MStar
    TSUMU88ADT3-LF-1 bridge

 .../devicetree/bindings/display/bridge/lvds-codec.yaml       | 1 +
 .../devicetree/bindings/display/bridge/simple-bridge.yaml    | 1 +
 drivers/gpu/drm/bridge/simple-bridge.c                       | 5 +++++
 3 files changed, 7 insertions(+)

-- 
2.51.0



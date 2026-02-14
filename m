Return-Path: <devicetree+bounces-265528-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qA+DJEU4kGkuXgEAu9opvQ
	(envelope-from <devicetree+bounces-265528-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:54:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB6D13B7A9
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:54:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C43DE3018746
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 08:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A5812C11E2;
	Sat, 14 Feb 2026 08:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="m8sVN5MJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3E51B4257
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 08:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771059259; cv=none; b=rmC6fh9eEMVphK45F4WllhynbKWLiEKJZ3Kj3kJMjwrsoMOjdOBnoDnlXH8JLqwu1TlEIXjh+ipp1g0hM9oJHi76ehnds3YZ+coTWOYC2nNS9rtR/Y1PHGKT5hRS3IOvLFSV/5kC03Xaz2xYeOgVPs4HIQTocrVDr7nkFWQesC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771059259; c=relaxed/simple;
	bh=dSpwe4V49bEei+RUOjfeWYtGSUCasUxRtVuUrr48mLc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=i+T5DJqVN2r4g1aauOCwtyLq4VaoIHZsp115pc3s/xmbkP/zYw//FFz82BJ+AeZStyqZqn+ZDWzJWVitvoH+iLPOsQkWJOeWQQ3m3Hz57286PRhgpe8Tj1KRnfG6Hv8U3jEZeQeaN0fbY3tmgA7Qrp9xaM3bDNCHP+8Clp1ZtW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=m8sVN5MJ; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-354b79a9ad5so750942a91.1
        for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 00:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1771059257; x=1771664057; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Lc57BIyf+rpMQq/MZFlMnmSDpsnEdM6gcXuGUQPWrdM=;
        b=m8sVN5MJ7w0xGUZMO02heaE+e28VIroa1Hvst2HF1nh/9CWAqKpU4hSZeIJMHFkmgD
         jK37w8TYHYNmhMJw2nX0RumRPx2EXYjVLPpfv9naDO/xQQdb84uCemVPYGu5VaSNLYjb
         5Fg5QWz4+KxyZLBXbxA3/upn5olEBGpZyn6K0LY6XR+mA478fAtHbZBx7R6826PcZ64p
         MutZ2Cx2R/DDOdtSdjUqqD+P877QooOGl1+fq34iE06yJp/yGe76VmIolnO6SSmuzzIS
         rohLl3fuMVKYl1ZKBic4odZNTFEUEZbSEe0ICxWLAdC7CtYXbetgSwnXhtQ+elbCY/W2
         202w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771059257; x=1771664057;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lc57BIyf+rpMQq/MZFlMnmSDpsnEdM6gcXuGUQPWrdM=;
        b=DIkTdFTQaPVywkjW33jO+JNwn//g02aN3e6T3sUThiZNQLpF9L6T4e18ZqzI6jUHCQ
         aFVfF6iEbxV34FB4jijSyHX2EqZ7bnji7GjHGNEqLMZ9rktZ2CEuOd6iEwoWLMa2h+ED
         a6Q7qbbG6Dwmo/N0BTlHkze0hB45qPLpJ65JwB9aIN5trFXdDv+M8b+2qGxqYgPCiEIP
         Zlx4Ij4PttEkvtGUQ7WoupA6xLcI48TNLxc7NSo9CMAvqI+rCDsD3YYE6w74Sej5T3eY
         dl8XfKwHQKbBre4iA4Q7ipnS1vGoncBzOVyPaOdcicyaBg/EKUrhvcPL3TYK7tHALdnv
         h67A==
X-Forwarded-Encrypted: i=1; AJvYcCX3+jyi9KecUmNULAqJt75S2RxhF0SQdq3/3N1XRAJxd33PK61ntjTUlEAvvouIA251Sowxl0i/rU0K@vger.kernel.org
X-Gm-Message-State: AOJu0YwdL/MkGqvnp0NhRYVJkEIOplLEIGc7Kzelmnm0VjeunORFgi5h
	3XSXP2dhSXHJJygI5CiRYYNKeUmWzAETHYoS4o40mzPJogbxBcFGY45AWD3zy+Pe6ts=
X-Gm-Gg: AZuq6aKncF+t7m0XrJD6gBROyyWkYlpXRDVxfN8qaNVyJnk/GN05z3mG7wt/INaH2pI
	O40wfkW08kNNysxKxG22TJAQb2sbF/xqAPBSBbWv9r6b6XGrhtGM194qq7rmHSv58l/ZAmG3ChW
	zEU6gAx4I1vo0stB+BDIkgpW+A+3elYnDSLQBahEvusTYurycRFPkKkdH+IvvpjXzZPuMZLqO+K
	xcBTYPBRRZ12FAbFirJ6FqlhQQTR0PyvJKVBs+qt0JJGU2Iw+bRoyV7YLpcsuQg0RrOaMWx5a9w
	NRGlUjwYVfls0nd7U77j8uYKFILCWezFu9BZ2QWW7baW7uDquGve32MdkKeqRPo/Mty4D0wYgGe
	tz+wwblCWjW9aJuMbIwgSWBf7EyT+bcrW0ubL23Mf5xwadex9xerZBZXpbr/czVYcCy8omkrUFc
	cNbjAW0zmXQTapmZ8sF8jxMhNhrxxVwHo1A/VfxLPCN10RlQXK1Mg1OEjCcZVymXrC+6EIUg==
X-Received: by 2002:a17:90b:2b4c:b0:356:2c7b:c010 with SMTP id 98e67ed59e1d1-35844a4c620mr2090265a91.11.1771059256848;
        Sat, 14 Feb 2026 00:54:16 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567ebc3af1sm10256622a91.15.2026.02.14.00.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Feb 2026 00:54:16 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	mani@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	dev@kael-k.io,
	kever.yang@rock-chips.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dianders@chromium.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v3 0/3] support for taiguan-xti05101-01a MIPI-DSI panel
Date: Sat, 14 Feb 2026 16:54:06 +0800
Message-Id: <20260214085409.3489057-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.34 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265528-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[yelangyan@huaqin.corp-partner.google.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 0FB6D13B7A9
X-Rspamd-Action: no action

The panel uses the Jadard JD9365DA-H3 display controller, which is already
supported by the existing panel driver. This series introduces a new
vendor prefix, adds the corresponding devicetree compatible, and extends
the panel driver to support this specific panel variant.

Changes in v3:
- Use vendor prefix "taiguanck" to match the verifiable company domain
  as requested during review.
- Link to v2: https://lore.kernel.org/all/20260213071946.1436852-1-yelangyan@huaqin.corp-partner.google.com/

Changes in v2:
- PATCH 1/3: Clarify the origin of the "taiguan" vendor prefix as requested during review.
- Link to v1: https://lore.kernel.org/all/20260205154657.3085820-1-yelangyan@huaqin.corp-partner.google.com/

Langyan Ye (3):
  dt-bindings: vendor: add taiguanck
  dt-bindings: display: panel: Add compatible for TAIGUAN XTI05101-01A
  drm/panel: panel-jadard-jd9365da-h3: support for taiguan-xti05101-01a
    MIPI-DSI panel

 .../display/panel/jadard,jd9365da-h3.yaml     |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 244 ++++++++++++++++++
 3 files changed, 247 insertions(+)

-- 
2.34.1



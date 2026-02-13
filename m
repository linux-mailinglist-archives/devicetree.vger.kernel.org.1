Return-Path: <devicetree+bounces-265260-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBavMOnQjmnJFAEAu9opvQ
	(envelope-from <devicetree+bounces-265260-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:21:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FB41337AC
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:21:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A88DA306CEF4
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 07:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BC8728D83E;
	Fri, 13 Feb 2026 07:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="UojJCYP3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8890E283CB1
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770967197; cv=none; b=VvP2FVGVRwYZ5+IBn92zaS0oPeWRdkHUYRz+WjLWOqXUMyEn42l6D2i2N+xA0N4iRxgEeIjaj5etnV7gt8d8O1/3+a5XT40DSd+5Um1uELnl+QKbHZKt7Eu9JXfFINsH/+d1qngHNn6aa04S0hsudMv3geDm6Hn9bbBY0tghnwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770967197; c=relaxed/simple;
	bh=r8zgH6xdr9+2Q923uYeEwz5g9Taix30MxIt2jWFH+ic=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=cVXXeRFboqfZMUqnGPsfp6kmT9oQRIMgxSQqQWWGbzLbJEV+87+uxeJKc4VsCOsTuNTTNArfBIsavHwxaG1g4Wo4kc4yGrai4NxOU9dMvXQ9goy42Qg1Bvb/HQR1FN8Ko0HP/GaPXNMBO99PtNBQ0wGp5ADDqUKt26ywDd4pHlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=UojJCYP3; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-82361bcbd8fso343028b3a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 23:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1770967194; x=1771571994; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3lW8gU22RJlHiiHCQ4m8SQJKmfEcMw1lgWIJxtTx6dI=;
        b=UojJCYP3Dii1Ttkp+Td4z8BIK3HvBNsEB/j89WdIxeRqCqilUFF6yavEVGqUZCntsM
         gsEm9QEXmZYGpYruATKo1ALKxO64ESMMOaEKNoYVYPk9c1qDQjNAOP6Wc7n79QZ7/fIj
         hvgaDZxvn+i3O9e5BDtun3fJ1lbaUlq8ceUFx9S6DRVWavwQn2PZfu8e2RpbEdn9v0BK
         HuFbFLi4rWRRdwhWS42anss3NGSgGEIYtDvY+PrXTMAToz/0gZzNdaHtDOdhfNFSaEuD
         G4+vrAv/lTsNRO6IxAlHsCvS80kEcOffdOOAWp1r59lDBMd268lofNLYAUvHejTfB5Qd
         w0sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770967194; x=1771571994;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3lW8gU22RJlHiiHCQ4m8SQJKmfEcMw1lgWIJxtTx6dI=;
        b=Xt9O81VBLxUK1k76BvadzIddQkZb1w190ne3M5hhIZ6q9IhErM33nDact6D3e4V7Rj
         8AedfAHG0ZXNJcEge3h5G1+egCOiSUeLppXI19NPnqSDotWyGf7wsUkqW6qqG3xQ+IUC
         mouojZ/43buBOsUSH51StiC2QS8QcDJ3LaGBGaAN1OgFZEU55COjWXrdSKvQZQTqAAvT
         w3VW3CDft/+RW4Rax5TFt/G70fAAqQwIoZcZKtlCFLnnffYSerJ+e3yVpGZXKEIR2+be
         vn1Hd2f/29D31h5exM4zzNw0twdGpgPZiDgJHhImncJIIs1j0AL4FW4NUOmooxWkp5ZP
         SLrg==
X-Forwarded-Encrypted: i=1; AJvYcCUAGqmjOtnW1gESjO58XY7lXA2YiyHeBnLVvPI4cgmQT5dieMzltwj0nPX1tC++SKQJJd4E/Wf2QfJO@vger.kernel.org
X-Gm-Message-State: AOJu0YxqYIZQQY6tnmxHyuXBmVuKOQCgVqFpN6wKQDGOymgljgBL2Mcr
	MQPXg1UjJbCHlItZayyCVdpkW+AjFVj77B82oCOrUtb2NfdQZFWt+wit+eDSsPBqN6J0YN4r878
	8RdCiXjQ=
X-Gm-Gg: AZuq6aIAFiJLTGnw3+HjZLPBohoBQuB8AOFNeLDNRqXt+di++3vjZnI5cJpKTa1AqXg
	AbM0BOjVtKDkG/0O7EIp63a1Mwwz0XCkJ0yIEjvG/AW+9rsbEpZYg1IMw0ad0lXeaettrMwd3w9
	SEuULJHZvrgOLwUm8+7gf7PY7VBROe5f1kETlHJlH6NdhQuYSEKLWXd3xOzxsoCWr4giTTTf0tM
	y/IRRU9w+erF+1247cB/AExyQnCSJ98z51dO7yC8fjzFNk+WLw4U1fF4gwFoUGKYYZpNvGI7SDo
	W1ptR28jmSY79dJPXqnA9LS7n1UyAv5kVxQHudEI4u1vV1mtabuEG/Xcr92JzVPIPFZWbdFoJbE
	ALwjpj2PZx3J9B1m8s5YwDf4t9DBSJU5Vkwo7y8FqcSKwZN+06JmyHnNFl8Kqm0EqtSDcoRtTzV
	BeRUFaTonESelDu2mlCQOeP6R0FJ88rJhBxfDXfshkxVwrEstl62DHFy0f9mP9F7G95oYgyQ==
X-Received: by 2002:a05:6a00:852:b0:823:ad3:4ff4 with SMTP id d2e1a72fcca58-824c959656emr1185258b3a.37.1770967193782;
        Thu, 12 Feb 2026 23:19:53 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6b95278sm1856936b3a.53.2026.02.12.23.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 23:19:53 -0800 (PST)
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
Subject: [PATCH v2 0/3] support for taiguan-xti05101-01a MIPI-DSI panel
Date: Fri, 13 Feb 2026 15:19:43 +0800
Message-Id: <20260213071946.1436852-1-yelangyan@huaqin.corp-partner.google.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265260-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[yelangyan@huaqin.corp-partner.google.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,huaqin.corp-partner.google.com:mid,huaqin-corp-partner-google-com.20230601.gappssmtp.com:dkim];
	DKIM_TRACE(0.00)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 66FB41337AC
X-Rspamd-Action: no action

The panel uses the Jadard JD9365DA-H3 display controller, which is already
supported by the existing panel driver. This series introduces a new
vendor prefix, adds the corresponding devicetree compatible, and extends
the panel driver to support this specific panel variant.

Changes in v2:
- PATCH 1/3: Clarify the origin of the "taiguan" vendor prefix as requested during review.
- Link to v1: https://lore.kernel.org/all/20260205154657.3085820-1-yelangyan@huaqin.corp-partner.google.com/

Langyan Ye (3):
  dt-bindings: vendor: add taiguan
  dt-bindings: display: panel: Add compatible for TAIGUAN XTI05101-01A
  drm/panel: panel-jadard-jd9365da-h3: support for taiguan-xti05101-01a
    MIPI-DSI panel

 .../display/panel/jadard,jd9365da-h3.yaml     |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 244 ++++++++++++++++++
 3 files changed, 247 insertions(+)

-- 
2.34.1



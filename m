Return-Path: <devicetree+bounces-320667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id haG9EiF6SmpDDwEAu9opvQ
	(envelope-from <devicetree+bounces-320667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 17:37:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 265C670A778
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 17:37:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=rK3afPjF;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320667-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-320667-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2E09D3009388
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 15:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 727723806D9;
	Sun,  5 Jul 2026 15:36:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB8A357D08
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 15:36:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783265818; cv=none; b=cgYQVAivHKyupCtXFj1f9XXqMxy5vL28/UNdqUWfLHH22JvOdfirTP5KEBkUdoPz/R+U9O71RLTFCfZNWTlt8++xSR7UTY2D5Qgw2EGuCK7HZVGdinszfjRWD24Xlwn4A/IUb/58XIDDMawsVe5nXbXYaN1MQDHJWWfNeqtJCPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783265818; c=relaxed/simple;
	bh=0jQ3bwT0aFc1TCUDUPvcyprkqgouMiNNdG0wIVaWAIk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fItMeplQjId0GsJuOhx0lAqZCmHrMoP6f5kUBHrFYmo+myIhJPG9EEYbmR2doLPLcxrAZnB2rS7ktdzhJ1usU1HTkMuOlFEd3IuzjvfoMlUJ7xEttiyMPj5JYRjgAmIgZ+CAHa8rxJ6XVwm51Xp5M39zqTMN5HXF4UdcvNL7k2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rK3afPjF; arc=none smtp.client-ip=209.85.210.181
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-847aa193d98so1715153b3a.3
        for <devicetree@vger.kernel.org>; Sun, 05 Jul 2026 08:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783265816; x=1783870616; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OXCZCCGOyqe2xRMAN5jliT8u+ao8sWXmCdGqqZO2Sz4=;
        b=rK3afPjFkTiFmvDGo5odwkVUrRxL0+Y0mWANJieJlRKmLstGQKbqGodnvB+MekDOLv
         AvtwVKnyVEeBkYSBuvj2bfGHYCHUbpSCH71qTT3rt01G+RlKf/Rx3tYZhlo3RyhIv01i
         /8dQSqU/jYctoQK2p91W6TLzPb6NzamhmDw6yjHY+MqUnGUfZF7CMCtULbH3Z6iqo4PW
         HqTfUnxF9dEnF3gtLIKQo2IujrBEvFjpLhaTKYM5LX/Cn4XskaNIyjHKfaFd70BoB4sM
         3nIoprbkcduc3UhoqzA35U+cY7Sc6he5VYtm29s67Ft9XfUXxAxedDlhBe4IpVHehaxf
         hnPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783265816; x=1783870616;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OXCZCCGOyqe2xRMAN5jliT8u+ao8sWXmCdGqqZO2Sz4=;
        b=oMOJY3cqyf63sMj201pQzXZgSn4/hzmZj+7TtoLLZKDqXpcTZmR5AGSyJB0tr2zD5V
         7IFaE8xHNMk3fjdcgwpk9/tSmyysH2DBmfarriXE/g4kO/Upd5T51uPPALESC4BZ1Etx
         3LpqPYVlzUH3jqNBWDyUyUGIaCXwv13X5DSPN4rVbawmX0Y9J63zZmTqKXAxS67Uu2KG
         qRYsx4itoT+csAdILbVFSkKOlJmsbSp5Cve2Sgl9GiaS9nWsAXXskojRwzPTxVYsaiev
         iAybMIXdWUNBHp1YIn2OEKczv087NnOGs4gBtFmpPEYioGTzLI1ZVZifP2W3Ke4RoFOG
         8uDA==
X-Forwarded-Encrypted: i=1; AHgh+RpbaoLmyPWWWn/3CB9ffu6Z9NKT0Zp6M71cvG4DfJEfxfa/pZLdqQeTGVzEHPIvaRdpglx3OPHxriSw@vger.kernel.org
X-Gm-Message-State: AOJu0YxhwES8QVU8eKqcR04fcEcTHdOl0ZG6xNtUDAQhZg3GrVoPdRf7
	b6XMehWyEzP781BR4IGYhj4zyZ3l4Mlxf6Gt4Np3C/H00OblbidI4xLB
X-Gm-Gg: AfdE7clkQlqf9lViso7/iZIyf0Ajwrk/hWV333LmvEKN2njMWb+3SPSvsfykApZir50
	MnoKhuL04l7+cLEIlGD48EWZZgsPHfGZcKKU7H0sxruDY7345L9lkRfLocM8QZ65rNEriB7KpJW
	565gYo+tW1K9y8hBbrkwNFjEC8E7UPuYUAsv9VwgZuySDsAquIK6QLBuzuNLtU3gCwyN8Wxq7Rn
	GOmziFHXSPPkecCzQqIxnAjCZ54/lDz+b4zC5eyDsqqS878VNO6P1dKi4k+aL/FLB8DedvKc5Py
	5ZiaKRZMWULELbaEmLJ7y7l/fp5fJLXhbwkTzcaJ8kpsh4kdgVTm246l9FAq/cwJAmpnt2Xgu4H
	aMAa3JmLPXl7QD9cvVUn1ulT3Z1vvMpysNqD3OoqFp2d+olc1LvKDo0p44ptp8kOIy1Jv6mKwdP
	TWuF1UToKrctDhaalmvAw5ObwoE5SExz3Kw9jX1vU=
X-Received: by 2002:aa7:9304:0:b0:847:8b1d:22fe with SMTP id d2e1a72fcca58-847f6f67796mr5581254b3a.50.1783265816442;
        Sun, 05 Jul 2026 08:36:56 -0700 (PDT)
Received: from nuvole ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6db29d1sm2402076b3a.53.2026.07.05.08.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 08:36:55 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH v2 0/2] drm/panel: Add Novatek NT36536 panel driver
Date: Sun,  5 Jul 2026 23:35:13 +0800
Message-ID: <20260705153515.46147-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320667-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch];
	FORGED_SENDER(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mitltlatltl@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 265C670A778

Add a driver for panels using the Novatek NT36536 Display Driver IC,
including support for the CSOT PP8807HB1-1, a dual-link 10-bit panel
found in LENOVO Legion Y700 Gen4.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
Changes in v2:
- Collect tags
- Mention the CSOT PP8807HB1-1 is a dual-link panel (Krzysztof)
- Use devm_drm_panel_add() (Neil)
- Link to v1: https://lore.kernel.org/dri-devel/20260630023439.248861-1-mitltlatltl@gmail.com

Pengyu Luo (2):
  dt-bindings: display: panel: Add Novatek NT36536
  drm/panel: Add Novatek NT36536 panel driver

 .../display/panel/novatek,nt36536.yaml        |  91 ++++
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-novatek-nt36536.c | 488 ++++++++++++++++++
 4 files changed, 591 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/novatek,nt36536.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt36536.c

-- 
2.54.0



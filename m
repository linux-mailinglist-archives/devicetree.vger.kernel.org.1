Return-Path: <devicetree+bounces-266781-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hBogD3rDl2m58AIAu9opvQ
	(envelope-from <devicetree+bounces-266781-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 03:14:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCCA16433F
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 03:14:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA2DB301D6B9
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 02:14:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA37D273D77;
	Fri, 20 Feb 2026 02:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="axdAaPgl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82382727FD
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771553653; cv=none; b=HThwHfBOOFDKo2l3qo2Y/rS51gcI3yiU/jT5EHmd5S2tpUCFiCaK+ltTQFwU21L0M50qcLxO5UIFrMd597eHlxCCZQfaQMDtdgG8KhzONgQuexvApkklXzZagbvPlWqD8ioho/hyyq4cSR1h+kaeeyfyl+l1whWfUBKIzeWz+4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771553653; c=relaxed/simple;
	bh=AlsdlHEWg1GT2mcNC5VULG7jZD0syOSdProtK8PnkGo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WwvOFdmhXnLQuYqBQMdZxElf2kOf5+Lyy/rGFzPxU5JMcrDaEfjM3aWcQNzLNz0OsJWEW4e9jkZNAZ9yFmGOvztJ/7Ljfi8qupmVU9Qu+khFyLqwg7TOKzdNrWM/fsKA/8X9MRlE9UAdPswSlmp5R8EUupcbm5CeO1bawofnPR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=axdAaPgl; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-8217f2ad01eso1662244b3a.2
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 18:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771553652; x=1772158452; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t3es94jlcNTS37tfcja1nmQeDCIBs8JooU5l0G5BheY=;
        b=axdAaPglYb8UKogN3DzTIO8R8x94VCC9sYNLoAVoBgrBl1PZ7m6udSd/GQNN2ZEgEv
         Pkypldpi/2HRS68zCf8817X1zjJDEkB1dB+wmjA+8T+DfiU+NOZ8bh+QjAqjtOfygn6j
         wvX0vdFH7Gqlq0Skvfu0klZeQPRRG+uUy7SvBW9aN1+YLGbtAkyNxHzQusN4i/3RiSaM
         ESO4sfnzrw5mKdbrDRX01svrwY0gA818gPF04cR0Hap3OlvyYsVCSA5VoLGnEVJ5IJau
         iObfTAJGnkUND284oU0yq6l2ZDb0/UnHP0HCaXWNTN+b+zB4/2EkZyYaA08i/3duWtPT
         GZLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771553652; x=1772158452;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t3es94jlcNTS37tfcja1nmQeDCIBs8JooU5l0G5BheY=;
        b=D/lrUj07g0/YKHjYCI+heMvLe7UMUTMOb5Hjhljlpd8COqoq/CuVcLkdJhiUgMjVlO
         mJNTqjroLguRob78hjzGXkzBMbinbOEs/hvSCCBouA1vYQC6TYHivysO3OQMnhx+VLD6
         +bbdN0upvZO/Ot7Tb//ESkqQIubCE+gKFFmIbp+zT+Mh1zVhEgaPD37GGvu3DbKDcOxT
         cEItDSxO6t80e/KNUQFzNG7k3UcTJXl/L2d4drpJtBG8DcjboHZmF3aH89v2eT05u/Rm
         zM0r7x41PLVJ9qBMiSOpIarpTnAaDOw+LeqbI0SphRhLTf3Z14IRASxIMYv7+jcj/XxZ
         l3zQ==
X-Gm-Message-State: AOJu0Yzz4f/biIIgYMm4CTee1dO8Z0nGckFIsefAY2Mv2a4C7mLWvvgz
	x6Nj2kbgO6ROMEO+dFZRQ3Ii4nwqPdlKpaykxq3yfNJqweqcFsQyj7d0/++w35WT8GY=
X-Gm-Gg: AZuq6aLlqsHRbbLr2kO7SS+6LUd0E3erbbY0coj7C6YAG/1voGfpavSm6Rd4ODrAWKK
	JQxguFEvzVsKnb1nl/F6qg5Isf7VRg1GBNRZ71ggnVEN+SVOTFE0ujINqTdyLnAJzTpNAjUFgqM
	sbn9EJjPNS2J0/Kgs9zhfQ/AJQvb0kWgtFf4Y2gjKc/3lPOqMvMMQVMeD46bUX2VVDZsftJRTD9
	g/Y6rS3l6bM9YlNpOjxDa8ag5lTy2YkNoudh3TeQImu7KhQmDjJyj6xiNYgP0UOK3HEDl9Zv0Pa
	fbS2ihOQGhoFSZc80mUdQaJsurpWRtKnTogVjrN27ilSr2bVf28EWnaqgHOx4bAXRFIavKhLjE7
	Qy1MvMXo/C1EcLfmLQBuSLIrUjxG3wl1z5YnJpDK7jnkFEZI8iM7eLlga4LxMnT/gvbPl
X-Received: by 2002:a05:6a00:1d88:b0:824:d179:2105 with SMTP id d2e1a72fcca58-826d0973035mr98269b3a.56.1771553651799;
        Thu, 19 Feb 2026 18:14:11 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6b69b13sm19607225b3a.30.2026.02.19.18.14.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 18:14:11 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM5301X ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 0/5] ARM: dts: bcm470x: set MACs where missing
Date: Thu, 19 Feb 2026 18:13:48 -0800
Message-ID: <20260220021353.40554-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
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
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266781-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8BCCA16433F
X-Rspamd-Action: no action

I believe these predate the bcm,nvram driver, which makes this
possible. Downstream OpenWrt currently assigns these in userspace.

Rosen Penev (5):
  ARM: dts: bcm4709-linksys-ea9200: set WAN MAC
  ARM: dts: bcm47094-linksys-panamera: set WAN MAC
  ARM: dts: bcm4709-asus-rt-ac87u: specify switch
  ARM: dts: bcm4708-linksys-ea6300-v1: specify switch
  ARM: dts: bcm47094-phicomm-k3: specify switch

 .../broadcom/bcm4708-linksys-ea6300-v1.dts    | 45 +++++++++++++++++++
 .../dts/broadcom/bcm4709-asus-rt-ac87u.dts    | 37 +++++++++++++++
 .../dts/broadcom/bcm4709-linksys-ea9200.dts   |  7 +++
 .../broadcom/bcm47094-linksys-panamera.dts    |  7 +++
 .../boot/dts/broadcom/bcm47094-phicomm-k3.dts | 43 ++++++++++++++++++
 5 files changed, 139 insertions(+)

--
2.53.0



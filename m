Return-Path: <devicetree+bounces-243190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 720E9C95036
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 15:29:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 24B8D34357E
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 14:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 615CE22068A;
	Sun, 30 Nov 2025 14:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=foxmail.com header.i=@foxmail.com header.b="t56to1Ol"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-240.mail.qq.com (out203-205-221-240.mail.qq.com [203.205.221.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA9F6F2F2;
	Sun, 30 Nov 2025 14:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764512966; cv=none; b=gNk3esw3lmA0DuX3RmPTQ/Kmw2UurB0a9j62b2TUNAz8BWGtJ+mAlqvEG18LcEdrARgsDOR8QAt+oX0HhbcYDe3ka4AkQFCpk5IpZRkr3v57U3tVlg2onBtb0iruW6h0a9PXB0eChyLZKj56bm7jhDMtGGyqQ65T9PID3xZqX1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764512966; c=relaxed/simple;
	bh=hsdNEdjoFFm7zs3Y7GDZ/3Ku7XCHVcpsrlmoHH+f9KM=;
	h=Message-ID:From:To:Cc:Subject:Date:MIME-Version; b=HDdzC2+6SBJDqlNYZqZARX0G+Pzvg+js7nkHjx7qG/KvYNKQceJyVZ5dX/GgTLuWDE2xNTyYqACWN2Ozgp3IyaDmAxauoWIUfpoQ6P3Bfgwon3hILL+B8QcrNU+7BGjWj6nLEJ9c+qxO7fq7mW4V6JGXsJhDwbpYSvF/u7ByXW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foxmail.com; spf=pass smtp.mailfrom=foxmail.com; dkim=pass (1024-bit key) header.d=foxmail.com header.i=@foxmail.com header.b=t56to1Ol; arc=none smtp.client-ip=203.205.221.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foxmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foxmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1764512949;
	bh=efa3Phy+9Z/xCM2a0z0nq9OLkO6OgO7fwzu5NcORe/w=;
	h=From:To:Cc:Subject:Date;
	b=t56to1OlP4IV9H7tldMFTBmz+3hvZZX3rmCvBEOC1QRJs6wl+rZq3eG6SvhmRb90N
	 EG15FXMTmyAQvpeCa682RtlwpxLwYbC7vTVZMzgI3MhiJ8+tSjkdcv0y4LZJ4f6v9s
	 f5W6DdKPm26WhWhhlew3vTNZmo73PbXgTHugzQ5c=
Received: from localhost.localdomain ([171.223.167.52])
	by newxmesmtplogicsvrsza53-0.qq.com (NewEsmtp) with SMTP
	id 74625490; Sun, 30 Nov 2025 22:29:06 +0800
X-QQ-mid: xmsmtpt1764512946t25g3kiom
Message-ID: <tencent_9EB0AA660F6B5E93CEC56ECE35AD49491308@qq.com>
X-QQ-XMAILINFO: NC4p7XQIBeahEfXR2loLDJJaZZHlGs/k8kTJB7zZgPrsAqCMPinxwfPEuxWAJc
	 ZaHtUywKQJcPeXvcBTa5HsxLFRdc32210K+w/juAQ2sNy4XBhh+gYG9LaglAtKIoReqvj6GtjvB1
	 WsVBoh0YcocKlgV+co6701eA0G7QU9G1U7vqiFPwbtLEtvjQFlIg4XpHUCP1rGezHGR2mrZatX8Y
	 ItvgE0sOyzDWwws5yvcLa1VSKaH4YIDTnFS3RSTd2QrBErC//NRxQqtPTrI79vGz/o7CeCpzrp5A
	 ODBD9b3oHbcaEL7M1cBfiuPosw8Ok+uaIE9fuAGz1YJWrfacrLbw8cSPjE1y1/l8PMWtdJBZkMpY
	 ttimRbb7fz2c9Pe+bs3pxLS+9OjAet7KhWLSQTQhOoNkuM3UJxo/xlhD7QkOMe6sXguX4MMWZCvT
	 gMZcmeAGqbYWWJ5ABrHIGxL3Tv0DhhEqdX2lBW3n4kjqVvNZV4LOXn6pWNxHnA2ni57jmkzGU+RH
	 BKTGI6zqTw+5MWkjx+w189b8ew4eoHFaq/qcFVsM55cTJnbNILhR9bxOba8ubqwa3wqz3KVHGtZd
	 G9OTD/xjQrQuuarzPeOLJIPNhrLzXhUI/Sgy7Gsp9BUuJFKCBVWGj4bhG1uqpo7J3bgNYVCId8RR
	 UZyT/ncJM7DZMECqx2dlvLIeo+1jXRKFb36MBkO+Gf2x+APDVxfHZa8juvoW5IeHQF8cYuk+xFC7
	 KQGdEWhnb8u+jczE3MwM4zK9yWA/DocVGLzgPmK280a+DUu6Zz11iFiq3Z4UkFkJckXXUAAcz1B+
	 h9rcuXoAHW9IkWgUcyyVKkM+HO5BJU9jTTLOFILYSBLZ6gG3NZJwjC+HWC0pEm51BCKPFPq4euSZ
	 fhhGO3EuR1+7bAuHSd3plIo9igQzgGr6FS4j2SHvvqYOv81Rmkwq1hfXBOeW8XSkYo9f3EDBhIr4
	 L8IEN6vbfwns0KMu1UMcU6ul3wu731+XoU6qLifpaCTwKTpCA9o023RZfCzipbOHMrxDwp1co/tS
	 7SXzVcqr6d4+24V0JB+t27IxQN0LrzLe0Br34LMiI7R7ZGyPfSxOLVWbzoKxU=
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
From: Renjun Wang <renjunw0@foxmail.com>
To: neil.armstrong@linaro.org,
	jessica.zhang@oss.qualcomm.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Renjun Wang <renjunw0@foxmail.com>
Subject: [PATCH 0/2] Add HannStar HSD156JUW2 panel support
Date: Sun, 30 Nov 2025 22:28:41 +0800
X-OQ-MSGID: <20251130142843.78926-1-renjunw0@foxmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The HannStar HSD156JUW2 panel is a 15.6" FHD (1920x1080) LCD-TFT LVDS
panel. Add a binding and a panel entry under panel-simple.c.

Renjun Wang (2):
  dt-bindings: display: simple: Add HannStar HSD156JUW2
  drm/panel: simple: Add HannStar HSD156JUW2

 .../bindings/display/panel/panel-simple.yaml  |  2 ++
 drivers/gpu/drm/panel/panel-simple.c          | 28 +++++++++++++++++++
 2 files changed, 30 insertions(+)


base-commit: e538109ac71d801d26776af5f3c54f548296c29c
-- 
2.39.5



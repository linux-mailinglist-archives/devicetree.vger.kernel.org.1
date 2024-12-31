Return-Path: <devicetree+bounces-134913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D87919FEE8E
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 10:45:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1932E3A2EB3
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 09:45:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F6C519924E;
	Tue, 31 Dec 2024 09:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="p6SMH6CR"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.3])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 337BD194089;
	Tue, 31 Dec 2024 09:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735638305; cv=none; b=ay8MGdEgx2Mf2Y61PHumBdvrV9poIf28Dpm6CUl0gv4wRALR3n1Dt0mrVXfd3AK74JIA0YlEapbClgBtndiFiEUBoqNmYt16PbFXRnqEuIsqHNkX042+x8B+XrVlVDt7PlZthSYUBFZ7198VTqga8/GanSlzaSNbUm6IfrSGc9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735638305; c=relaxed/simple;
	bh=V7DBcT2X1hkKFlr0PtGNIeSQwQl6ouvIDsV1dXm5+3o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=R5b4UXp4YOV4mpIHUQa+dAn7ztWHSIUlvYEANx0q7SjzHxIWLRdUw4GLXWq5XqfqEZh+TptOoQ0tKTcizKvvL30Rwf9gdHp2j8sq/ZbEKLpGAHkqC53ZMJXCZk0mwW9GXZ92q+nqwCk8tSfTLcKKGRlNDThsPOXUVrmOK6LfTnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=p6SMH6CR; arc=none smtp.client-ip=220.197.31.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version:
	Content-Type; bh=KgtALxJqBWoQB4v1+ibC8c5vtvvbQuSbp6eJ9TpCs4o=;
	b=p6SMH6CRyG46D1iaJalUPdckQsBULJUgmM857QpPXRSGSKbX6bCwGcmzq+wk0O
	5yLGIphuAfDHIkWFQa7dJqWoikY2BFlY1zbsFd68bTU2CYMYfsOtxdfaSm/167HM
	3pwy6+h/jNUahP74w7a/MlyqGvVU/DmaCrxN6PX+5RszM=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wD3v8P6vHNnCZWrCw--.29543S2;
	Tue, 31 Dec 2024 17:44:29 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzk+dt@kernel.org,
	mripard@kernel.org,
	robh@kernel.org,
	hjc@rock-chips.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 0/3] Add HDMI support for rk3576
Date: Tue, 31 Dec 2024 17:44:16 +0800
Message-ID: <20241231094425.253398-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3v8P6vHNnCZWrCw--.29543S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XFW3Kr4UZr1UWF4UKr13twb_yoW3Zrb_K3
	4Sq3s8ur18uF1Yya47tw4xWa93tay2gFZ5GF48K3ZrJFWkJF48Xrn3JrWYqa4rZF1YkFnr
	Gr4YqFy8CanIyjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUbySotUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqR7GXmdztQzPNgAAs7

From: Andy Yan <andy.yan@rock-chips.com>


RK3576 HDMI TX Controller is very similar to that of RK3588, but with
some control bits for IO and interrupts status scattered across different
GRF.

PATCH 1/3 is add platform ctrl callback for IO setting and interrupts
status handing.
PATCH 2/3 ~ 3/3 are add support for rk3576

Changes in v2:
- Fix compilation warning: unused variable ‘val’ [-Wunused-variable]

Andy Yan (3):
  drm/rockchip: dw_hdmi_qp: Add platform ctrl callback
  dt-bindings: display: rockchip: Add rk3576 hdmi controller
  drm/rockchip: Add basic RK3576 HDMI output support

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   1 +
 .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 225 +++++++++++++++---
 2 files changed, 196 insertions(+), 30 deletions(-)

-- 
2.34.1



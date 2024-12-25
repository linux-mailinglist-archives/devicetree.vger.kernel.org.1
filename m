Return-Path: <devicetree+bounces-133929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B24059FC4D6
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 11:53:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 186E07A176D
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 10:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D6D21922E6;
	Wed, 25 Dec 2024 10:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="UDYk0o5e"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9814C15443F;
	Wed, 25 Dec 2024 10:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735124020; cv=none; b=gpTTjT69Fs5lJyjF2B4T8QKMlZJ88DSEvdtypKWX/b5E9xsxc1pLua5KeAY+8IZh0LrewVa8rJsDHA4RzXqRyG3iNnShRZ2PEn0uIHQhPbFbCiZdD9Hb8Ao+RJeeJhsjezTuAdg9/G/CHs41FpWv17Z9xrp2tw08fmXpNTbq3Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735124020; c=relaxed/simple;
	bh=pl/V7SBITmiPZbMNH9vsNTLIDz8y4mOCpj4BUZs0xlQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A3hssY959hJp4NLOfSfzaWPjl2rqXI3TcvZp7fjTJsK9rxlg5JOGopTHIaN0UbN7CseLJx+FwyO7XcWSXQJWBQl94BHyGdki92IXG3RsQ5wBK3ZmTMht/GZBGC9juBvCHAGTYz3PSuSPtp0ha2wqhmu/5XEMsbefn/z+fAmRBkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=UDYk0o5e; arc=none smtp.client-ip=220.197.31.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=tugzE
	F7vML8oQTl8NO/7KFIxtE1ZfMc6QALSfy9yPcY=; b=UDYk0o5eEkTdvDR08B460
	I9bEc0mfe5vOelO1cl4WXXn0BT5uQdBTQL5QF/XL9PWM6o+YleUPJnzRdX11f3TG
	73VfJqmi02/ZSSbmuDsTjk76sATNiTVtorV3ExZ3+1JiJTRqXslXbKzymygbDHaJ
	AQc/urSEYgYlf4506mpTDE=
Received: from ProDesk.. (unknown [])
	by gzsmtp4 (Coremail) with SMTP id PygvCgCnfIF24GtnkqkWCg--.3201S4;
	Wed, 25 Dec 2024 18:37:47 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: cristian.ciocaltea@collabora.com,
	krzk+dt@kernel.org,
	mripard@kernel.org,
	hjc@rock-chips.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 2/3] dt-bindings: display: rockchip: Add support for RK3576 HDMI TX Controller
Date: Wed, 25 Dec 2024 18:37:30 +0800
Message-ID: <20241225103741.364597-3-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241225103741.364597-1-andyshrk@163.com>
References: <20241225103741.364597-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:PygvCgCnfIF24GtnkqkWCg--.3201S4
X-Coremail-Antispam: 1Uf129KBjvdXoW7XFW3Kr4UZr1UWF48GrW7urg_yoWDJrgEqa
	4xZ3Z0vFs5Zr1Y9w1DJ397Wws8Ja17KF4kGa1UAF4kJa4kKrZYqr95G34akFykAF17uFWx
	CFn5WrWUCFnxJjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8WGQDUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqR3AXmdr3gYzHgABsS

From: Andy Yan <andy.yan@rock-chips.com>

RK3576 HDMI TX Controller is very similar to that of RK3588, but with some
control bits for IO and interrupts status scattered across different GRF.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 .../bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
index d8e761865f27..b838b5ec2dca 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -29,6 +29,7 @@ allOf:
 properties:
   compatible:
     enum:
+      - rockchip,rk3576-dw-hdmi-qp
       - rockchip,rk3588-dw-hdmi-qp
 
   reg:
-- 
2.34.1



Return-Path: <devicetree+bounces-240144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4597BC6DC64
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 10:39:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id D17C52D820
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5114434320D;
	Wed, 19 Nov 2025 09:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b="Zyic3By8"
X-Original-To: devicetree@vger.kernel.org
Received: from bee.birch.relay.mailchannels.net (bee.birch.relay.mailchannels.net [23.83.209.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F217F72602;
	Wed, 19 Nov 2025 09:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.209.14
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763545154; cv=pass; b=ldX5OA9Mk3dUXUI3BQahlKQBAzZaDvN0ZVMs+/9RzzjCcfGqik3QKYOBMkZMP5ohzc3aNJFvLzKQP3AaontfPNKco3J2TyQaEzRL1hbmjdSci/pmouhDVzh8IY10J9KUNh+rAs53bd7OQD/gEatloav6qPUbccMCFlVAlz/qNmY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763545154; c=relaxed/simple;
	bh=NYs76NRuYxCJamLBfBmlzfUoRb7mU1TRb2HWa/jKHAY=;
	h=From:Subject:MIME-Version:Content-Type:Message-Id:To:Cc:Date; b=pwk1lbk7ABhPfCl3MUO6LibXuIwFBeQPJbnzWRjVBLXVMU8HBpK1S3IoP/blZT06WS8KtiWGwt52sycpWajdKgpBg4rxk7kATNccQsbpz6v9u14mAGY0MmRfktjTy4trSZwS+bx0eqPB6ahyLgDlO32iFgePQqzpCCAPzdl9+Eo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com; spf=pass smtp.mailfrom=rootcommit.com; dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b=Zyic3By8; arc=pass smtp.client-ip=23.83.209.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 1BCAA822C12;
	Wed, 19 Nov 2025 09:22:43 +0000 (UTC)
Received: from fr-int-smtpout11.hostinger.io (100-96-202-146.trex-nlb.outbound.svc.cluster.local [100.96.202.146])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 37E1C822ACA;
	Wed, 19 Nov 2025 09:22:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763544162;
	b=J3XQZKS8ojSeJrb4xnBPhHETz4n14fbsQAQcphsJtN3ZUd36jdQUmdi2mQUk4Zhai+paGH
	X1p0gpqSoxDHHo59KO7iLGOjNKnb95L269vWQRp9iLMf7eu3vJvuB8m96hmb94ZDJ5QRrQ
	fiU9QDi2kjQTPZbg3/ve5jHYy4HhVzlCozd9QZiwwL+g9GAGb0z8xMsHsJaKG0/bmRgsMW
	QN0ZlCrmyVjcn3uvJLONlOwiQ8fX84FFeNHIZRsxedq/4r8IIZoRvj8Iwg577DlG6Abo8n
	RNO5nJ0sGJO2fruRr3f9aWkTirPuPxUfSWopt/6lHhRgIB+NmXBPft1XxKeBIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763544162;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=/XRIn0H1AG4nuUhyTwht3z9K/FpoOLrpMMRmMzDin1I=;
	b=6IvWQnzz8oPDiJelyyvy3SIm9t6eJ8x//GezT3Hvn/+ENpUWB4z7dnzvaBImziR9DpRLQM
	qTMWlOiEA1p74tYAtMraiUHflAofXNsZKcDWhDdlckb5yAJHC31guhrVHM1TfBABcshkOP
	sVzvXUGi86BIXLa4d44TT7FPHoH3J5T0Nm1GNU2omtejjB+Y/+BNMh9jYU9g6IseyevDg/
	Z2ujCWLUd57M/J8c9nIWvyenXxTldct5tLp4NKkMCEAnL/IC/76I48MivdcqpQarxBRLZ9
	dHJRfTraQuyKUgx8t9YuE1r8QP/wXcxDqX+l9dA/iGoypNGu9Zfnp0ilbAdPGQ==
ARC-Authentication-Results: i=1;
	rspamd-55b59744f-wcs4q;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId:
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Madly-Scare: 4d0057c4265dbeaa_1763544162929_2054756046
X-MC-Loop-Signature: 1763544162929:4277995882
X-MC-Ingress-Time: 1763544162928
Received: from fr-int-smtpout11.hostinger.io (fr-int-smtpout11.hostinger.io
 [148.222.54.47])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.96.202.146 (trex/7.1.3);
	Wed, 19 Nov 2025 09:22:42 +0000
Received: from [127.0.1.1] (unknown [IPv6:2001:861:4450:d360:b1d7:54a0:7227:532f])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4dBGGk6FBJz13PR;
	Wed, 19 Nov 2025 09:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763544159;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/XRIn0H1AG4nuUhyTwht3z9K/FpoOLrpMMRmMzDin1I=;
	b=Zyic3By8uTIiypEDvyl5z+3KuZRWv91cjx9MI+So9IUx389W51PzhM+U73Y8GdkfpEFs3w
	ELKVcZRAsMXYuL1e8j5YVGaojgluUfgioPntVM+oAmhs6B8V4KcYaUpFETVINc/bwjTcFg
	tQqlA33F0HAkqqfGE4hYWPcX9UDRcUJT/5QqQnYLbkzsV7EvlK7ZpHdokkbzaBevo/G3n4
	7p5qwlSS2mMhR1YcrRw8s1Nv1PuS9YKiHNNGffQAdPPMrXHJ+O6qtpNvvnthOm7ANs1ecM
	QYCdpqKHnrSXsqWQh7ob91R8ntOpVmK2+h2S5d3Uymd+zcPEKVQjYn5OUY76AQ==
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Subject: [PATCH] dt-bindings: arm: rockchip: merge Asus Tinker and Tinker S
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-merge-tinker-bindings-v1-1-4072b55750c1@rootcommit.com>
X-B4-Tracking: v=1; b=H4sIAFKMHWkC/x2MQQqAMAzAviI9O7AykfkV8aCum0Ws0okI4t8dH
 hNIHkikTAm64gGlixPvkgHLAuZllEiGfWaoq7pBRGc20ixPlpXUTCyeJSYTrJuqxrcYyEJuD6X
 A9//th/f9AIrpDwhnAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Michael Opdenacker <michael.opdenacker@rootcommit.com>
X-Mailer: b4 0.13.0
Date: Wed, 19 Nov 2025 09:22:38 +0000 (UTC)
X-CM-Envelope: MS4xfOepRoEoSwH0tzVB+fQnJfXqumpnchZw7lejyHH785m0GvmpEsgenW78oaoQrooB4wC82wj2Pc04rse61YdUplgEIi0yz8pzFwCwvnfUEM9J5UtqPM1k cw3yQBB88/mIBf8Dukja5QlwqBBzd7SI/RmP4qmXfyYc853V3UJmJqrpotKKjVx3gFkWtRLI5aUPwcsm83vE3lGcGACXwPE/rVrYbLUcLIOhyVY29gt1LY+G YQR+aff7ME7DNiGIeBwrdT3XIk70+YNMIFdxUh4AI+FTE6wJ7+TzrIuTSMwN3CPThvIKX2eUk7TLG1eb92P3xJWFk3e00Psr52EdbzijRfpXv3Y7DuAb8RlM yXOd5HRSDLw7vTZchMqcPDRWF1TVebqNwetSRLhukx63gpd/YO3yYyzgCeQkdbrYE3wPE2kMPG3ReTNR2uEA97N3hbtAEwtcKttFi9kj4QAkFSB4BJIEpWmg RJ38fD1nZcOXPufJhBNSB1koU0k20QeSHHN6ifPL5sx1KwS/mmRe01faDTKCjIGErg3SLfhIHw+gj8Rpawf81+GWkFApo36vE9x/XTzXBMaTaj+tHnYj/oDN RE8=
X-CM-Analysis: v=2.4 cv=Lflu6Sfi c=1 sm=1 tr=0 ts=691d8c5f a=XDzs+g99WxkrRRq8F21x+A==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=Ewf7oWgYWxBXnD_q6CkA:9 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com

Merge sections for Asus Tinker Board and Asus Tinker Board S.

Asus Tinker Board S (Storage) is just a variant of Tinker Board
with an added eMMC chip.

Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8acbb2..784089f1e245 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -78,12 +78,9 @@ properties:
 
       - description: Asus Tinker board
         items:
-          - const: asus,rk3288-tinker
-          - const: rockchip,rk3288
-
-      - description: Asus Tinker board S
-        items:
-          - const: asus,rk3288-tinker-s
+          - enum:
+              - asus,rk3288-tinker
+              - asus,rk3288-tinker-s
           - const: rockchip,rk3288
 
       - description: Beelink A1

---
base-commit: e7c375b181600caf135cfd03eadbc45eb530f2cb
change-id: 20251119-merge-tinker-bindings-f49b05d71fe4

Best regards,
-- 
Michael Opdenacker <michael.opdenacker@rootcommit.com>



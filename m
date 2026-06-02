Return-Path: <devicetree+bounces-305652-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LE3PCiHUHmo8VgAAu9opvQ
	(envelope-from <devicetree+bounces-305652-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:01:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A255562E3C5
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:01:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=MmZK3eNC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305652-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-305652-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=ideasonboard.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A5838302B80C
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 13:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 019F939891F;
	Tue,  2 Jun 2026 13:01:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56609214812;
	Tue,  2 Jun 2026 13:01:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780405263; cv=none; b=Mq8kZUf+ZroYMSyA52c94YYVLe1vtj9+XGnI7gzZvSTP5SIaiy/4Hw94Hah80Sp84czfceMGodELuW0GaEwIfXjVnbBye4PuxdqzIC2XJpB9QNZdZZmZCV0c4ysOHSFNHHPsTcTSZVeVIqbOG8S9EXNooUNq44AQ5CpCFeUVMNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780405263; c=relaxed/simple;
	bh=vHZE41Hi0DXKwAAFsQPc+iizs789zAoAVPwori0iZoI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HUj5KFhtGYxWKqLGs2Qsrt2Fr/vx6tVzIIaNuM5Ppc3C91uhCg8UD05KeImJ60hzJ44COwDmtrVy1vxJqiyzsOCTnUcSg0Rh4tw7y1AaJCqvxizCo3acc/13s4Kl4D0J2JC6t+6YOCuqSmKmCZSnYviD+4opuKZ/cdrORx2Wh8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=MmZK3eNC; arc=none smtp.client-ip=213.167.242.64
Received: from mail.ideasonboard.com (unknown [IPv6:2401:4900:1c66:476d:c684:fe78:389f:7375])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0CBBF103F;
	Tue,  2 Jun 2026 15:00:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1780405236;
	bh=vHZE41Hi0DXKwAAFsQPc+iizs789zAoAVPwori0iZoI=;
	h=From:Subject:Date:To:Cc:From;
	b=MmZK3eNC8qnA+O3b2hMxbcNSXmEp17G15SQT8k8cD43zVmBx8w9sRTkxvxU7xuoTb
	 fK4+dDBvn3mn3dGKyhHa2lfS+OiDxQwDaxGWVc/THzbNakEAnHG7Mlhe39vKLHkBAR
	 c8c6/WV1E8nsjoeJAVNBfdGnsk6xSs5tu0WT6Fqs=
From: Jai Luthra <jai.luthra@ideasonboard.com>
Subject: [PATCH v3 0/4] arm64: dts: ti: BeagleY-AI camera overlays
Date: Tue, 02 Jun 2026 18:29:26 +0530
Message-Id: <20260602-beagley-cameras-v3-0-fe6ae35b7eda@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3XNQQ7CIBCF4as0sxYDtKC48h7GxUCnLYkWA4bYN
 L27tCsTdfm/ZL6ZIVH0lOBUzRAp++TDWKLeVeAGHHtivi0NkkvNlWiYJexvNDGHd4qYmBSONJo
 jHjoB5eoRqfOvTbxcSw8+PUOctgdZrOt/KwvGmXK14twqbGp99i1hCqMNGNu9C3dYySw/GfXNy
 MJ0Gp3V2hlj1A9mWZY3ZhvG0vwAAAA=
X-Change-ID: 20260514-beagley-cameras-21ce6a98a7f1
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Robert Nelson <robertcnelson@gmail.com>, Andrew Davis <afd@ti.com>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Rishikesh Donadkar <r-donadkar@ti.com>, 
 Yemike Abhilash Chandra <y-abhilashchandra@ti.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Jai Luthra <jai.luthra@ideasonboard.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1762;
 i=jai.luthra@ideasonboard.com; h=from:subject:message-id;
 bh=vHZE41Hi0DXKwAAFsQPc+iizs789zAoAVPwori0iZoI=;
 b=owEBbQKS/ZANAwAKAUPekfkkmnFFAcsmYgBqHtQB7zMV75HjI1Bis3vQuVe/k9EFMiZgBMS8B
 +2MHrglKI+JAjMEAAEKAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCah7UAQAKCRBD3pH5JJpx
 RaXwEACjwBzsxAK5oRlp6x6OK8HCcduSchHYZ5CYb01CbX7yHGWRk0OvqUZ508QselV8Qukq12g
 P2k8VczKSy6qXAocK4xcSXwGKWF3MBD2hj9aTpZglg3JT9yilM15luKMX53dVK1pD8EUp4Arqx3
 dEucsNhIedC44iNWeUUS+o3KLxMX+pAA4d8jdjuii20pDvkHd22i0KQKdD7qor2am6DDFZdqMUI
 nvNM+ln5IinNmVQKB32XzRlAKaJwoTBU17Urj32iWduvqkrosqNMnk/d5lX42stAwp5N8D2vXof
 UADNO4888nFGR0opYN7SZ1JixHKGj4xX01kcoL+/TIApHTEfKhOueYKXKGp+BzAH0scrnOkTvCO
 Z9zBRPM6Lr9Ngyu3ETUR7exPfVoDs8jaVVrWTC44gj2Ejamy7tP8F2rTlkfwbct8HViHwi5Kd8Y
 jJJbR8Xqz5UdVJxD81d+BQiyRn2SQ11SQi7JntNPcdqRR5LsCGXTnDjLnn4KJ0+dEaYI445aQyz
 VmRH9qSXm+r4uyj0YR637OhwJ1w5Ea7WRiyL34tpw/QV8cBWFD79NNNQbmJ1ejRyhCcLsKxX0cf
 /ccCK0Ein1BhWTtrQnclhRnIcdkWN4pnb31kpSrXG+TF2U25vHI60wq38dEvQsShflC6T6hYglR
 Zhr+gfVGGfiWClw==
X-Developer-Key: i=jai.luthra@ideasonboard.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305652-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jai.luthra@ideasonboard.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:robertcnelson@gmail.com,m:afd@ti.com,m:devarsht@ti.com,m:tomi.valkeinen@ideasonboard.com,m:r-donadkar@ti.com,m:y-abhilashchandra@ti.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jai.luthra@ideasonboard.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,ti.com,ideasonboard.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jai.luthra@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:mid,ideasonboard.com:dkim,ideasonboard.com:from_mime,ideasonboard.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A255562E3C5

This series adds support for using RPi V2 camera module through the
22-pin CSI connectors present on BeagleY-AI.

The first two patches add support for I2C-2 (used by CSI0) and setup the
DSI0/CSI1 mux (used by CSI1) in the board devicetree.

Next two patches add two DT overlays, for CSI0 and CSI1 respectively.

Signed-off-by: Jai Luthra <jai.luthra@ideasonboard.com>
---
Changes in v3:
- Add disabled nodes for I2C0 and I2C2 along with the pinctrl for I2C2
- Add Rishikesh's R-by along with a link to the board schematics
- Add Links to RPi v2 camera module schematics and BeagleY connector
  schematics
- Link to v2: https://lore.kernel.org/r/20260515-beagley-cameras-v2-0-f6acb66c9995@ideasonboard.com

Changes in v2:
- Use PIN_OUTPUT for the camera reset GPIO pins (I forgot to change the
  sysconfig generated line).
- Link to v1: https://lore.kernel.org/r/20260514-beagley-cameras-v1-0-5c3500b5a436@ideasonboard.com

---
Jai Luthra (4):
      arm64: dts: ti: k3-am67a-beagley-ai: Setup I2C for CSI/DSI connectors
      arm64: dts: ti: k3-am67a-beagley-ai: Add DSI0/CSI1 mux
      arm64: dts: ti: k3-am67a-beagley-ai: Add overlay for IMX219 on CSI0
      arm64: dts: ti: k3-am67a-beagley-ai: Add overlay for IMX219 on CSI1

 arch/arm64/boot/dts/ti/Makefile                    |   8 ++
 .../dts/ti/k3-am67a-beagley-ai-csi0-imx219.dtso    | 118 +++++++++++++++++++++
 .../dts/ti/k3-am67a-beagley-ai-csi1-imx219.dtso    | 118 +++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts     |  45 ++++++++
 4 files changed, 289 insertions(+)
---
base-commit: 254f49634ee16a731174d2ae34bc50bd5f45e731
change-id: 20260514-beagley-cameras-21ce6a98a7f1

Best regards,
-- 
Jai Luthra <jai.luthra@ideasonboard.com>



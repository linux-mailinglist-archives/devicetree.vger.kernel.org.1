Return-Path: <devicetree+bounces-245366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBAECAFB06
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 11:54:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9B62830138C9
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 10:54:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 756FE2F5461;
	Tue,  9 Dec 2025 10:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="sQK49gqL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay90-hz2.antispameurope.com (mx-relay90-hz2.antispameurope.com [94.100.136.190])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D738296BD5
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.190
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765277637; cv=pass; b=SCa5oZBbjc/UCfAnncnNcX+vTNVtcDhKnLqFtFoCkEERuUc6EoGfkIYHHvcGZl7mjZG0fkz1Fhs9Mfw3TME/K8QzIJWopi6veyqz5oCJODb4ipKWq4ZIoPk8Jds6HwBiCNnAJfSEYmeMXVfmpvoKr3TjDY97Zi476ArfFNXYApo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765277637; c=relaxed/simple;
	bh=zAreKBXYzW+jAqB87lL5Vm6L5UsJmH4bDsBImwL5xHM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kTJ/eowzJAgMvs5GFmngJMu+H/Pgo+cO13655ON4YM2DfSNQglTH48Au7+VoqMiedYx4G1FLk74Q5oiAircwmX0pOx8eIqEBj/JUSkVrJSCy0oN/GGNjlNssuFNIMw8HeWwNgGItURkqbX9WArNawmsKN2RxXGJZSYnfOsEoboQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=sQK49gqL; arc=pass smtp.client-ip=94.100.136.190
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate90-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=6npgSCSljI1jrpntYRig2rdWG53oGjgIHhHgeY2CZ1Y=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765277608;
 b=mSeF2i3o9hJTYvOgfZum+fGfg5K2u1Mv80/8u/PFUjC46Ea6pSrKPZgaRIsnD2uk0kDMgARt
 KMgvqivfuAIs7AB3Q47WPpBv2MDdkneU4EP8oJ6jvfk4nMqryiqYkKeYJX7cOCY6fup2PVd6kww
 8XdLQOCz9kXx+KyBId+I6Iti0wRE7XrLYRR5hrUysQ1DaCdzmxPPBmGsaxMIKoHtrv13qdwj3Ok
 YhhExyT/Kffi1S3fFPuN39E50iitIf7dH4VOq4fhKLpJrGU0cK9nIEZs+RW8Fy9JK9aVrfyd6nb
 OGVMoKHhPIw18vjVdUQRdZG/+b6J5VJbHEoUHeFDWo5BQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765277608;
 b=P0eSEMm/w3qzqNmTDVxVTzVQUXptGOsI1yDkMErlsJydIWTq4JKjh9ocj7TAOWTea/7EqfOS
 cWB2b2hJm76O0F+JfTOLTVt0milXfc/C1dkICoYurV1C3stcw2FbYTQIUCR+n+OaiTDQd2Dk7Xf
 QJcvhYyRaTyfO9XQysOrtMeuEBhhEU5rCfYrCMOP0DTyUjesEWA2pp6pGwGCjSYXqL4shU7AS3E
 iqSR4bz0tVNb2TIYbzJOU1ZBTw61a6Ybc1lIJki62xi0WqGxk6OK424pLF5iG46+MS3wS8VQfcY
 m0Y2ztP44GUt4bfKP0LPKJOFYpc1ro5MbuSw4K/OaBRNA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay90-hz2.antispameurope.com;
 Tue, 09 Dec 2025 11:53:27 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id A89F5CC0E8A;
	Tue,  9 Dec 2025 11:53:20 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Martin Schmiedel <Martin.Schmiedel@tq-group.com>,
	Richard Cochran <richardcochran@gmail.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH v2 0/8] TQMa8MPxL DT fixes
Date: Tue,  9 Dec 2025 11:53:06 +0100
Message-ID: <20251209105318.977102-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay90-hz2.antispameurope.com with 4dQbL93XFFzWw50
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:f63f4ee375f07f63483e39071c52d6f9
X-cloud-security:scantime:1.678
DKIM-Signature: a=rsa-sha256;
 bh=6npgSCSljI1jrpntYRig2rdWG53oGjgIHhHgeY2CZ1Y=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765277607; v=1;
 b=sQK49gqL/Ip3tksoHuoKSu76V7WVp1L9yPeIgfEmEWErGwEXq8O2vsJ0B8DaJ0Y7Tnbo+57O
 7CLpOidJvZsLtyXrHbO37xE46y2a4Gv1jbFZoLUHw8YHYAOb9GI0YDsucqj7ULdcH4rMR9D09T6
 x2nfu81xAWhC669xPM76CbF1/pPqwDdJwGCQWpPQLGNv1myxuFXQYNfK3g+8huSghgC/Ar/XJ5M
 NTat+GFk+hGeXay/VQxgx4ZHEOciK7xHERv0XvT/F6lMVpFLMpXrtXGek4QhfPo40ZRlSXiIqa4
 2km9jo4z7ZSk6u1KzamlbZH0BjhZfRO5nGk2DN6KfdryA==

Hi,

this seris includes small fixes for TQMa8MPxL both on MBa8MPxL and
MBa8MP-RAS314. The ethernet IRQ type has been changed to level-low and CEC
pad configuration has been fixed to use open-drain output.
For both boards the HDMI audio output support has been added as well as
the ENET event2 signal on MBa8MPxL, which can be enabled using
/sys/class/ptp/ptp1/period.

Best regards,
Alexander

Changes in v2:
* Collected R-b
* Fixed typos

Alexander Stein (8):
  arm64: dts: tqma8mpql-mba8mpxl: Adjust copyright text format
  arm64: dts: tqma8mpql-mba8mpxl: Fix Ethernet PHY IRQ support
  arm64: dts: tqma8mpql-mba8mpxl: Fix HDMI CEC pad control settings
  arm64: dts: tqma8mpql-mba8mpxl: Add HDMI audio output support
  arm64: dts: tqma8mpql-mba8mpxl: Configure IEEE 1588 event out signal
  arm64: dts: tqma8mpql-mba8mp-ras314: Fix Ethernet PHY IRQ support
  arm64: dts: tqma8mpql-mba8mp-ras314: Fix HDMI CEC pad control settings
  arm64: dts: tqma8mpql-mba8mp-ras314: Add HDMI audio output support

 .../imx8mp-tqma8mpql-mba8mp-ras314.dts        | 21 ++++++++++++--
 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 29 +++++++++++++++----
 2 files changed, 41 insertions(+), 9 deletions(-)

-- 
2.43.0



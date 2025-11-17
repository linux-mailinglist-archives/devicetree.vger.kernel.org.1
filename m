Return-Path: <devicetree+bounces-239341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D225AC641C9
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:40:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5AE9F364A0F
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:38:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D41132D0D1;
	Mon, 17 Nov 2025 12:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="rtLMefH9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay54-hz1.antispameurope.com (mx-relay54-hz1.antispameurope.com [94.100.133.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E81F32D431
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.227
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383085; cv=pass; b=VdQ4i2Olv7DmUibgK6zeGXx6vtR5yxclT2L6zLPvFRBa53Ct28YabLXgpuL6kzBUFUVdnLS2AqbMLhwuelt/zu+kVcLcHgwshCPAeVqcQswcABqN+FhMPjLTdMCwFTX+gsyXHVMAOmw73Ku/5dvC4wFfBd6W5ok9lh/TcT1W+/0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383085; c=relaxed/simple;
	bh=1xuEALpj68pXNIymWLxa7LLNzXjOVAd6uISM8nvgMAM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=some3fyUDleEUxmoKEUsmKCb1C7atHCPi0b0bLeS6MBCxAkMqm0OFF+Ch5aP4Ia2mfy3Un3nbYQpd1NGyL1+M/Mv8kv7N5JxQmdD69YrTXP8xoV/PW2UcwLiw/5UTAHb6rDkwWwogERYjpHqPQphzgZMYpioU7KyBajxEvSk4qw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=rtLMefH9; arc=pass smtp.client-ip=94.100.133.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate54-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=DetMJ+MPA+Wq5fNrwEPDOsXLnfF8QeGVFeKlIfLk49s=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763383028;
 b=esl8/FgHTaEDMOnVNBc96yQrGSyHoudzNsqi4fUCQ+AwjPotwdRF036ZH3p4ARYDSGKpbCUd
 PlRTeO/Te0mj7XIYuM/Qm1JTgoTfvK72ei0VNErg/UUsQEwFu2BoTDEziqmzKjucoLwaTL5QFJG
 RQDrmDULQZ6KX9bRIQBgBn6z38f8MoApBD2c25egMny/5TQLPwNy/wIelZP5J8IWWHwW27xm8qf
 2KSJt2clsx6xJShz7muDul20EJCI1w9bm2r+qGTq9dN+GTPxAsy+xc4T6URfN74MQ4LPJRMrWzX
 dF61Cj8sy/a7t/VGBNvuNs7I1qFNgyLVkvLtU0DAxN1xQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763383028;
 b=GTPHezzHlWw92N81Lss8w/Sz4uduVEHyEEWEL61Hghhkw3RIwAfRg7Nzk0r7qMZn9Quiu5OQ
 5e6LStxmNBzhS2g+w0MCbVVIY0kIXbVk7nd3Ga3ejrKZGllU9N+z5ArKxvhIgIbzrGyHEm+8ttK
 71aLbpNkYCw5+vbkn+LobCcDDcWHyEGcczhFyBJEU56RPSoMqegznq+0nDsF4zz+DoihsKw2e1O
 DWVde4oX+lfWcxsG7zz1IknDDiGml7bkVuew4IOR9A1DrZ2OtUcq6zcf0AsmkdlSPcMJixJua6N
 1DpUBIjzfgA2+DP0+PbtSUxvrrm3LfmPHsqP5NUu/7WWQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay54-hz1.antispameurope.com;
 Mon, 17 Nov 2025 13:37:07 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 6AC7ECC0E92;
	Mon, 17 Nov 2025 13:36:59 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Martin Schmiedel <Martin.Schmiedel@tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/8] arm64: dts: tqma8mpql-mba8mp-ras314: Fix HDMI CEC pad control settings
Date: Mon, 17 Nov 2025 13:36:34 +0100
Message-ID: <20251117123643.711968-8-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251117123643.711968-1-alexander.stein@ew.tq-group.com>
References: <20251117123643.711968-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay54-hz1.antispameurope.com with 4d96gw0g4Cz1l5kV
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:8bc22d3d12689751e329df603757331c
X-cloud-security:scantime:2.731
DKIM-Signature: a=rsa-sha256;
 bh=DetMJ+MPA+Wq5fNrwEPDOsXLnfF8QeGVFeKlIfLk49s=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763383027; v=1;
 b=rtLMefH9+CVGT7+TU08CTUdpF27H9cgQlehnNRl4cuVEu2KcItDI19llKCv4Pz+JO9s4+zcU
 K0JV9gAWJv2m6FKDSNvrVrJh6B2oRXg2Sn9GUqaCDVOh89b6EqkrVFLloEAF0fWQTAdrzmHy95L
 /X6Z3TYulXZ59sMLJcIA/Oyra7DBkxJX4FC7NWplCnMtDxwrMlDdE9heZMqMS/II/MpcEBk6jCd
 zURX3kkMN1+HfhabcLpSZ6pHXpT7DBD7iV7iho/T/26El9JHV8Go52q2Iuohq/yXKCe3J7rDzfj
 q+iUh1+XERSOTHIEu+43w+8wxYIoansnljuBIEGoyurBQ==

As per datasheet of the HDMI protection IC the CEC_IC pin has be
configured as open-drain.

Fixes: ddabb3ce3f90 ("arm64: dts: freescale: add TQMa8MPQL on MBa8MP-RAS314")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
index 67fe1f63fd93c..30f0e81c4be00 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
@@ -704,7 +704,7 @@ pinctrl_hdmi: hdmigrp {
 		fsl,pins = <MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL	0x400001c2>,
 			   <MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA	0x400001c2>,
 			   <MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD	0x40000010>,
-			   <MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC	0x40000154>;
+			   <MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC	0x40000030>;
 	};
 
 	pinctrl_gpt1: gpt1grp {
-- 
2.43.0



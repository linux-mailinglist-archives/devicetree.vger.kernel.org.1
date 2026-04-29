Return-Path: <devicetree+bounces-291435-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4D60J7LM8WlckgEAu9opvQ
	(envelope-from <devicetree+bounces-291435-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 11:17:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F7B491AEE
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 11:17:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC69E30CA28E
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 09:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3626A3BD642;
	Wed, 29 Apr 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b="ZqKy6jJT"
X-Original-To: devicetree@vger.kernel.org
Received: from ultrarisc.com (unknown [218.76.62.146])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD3001DF25C;
	Wed, 29 Apr 2026 09:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=218.76.62.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777454033; cv=none; b=rkuq3BQCvB+VzbsgJaePWHytTyluecrt7hQoc3F4Pa0lHZRQJO3QHAN0jnH9XjMfp5EIdpYCNB46JS11BqNzayWRz5ZnucySiD/x095Fm+o9VHyADNxJACIMUMtFX4pKc0kC1ZxqFEMbK7PXcaqL/XqptHr+2WAoO7okhOiUCFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777454033; c=relaxed/simple;
	bh=UM+lFNrgifN7fqIi+jkH4mF0Wg7FNah97Kz637clMys=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=in7yMxGNKuwjw42N/jA4YxbXPvsOtkRk+3Lk8gzfSBWy3lEttdLPpgPJlNywpwEXv5lKfNZE9ReRvZZQ7F2TtkAGuG7J8BegErlBRFtX2osaGiR1mONDGvlhcrtkm/I/R+YmMAJu20KdtLmuy8yMWSCdqAauOBrOrbZg0HQHRHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com; spf=pass smtp.mailfrom=ultrarisc.com; dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b=ZqKy6jJT; arc=none smtp.client-ip=218.76.62.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ultrarisc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ultrarisc.com; s=dkim; h=Received:From:Date:Subject:
	MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:
	References:In-Reply-To:To:Cc; bh=lB1UgtFHXbVOx+AQxMlqFDIEAITd7xj
	JFJmJMxntCx8=; b=ZqKy6jJTHLOQdW9Lq1I2++VmWH5nT4ROVJibs13Hk6IJ8M1
	gbPhObSqPhFj/7r4Qy0Ig0cPI+QMptMNWEwAiyey67L1vvRB8why6+uXqUZleevm
	wePAbIRgMLJbhaNEr5xUvQ0o7eAWdtzXq2F+WiIovU7zbiIXISXjng6lHMvs=
Received: from [127.0.0.1] (unknown [192.168.100.1])
	by localhost.localdomain (Coremail) with SMTP id AQAAfwA3cULgy_FpFiUDAA--.1811S5;
	Wed, 29 Apr 2026 17:14:11 +0800 (CST)
From: Jia Wang <wangjia@ultrarisc.com>
Date: Wed, 29 Apr 2026 17:13:27 +0800
Subject: [PATCH v7 3/4] dt-bindings: serial: snps-dw-apb-uart: Add
 UltraRISC DP1000 UART
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260429-ultrarisc-serial-v7-3-e475cce9e274@ultrarisc.com>
References: <20260429-ultrarisc-serial-v7-0-e475cce9e274@ultrarisc.com>
In-Reply-To: <20260429-ultrarisc-serial-v7-0-e475cce9e274@ultrarisc.com>
To: =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 Jia Wang <wangjia@ultrarisc.com>, Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777454005; l=940;
 i=wangjia@ultrarisc.com; s=20260309; h=from:subject:message-id;
 bh=UM+lFNrgifN7fqIi+jkH4mF0Wg7FNah97Kz637clMys=;
 b=coERkPbMqK/67Kh51HMyA4UJ2MqEbkEMN1Z3TBBXeeyLT9+HAdRdwgsvRuopvcwKP5bJ3qzdK
 sEsxv0aDJJtDVP60Wy1xSJdfdcWi2acvwusAkO/Vyybxro3AdtTJfWI
X-Developer-Key: i=wangjia@ultrarisc.com; a=ed25519;
 pk=XvYkrelqJIIzobY7j+nIg8rsfv5kzaOzuc1UPhd087U=
X-CM-TRANSID:AQAAfwA3cULgy_FpFiUDAA--.1811S5
X-Coremail-Antispam: 1UD129KBjvdXoWrKF1UuFW5XrW5GF1UWr1DAwb_yoWfZrg_C3
	97uayqvr43AFWFva1DAF4xJr4fZF47WFs5urn8tF1kC34DZay5KFyktr90yw1rJr1fZr4f
	Cr9akrWqkrsxGjkaLaAFLSUrUUUUbb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJ3UbIYCTnIWIevJa73UjIFyTuYvj4RJUUUUUUUU
X-CM-SenderInfo: pzdqwylld63zxwud2x1vfou0bp/1tbiAQAKEWnti78ACwBTsy
X-Rspamd-Queue-Id: E3F7B491AEE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ultrarisc.com,none];
	R_DKIM_ALLOW(-0.20)[ultrarisc.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-291435-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangjia@ultrarisc.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ultrarisc.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ultrarisc.com:email,ultrarisc.com:dkim,ultrarisc.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]

UltraRISC DP1000 integrates a Synopsys DesignWare APB UART, but it does
not provide the standard CPR and UCV registers.

Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 685c1eceb782..49f51b002879 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -78,6 +78,7 @@ properties:
               - starfive,jh7100-hsuart
               - starfive,jh7100-uart
               - starfive,jh7110-uart
+              - ultrarisc,dp1000-uart
           - const: snps,dw-apb-uart
       - const: snps,dw-apb-uart
 

-- 
2.34.1



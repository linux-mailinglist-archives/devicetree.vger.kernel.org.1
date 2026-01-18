Return-Path: <devicetree+bounces-256542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD41CD3971B
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 15:26:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4BAA23002A41
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 14:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2554337689;
	Sun, 18 Jan 2026 14:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pigmoral.tech header.i=junhui.liu@pigmoral.tech header.b="PnRa8N6j"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o15.zoho.com (sender4-op-o15.zoho.com [136.143.188.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4A731ED71;
	Sun, 18 Jan 2026 14:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768746392; cv=pass; b=dshy9lxGl5TA0ypAq22Kk0bzCf8gjKjhZLRW1z+s1FDXdFcPwv6t11A38AfGgzAIsdRvj/tH8lI6tjjBTnryuR0lNmIEDw8COc9or676XyfNYokbPW364CS2TIuHoGSu3n8Y8ccy8KXTKFDTIgrTXiaQcEBs5N2rXAsTKpPHBi8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768746392; c=relaxed/simple;
	bh=BvWaQkUJBvXg9RkiY/LFSvINZsVIPdXwcgP3Ppmyk8w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=T10AZtr8LDC+k96FrjlGZitYlLfW/8dC3+szJedvLekgvxuvxQxVYbcNcZB8clbQpkcY9FB5lFGHrKPebsmC2JL0WOf+WsAVHPMNxVGREYZKcBRBdm2sCW4brS2/tn3RH7dneKyoxgYEkmoBFqpWMRX4dGINzzEesrVuhzG2w8k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pigmoral.tech; spf=pass smtp.mailfrom=pigmoral.tech; dkim=pass (1024-bit key) header.d=pigmoral.tech header.i=junhui.liu@pigmoral.tech header.b=PnRa8N6j; arc=pass smtp.client-ip=136.143.188.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pigmoral.tech
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pigmoral.tech
ARC-Seal: i=1; a=rsa-sha256; t=1768746364; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=SH/mBlnE9Q83qr6IqlYb4lUWXDGSgxADDTA3VtIxpy3UXKjrysJ3QQBW1UnQ32iamZMRNy2NXPQkBpRHf/3k2X9IzPFz35LQugjKYCrFLC+k8bZGTZJuOy0L3GLI2uG1aw53JjPHdri/OwtiuZgLMrPVmL0Auz58qwNyBk5x3i0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768746364; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=cIbPtT78mcjstGf1Y3m9nRtHPOd+0Pk3EGb62HGCGxc=; 
	b=lMYTLm2DpgR8YGJUx8ucI5+tfX1aRxEaNCkLX4aphK0jeD1t8szCFHk+9tZnaE++1xQCoiezpyVZUAl6G73QskeQp549yJKviJQ8XGmohG00lAvsydeW5Bme1vTo7V+2jFiAzfmxBGdy9VqugSmI1zwbVcORGJQ45Lg/ne51Q/4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=pigmoral.tech;
	spf=pass  smtp.mailfrom=junhui.liu@pigmoral.tech;
	dmarc=pass header.from=<junhui.liu@pigmoral.tech>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768746363;
	s=zmail; d=pigmoral.tech; i=junhui.liu@pigmoral.tech;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:To:To:Cc:Cc:Reply-To;
	bh=cIbPtT78mcjstGf1Y3m9nRtHPOd+0Pk3EGb62HGCGxc=;
	b=PnRa8N6jIwImc77Ho/PSQk4Pdu9Gvhzh839L234118mnZKxDpQb6g000ViV9b/s7
	bF2bP5HiE0Bb9rrfmTQD78pSLq/Yb68/AsdM3MsfYFVgl9rz6bI314sRlhrASObu3g9
	nBaPp2wURV1UaAR6ctlHjwi+XMTFUZ/pVR/PlJ9w=
Received: by mx.zohomail.com with SMTPS id 1768746360351543.6650268721444;
	Sun, 18 Jan 2026 06:26:00 -0800 (PST)
From: Junhui Liu <junhui.liu@pigmoral.tech>
Date: Sun, 18 Jan 2026 22:25:07 +0800
Subject: [PATCH] riscv: dts: canaan: k230: Add "b" ISA extension
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260118-k230-ext-b-v1-1-6a63616b11cc@pigmoral.tech>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ0ML3WwjYwPd1IoS3SRdgxTzVPNkc/NkY4s0JaCGgqLUtMwKsGHRsbW
 1AH1Y7XZcAAAA
X-Change-ID: 20260118-k230-ext-b-0d7e7c77c38f
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Junhui Liu <junhui.liu@pigmoral.tech>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768746344; l=1939;
 i=junhui.liu@pigmoral.tech; s=20251228; h=from:subject:message-id;
 bh=BvWaQkUJBvXg9RkiY/LFSvINZsVIPdXwcgP3Ppmyk8w=;
 b=IaCH2tmViS4CQfeksoNrNF8X5ZolFJl8pCbzGa8e3HsTadaJpgRxclYLdJgnnYmhhNIwn9QwH
 wePvvUWzNciBZ/b3lmo9ZvgQvXIvszNjnpkzeNHo9kSJ7fWqrEvk24B
X-Developer-Key: i=junhui.liu@pigmoral.tech; a=ed25519;
 pk=3vU0qIPJAH8blXmLyqBhKx+nLOjcLwwYhZXelEpw7h4=
X-ZohoMailClient: External

"b" is ratified (Apr/2024) much later than its components zba/zbb/zbs
(Jun/2021). With "b" added into riscv/extensions.yaml, a dependency
checking rule is now enforced, which requires that when zba, zbb, and zbs
are all specified, "b" must be added as well. Failing to do this will
cause dtbs_check schema check warnings.

According to uabi.rst, as a single-letter extension, "b" should be added
after "c" in canonical order.

Update k230.dtsi to conform to this rule. Also synchronize "riscv,isa"
with "riscv,isa-extensions".

Signed-off-by: Junhui Liu <junhui.liu@pigmoral.tech>
---
Based on Conor's k230-basic branch and rebased to riscv-dt-for-next.

The commit message and implementation are adapted from Guodong's patch
for adding the "b" ISA extension to multiple dtsi files.
---
 arch/riscv/boot/dts/canaan/k230.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/canaan/k230.dtsi b/arch/riscv/boot/dts/canaan/k230.dtsi
index 5a1bf8a15abe..041c9947a8fa 100644
--- a/arch/riscv/boot/dts/canaan/k230.dtsi
+++ b/arch/riscv/boot/dts/canaan/k230.dtsi
@@ -21,9 +21,9 @@ cpu@0 {
 			compatible = "thead,c908", "riscv";
 			device_type = "cpu";
 			reg = <0>;
-			riscv,isa = "rv64imafdcv_zicbom_zicbop_zicboz_zfh_zba_zbb_zbc_zbs_zvfh_svpbmt";
+			riscv,isa = "rv64imafdcbv_zicbom_zicbop_zicboz_zicntr_zicsr_zifencei_zihpm_zfh_zba_zbb_zbc_zbs_zvfh_svpbmt";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "v", "zicbom",
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "b", "v", "zicbom",
 					       "zicbop", "zicboz", "zicntr", "zicsr", "zifencei",
 					       "zihpm", "zfh", "zba", "zbb", "zbc", "zbs", "zvfh",
 					       "svpbmt";

---
base-commit: 99a8c0e33dbf0117710b7f0c5cd1cb39638235ab
change-id: 20260118-k230-ext-b-0d7e7c77c38f

Best regards,
-- 
Junhui Liu <junhui.liu@pigmoral.tech>



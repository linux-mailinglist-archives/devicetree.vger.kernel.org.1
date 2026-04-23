Return-Path: <devicetree+bounces-289618-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFRrIeLm6WnxmwIAu9opvQ
	(envelope-from <devicetree+bounces-289618-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 11:31:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 804CC44F98C
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 11:31:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9C3A63185781
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 09:21:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D80D33E5562;
	Thu, 23 Apr 2026 09:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxAFHLA4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B051729D275;
	Thu, 23 Apr 2026 09:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776936064; cv=none; b=uxco5xub294QJ+dcChXXSxfdFGJrVuOBlgv+xxB+Tm80V4qXD/4vi2p/9C2tzJMEPMQ4oE2XQCKRU7sxN4jKaLl+8WTy/DLh3pL5IqSZG9CUbMJEVPIdpUAT75+MpHQ2o09xRiM2Qe873Ii3UZrTVGXFzwFTnw9B46WuC8VpXug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776936064; c=relaxed/simple;
	bh=J5L1A2jbbo0SMdIEzOxqGDDsrZHiKwYymWv6/n3eMPs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=A7UWguhAFiNAC/zvadUUN/qVwguoBrWS8MpQGVT8b7vszr93CbxIerNtV5388SYBbuxvxnJoOVAm1oHINffohiNiabj0VPDr4W30Er0QrQ9/D00TM+2Nm3hQ01napsnScaEUpqoh/GJzqO/3dJKGZ9SidNnJhJ+BBlDNI7uzcY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxAFHLA4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4BD3FC2BCAF;
	Thu, 23 Apr 2026 09:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776936064;
	bh=J5L1A2jbbo0SMdIEzOxqGDDsrZHiKwYymWv6/n3eMPs=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=LxAFHLA4i/whD+n0I1NcjfbQiud7deOB+zxNfqYicZYYKnmVAo/FqbtT6CTiQISJ2
	 kHa9gwZV1h04DWyI5FISfN2lDLvqkv6QN/4K7sOP1tINuy0zvjLjAlpPYHCZckyPRK
	 53TXLDUOza69ahyHuHJj9S3a2gmdVe/o8i0wzSjpsAdMGNysZ5H99cRIEMIqvXtz5S
	 T/t0aLUQIuVDmISDPiQQhaxYSL9u99TuU0c2ZcfminJnFy+xa/8l77UDpRIQPF8wMs
	 ZRE0qSUeg2AtkVpaqWpAGN57LdxpiOrnWdilPXsIQv0Kmd2WpbNFANx+r8Zd7U2W7b
	 cK8AAbCsQLFfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3910DF9934C;
	Thu, 23 Apr 2026 09:21:04 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Subject: [PATCH v4 0/2] basic devicetree support for Amlogic A9
Date: Thu, 23 Apr 2026 09:20:53 +0000
Message-Id: <20260423-a9-baisc-dts-v4-0-c26b480a068c@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHXk6WkC/3XPTQ6CMBCG4auQrq2ZDn/FlfcwLtqhhSZCDSVEQ
 7i7hY2KcflN8rzJzCyYwZnATsnMBjO54HwfR3ZIGLWqbwx3ddwMAQtAyLmquFYuEK/HwElrbdC
 AsBJYJPfBWPfYcpdr3K0Lox+eW30S6/VPaBIcuECBOitslavyrLqbbxwdyXdsTU34wVHuOEael
 Zms6pxIKPnL0zdPId3xdOXaooD4CuT0zZdleQHZnAXgKAEAAA==
X-Change-ID: 20260205-a9-baisc-dts-cbbbe2e01f80
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, Xianwei Zhao <xianwei.zhao@amlogic.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776936062; l=1483;
 i=xianwei.zhao@amlogic.com; s=20251216; h=from:subject:message-id;
 bh=J5L1A2jbbo0SMdIEzOxqGDDsrZHiKwYymWv6/n3eMPs=;
 b=MMB+BaVniSUyZKdSGxjqC0+QARageSMqnZG67niJuAY6OQmXCEfsmCh/0soeIxzjkXY1sPihL
 mK7TYOWPD74CAavjMWq4lIXY1y23HbjGva2d3NvS34N9uZrEiO+a8zT
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=dWwxtWCxC6FHRurOmxEtr34SuBYU+WJowV/ZmRJ7H+k=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20251216 with
 auth_id=578
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289618-lists,devicetree=lfdr.de,xianwei.zhao.amlogic.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,googlemail.com,baylibre.com,linuxfoundation.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[xianwei.zhao@amlogic.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amlogic.com:email,amlogic.com:replyto,amlogic.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 804CC44F98C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the new A9 SoC/board device tree and related bindings.

Since the serial submission has removed this patch as a separate patch.
The dtb check needs to be relied upon for serial submission mereged, or
check failed, when run "make ARCH=arm64 dtbs_check W=1".

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
Changes in v4:
- Rebase code, modfiy size of gic reg, and drop cpu_mask for timer node due to GICv3.
- Link to v3: https://lore.kernel.org/r/20260303-a9-baisc-dts-v3-0-4bf21001f05c@amlogic.com

Changes in v3:
- Remove serial bindings from this patches and will send it independently.
- Link to v2: https://lore.kernel.org/r/20260228-a9-baisc-dts-v2-0-47489d5cc1a8@amlogic.com

Changes in v2:
- Move default interrupt-parent into dtsi.
- Link to v1: https://lore.kernel.org/r/20260205-a9-baisc-dts-v1-0-1212b46f95a7@amlogic.com

---
Xianwei Zhao (2):
      dt-bindings: arm: amlogic: add A311Y3 support
      arm64: dts: add support for A9 based Amlogic BY401

 Documentation/devicetree/bindings/arm/amlogic.yaml |   6 +
 arch/arm64/boot/dts/amlogic/Makefile               |   1 +
 .../boot/dts/amlogic/amlogic-a9-a311y3-by401.dts   |  40 +++++++
 arch/arm64/boot/dts/amlogic/amlogic-a9.dtsi        | 128 +++++++++++++++++++++
 4 files changed, 175 insertions(+)
---
base-commit: 8b379d5e9eb7933c73e77e768d95f11ef2833c26
change-id: 20260205-a9-baisc-dts-cbbbe2e01f80

Best regards,
-- 
Xianwei Zhao <xianwei.zhao@amlogic.com>




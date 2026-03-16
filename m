Return-Path: <devicetree+bounces-275947-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGEuEImmt2n/TwEAu9opvQ
	(envelope-from <devicetree+bounces-275947-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:43:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D44FA2953CE
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:43:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E594F300A75F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD40834B43F;
	Mon, 16 Mar 2026 06:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHexgPna"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76491A9FAB;
	Mon, 16 Mar 2026 06:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773642815; cv=none; b=dd8pMd9hogPRQzjxx4QCXBQ/TXgGN85icI4RxFr9A9gLjgP8Pi+G7jHTQMBKR3j4R18LPorOQ8Y0ZMXvGKG+btgVCl3Hny6hmRxknM7o14eYPjqLz9JOH5qvXXoAlMQNS+xiETW87onmeob+Ubw9YVNLiwtsjBo2fuEPNREHEzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773642815; c=relaxed/simple;
	bh=Shl9i7Neut1yNC/BlWUbV5D2c6yZxtq+foRFkgLFmDM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z7twU9qd4nhfMJPF6NZfsmffrIHqtcl40mJXfUAbSH7YYuNy4E2cw/lvKWWl5HdI8MmSHb6SXIPuALdb8xZsKyQhgEz4mAS0FRsENeDGgj7OwVkvu2Wh8W8mGAyyiegr6+GOsHzjZjBChM9jV6ILuCnFkpiwBq98LSnKpWo+oBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHexgPna; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69CB3C19425;
	Mon, 16 Mar 2026 06:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773642815;
	bh=Shl9i7Neut1yNC/BlWUbV5D2c6yZxtq+foRFkgLFmDM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=SHexgPnaZaRYoTeuFrmM+U6H9RGJ6KJTHznnK1F3KSpFqg/wHA3DNUvo7CWECSlPp
	 x3xIbbvKAVoi/gNM+n41eM/0icycYH2/cQhlMacuqpfJ1xEZVQ4SJQcseMNtdHYxm4
	 XTn0VfHF1bbMa4WihMzC+CUEYYXiGlgwoem/O7zNm1D4fVB1+Iwnz2MPLwJxLgSsqG
	 r4DFRketLPVvvUT5yUpNEAqQpGtWA8fTyGpuirSMaV5ZoxnXCCykXSTikS8b1FSNef
	 pSHALXe0sY3v8uEIfVop88LAzXuy5ud3K49ZasqIhcS/Qj/E8adGRmTwIow07ncs63
	 D8f++fv8/IpJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533BCEFCBBD;
	Mon, 16 Mar 2026 06:33:35 +0000 (UTC)
From: Jia Wang via B4 Relay <devnull+wangjia.ultrarisc.com@kernel.org>
Date: Mon, 16 Mar 2026 14:33:22 +0800
Subject: [PATCH v2 1/2] dt-bindings: serial: update bindings of ultrarisc
 dp1000 uart
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-ultrarisc-serial-v2-1-6ab3e7fa891c@ultrarisc.com>
References: <20260316-ultrarisc-serial-v2-0-6ab3e7fa891c@ultrarisc.com>
In-Reply-To: <20260316-ultrarisc-serial-v2-0-6ab3e7fa891c@ultrarisc.com>
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
 Jia Wang <wangjia@ultrarisc.com>, Yao Zi <me@ziyao.cc>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773642814; l=830;
 i=wangjia@ultrarisc.com; s=20260309; h=from:subject:message-id;
 bh=jeAzNqfdfA35qeisKPZc2pOi87g/Zrhmu+g6GMmMbgw=;
 b=21UIh673o/8ZBIrk9WQvOzWy5rDlgKN+9PWKeDlBEnyynB2e84xnm6/RpcozinoFCvkcsVQKl
 VXF0KQqFk1UCubU68eRC6OJ3+3QNQB9HA2mZJ6rPWp0HVUcrV9B82ml
X-Developer-Key: i=wangjia@ultrarisc.com; a=ed25519;
 pk=XvYkrelqJIIzobY7j+nIg8rsfv5kzaOzuc1UPhd087U=
X-Endpoint-Received: by B4 Relay for wangjia@ultrarisc.com/20260309 with
 auth_id=682
X-Original-From: Jia Wang <wangjia@ultrarisc.com>
Reply-To: wangjia@ultrarisc.com
X-Spamd-Result: default: False [8.84 / 15.00];
	URIBL_BLACK(7.50)[ziyao.cc:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	TAGGED_FROM(0.00)[bounces-275947-lists,devicetree=lfdr.de,wangjia.ultrarisc.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,body];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[wangjia@ultrarisc.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.555];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c0a:e001:db::/64:c];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ultrarisc.com:email,ultrarisc.com:replyto,ultrarisc.com:mid,ziyao.cc:email]
X-Rspamd-Queue-Id: D44FA2953CE
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

From: Jia Wang <wangjia@ultrarisc.com>

Add DP1000 UART compatible information

Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
Reviewed-by: Yao Zi <me@ziyao.cc>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 6efe43089a74..0040ed28e35b 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -78,6 +78,8 @@ properties:
               - starfive,jh7100-uart
               - starfive,jh7110-uart
           - const: snps,dw-apb-uart
+      - items:
+          - const: ultrarisc,dp1000-uart
       - const: snps,dw-apb-uart
 
   reg:

-- 
2.34.1




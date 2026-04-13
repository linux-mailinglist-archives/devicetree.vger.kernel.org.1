Return-Path: <devicetree+bounces-287047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMuwLLgB3Wk3YwkAu9opvQ
	(envelope-from <devicetree+bounces-287047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 16:46:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E463ED7B2
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 16:46:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3A5B5300B9EE
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 14:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 545323E0C4C;
	Mon, 13 Apr 2026 14:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFYK34Yx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310C33E0C41
	for <devicetree@vger.kernel.org>; Mon, 13 Apr 2026 14:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776091566; cv=none; b=UW4yvC6WK8kE5n9Pjbyu9UYi06Ul7i8j1H4VSgksoclRAXVo7lKCsY3h8/1oQJGxflBhm3QIArP/8lKYaXGS18D45qZwyx7T9M7GtZRRhmXOYV3xlh627Ii1z6d7+NLpDqprF3CuyonV0hXrzYdp60TbpMqvrMEwJc40ZB+6dF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776091566; c=relaxed/simple;
	bh=9FJk0mq6Z/sRl+/BenrA0GBHMFtgHc7xX57TmN52blM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gCJauHHMtBmsCDMY/Pz5CrJfycKo8ITNzQM/HZovdj7eiCmWCtaydwt9qL1vYViVp8kdjzspo63H7Zzlv8ZGZX6zO9WtsoZvtov8QaP17fpbEKB5xzlvUTCKdRPR3Gs2qlS9zL7KbLrv77HGs/s+8j/g2IdpYpyjuVUTnvK/KfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFYK34Yx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D140C2BCAF;
	Mon, 13 Apr 2026 14:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776091565;
	bh=9FJk0mq6Z/sRl+/BenrA0GBHMFtgHc7xX57TmN52blM=;
	h=From:To:Cc:Subject:Date:From;
	b=hFYK34YxIauNOgjNpXTgoeuDUKuOAtpndYL26yDEJOrMMV4idjplYPHn3HEGAWxRd
	 GQ8zP8JZRcV5w0Y+Giq5k4VpABfvVMeEZTXhPoipVNlnNAuaFoQdouIqnvUR9l9ZJk
	 6YNY0sLNMXUsZWI1ShraR/0OTCNxLvWl/HGCAz2S5x8R3DY/HtGZKRwCQ2UPo9GzCN
	 yHkgtSi80Szg7QVOvHDd7jMFdneIx5gXrQAFWctKvOveC9/EXAcGX3S+4kJ0RFpam+
	 RgYwsdJrxFGlCo6ZQfTbsmikxWmIoZrnA2oGnZnHabupQ/C07Zn+j7H8bklh0xVU4A
	 ffFqgFENkCjYw==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: socfpga: Add the Agilex7 series SoC's
Date: Mon, 13 Apr 2026 09:45:52 -0500
Message-ID: <20260413144553.132737-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287047-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B0E463ED7B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Agilex7 is a series of devices from Altera that are derived from
the Agilex family.

The Agilex7F device supports PCIE 4.0 and DDR4. The Agilex7I device supports
PCIE 5.0 and DDR4, while the Agilex7M device supports DDR4, DDR5, LPDDR5
and PCIE 5.0.

All other peripherals from these devices are the same as the Agilex
device.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 206686f3eebc..5ee09f8d4698 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -115,6 +115,16 @@ properties:
               - intel,socfpga-agilex5-socdk-nand
           - const: intel,socfpga-agilex5
 
+      - description: Agilex7 series F, I and M boards
+        items:
+          - enum:
+              - intel,socfpga-agilex7m-socdk
+          - enum:
+              - intel,socfpga-agilex7f
+              - intel,socfpga-agilex7i
+              - intel,socfpga-agilex7m
+          - const: intel,socfpga-agilex
+
       - description: SoCFPGA VT
         items:
           - const: altr,socfpga-vt
-- 
2.42.0.411.g813d9a9188



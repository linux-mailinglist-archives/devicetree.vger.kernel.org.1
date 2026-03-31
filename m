Return-Path: <devicetree+bounces-282818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CN0VCp13y2k3HwYAu9opvQ
	(envelope-from <devicetree+bounces-282818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 09:28:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A151E3652B3
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 09:28:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 85BFE3072FC9
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 07:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24ABD3BED28;
	Tue, 31 Mar 2026 07:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b="MvcMZm5o"
X-Original-To: devicetree@vger.kernel.org
Received: from sg-3-44.ptr.tlmpb.com (sg-3-44.ptr.tlmpb.com [101.45.255.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13B1386425
	for <devicetree@vger.kernel.org>; Tue, 31 Mar 2026 07:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.45.255.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774941903; cv=none; b=gmivMRaDZH6EsWidPMaSEHB9IkS7WlK4g+pQrs2PrBYqIXF/PtQ/6M233fFa9itDqNiPkayMMtgRpgPdDrmSvn/IKpXpGWOXEbq/AbHfMBefnthT31H5GUJtmK4KT4kgy4tqVwSLQBeOA4ovPieajrqCe6V1y44JxpjW+vIoqQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774941903; c=relaxed/simple;
	bh=k1rsPaWJ4Qv2ieYkin+GJzrEKodqZasRzt+A1M6y97w=;
	h=To:Cc:Message-Id:Mime-Version:Content-Type:Subject:References:
	 From:Date:In-Reply-To; b=cNVPRttmTX8yMStDJQiU6W+KWj/qL37gHxuSZObJph8iFQNRQntqVY1DOs1Ki8p0zIuWDOY5WbHbBwpHCzqiNJ2+rjpRdAUJvrrVD2ogai1RZhdfB1WNl24sKRhDXa950hngKlnSEIxB9d1qhDgdLOdXKc0MhHfbBTgLmogOfz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io; spf=pass smtp.mailfrom=deepcomputing.io; dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b=MvcMZm5o; arc=none smtp.client-ip=101.45.255.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deepcomputing.io
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=deepcomputing-io.20200927.dkim.feishu.cn; t=1774941173;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=GQDq7xcPmGfMBCPBOoJzK5rFck21n/XBBgQtt8mMdD0=;
 b=MvcMZm5oSdctm4cRKprkzy8jArHx3mJFhjmk8zcoGwcfzzCMkERmxb9Dr2Brf7TvG20oW5
 5eX1UiQ0A94elZhPdyq0zaqxZTnZZXKO68X9oabVkqYpmMQT9gzCQpnug7wsz7yKeZOAdg
 O3j3Tf7J94RJsC1cFzP2fe4TmdENKllPNPmD3BLbuXolqfM807u6iUZ1bjspyuDySo8IWF
 HASTrPIznRAa603acg2WgwxikdOr/+7aNnnuMGUnAxlkbmOSrzEsmOgjHDTWF/ZIQO8onj
 d6pRL9T/f/L0k7OihJxeukPsTZSY7YdWC61p51hsmTd5P3b8nVkI0x+rLEO7HQ==
To: "Conor Dooley" <conor+dt@kernel.org>
Cc: "Emil Renner Berthing" <kernel@esmil.dk>, 
	"Rob Herring" <robh@kernel.org>, 
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>, 
	"Yixun Lan" <dlan@kernel.org>, 
	"Paul Walmsley" <paul.walmsley@sifive.com>, 
	"Palmer Dabbelt" <palmer@dabbelt.com>, 
	"Albert Ou" <aou@eecs.berkeley.edu>, 
	"Heinrich Schuchardt" <heinrich.schuchardt@canonical.com>, 
	"Troy Mitchell" <troy.mitchell@linux.spacemit.com>, 
	"Michael Opdenacker" <michael.opdenacker@rootcommit.com>, 
	"Guodong Xu" <guodong@riscstar.com>, 
	"Hendrik Hamerlinck" <hendrik.hamerlinck@hammernet.be>, 
	"Yangyu Chen" <cyy@cyyself.name>, <spacemit@lists.linux.dev>, 
	<linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>, 
	<linux-kernel@vger.kernel.org>, 
	"Sandie Cao" <sandie.cao@deepcomputing.io>
Message-Id: <20260331071238.68336-1-sandie.cao@deepcomputing.io>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Original-From: Sandie Cao <sandie.cao@deepcomputing.io>
X-Mailer: git-send-email 2.43.0
Content-Type: text/plain; charset=UTF-8
Subject: [PATCH v2 1/2] dt-bindings: riscv: spacemit: add deepcomputing,fml13v05
X-Lms-Return-Path: <lba+269cb73f3+d67c50+vger.kernel.org+sandie.cao@deepcomputing.io>
References: <20260331071110.68321-1-sandie.cao@deepcomputing.io>
From: "Sandie Cao" <sandie.cao@deepcomputing.io>
Date: Tue, 31 Mar 2026 15:12:38 +0800
In-Reply-To: <20260331071110.68321-1-sandie.cao@deepcomputing.io>
Received: from roma-Laptop-12th-Gen-Intel-Core.. ([218.17.141.187]) by smtp.feishu.cn with ESMTPS; Tue, 31 Mar 2026 15:12:50 +0800
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[deepcomputing-io.20200927.dkim.feishu.cn:s=s1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[deepcomputing.io : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-282818-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sandie.cao@deepcomputing.io,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[deepcomputing-io.20200927.dkim.feishu.cn:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[deepcomputing-io.20200927.dkim.feishu.cn:dkim,canonical.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,deepcomputing.io:email,deepcomputing.io:mid]
X-Rspamd-Queue-Id: A151E3652B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the compatible string for the Deepcomputing fml13v05.
It's based on the SpacemiT K3 RISC-V SoC and is designed for the Framework
Laptop 13 Chassis, which has (Framework) SKU FRANHQ0001.

Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
Reviewed-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
---
v2:
   Use formal format user name.
---
 Documentation/devicetree/bindings/riscv/spacemit.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/spacemit.yaml b/Documentation/devicetree/bindings/riscv/spacemit.yaml
index b958b94a924d..af8030242bdc 100644
--- a/Documentation/devicetree/bindings/riscv/spacemit.yaml
+++ b/Documentation/devicetree/bindings/riscv/spacemit.yaml
@@ -29,6 +29,7 @@ properties:
           - const: spacemit,k1
       - items:
           - enum:
+              - deepcomputing,fml13v05
               - spacemit,k3-pico-itx
           - const: spacemit,k3
 
-- 
2.43.0


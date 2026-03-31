Return-Path: <devicetree+bounces-282761-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oM6xNL1Dy2l+FAYAu9opvQ
	(envelope-from <devicetree+bounces-282761-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 05:47:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8BF363BFC
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 05:47:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6AFDB301D247
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 03:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CADE28725A;
	Tue, 31 Mar 2026 03:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b="HyTzhb7b"
X-Original-To: devicetree@vger.kernel.org
Received: from va-2-29.ptr.blmpb.com (va-2-29.ptr.blmpb.com [209.127.231.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A6E1EF39E
	for <devicetree@vger.kernel.org>; Tue, 31 Mar 2026 03:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.127.231.29
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774928809; cv=none; b=f5YV0eWJEIKGYWRHz4ANyVDN4EoEarVQNjhwU/YvO8b+jqCpRU7RAuN2fEYax7xrddoU7sTTBGCNNuLUCsxEG2LFyZFGkNfrpjjZYjuit00sHRwxfUlQc9Z0C+3i9/PJbE+PcukZ3Yr/yCH27daPs7XzjdTIO8ZfVklf3leHhYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774928809; c=relaxed/simple;
	bh=DSx148ie2cdYVVTihZhnmpl0/0GKwVXfxSnMpwWHaGk=;
	h=Subject:Cc:Date:To:From:Mime-Version:Message-Id:Content-Type; b=j9YxTGvijQ4VVuImj8CuCxYpHffbDLRYLU7+RxKMPEIgNBd9Jl4ePWxbReFgcGBjBsFcTe4X/NSRk8r5Pv1njaPIZz1z5r01pysd2tXv/2Rp3esx7CEBBimUxwILsaqWGslcb10ul4PAx6BzJLI21A3a6fsrqkeBTiZneE1RhGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io; spf=pass smtp.mailfrom=deepcomputing.io; dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b=HyTzhb7b; arc=none smtp.client-ip=209.127.231.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deepcomputing.io
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=deepcomputing-io.20200927.dkim.feishu.cn; t=1774928682;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=uxHkUdFeg/FwNhES/kW73MVWxcRL8iwer3YLvVez//k=;
 b=HyTzhb7b/RkD6DuxO0T3sFM9vkwzchwHdkgenoZZXcNpCCr3OyztYnacAUjJSo4OUPj7tn
 Bq15KJCyQv1awjQcD9bfwCT1pBrX8IVpjgCZCROJM2Bdn/frQ4vbWUmQxkaVn6DCPI+EeX
 y3ZqvGaFg86446diohCVni3jVA3nt4a9TcS6VxlYdLeesknayF3a+m9/yOBjpx2l22F8Jh
 d9O6ohieLPRQrBFyKa6XFLFcZLa/AdWyPJNbKtKe7Sv57s1hIo8ziGSiFdIEyEihuyynGV
 BbCgcTD85nUFGYmkvzMXocRiCnICZkFFeZJrbJuJpMVANmM41lQyUeFvrIcUwg==
Subject: [PATCH v1 0/2]  Add DeepComputing FML13V05 board dts
X-Mailer: git-send-email 2.43.0
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
Date: Tue, 31 Mar 2026 11:44:23 +0800
X-Original-From: Sandie Cao <sandie.cao@deepcomputing.io>
X-Lms-Return-Path: <lba+269cb4328+68de03+vger.kernel.org+sandie.cao@deepcomputing.io>
To: "Conor Dooley" <conor+dt@kernel.org>
From: "Sandie Cao" <sandie.cao@deepcomputing.io>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Received: from roma-Laptop-12th-Gen-Intel-Core.. ([218.17.141.187]) by smtp.feishu.cn with ESMTPS; Tue, 31 Mar 2026 11:44:40 +0800
Message-Id: <20260331034423.67142-1-sandie.cao@deepcomputing.io>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8
X-Spamd-Result: default: False [1.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[deepcomputing-io.20200927.dkim.feishu.cn:s=s1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
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
	TAGGED_FROM(0.00)[bounces-282761-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sandie.cao@deepcomputing.io,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[deepcomputing-io.20200927.dkim.feishu.cn:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[deepcomputing-io.20200927.dkim.feishu.cn:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9B8BF363BFC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series updates Device Tree related files to introduce the
FML13V05 board from DeepComputing, which incorporates a Spacemit
K3 SoC.  This board is designed for use on the Framework Laptop 13
Chassis, which has (Framework) SKU FRANHQ0001.

The series is based on riscv-dt-for-next.

sandiecao (2):
  dt-bindings: riscv: spacemit: add deepcomputing,fml13v05
  riscv: dts: spacemit: add DeepComputing FML13V05 board device tree

 .../devicetree/bindings/riscv/spacemit.yaml   |  1 +
 arch/riscv/boot/dts/spacemit/Makefile         |  1 +
 .../spacemit/k3-deepcomputing-fml13v05.dts    | 28 +++++++++++++++++++
 3 files changed, 30 insertions(+)
 create mode 100644 arch/riscv/boot/dts/spacemit/k3-deepcomputing-fml13v05.dts


base-commit: 4a1739c30fc66a59450c1f78923f94607e786882
-- 
2.43.0


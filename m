Return-Path: <devicetree+bounces-282801-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOQmKuZ1y2k3HwYAu9opvQ
	(envelope-from <devicetree+bounces-282801-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 09:21:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B2836506B
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 09:21:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A5DC30C60EF
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 07:11:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A29B938F64F;
	Tue, 31 Mar 2026 07:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b="I3z1X0oU"
X-Original-To: devicetree@vger.kernel.org
Received: from va-2-35.ptr.blmpb.com (va-2-35.ptr.blmpb.com [209.127.231.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6DD37CD39
	for <devicetree@vger.kernel.org>; Tue, 31 Mar 2026 07:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.127.231.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774941097; cv=none; b=opHoiyfCN+jj8lRWsCwHtPwD19A/6mFZSoRirlpGoxe+swU74nHlQQ9N7VDffLLPuXn/fmhnfiPKGdYZVDkTKB2da5CuuF7MQ9W+x/xl0xGFnCuFoqT0wx8umIBFE+2OWzyC99RvSJiBiiXcAkzpDjIpHzgcAGn31qkVI4BE4vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774941097; c=relaxed/simple;
	bh=6LR+ts3dLqGyJz6RILMKXd4KXrMxxbWpZdEepXjEeDI=;
	h=Content-Type:To:Cc:From:Subject:Date:Message-Id:Mime-Version; b=QzNLfUNSdNSi1rfnB6kKjfZmvBkMUdf8xi+HBF86/zcCNzbMIt4SpWLCfhAysnot0WrA5ShDIdCtVklUmcFQEL4Io5N4ZHhDM0Ucoz59ejyh0ZNR9pcEXgVnnzIUXfX/fnKY7JZCnQ04PFCMMocyYmdX6LV+FMrNy3jpOljuMhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io; spf=pass smtp.mailfrom=deepcomputing.io; dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b=I3z1X0oU; arc=none smtp.client-ip=209.127.231.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deepcomputing.io
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=deepcomputing-io.20200927.dkim.feishu.cn; t=1774941091;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=8LvtcAgNW72TvNFdsfpCUs8GSOu6QxdCwl9yWGk2NyA=;
 b=I3z1X0oUMn66Yx9eaa3f5SMj3rgzRZMAn+/6fUKBfoVxzdIRhp2umo+iz9lBCx8CUP7y+R
 KDq/xQqeZGXSrkOD0w7kJwRTi9dhb3C35CVDRhhFPZPw1y0XIBB56gcaQR7qm9bqgLgOV/
 CMSy6mKEHRwW1/FfrMUpR7R9WfhM4rGf0tJc3Wbd9Bbza0MTHC5MXfgbQpw/jz3monHSGf
 aOkLszv6yBTQNw7kSlErKHFVYSyoKGBngpnmbrhE9tJINopUiRLyKaxYsi+iNb/cQyLG8j
 YYfbBPPezxwgIh1AS7ec+TfLrPzSfmT9BwldalnDXkqZUJi/jvXKscL6jFoGfw==
Content-Type: text/plain; charset=UTF-8
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
From: "Sandie Cao" <sandie.cao@deepcomputing.io>
Received: from roma-Laptop-12th-Gen-Intel-Core.. ([218.17.141.187]) by smtp.feishu.cn with ESMTPS; Tue, 31 Mar 2026 15:11:28 +0800
X-Lms-Return-Path: <lba+269cb73a1+48b46e+vger.kernel.org+sandie.cao@deepcomputing.io>
Subject: [PATCH v2 0/2] Add DeepComputing FML13V05 board dts
Date: Tue, 31 Mar 2026 15:11:10 +0800
Message-Id: <20260331071110.68321-1-sandie.cao@deepcomputing.io>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Original-From: Sandie Cao <sandie.cao@deepcomputing.io>
X-Mailer: git-send-email 2.43.0
X-Spamd-Result: default: False [1.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[deepcomputing-io.20200927.dkim.feishu.cn:s=s1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
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
	TAGGED_FROM(0.00)[bounces-282801-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sandie.cao@deepcomputing.io,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[deepcomputing-io.20200927.dkim.feishu.cn:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,deepcomputing-io.20200927.dkim.feishu.cn:dkim,deepcomputing.io:mid]
X-Rspamd-Queue-Id: 94B2836506B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series updates Device Tree related files to introduce the
FML13V05 board from DeepComputing, which incorporates a Spacemit
K3 SoC.  This board is designed for use on the Framework Laptop 13
Chassis, which has (Framework) SKU FRANHQ0001.

The series is based on riscv-dt-for-next.

v2:
- Patch 1:
   Use formal format user name.
- Patch 2:
   Use formal format user name.
   Add Reviewed-by from Troy Mitchell.

Link to v1: https://lore.kernel.org/all/20260331034423.67142-1-sandie.cao@deepcomputing.io/

Sandie Cao (2):
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


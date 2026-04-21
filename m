Return-Path: <devicetree+bounces-288949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MrkBDwc52k14AEAu9opvQ
	(envelope-from <devicetree+bounces-288949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 08:42:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DE743710A
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 08:42:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5A75F300B8C9
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 06:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D742E38736A;
	Tue, 21 Apr 2026 06:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b="0AbhKR9o"
X-Original-To: devicetree@vger.kernel.org
Received: from va-2-39.ptr.blmpb.com (va-2-39.ptr.blmpb.com [209.127.231.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E604390CB3
	for <devicetree@vger.kernel.org>; Tue, 21 Apr 2026 06:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.127.231.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776753675; cv=none; b=Jp8mS4kzTBUHDdy4fOXWJvVUAqHvxGr/aPEh3KAQHQhUfH3dJtcVnmYdZAg834HDDwrWKaXv6vME4yS5Ub9DUbS7K23//FrVwX/y9mSgE2mrJDzY6nbt3fycOJptk7XSLNOIkIhRk9VrZYYcvtcdOHEFhHemh5eqwQQm8rlgGjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776753675; c=relaxed/simple;
	bh=4csv3KgUsqp6S8xDiKhYe00qaOjZbEpf8B1tr592LPY=;
	h=From:Mime-Version:Content-Type:To:Cc:Subject:Message-Id:Date; b=QbJnbbze9b3LfCnIqxYeCJW850EDR9fIkVHsSOMAjTEoSZ91nSeq3NIsLmnGIJpAwsRgG5xn5v9I1SJGonEa/r2INKbx0T35BoiTET9wg1V6+ZyRW+ECIvxZkcPuJSjjPdaOm5WDP6+oERT/OxVPjanw9vmvvZvvvT3dF+PgT34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io; spf=pass smtp.mailfrom=deepcomputing.io; dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b=0AbhKR9o; arc=none smtp.client-ip=209.127.231.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deepcomputing.io
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=deepcomputing-io.20200927.dkim.feishu.cn; t=1776753662;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=bOD3EGcybYF59xsN+7vrNuVhjQ9htAdl90lQIE/I3Uc=;
 b=0AbhKR9odaVJolw2A8Cc6aTH9iBHe2iV9ySgdqEoYLkOsxcNLtbkyZZFbD1KnEcJiS6nDs
 Db5BImo4tpprx6TjSylDzjlCErenuu2HsLl9CONIfjcDFfS8qBjmzXUlujv7I6yTVvcN1i
 KJT0B0Ew5Te8KQs5cqXmPA6THFXZxJW4YsHkhyI42X9SwwHFS6ZCu2O99U2An7fSqHZMgQ
 Xhdi0Sc3n09RzzqmFFgRcmLD4REx4W2CBTNs7ROmRyt84HmxPlSpRwjPWCngt3SO669b/5
 7tvGTOEw3dtrEJ+otweCv/HtQohrP7NHzk6WnftWhIqfHtK/teUCAbeQjWDDOQ==
From: "Sandie Cao" <sandie.cao@deepcomputing.io>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Original-From: Sandie Cao <sandie.cao@deepcomputing.io>
Content-Type: text/plain; charset=UTF-8
To: "Yixun Lan" <dlan@kernel.org>, 
	"Troy Mitchell" <troy.mitchell@linux.spacemit.com>, 
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>
Cc: "Conor Dooley" <conor+dt@kernel.org>, "Rob Herring" <robh@kernel.org>, 
	"Paul Walmsley" <paul.walmsley@sifive.com>, 
	"Palmer Dabbelt" <palmer@dabbelt.com>, 
	"Albert Ou" <aou@eecs.berkeley.edu>, 
	"Michael Opdenacker" <michael.opdenacker@rootcommit.com>, 
	"Alexandre Ghiti" <alex@ghiti.fr>, "Guodong Xu" <guodong@riscstar.com>, 
	"Hendrik Hamerlinck" <hendrik.hamerlinck@hammernet.be>, 
	"Yangyu Chen" <cyy@cyyself.name>, <spacemit@lists.linux.dev>, 
	<linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>, 
	<linux-kernel@vger.kernel.org>, 
	"Sandie Cao" <sandie.cao@deepcomputing.io>
Subject: [PATCH v5 0/2] Add DeepComputing FML13V05 board dts
Message-Id: <20260421064021.1580094-1-sandie.cao@deepcomputing.io>
Received: from roma-Laptop-12th-Gen-Intel-Core.. ([113.110.140.180]) by smtp.feishu.cn with ESMTPS; Tue, 21 Apr 2026 14:40:58 +0800
X-Lms-Return-Path: <lba+269e71bfb+777a81+vger.kernel.org+sandie.cao@deepcomputing.io>
X-Mailer: git-send-email 2.43.0
Date: Tue, 21 Apr 2026 14:40:21 +0800
X-Spamd-Result: default: False [1.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[deepcomputing-io.20200927.dkim.feishu.cn:s=s1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[deepcomputing.io : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-288949-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sandie.cao@deepcomputing.io,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[deepcomputing-io.20200927.dkim.feishu.cn:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 30DE743710A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series updates Device Tree related files to introduce the
FML13V05 board from DeepComputing, which incorporates a Spacemit
K3 SoC.  This board is designed for use on the Framework Laptop 13
Chassis, which has (Framework) SKU FRANHQ0001.

The series is rebased on next-20260420.

v5:
rebased on next-20260420.

v4:
- Patch 1:
  Add Acked-by Conor Dooley.
- Patch 2:
  Copyright begins from 2026.
Link to v4: https://lore.kernel.org/all/20260413060524.1235982-1-sandie.cao@deepcomputing.io/

v3:
rebased on k1/dt-for-next.
- Patch 1:
   Use formal format user name.
   Remove Reviewed-by Heinrich Schuchardt from internal system.
- Patch 2:
   Use formal format user name.
   Remove Reviewed-by Heinrich Schuchardt from internal system.
   Add uart0 pinctrl.
Link to v3: https://lore.kernel.org/all/20260407055557.1202713-1-sandie.cao@deepcomputing.io/
 
v2 (deprecated):
Link to v2: https://lore.kernel.org/all/20260331071110.68321-1-sandie.cao@deepcomputing.io/

v1:
Link to v1: https://lore.kernel.org/all/20260331034423.67142-1-sandie.cao@deepcomputing.io/

Sandie Cao (2):
  dt-bindings: riscv: spacemit: add deepcomputing,fml13v05
  riscv: dts: spacemit: add DeepComputing FML13V05 board device tree

 .../devicetree/bindings/riscv/spacemit.yaml   |  1 +
 arch/riscv/boot/dts/spacemit/Makefile         |  1 +
 .../spacemit/k3-deepcomputing-fml13v05.dts    | 31 +++++++++++++++++++
 3 files changed, 33 insertions(+)
 create mode 100644 arch/riscv/boot/dts/spacemit/k3-deepcomputing-fml13v05.dts


base-commit: 97e797263a5e963da3d1e66e743fd518567dfe37
-- 
2.43.0


Return-Path: <devicetree+bounces-275837-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AXZCi0Et2k3LgEAu9opvQ
	(envelope-from <devicetree+bounces-275837-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 20:10:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F478292305
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 20:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EF43300D69B
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 19:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D52E370D71;
	Sun, 15 Mar 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nwo7VzHV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5CE35DA4D;
	Sun, 15 Mar 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773601834; cv=none; b=JNv0mSE7qSfRbB56WI4kKYUIptSQDJk1naE/xeEeJ5BWosYHMDdHN5h0IDLTAdtZNVg3xxOBpAS0Lmup5od9e9eeLbBQJ2otgZh6qToAVrNxj11hXLrN1kkzveXByB/D9sZLNaxVRzW+bq7yOtOgcBNfmCLhCYrXKCP5N1JGmq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773601834; c=relaxed/simple;
	bh=IthiWArBSLDgAMO0bvZ9kc3iO/llybx5j9goMv6GKII=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=jegABvDX/DZOQ1U1I9liHJ6TYgQ0uc9zFdySF0V6V3Dg2Y/VBEoJ4YsiqyArmIYzZzg0vzYxKri0033lI8Ya7S+z+AbzRJyKru70Vhr2MNo97hK1kwAiNQHaHqnnOhnXHXYlMzblLMp7CB0QGuselzE6+z2Ph2Hfu3m+cXgiOZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nwo7VzHV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7545C4CEF7;
	Sun, 15 Mar 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773601834;
	bh=IthiWArBSLDgAMO0bvZ9kc3iO/llybx5j9goMv6GKII=;
	h=Date:From:To:Cc:Subject:From;
	b=Nwo7VzHVJgyoCQvU4OxaefNjEGgkRLBJg94h5tYV62b9QvA+AKnYOKQds31SCdr1v
	 YhMsvP7NP3hB/OubbhR4JEisMZT/BC9OMiymAaJM1tIen5gN9fXQbGDan8aca3K78b
	 +4kHHiIv3M4qYCqkIWRkFRxmtKAEvAp5MnKN4cNl6wamBfgSWWex4Ph1H2mL+c9KNm
	 44ZB/82qdCSzUH7lTfY6Vvcu0vsV1jiwwIzUjKxMs2AISAYhwA/e8rL/hOKQZ9IXuR
	 PAnNj1/RdQ6EOc9e5eRcQ+eRdJVT8E3lw7Iult/6fAmjJrOerOJc+QpCIDwHom++uR
	 RrNLZHiT9UzDQ==
Date: Sun, 15 Mar 2026 12:10:32 -0700
From: Drew Fustini <fustini@kernel.org>
To: soc@kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>, Krzysztof Kozlowski <krzk@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Linus Walleij <linusw@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Conor Dooley <conor+dt@kernel.org>,
	Michal Wilczynski <m.wilczynski@samsung.com>,
	Yao Zi <ziyao@disroot.org>, Han Gao <rabenda.cn@gmail.com>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [GIT PULL] RISC-V T-HEAD Devicetrees for v7.1
Message-ID: <abcEKCNIA9wDgIcE@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275837-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[arndb.de,kernel.org,bootlin.com,icenowy.me,iscas.ac.cn,redhat.com,samsung.com,disroot.org,gmail.com,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 8F478292305
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The following changes since commit 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f:

  Linux 7.0-rc1 (2026-02-22 13:18:59 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git tags/thead-dt-for-v7.1

for you to fetch changes up to 9c99a784d9117a192ebf779d4f72ebec435ada97:

  riscv: dts: thead: lichee-pi-4a: enable HDMI (2026-03-14 09:19:26 -0700)

----------------------------------------------------------------
T-HEAD Devicetrees for 7.1

Update the T-Head TH1520 RISC-V SoC device tree to support the
Verisilicon DC8200 display controller (called DPU in manual) and the
Synopsys DesignWare HDMI TX controller. In addition, enable HDMI output
for the LicheePi 4a board.

Signed-off-by: Drew Fustini <fustini@kernel.org>

----------------------------------------------------------------
Icenowy Zheng (2):
      riscv: dts: thead: add DPU and HDMI device tree nodes
      riscv: dts: thead: lichee-pi-4a: enable HDMI

 arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts | 25 +++++++++
 arch/riscv/boot/dts/thead/th1520.dtsi             | 66 +++++++++++++++++++++++
 2 files changed, 91 insertions(+)


Return-Path: <devicetree+bounces-256369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3D7D38D9A
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 11:12:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9CAF3300BF9E
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 10:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9694B335BC0;
	Sat, 17 Jan 2026 10:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pigmoral.tech header.i=junhui.liu@pigmoral.tech header.b="ExwOTSWX"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o15.zoho.com (sender4-op-o15.zoho.com [136.143.188.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E224A2EC0A6;
	Sat, 17 Jan 2026 10:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768644744; cv=pass; b=u+C6PaHXieRVEOcRX1Ep5L9TwN+qhfWsizNASeFKCO4aKsLPlpjLCS031xMhCSTQSMrqtaD3TxjfWdvdfAFAA7+J9/xiE0hZ83clKi+eT7/ARCKOa/41exD+r74G6vEmWDNyISIbApZSG/x1F0cHt8JfTSIdjl9Xa91L34S1ivM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768644744; c=relaxed/simple;
	bh=EBd7vuZH/NuJ1kZjzpbMFqVX/g4GbrEHtDkM4v2oZFY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=CJ5AFPIK8ky28IKmeJNfaAu4tfMQKTYlWqKkNOpqiHKkqNjUvMIjIP9vG1O/gwreiQ81F9S4G3r/fF0lSxqKVJhGPAWIfIq3wkk4+DrixrnEIZWTacRbhJuu56lCXfuKhgmO8gqM6rVSl7WBMZLgVc6i1jRPV4fVOy2xmEiJkxw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pigmoral.tech; spf=pass smtp.mailfrom=pigmoral.tech; dkim=pass (1024-bit key) header.d=pigmoral.tech header.i=junhui.liu@pigmoral.tech header.b=ExwOTSWX; arc=pass smtp.client-ip=136.143.188.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pigmoral.tech
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pigmoral.tech
ARC-Seal: i=1; a=rsa-sha256; t=1768644714; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ZQ0m4FXVJikOf4Wr7pOo6ZKu/+hmKwJmP+LyAlGz0A0zoUh5CpMp1BWBNEKtyC/ctfmghF01ut3YpQHhk9TyR0rUF+xNmpOLEowv0C1Gr0YiGBAy9pwiKeeHVBpQNteffi1rwIifY4lNWk1JROeug2zM1IlCD2YeUjZoD0TZW7g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768644714; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=4jerQzMS1Ru7y2iLy77NguLWgZaeMtwSiHvpfO6DDW8=; 
	b=FAXMtP1nMwwip0IsvKb9eNNoww5hy07lxR0aWMXeGMUQllsrXVwlc6uYg+R2EnwqS16uu8Rbt3I3gUl8JEXx8CWu+n40P1pvMYeM+ZHP3YHuxIoGRLaacS9Y/G+QdB++Y+2kxEiUDS4yiAo3VN27s+CXa5gtRqlFzDLzVCJ90S4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=pigmoral.tech;
	spf=pass  smtp.mailfrom=junhui.liu@pigmoral.tech;
	dmarc=pass header.from=<junhui.liu@pigmoral.tech>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768644714;
	s=zmail; d=pigmoral.tech; i=junhui.liu@pigmoral.tech;
	h=From:From:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:To:To:Cc:Cc:Reply-To;
	bh=4jerQzMS1Ru7y2iLy77NguLWgZaeMtwSiHvpfO6DDW8=;
	b=ExwOTSWXmLCQrhh5dJQ7Wh57E3i1Sh976SjwENiaRWUtDdYTyTy72BMm7+jRjNmD
	5iJBlRQ02a98pezYeGisVl+Jn6RsoNKNkwRqvKdae1ExrDWUOUftOYf6/uM9PcuSJak
	Ey2YDYIcTabiCNDcfgxNllNJKHNCv4G47IlLqN3Y=
Received: by mx.zohomail.com with SMTPS id 1768644712178870.661647059417;
	Sat, 17 Jan 2026 02:11:52 -0800 (PST)
From: Junhui Liu <junhui.liu@pigmoral.tech>
Subject: [PATCH 0/2] riscv: canaan: enable reset controller for K230 SoC
Date: Sat, 17 Jan 2026 18:06:21 +0800
Message-Id: <20260117-k230-reset-dt-v1-0-c8cbaef1e1ac@pigmoral.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MTQqAIBBA4avIrBvwD8OuEi0kpxqCCo0IxLsnL
 b/FewUyJaYMgyiQ6OHM59GgOgHzFo6VkGMzaKmdVKrHXRuJiTLdGG80zlnjbZQ+BGjNlWjh9/+
 NU60f9TORwl8AAAA=
X-Change-ID: 20260117-k230-reset-dt-3664394d09aa
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 Junhui Liu <junhui.liu@pigmoral.tech>, Conor Dooley <conor@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768644706; l=844;
 i=junhui.liu@pigmoral.tech; s=20251228; h=from:subject:message-id;
 bh=EBd7vuZH/NuJ1kZjzpbMFqVX/g4GbrEHtDkM4v2oZFY=;
 b=givw5Ua/ZPxYG9DvZcLqKtnns5Frih6MiRQiLyrcHS5WNH+z6crLWQIYCG9uFLEDk9h8u8irZ
 3sBAby42U6wCv9N06QiEiB6JiQtXSZvRZlPUPL68J5PEXaLZDLWJNdD
X-Developer-Key: i=junhui.liu@pigmoral.tech; a=ed25519;
 pk=3vU0qIPJAH8blXmLyqBhKx+nLOjcLwwYhZXelEpw7h4=
X-ZohoMailClient: External

Enable the reset controller for the Canaan K230 SoC by setting the
driver to be selected by default and adding the reset controller node
to the device tree. The reset controller is essential for development of
other peripherals.

This is based on the k230-basic branch [1].

Link: https://git.kernel.org/pub/scm/linux/kernel/git/conor/linux.git/h=k230-basic [1]
---
Junhui Liu (2):
      reset: canaan: k230: drop OF dependency and enable by default
      riscv: dts: canaan: add reset controller for K230

 arch/riscv/boot/dts/canaan/k230.dtsi | 12 ++++++++++++
 drivers/reset/Kconfig                |  2 +-
 2 files changed, 13 insertions(+), 1 deletion(-)
---
base-commit: 337616aad69b2fb38b3024b5e2531f7e1739570d
change-id: 20260117-k230-reset-dt-3664394d09aa

Best regards,
-- 
Junhui Liu <junhui.liu@pigmoral.tech>



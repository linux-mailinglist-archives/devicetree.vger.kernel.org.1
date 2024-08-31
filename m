Return-Path: <devicetree+bounces-98711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B65EB967124
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 13:13:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73E292810A5
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 11:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28CD417DE16;
	Sat, 31 Aug 2024 11:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="e7rdhy7y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-0201.mail-europe.com (mail-0201.mail-europe.com [51.77.79.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B43E17E011
	for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 11:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.77.79.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725102782; cv=none; b=vAdZ8cHXD1Er3cHUEuDy9Bw9qBYL7UXuqtYSwAsJhUs6fDh4UcgXkgNrMqyHwV4f5dZ9ORllbZzvEwJL5KkMVumfuWzv1EY+BRagCLxlYUgtE1iOdVAAVNBer9GQfQHS69wKgyXPBOG48EUhikaZ9VU74VWyk54p9rBEamb7LZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725102782; c=relaxed/simple;
	bh=4ISkToId8X+ha5nIzzORWuecwVvKZZ2gSCD1N62vRi0=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=SPs1iXu57RB5SO27/TmwdoLALqz9A9EXxcmTHuoYxBd4FtdV+rDXjV2ARt4MoWKKvLcc0T3eJAhMGwMeYl4RocGXx1SCNgOBmcdK7Br7QssSR71Z41OR8w7Ypg4gjF9rRpeAMjMJKvIeCYXnVQtDORvT013qCAMnnnBeWKYwVvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=e7rdhy7y; arc=none smtp.client-ip=51.77.79.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1725102765; x=1725361965;
	bh=Dols8a+z76GM/RLMd5BUNqT9/WON4qjk7rpO6N/5q0M=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=e7rdhy7yK1V4GQuAs0e9ZrPvKzJ82M1QXMdRs2aFPeGztEOsyxJxtUi/tabHKpOlV
	 4/F9Z3mrM5Cr+Vw6eJDQzjK1VvUY13xrbUMo1YBV6rFefYzxZt1K1/jlhqnmQA9fcv
	 XCYiirYxY0mdEMX2CNwmosrz419G6+tsoiV9Z5gkDegHcJQieXB3DsuZeKnLWCUT6O
	 DNhoNSu8nCLN7enwunNyZjmmoM0IF89p6c+PqQEwzfGo0L/aawoUvWmLQqWAK9w2TC
	 neOFmQIEkQ4jtRSY1PvgwIq7G2wjEgRGR9DkM4vsrSyzAc4S1dI2IrFK01sQxN5r7X
	 DfFzme22S4E9A==
Date: Sat, 31 Aug 2024 11:12:42 +0000
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>
From: Harry Austen <hpausten@protonmail.com>
Cc: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Harry Austen <hpausten@protonmail.com>
Subject: [PATCH 0/6] clk: clocking-wizard: modernize probe
Message-ID: <20240831111056.3864-1-hpausten@protonmail.com>
Feedback-ID: 53116287:user:proton
X-Pm-Message-ID: 6bb30e44e4ae9f6e2fe7232420e2983d9a9c7846
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Improve utilised clk/notifier APIs, making use of device managed versions
of functions and make dynamic reconfiguration support optional (because it =
is
in hardware).

This is currently untested on hardware, so any help testing this would be
much appreciated!

This patchset is based on a previous one [1] ([PATCH v3 0/9] clk:
clocking-wizard: add user clock monitor support), whereby I was attempting =
to
add support for the user clock monitor functionality. Those three patches (=
DT
binding, clk driver and UIO driver) have now been removed, with the intenti=
on of
getting these simpler tidyup changes merged first, while reworking the desi=
gn of
the user clock monitor support. These remaining six patches are unchanged f=
rom
the aforementioned patchset.

[1] https://lore.kernel.org/20240826123602.1872-1-hpausten@protonmail.com

Harry Austen (6):
  clk: clocking-wizard: simplify probe/remove with devres helpers
  clk: clocking-wizard: use newer clk_hw API
  clk: clocking-wizard: use devres versions of clk_hw API
  clk: clocking-wizard: move clock registration to separate function
  dt-bindings: clock: xilinx: describe whether dynamic reconfig is
    enabled
  clk: clocking-wizard: move dynamic reconfig setup behind flag

 .../bindings/clock/xlnx,clocking-wizard.yaml  |   7 +
 drivers/clk/xilinx/clk-xlnx-clock-wizard.c    | 281 ++++++++----------
 2 files changed, 128 insertions(+), 160 deletions(-)

--=20
2.46.0




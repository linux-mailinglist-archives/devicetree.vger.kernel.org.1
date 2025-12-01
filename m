Return-Path: <devicetree+bounces-243320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AF94DC96C0A
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:53:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 21B234E2303
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76125304BCA;
	Mon,  1 Dec 2025 10:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="p1PiVHlq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay19-hz1.antispameurope.com (mx-relay19-hz1.antispameurope.com [94.100.132.219])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044693043D7
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 10:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.219
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764586386; cv=pass; b=AaxELGN3n/FXyPt79jMqMp3xMYmLcc8ebFMdvFXJCuulzcJ0AlTB5ZPWvbOnO2wptNZXWYeL60ajWirOl1QQ+J1LRvM7bxiBPEAEfztDL+90W1j40aoTNutKx4Vvrvcat2BvBVGLuOHAFrl8vNbsulhnfow7dIAmnF9flgJ0y3A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764586386; c=relaxed/simple;
	bh=j5PeCcwNp5sMBjLNs3zde8ahharoQ3/F4X72VmxDAAc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jEyBkeo1HmF1CuG0hDvAZUhyMTOi0VOsh+4ynbdRdXW2QuEMoPxPeP0Cf5b1G0L3hmy09V1HS02urqOm2U7ORB2ct16EDml2rXniDY2pGbp6ThSibtJaKl1HFJ9rO+fBwCXSg5yxulIsTj4ZieY80sNnFqD2RsnupYx9rieI3SE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=p1PiVHlq; arc=pass smtp.client-ip=94.100.132.219
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate19-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=K96yAKM+xcrHhzOcR0zBqIliZQSixR1YCX/rN6x1xxY=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1764586320;
 b=fS5hrfhy7J9n7Ayl5TDMImhPDLzILsTRmwwiAf4UrE/UZl8Lndl3TID/968WBtMM8uw7mV3r
 +3MM0pCdY3+fq6YpUtXKTf9/KFRUzVqs9gAnrIZhphcyoK9QcFNUsFmfKkQ+Adoy1YigPt0ASCX
 VOaNczb28dd+uWl+kpEfCN6CnA+qZVJgo5Ou93h0beqmOafmgCxrxPrajWRvHSMBTeuQKrg2Gjp
 kCfAyIFrF7TvOZ4FgB7oz74lZhmcNgkSJnrzSzFUCeSuObS/T1PF6pnXu184gTqfkBdV9LtddGX
 Du545FgsY+LtEyLUSzEjD1XLXlkeP1AvELcx0TT3C3UjA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1764586320;
 b=UBFaLubd8Z3+oYJPEVXN3Q2j4C48sTTjN36SgkrgtYV+mrB3e5nLZz4NT0ZancNV2PaBgPab
 zAfD3M+SLunFxq9+YFDp6XGjJEc+ZXJNZYsqZUA0aKKGYINU+i7Z7FYapM3nkfCodHeKIvpd6xZ
 jqqZKTs8rvDZwQCacUmYWs/P/zjvjehS6QfuyofZvqoCl4pQqz6F6fJuoolty3vfJOw/wEk2+RM
 1kZ+AyzxF2vvfnzoPhY5lChmJKT+8pgwuPP3gcpZFcJOe1F2H3NP37ty5Tb+Ge+Ta+uzPCvrx8F
 uvnutjFK9ecg6YhXjetx9P9I/v5R6hNtJeEVBaGwH+lVQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay19-hz1.antispameurope.com;
 Mon, 01 Dec 2025 11:52:00 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id AA9ADCC0DC2;
	Mon,  1 Dec 2025 11:51:52 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Paul Walmsley <pjw@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [RFC PATCH 0/3] ls-extirq platform device conversion
Date: Mon,  1 Dec 2025 11:51:39 +0100
Message-ID: <20251201105144.539450-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay19-hz1.antispameurope.com with 4dKgh927gRz3DJLr
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:690fad471cfd5f66c6a94f5d6552821d
X-cloud-security:scantime:1.904
DKIM-Signature: a=rsa-sha256;
 bh=K96yAKM+xcrHhzOcR0zBqIliZQSixR1YCX/rN6x1xxY=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1764586319; v=1;
 b=p1PiVHlqG//Y9LQ6WV3cv1VCsiAtwXuuZo7P3mTfADv9p1q65yRySPPz1fd5fEZKyTY6zn5W
 rrH6uAUL3rU0e1smOvOep8rsNg9soXAiUq49qS2idv8ZeffrYct/tHRIR9QqQOOr3Ra32FInTAN
 EiOnoGVEy8GnzZs4EclBI/VFN3Y2CxH9srYsuuSAal1uGxSlHHMgYiGnXwoyaSU60pK9558S0zU
 o/E+d4epvYbdN6OFjbEwxhwER2s+MMV2lJ0bfIkTlO5FnLRcrMayFyc+rWUdM1myKUcfCJbhf8t
 fy59AieN9HbL42O8z3FUu/vXtv8bjrQmAWEcEF/3loFqg==

Hi,

this RFC tried to address the problem that sometimes at time of probing the
parent IRQ domain is not yet ready. This results in the error message:
> irq-ls-extirq: Cannot find parent domain
> OF: of_irq_init: Failed to init /soc/syscon@1f70000/interrupt-controller@14
>  ((____ptrval____)), parent 0000000000000000

Probe deferral is only possible having a platform device so the driver is
converted accordingly. It is inspired by commit 8ec99b033147e
("irqchip/sifive-plic: Convert PLIC driver into a platform driver").

Because the interrupt-controller@1f70014 is a child of a syscon node, it is
not probed after platform device conversion. So it has to be moved outside.
This DT change has to be done for all layerscape SoC .dtsi
This is an incompatible change and I don't really know how to address that for
now. I've done it for LS1088A as a proof-of-concept for now.

Comments if this is the way to go or a different approach is more suitable
are very much welcome.

Best regards,
Alexander

Alexander Stein (3):
  irqchip/ls-extirq: Convert to platform driver
  irqchip/ls-extirq: Use managed resources
  arm64: dts: ls1088a: Move extirq outside of syscon

 .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 42 +++++------
 drivers/irqchip/irq-ls-extirq.c               | 75 +++++++++----------
 2 files changed, 56 insertions(+), 61 deletions(-)

-- 
2.43.0



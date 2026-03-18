Return-Path: <devicetree+bounces-277214-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFGKE3qkumlraAIAu9opvQ
	(envelope-from <devicetree+bounces-277214-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:11:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E15142BBFA8
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:11:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B0734301C16C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:11:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 671BB3D75B3;
	Wed, 18 Mar 2026 13:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=temperror (0-bit key) header.d=dev.tdt.de header.i=@dev.tdt.de header.b="JVxpkp4e"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout70.expurgate.net (mxout70.expurgate.net [194.37.255.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9D743D6474;
	Wed, 18 Mar 2026 13:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.37.255.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773839467; cv=none; b=nqZCQ3ET5A0PIrKGkT++8jyL0wErVETokLPtQfRmu9mDvlA9W/0/1p0KIvPy1t/wBuU1KcYuOQUKAPdG8REwEL4kxzWSbDDQfDDX473m+GQruAul9QUxdivuyGjlp5Q+zZepmEqm1kMQoLpSfYQtzci6vh4fnioQ6klCCXrNKXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773839467; c=relaxed/simple;
	bh=AfcmW60M1zpVyd7TLtEsUX3qIL9gm1t11+9fJXv89ak=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:Cc; b=kyx5L0+2VFyycLmBRL06QzIJrEDubO+9Ncct3Kg1qc+4NxLiDT/dTtbQKbC+qtaBZemjtAkwVwhI/erz6/QT+Yw435W15N8Zj1iS7eFzu0fxE+lnv8DAPAU1D8IdueBjXN8lXEG5jqeW81hHdc7h1Zy5wOooZk9fKvy8JrwN0ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dev.tdt.de; spf=pass smtp.mailfrom=dev.tdt.de; dkim=temperror (0-bit key) header.d=dev.tdt.de header.i=@dev.tdt.de header.b=JVxpkp4e; arc=none smtp.client-ip=194.37.255.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dev.tdt.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dev.tdt.de
Received: from [194.37.255.9] (helo=mxout.expurgate.net)
	by relay.expurgate.net with smtp (Exim 4.92)
	(envelope-from <prvs=5551b3f26e=fe@dev.tdt.de>)
	id 1w2qfp-004XtX-2f; Wed, 18 Mar 2026 14:10:57 +0100
Received: from [195.243.126.94] (helo=securemail.tdt.de)
	by relay.expurgate.net with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <fe@dev.tdt.de>)
	id 1w2qfo-004Xsj-BZ; Wed, 18 Mar 2026 14:10:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dev.tdt.de;
	s=z1-selector1; t=1773839455;
	bh=OAIarF0oUEttIkU9rU2zqxceXr2gRDxmVjj6vOOYdxA=;
	h=From:Subject:Date:To:Cc:From;
	b=JVxpkp4eh852JMVFW7xC0MKdFAEYCo2XA84J3FFdUHdLsDqFGQd33obmXX6BwVOcn
	 PzWPStR4oWEcVMdMJa/kIoiRIVqcj2fgvfIG1HzmLT+ohRSH3Fb/tduYkKBB3qbuMK
	 WOXtCtkIyyVwJsdcr3PrZBJcPoiFoQSCPTBEpg3LbOkIGolx7st+QQCFm5HnGhX4RS
	 Va8aGwRF7ovB0KUB/YPX4cu/xFUY1EaDrn++qAA/V+ELo0yxxGp9wtAqBANNFL/IN/
	 t3FlFiz0BFXTsF0LUZp1J16Jmhdk4fMm0XVW1snQ0yQfYL9HqmL7HjNFwoiOnws4wx
	 x2WfCYRpk7PFw==
Received: from securemail.tdt.de (localhost [127.0.0.1])
	by securemail.tdt.de (Postfix) with ESMTP id D6ED1240040;
	Wed, 18 Mar 2026 14:10:55 +0100 (CET)
Received: from mail.dev.tdt.de (unknown [10.2.4.42])
	by securemail.tdt.de (Postfix) with ESMTP id C8A03240036;
	Wed, 18 Mar 2026 14:10:55 +0100 (CET)
Received: from [10.2.3.40] (unknown [10.2.3.40])
	by mail.dev.tdt.de (Postfix) with ESMTPSA id CAC7723651;
	Wed, 18 Mar 2026 14:10:51 +0100 (CET)
From: Florian Eckert <fe@dev.tdt.de>
Subject: [PATCH 0/2] Add MSI driver support for the Lightning Mountain SoC
Date: Wed, 18 Mar 2026 14:10:39 +0100
Message-ID: <20260318-irq-intel-soc-msi-v1-0-0e8cdf844fa8@dev.tdt.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-B4-Tracking: v=1; b=H4sIAFCkumkC/x3MQQqAIBBA0avErBvQBKWuEi3CphooLScikO6et
 HyL/zMIJSaBrsqQ6GbhGAp0XYFfx7AQ8lQMjWqsMtohpxM5XLShRI+7MLbWOO+sGrVXULoj0cz
 P/+yH9/0A19DH9mMAAAA=
X-Change-ID: 20260317-irq-intel-soc-msi-9637c760a1c0
To: Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Florian Eckert <fe@dev.tdt.de>, Eckert.Florian@googlemail.com,
	ms@dev.tdt.de
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773839451; l=1257;
 i=fe@dev.tdt.de; s=20260205; h=from:subject:message-id;
 bh=adaghvbiVJ+8OY8+X28mxXF7JdPiPRNDNcU52se4IFc=;
 b=Z+yBy1VaPaQW6L+fIonge2vn+1gCE8sTOy3zSSDFH8fPYIluqWwOhVAoeyjGjH5t+EicH920L
 hCZ8Mm51nq9DvXrela9hRKo89kZeZ6rEG/HACjHDCsMxIp9nFdVpMkE
X-Developer-Key: i=fe@dev.tdt.de; a=ed25519;
 pk=q7Pvv3Au2sAVRhBz5UF7ZqUPNxUwXQ78Jdqu8E6Negk=
Content-Transfer-Encoding: quoted-printable
X-purgate-type: clean
X-purgate: clean
X-purgate-ID: 151534::1773839457-01CBD118-0F3B6F2B/0/0
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[tdt.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[dev.tdt.de:s=z1-selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,maxlinear.com:url,dev.tdt.de:dkim,dev.tdt.de:mid];
	DKIM_TRACE(0.00)[dev.tdt.de:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,dev.tdt.de,googlemail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277214-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fe@dev.tdt.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: E15142BBFA8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Lightning Mountain (LGM) does have an MSI irqchip connected to the
x86 vector domain. This series adds the driver and the devicetree binding
for this MSI IP core.

Maxlinear acquired Intel=E2=80=99s Home Gateway Platform Division (former=
ly Lantiq)
in 2020. The following SoCs do have this IP core [1].

* URX851
* URX850

The source files were extracted from the Maxlinear open-source kernel,
which is publicly available on GitHub [2].

[1] https://www.maxlinear.com/anywan
[2] https://github.com/maxlinear/linux/blob/updk_9.1.90/drivers/irqchip/i=
rq-intel-soc-msi.c

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
Florian Eckert (2):
      dt-bindings: Add Lightning Mountain MSI interrupt controller bindin=
gs
      irqchip: Add Lightning Mountain irqchip support

 .../interrupt-controller/intel,soc-msi.yaml        |  45 +++
 drivers/irqchip/Kconfig                            |  12 +
 drivers/irqchip/Makefile                           |   1 +
 drivers/irqchip/irq-intel-soc-msi.c                | 338 +++++++++++++++=
++++++
 4 files changed, 396 insertions(+)
---
base-commit: f338e77383789c0cae23ca3d48adcc5e9e137e3c
change-id: 20260317-irq-intel-soc-msi-9637c760a1c0

Best regards,
--=20
Florian Eckert <fe@dev.tdt.de>



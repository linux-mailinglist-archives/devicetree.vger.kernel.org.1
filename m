Return-Path: <devicetree+bounces-283397-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOVgO8DnzGk/XwYAu9opvQ
	(envelope-from <devicetree+bounces-283397-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 11:39:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E524377CEC
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 11:39:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DCA8630DAE62
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 09:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D8403D1CD1;
	Wed,  1 Apr 2026 09:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=temperror (0-bit key) header.d=dev.tdt.de header.i=@dev.tdt.de header.b="oXA609XK"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout70.expurgate.net (mxout70.expurgate.net [194.37.255.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9603C9EC2;
	Wed,  1 Apr 2026 09:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.37.255.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775035916; cv=none; b=Cj99McRaR/uObh+MMsKBuMubTDE1m37g3tpi56CfnPbN9xe2/YFMcamR1o8WShXrmzYdRs05fxmLjYRt+pkMlUBFek1DQXZtE4bdIpDAi5KdXEv3jvyP0yWAPQ5u3ccd/m8WoG41y991rvbnIdTem+GM7ywCIev0HgDmxwJH0Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775035916; c=relaxed/simple;
	bh=C1QdyaYkBCLHlV6/TVcWAipouq6TY/jNjHGgn2cJb0A=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:Cc; b=JlNhSvyBWhESmuwHhUWrF8A5vMTv191RQaIL1IlyNXvylvp07GSbIh+Lr5Ap7oz6iOk7EDxHHgHrcbPCrLj9wAVvJsDTo/fS0vb3V5p0ulmZ4XkIj349wsxJzmRU02//EhCSti7wP+C2KVIx7zqwFO9qAC4/EY1cDaTZ/CZM7no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dev.tdt.de; spf=pass smtp.mailfrom=dev.tdt.de; dkim=temperror (0-bit key) header.d=dev.tdt.de header.i=@dev.tdt.de header.b=oXA609XK; arc=none smtp.client-ip=194.37.255.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dev.tdt.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dev.tdt.de
Received: from [194.37.255.9] (helo=mxout.expurgate.net)
	by relay.expurgate.net with smtp (Exim 4.92)
	(envelope-from <prvs=65659f006e=fe@dev.tdt.de>)
	id 1w7rvL-001Sxm-WA; Wed, 01 Apr 2026 11:31:44 +0200
Received: from [195.243.126.94] (helo=securemail.tdt.de)
	by relay.expurgate.net with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <fe@dev.tdt.de>)
	id 1w7rvL-00CBEC-Ag; Wed, 01 Apr 2026 11:31:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dev.tdt.de;
	s=z1-selector1; t=1775035902;
	bh=k82b7Q9ZxkbSziPut1ZJ5XmmbEFemt99xrHlDBEd1MI=;
	h=From:Subject:Date:To:Cc:From;
	b=oXA609XKsMNwlTNO7NjdOOSMfi+sf7kBmQhFfJpcdoS3bqQgDrpoE7iUoY3qoyNKJ
	 0vE7Z7VX05NrYDMXXUcc3P4XhIdfeg1U6GXdWx18me4cHYS0bJFQHQKzx9q6IvG2mA
	 Nop0D/wOKZ+fzU77pyqWsX1vRk9gaSnzL7fEkwbGtq/VTb+f5TSCkX36FB5WoVYjsC
	 8WEEYCDx3wcyKTiKqJ3WppY9UladP5OLUM1a/sAu2nBreLNDUiqMmKrAefzOrwK4rD
	 XKxnMcg9MUpL9EvRE5nkE5xm453VLRcH4sT2Nu/7Gw0Js0Db84g3Ns5OCoDO2aho61
	 MbmlXtj4D+Gtw==
Received: from securemail.tdt.de (localhost [127.0.0.1])
	by securemail.tdt.de (Postfix) with ESMTP id CC4C8240041;
	Wed,  1 Apr 2026 11:31:42 +0200 (CEST)
Received: from mail.dev.tdt.de (unknown [10.2.4.42])
	by securemail.tdt.de (Postfix) with ESMTP id B8467240036;
	Wed,  1 Apr 2026 11:31:42 +0200 (CEST)
Received: from [10.2.3.40] (unknown [10.2.3.40])
	by mail.dev.tdt.de (Postfix) with ESMTPSA id 2729423C79;
	Wed,  1 Apr 2026 11:31:42 +0200 (CEST)
From: Florian Eckert <fe@dev.tdt.de>
Subject: [PATCH v3 0/7] PCI: intel-gw: Fixes to make the driver working
 again
Date: Wed, 01 Apr 2026 11:31:36 +0200
Message-ID: <20260401-pcie-intel-gw-v3-0-63b008c5b7b2@dev.tdt.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPjlzGkC/3WMQQ6CMBAAv2J6tqS7VQqe/IfxgHQLmxggbVM1h
 L9bOKmJx5lkZhaBPFMQp90sPCUOPA4Z9H4n2r4ZOpJsMwtUWCoNRk4tZzdEusvuIY+qVgigXU0
 gcjN5cvzcfpdr5p5DHP1r2ydY7b9TAqmkcQTaYNnYgztbSkW0sbAk1lXCj1yr3xxzXt2sMro0D
 dbVV74syxtx7cSt6gAAAA==
X-Change-ID: 20260317-pcie-intel-gw-50902113f9e1
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?utf-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Johan Hovold <johan+linaro@kernel.org>,
	Sajid Dalvi <sdalvi@google.com>,
	Ajay Agarwal <ajayagarwal@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rahul Tanwar <rtanwar@maxlinear.com>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Florian Eckert <fe@dev.tdt.de>,
	Eckert.Florian@googlemail.com, ms@dev.tdt.de
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775035902; l=2474;
 i=fe@dev.tdt.de; s=20260205; h=from:subject:message-id;
 bh=C1QdyaYkBCLHlV6/TVcWAipouq6TY/jNjHGgn2cJb0A=;
 b=EfSEXdaRJEQGoHfwl+g5lwRlb6YbiQ3VPkAROAcRKc8L5+4Cres6K2FH2yXkzGXvLc9nrA+Rz
 Hp9S8uFxra4Dj9gJIn42J5n6EA38U3UDRzPhh9QkGqru+jMmA3gNsuL
X-Developer-Key: i=fe@dev.tdt.de; a=ed25519;
 pk=q7Pvv3Au2sAVRhBz5UF7ZqUPNxUwXQ78Jdqu8E6Negk=
X-purgate: clean
X-purgate-type: clean
X-purgate-ID: 151534::1775035903-61523233-BD408683/0/0
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[tdt.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[dev.tdt.de:s=z1-selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[vger.kernel.org,dev.tdt.de,googlemail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-283397-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[dev.tdt.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,tdt.de:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fe@dev.tdt.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,linaro,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 6E524377CEC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series fixes and improve the 'intel-gw' driver to work again
with the current dwc pcie framework. The following changes are:

* Move interrupt 'enable' to its own function to improve readability,
  and add additional register writes just as the Maxlinear kernel does in
  their SDK.
* Enable clock for the PHY before PHY init call.
* Add missing 'start_link' callback. That was added to the PCIe dwc
  framework.
* Move ATU base address assignment to the probe function and also add the
  the possibility to read it from the devicetree by dwc core.
* Update devicetree documentation for intel-gw-pcie.yaml
* Remove unused preprocessor define.
* Mark driver as orphaned as the maitainer's email no longer works

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
Changes in v3:
- Update commit messages.
- Correct the sample code for dt bindings by adding the missing quotation
  marks. Add 'minItems: 3' to avoid ABI issues.
- Move driver atu base assignment to probe function and keep backward
  compatibility.
- Link to v2: https://lore.kernel.org/r/20260330-pcie-intel-gw-v2-0-8bd07367a298@dev.tdt.de

Changes in v2:
- Added additional information to the commit descriptions
- Add additional patch to mark driver as orphaned as the maintainer's
  email no longer works.
- Fix wrong error path for enable clock before phy init.
- Add new patch to update the devicetree documentation for the 'atu'
  resource
- Add additional recipients responsible for documenting the dervicetree
  bindings.
- Link to v1: https://lore.kernel.org/r/20260317-pcie-intel-gw-v1-0-7fe13726ad4f@dev.tdt.de

---
Florian Eckert (7):
      MAINTAINERS: Remove bouncing intel-gw maintainer
      PCI: intel-gw: Remove unused define
      PCI: intel-gw: Move interrupt enable to own function
      PCI: intel-gw: Enable clock before phy init
      PCI: intel-gw: Add start_link callback function
      PCI: intel-gw: Move driver atu base assignment to probe function
      dt-bindings: PCI: intel,lgm-pcie: Add atu resource

 .../devicetree/bindings/pci/intel-gw-pcie.yaml     |  6 +-
 MAINTAINERS                                        |  3 +-
 drivers/pci/controller/dwc/pcie-intel-gw.c         | 73 +++++++++++++++-------
 3 files changed, 56 insertions(+), 26 deletions(-)
---
base-commit: ae6bbabc313433c724e15465c8b2341e02e2f0d7
change-id: 20260317-pcie-intel-gw-50902113f9e1

Best regards,
-- 
Florian Eckert <fe@dev.tdt.de>



Return-Path: <devicetree+bounces-270976-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PhZDBISqGm/ngAAu9opvQ
	(envelope-from <devicetree+bounces-270976-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:05:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AF61FEA89
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:05:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5D483047505
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB10039FCAC;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9UVVy9/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9361E396593;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772622332; cv=none; b=qOr1Kp+oogiVjcFRgs6+cRo2kuvR5iWBNYv7h8GaHPe9fYtW4LUyVC4Id4my8oZZV3FwRF6YKFU174fFVhns6FL/6ik4QWNjzeVEmPu+e7yQNq2MTLVB3i3SBkWiIfvUFrJwz32rk8dTrAblXU+A1Rj7MBwRufzuaujnCjtn5Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772622332; c=relaxed/simple;
	bh=rappOU6haODzrmo9ldSIUDJg7935zH1v7n2L238WwX8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=pE3tL2R5y2GaOxAGBA7qDAcuPl5XHC3OZgB0Maa1LNdEXsstXWGXWKCI0IUdoFTmX+cR+OwEWXdoVCMJlcZ1lsRmEZvOVeRMNlYe3U6ts3V7UQTedj6gcVTDltEBlb+F7VofRWnD1nFj8ivXM9izrXworHhHflozFm/V6tVuGes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9UVVy9/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 39F92C19423;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772622332;
	bh=rappOU6haODzrmo9ldSIUDJg7935zH1v7n2L238WwX8=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=P9UVVy9//4YN1Rju/uX3WQmodPMvwy8xwizNCocsDJc+02uvLXxFTis61/9MCQ6FC
	 8KhVVPxVgN7SG9nh8RDhNsuulzO8JfP1sQ8BQsgNywDj6DP76mvM41pVQzjEAo94Uu
	 ObMODv1RsTyoNjCmB8t+MiFtzSLCqdbUkms2dSVDyF/wQs5IRsi6JjIoWB40MYM3mP
	 IB+zrBZtiEc8XZOPDe2+namWh7i07us3JV4VrDV8WqR/rd3PxZfuxOrEQbmVJJzH4l
	 fwGXurY6Uu8DOcgZRtmEfMwUE0W9fX8TQszOo4cSrHxJUxTP+mjkDLzyY7Th/8I12/
	 lZ0Z3SX8bMvwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E8F8EB7EB8;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Subject: [PATCH v4 0/4] Rework BPI-R2-Pro PCIe clock topology
Date: Wed, 04 Mar 2026 12:05:26 +0100
Message-Id: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPcRqGkC/43NwQ6CMAzG8VcxO1vTdRTQk+9hPGxsaGMiZBCCE
 t7dqQf1Qjz+vya/TqoLUUKndqtJxTBIJ801RbZeqepsr6cA4lMrQsqRiCBeDOcluCgQCdrYQC0
 jtJUEMMwOCb1HTyoBbQzp9sIPx9Rn6fom3l6/Bv1c36xBvcQOGjS4bfBGly6zRbGXUfpNdVdPd
 KBvyCxCBAiY5TkHZs+2/IXM/5BJkK3ZMmHh0OoPNM/zA5Rx59tUAQAA
X-Change-ID: 20260222-rk3568-bri-r2-pro-fix-pcie-355b020dd0d2
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Frank Wunderlich <frank-w@public-files.de>
Cc: Martin Filla <freebsd@sysctl.cz>, 
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1501; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=rappOU6haODzrmo9ldSIUDJg7935zH1v7n2L238WwX8=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBpqBH5QVhOP27LnMiKOOFlu0rfrwVolxABEt7dW
 rPVhLK3scuJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaagR+QAKCRBgAj/E00kg
 cujPD/0T4cguv77mntr2cU2BgHwJ0LcMPebStYmJTq6Ik7/c5+GAK/s8VhkqnKNzdzbjUpi7hrg
 O7nxijvj6U5NDJS9uiRTi9570RZFDs8pZDenp/IPKi5WR/GuaslR6Xnbqo8tyt2g2S10rXQaWuJ
 jgWWbr5pc3KZ7aXNNNMBQ8C8GpEj+9VplgNe0WhsDVJhhq6wVZrZsu++DNYpVDEvJ64O5L2vcG/
 Yt30ScMWu6s5mLmYs+CYDFAMsTrrf1P+GqJ7Y/boFpckV5Jg4IW8M68uUbZMqYQxyy1MjES8EH7
 BVviXGVMKG2nPJJYERRIXZTIW1fvMkLTEGk934BsHPGxqOBHKf7FkjH/Jo3jHhBWPckEjWdL0MK
 Of+84WHs6SfTh4JqBwBCzL60pYiOahlVjiyoUq8zb3CGLsriWVz/lSY6af+or2aCmLLuF3cYqOn
 m1DWX8cN7aqwDjGQB7JBShBDGm7Tyk4FRr2WqPOWtNt40VXoQlCcBK7e7u3N5Uc5B0IPmR5X7c3
 bvvPPZa6XSq1W+wWlr1qzPx5gMvkypnN27jWc1mMLPTxkk1y5X8tM1Tbly8lUsm/zVrUtQKZrfU
 rn5M99P8fjNOGhI/PyF9H2VNF8VaHswSAXfkoz5vlyLyGWxjxeQKw+O113kDLClPxY510e4gk3l
 GUKSMAtb06LD/RQ==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
Reply-To: david@ixit.cz
X-Rspamd-Queue-Id: C4AF61FEA89
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270976-lists,devicetree=lfdr.de,david.ixit.cz];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,sntech.de,public-files.de];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[david@ixit.cz];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ixit.cz:replyto,ixit.cz:email,ixit.cz:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Signed-off-by: David Heidelberg <david@ixit.cz>
---
Changes in v4:
- Extend rk3568 pipe clock introduction to whole rk356x. (Shawn)
- typos (Charalampos)
- Link to v3: https://lore.kernel.org/r/20260303-rk3568-bri-r2-pro-fix-pcie-v3-0-af5a5207b0a1@ixit.cz

Changes in v3:
- Added commit extending the clock list with pipe clock for rk3568.
- Updated the clock list in BPI-R2-Pro dts. (Charalampos)
- Link to v2: https://lore.kernel.org/r/20260303-rk3568-bri-r2-pro-fix-pcie-v2-0-04665e55d5a8@ixit.cz

Changes in v2:
- Added patches for solving the topology issues and on top of these
  original patch. (Heiko)
- Link to v1: https://lore.kernel.org/r/20260301-rk3568-bri-r2-pro-fix-pcie-v1-1-b9ed318b4a77@ixit.cz

---
David Heidelberg (4):
      arm64: dts: rockchip: assign pipe clock to rk356x PCIe lanes
      arm64: dts: rockchip: Introduce the reference PCIe clk generator for BPI-R2-Pro
      arm64: dts: rockchip: Use reference PCIe clock generator for BPI-R2-Pro
      arm64: dts: rockchip: Define PCIe clock pinctrl for BPI-R2-Pro

 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 59 +++++++++++++++++-----
 arch/arm64/boot/dts/rockchip/rk3568.dtsi           | 12 +++--
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi      |  6 ++-
 3 files changed, 57 insertions(+), 20 deletions(-)
---
base-commit: c025f6cf4209e1542ec2afebe49f42bbaf1a5c7b
change-id: 20260222-rk3568-bri-r2-pro-fix-pcie-355b020dd0d2

Best regards,
-- 
David Heidelberg <david@ixit.cz>




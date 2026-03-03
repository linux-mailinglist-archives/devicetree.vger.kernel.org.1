Return-Path: <devicetree+bounces-270742-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFAtOdE8p2mofwAAu9opvQ
	(envelope-from <devicetree+bounces-270742-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:56:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F27F1F676C
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:56:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8038E30A6DC3
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:52:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC98638654F;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2XPWd/f"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95F137F003;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772567550; cv=none; b=hV652LeELXBO+X/OUFxLj0svIFE8LaizWMgTvS1nbp/kWddOHvtf7bIopj5f6fp1YXUt+OQw7tjLY/afoUUN84sTQ+Aw0x5KeHdA4Wqth2tM+dZFpasp7hmI8hsATLj0RxMqrWIli4/I8p/Nu8Y8GS+Y77gFIpmZAEFsOYVHuak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772567550; c=relaxed/simple;
	bh=Tsg7+g5+IzVoAa4NtAmUW9nOtVF1KEhB9DJB2ZeM0Z8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=CvQ5ko6IwYTwILXGM7dtHlN3YbDPNpki5QjwxZ6Vi/aCeGCAZnqu/qdFhWhXdsGozaodbxhc6Cto48reaXC9PDxkRSBc3uGCtw5J0pRpFlx6IER7Vwqs/J/+Zq8MBq1u1mtms7Ph4b5gKhkDengN8Wo3CbP5ijsOHsKD2HeRFfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2XPWd/f; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5A1B0C116C6;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772567550;
	bh=Tsg7+g5+IzVoAa4NtAmUW9nOtVF1KEhB9DJB2ZeM0Z8=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=k2XPWd/fbyeZtRRpMaOOIpTVOe36cN7Jm90GjQVw3ZFwBHCcxP7TZl+TPXrqkaRiS
	 sMBhrwnvSMca91sQl+N32ziANKczVwIXMBYe4ixJNAzOU58umxjlQmnc9YB7Ttu2yb
	 liXDMu7UOiPhPtUe8PiVKtayrvL3hu6BA2p745l5x/kqrACuswcECzfDsKYlWXF1Y8
	 +1uJpUvfVcT3BXOVwJjNcGTG1pgiCHXePaVZDlmOLhkNcEKRddGApGOq7UA50ECpd3
	 Z4iX+TqFj/txFFXnXfrGEAjgePn3VS16aD9RPKjKsB4a4H1G2kuuzScWAXjbp2RVqI
	 3eUyk+irkzUDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37917EDEBE5;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Subject: [PATCH v3 0/4] Rework BPI-R2-Pro PCIe clock topology
Date: Tue, 03 Mar 2026 20:52:26 +0100
Message-Id: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-0-af5a5207b0a1@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPo7p2kC/33NQQ6CMBCF4auQrh3TTmlBV97DuKC0ysQEyJQQl
 HB3Cy50xfJ/k3wzixiYQhTnbBYcRorUtSn0IRN1U7WPAORTC5RoJSICP7WxJTgmYISeO7jTBH1
 NAbQxTqL0XnoUCeg5pNuGX2+pG4pDx6/t16jW9ctqqfbYUYECdwpeq9LlVVFcaKLhWL/Fio74D
 +ldCEGCzK01wRhvqvIHLcvyAW/XqfMLAQAA
X-Change-ID: 20260222-rk3568-bri-r2-pro-fix-pcie-355b020dd0d2
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Frank Wunderlich <frank-w@public-files.de>
Cc: Martin Filla <freebsd@sysctl.cz>, 
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1229; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=Tsg7+g5+IzVoAa4NtAmUW9nOtVF1KEhB9DJB2ZeM0Z8=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBppzv7Syif8BQdEO3VtydBbircS9IZVObETCauE
 8waThZ7wTmJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaac7+wAKCRBgAj/E00kg
 csqXEADHQTI7xNCuksTS/Xb6kCEdA7QqEbj0hAvV3O224oAAKxq/DBwIK4NCg2fkwjMODv08VgE
 jRdEam6+jORT/y+kev2u3+1nVC94l/q/jWgFRUehbU42GeGWWlEqexT/tvCQnLLSObOY+r9tydg
 SZqIR/6r/qE1wF2BucOFbXqKZEC2M6ZAYGjHRhRx+24Wznkl0/Aba6dhN9ffY4HxjDECviRLffw
 HfTM1fmPNtKN56mCKRvivsGHCmuBVDjwPjKpPyV1Uu7ApuBt2lVDJgynQmDPzDpfzvYDQ7MaI16
 A6JIkyPhb+TDxUmb60soVH9yFGlsvWtG0HAdho+B88jffsjCDfZXqiPoRrcMdaBYrwh6y706yyH
 nai572KhAOsU/RRDEuPrHcXo37KoEN3bGnPyUJGRpdvTLhK0zlnDpvPCZkR7BctlkVT+lLsJY5F
 lFiWdXzXkzdMKnJokbBwH8TfLq9qCiURcc3vYpT8u1VgKYlqIh2j1vSGu3ATEM5UQmtW9p/3LNz
 /W+BdciJTIQJarJKeo2miRan2Yx/3PNDgDfithQpo+nmNDBkSqtTUmtDHSnHQlwxnRIRrsRZjhG
 MRXVCic7WW/ATPW1177GmQ9UBX7jutsmI+Q6hOplP7dNuC++coJnH8R/KPv8AOEfMb+rVnyl7gD
 1JypALq0pulpaRw==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
Reply-To: david@ixit.cz
X-Rspamd-Queue-Id: 9F27F1F676C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270742-lists,devicetree=lfdr.de,david.ixit.cz];
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[david@ixit.cz];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ixit.cz:replyto,ixit.cz:email,ixit.cz:mid]
X-Rspamd-Action: no action

Signed-off-by: David Heidelberg <david@ixit.cz>
---
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
      arm64: dts: rockchip: assign pipe clock to rk3568 PCIe lanes
      arm64: dts: rockchip: Introduce the reference PCIe clk generator for BPI-R2-Pro
      arm64: dts: rockchip: Use reference PCIe clock generator for BPI-R2-Pro
      arm64: dts: rockchip: Define PCIe clock pinctrl for BPI-R2-Pro

 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 59 +++++++++++++++++-----
 arch/arm64/boot/dts/rockchip/rk3568.dtsi           | 12 +++--
 2 files changed, 53 insertions(+), 18 deletions(-)
---
base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
change-id: 20260222-rk3568-bri-r2-pro-fix-pcie-355b020dd0d2

Best regards,
-- 
David Heidelberg <david@ixit.cz>




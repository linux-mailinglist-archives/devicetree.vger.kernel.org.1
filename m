Return-Path: <devicetree+bounces-154112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8A3A4EE2F
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 21:17:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 126FE3A8DC5
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 20:16:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3D4F82866;
	Tue,  4 Mar 2025 20:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="AxBwrcVt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590452E3377
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 20:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.59
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741119411; cv=none; b=guf4NApcRfsKDHMlfO4n/HrilvBUA9u8KJHsi+MFURvb/Xsd/qm00yb4XSYGJ9m3MkEKJKXc1QOHf+p//9cWONrTDhTfJ4eiqn4T+NV5PGUzvTC/9pmHxvzakEWO4hpaDYeQGSBx2DEXTUTHYeAL41QZ5AArpooZakxMZmg8cmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741119411; c=relaxed/simple;
	bh=EmMWOomx3FjbJAk9f9oWfiptvCOHUBMN2s0iOlnY9Zw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kCJ4ZngHJCx+NTFneLqWLNwAcFSFzV66rZxRdbQXa/FjvWspTbvlAohN9HmxdAUURaF32vGeeiL+rlTIhFZdkGvuNLpZlbS84dqqMV1GfRo4A+AZ2hGqnT+T2+swLpf6JCgLFI4OTIkfZIYlUahHz4JyjP+Au7YUevItSS2jILg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=AxBwrcVt; arc=none smtp.client-ip=121.127.44.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1741119409;
 bh=x6BDfPh0O1Xw4+eoI5OG+FYUEnRuz8BZ8BPs7Zf9ilk=;
 b=AxBwrcVt6/Go17UIOq9TMQDukY8ScLhMR6KqlqnTZnBC7j2XlD9QJCK2Nv99wXMDLETD7NN+T
 TnFsUatgya+acoGcyvWrLafe0nC4lcUSizq12x4KIqdz5lLMDLo5XntKNkgxBroIl7lnV0MdiyG
 TH8MI3q3RU67wuic4vxaqbADTx/VJEevGfE1izbmp6tXRopNVwJHbTR0PGduBjeHzNr04QfLGHi
 N806a7lji2X8npCmoAUpYWoiNmbwmWJRovq1Oa62TAcjYlMvGPOjZDMRUhA3sGv4epOC9khlfMj
 aslX3KOzBe4htNCdronzoNMUY2GMQC42duYpWTV1iKrA==
X-Forward-Email-ID: 67c75faf66a4509299dbdf39
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/4] rockchip: Add support for leds and buttons on Radxa E20C
Date: Tue,  4 Mar 2025 20:16:33 +0000
Message-ID: <20250304201642.831218-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Radxa E20C has three GPIO leds, one SARADC maskrom button and one
GPIO user button.

This series add leds, gpio-keys and adc-keys nodes to board DT to
describe the leds and buttons found on Radxa E20C.

Changes in v2:
- Change gpio-leds node name to leds
- Drop patches already applied
- Merge saradc and gpio button series
- Reorder patches

Board schematics for Radxa E20C can be found at [1].

[1] https://dl.radxa.com/e/e20c/v1.10/radxa_e20c_v1100_schematic.pdf

Jonas Karlman (4):
  arm64: dts: rockchip: Add leds node to Radxa E20C
  arm64: dts: rockchip: Add user button to Radxa E20C
  arm64: dts: rockchip: Add SARADC node for RK3528
  arm64: dts: rockchip: Add maskrom button to Radxa E20C

 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 116 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      |  13 ++
 2 files changed, 129 insertions(+)

-- 
2.48.1



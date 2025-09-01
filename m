Return-Path: <devicetree+bounces-211028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF54B3D6C0
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 04:41:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C66361896245
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 02:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9191EE02F;
	Mon,  1 Sep 2025 02:41:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1691E5213
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 02:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756694473; cv=none; b=TRXSI+skYSPktgHQQ7L1JixKAKUJjjZqZY6z9OsLV2y1rsX94qkEhvISs5IeLjnHsArjsTOhi5jjRcE4f71QVFm5MnLUOXUNjpmvOZvA5g+jjiCUV0hFztTMY0xDpDAP3fjl2yceFCasLfwPcLA2r4ZBfvXgm+EHB6YNneyAM6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756694473; c=relaxed/simple;
	bh=dKbllMyJvq2cWyxNikxqDTkakDd4FTY5P/jf+amsR9U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oqT8IRHtLWEZVOq79o82+zkywyAFIwfy6zDm3DqTlmQimXPCIci9sk33kdN43/WNPskqWyxhTHREvXpIbBeNCBKuYJ3lVnPraSRD04cTbXl7V8AsbWSnsGpJQA5uw9nlNLjJn+5x4hsv8NQgKcnA/ulyxkdjeDb/yrTFH5HlRfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chainsx.cn; spf=pass smtp.mailfrom=chainsx.cn; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chainsx.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chainsx.cn
X-QQ-mid: zesmtpip2t1756694311t8596cf93
X-QQ-Originating-IP: G25zQTT6Y1mPNENVgNoK5LLwMttRCYTYnFgzC58leWM=
Received: from chainsx-ubuntu-server.lan ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 01 Sep 2025 10:38:29 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6995873977878562389
EX-QQ-RecipientCnt: 12
From: Hsun Lai <i@chainsx.cn>
To: Fred Bloggs <f.blogs@napier.co.nz>
Cc: Hsun Lai <i@chainsx.cn>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add 100ASK DShanPi A1
Date: Mon,  1 Sep 2025 10:38:22 +0800
Message-Id: <20250901023823.75199-2-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250901023823.75199-1-i@chainsx.cn>
References: <20250901023823.75199-1-i@chainsx.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: Nw9C1WBu09hPyJMHJdyC51pnYCrdcUTsbvLof+e0iaiU7ajfNgWMSTNZ
	Lcj4ApKnoRT/Dm05QtQXHQjWFGed2b8/C9PgYYjz42SFnaBVjxX99eA/ihG0wzaC4yZylWx
	+piJiRNXB/BI4s/e5BRpniHo7ukh6oBW2iIXj7HcHBCOCMLTF3yo062AQ7TxcaTo2UXJk5A
	fMYdI+UOhVs0kjj2XRkBGR128NK5JttnegeaU2F7ONkLvQKil9iEn92fI6M8fjBeteumChb
	+FUhI1RxY3WNtegqysA/ha4vdoRnS16F9xuUbHNzsaVmycZB5fqhVtqPmdF3fUPxcnWfIC6
	i2J1gJkZFsjbaAJ2Pk3MZGZ10u+YYp6/btgY03dnSFLivcNexnJbaOuTciSQQDglfaaQj7F
	gSQqiQSDn7myduilJmswrm1JV63I0UKrA+5uo4zUX8dacqkMklVuV7Fc1ka+htHDJHOOr8P
	fJFAW6pLv5nAR9fRoQe8S9i/1svS+m0101eP/G6RaWr4SNMOEz7EPpJ26MDSpuBXZHv0ljO
	PXmANidRo/isujsVF3gedI+gZ6/jTNO2mGFfA4+xKee8YueB+xdsRFmPvuQRqZwcO/uy19x
	Ln4n5W5EHl1TaHnitVL+2LMRFnaRnb8oYctI3feAykyvlNhOHhKtJlmtt01S1cjupxu6syt
	02Bv+HcKHtO8UZqyWcCm+zNl+VK5jFnrEE9O7VcQ7ZEGk99/QtmVFwAEH92LIHWjoHY3x6O
	ZJE2YU4fSesnkvr4rcgGBbPe0K45o+foyHg2N8vQRzLBaB3o+glzeomLXJ8YbUuHFhdGe2j
	aWIhEUXcPerC2zCbpEtLABAbvODejEWJoU1rYCBnaP9m0jrm1VFzVaBtD2T0qoe9KHwyyo7
	A867EjB8Z1EalcTj9/Cwkhjqgni6z7no6tkc0QZIrFfBL4tqoN9U7lt3U+7nkn7wMoKeVRY
	5/I1bKoHgaeU8RFFVJ2PGYu/5do1ctmqHXJEXyZEZWzKjoD9uX1cHlBURgvAY1qkN5P3dpf
	ciKImyWTMfwJ0YOiFl
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

This documents 100ASK DShanPi A1 which is a SBC based on RK3576 SoC.

Link: https://wiki.dshanpi.org/en/docs/DshanPi-A1/intro/

Signed-off-by: Hsun Lai <i@chainsx.cn>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6a..033730861 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -15,6 +15,11 @@ properties:
   compatible:
     oneOf:
 
+      - description: 100ASK DshanPi A1 board
+        items:
+          - const: 100ask,dshanpi-a1
+          - const: rockchip,rk3576
+
       - description: 96boards RK3399 Ficus (ROCK960 Enterprise Edition)
         items:
           - const: vamrs,ficus
-- 
2.34.1



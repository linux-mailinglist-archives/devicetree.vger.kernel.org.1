Return-Path: <devicetree+bounces-178129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30559ABAADC
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 17:20:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F37D83B4D3A
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 15:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A93220298C;
	Sat, 17 May 2025 15:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J96ysViX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87AC69D2B
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 15:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747495216; cv=none; b=L7psDjJNkAsBYME06fMFxAKv/vD9Ga5kIjZUyrhKs51RJa3MUbqynD5fupRRyYqcWGz0lCURKZJGInywhIWxO6HkFfTfI0KzdHNIQMpgnxiQyVFp8jPR5M9piu36knebpz2XBZJQR4SD8jkHMTRk56lYZ1eOHPAwa2xV5lwZfvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747495216; c=relaxed/simple;
	bh=8fVncvvRgORD7nnO2q1jkuf3elL3c4jA4fKkUkepRII=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oIxsZ/RfxS7UyUhP/KOI8fS/uj96FUKo4gcU3vSxPLmw19b2DhbES+U4UMXu929O0OTnCybG8dlm7p4kv8x1chK7RPSAtvcBi5U6IlNdWT4sHycvdhAeD+FKcjXTXt0Qw52GXKlqmJ1SIIRLcog/Bwy0gOzT/JQ12ySUS4nopkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J96ysViX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05B00C4CEE3;
	Sat, 17 May 2025 15:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747495215;
	bh=8fVncvvRgORD7nnO2q1jkuf3elL3c4jA4fKkUkepRII=;
	h=From:Subject:Date:To:Cc:From;
	b=J96ysViXsP1Sf9mPRtiJhxqp2hMPelaI7YXOoiYKFbtbjJiRArtTWqRpuo0xs3vW2
	 w0Goytm1sQgrHr4qLjwdxi5dpp3NH9xX7cXhW7ZTQvUKx4aZw9uIonAC6fMlHvlrqP
	 CPvh/X7QQvtW/G0X5ZLm6GbZd6D1KUjwJ02dEwGxAdJ3LWjit8TOIQ/qS0o9N7+0su
	 VtmxzN8xc71IVsrSKrgifcNIvEdsHvXe/OgYCaOnV3e5dNozLq7LcPZyb3qBCzG+Z/
	 cTD0IysJQRtgdoOzmNgu6HcrBk3wwAT8dO/k81u7Q2hwt5iaUCesR6xx5iBOahxF2z
	 SmI64gugwqxuQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Subject: [PATCH 0/2] Add PCIe nodes to Airoha EN7581 SoC evaluation board
Date: Sat, 17 May 2025 17:19:42 +0200
Message-Id: <20250517-en7581-evb-pcie-v1-0-97297eb063bb@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA6pKGgC/x3MQQqAIBBA0avErBtwCsu6SrRQm2o2JgoRSHdPW
 r7F/wUyJ+EMc1Mg8S1ZrlBBbQP+tOFglK0aOtVppWlEDqM2hHw7jF4YlTO2V2T1RAPUKibe5fm
 Py/q+H3KotzdhAAAA
X-Change-ID: 20250517-en7581-evb-pcie-0b8a301a5916
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2

Introduce PCIe controller nodes to EN7581 SoC and EN7581 evaluation
board.

---
Lorenzo Bianconi (2):
      arm64: dts: airoha: en7581: Add gpio-ranges property for gpio controller
      arm64: dts: airoha: en7581: Add PCIe nodes to EN7581 SoC evaluation board

 arch/arm64/boot/dts/airoha/en7581-evb.dts |  30 +++++++++
 arch/arm64/boot/dts/airoha/en7581.dtsi    | 105 ++++++++++++++++++++++++++++++
 2 files changed, 135 insertions(+)
---
base-commit: 6df944d2cf586213c48428223ab0e6b9c7c0b94e
change-id: 20250517-en7581-evb-pcie-0b8a301a5916

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>



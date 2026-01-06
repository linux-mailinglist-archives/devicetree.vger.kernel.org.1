Return-Path: <devicetree+bounces-251970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A23DCF96B2
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 17:42:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D5AA30C0F35
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 16:36:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1846D342CB3;
	Tue,  6 Jan 2026 15:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GHj4YyIl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335BA342C80
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 15:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767712886; cv=none; b=D0YH/GMpjiN8iYu8tW0d7K3qVllljk0NS5tQR2iyqyB6IVaiFa2PO/y6DhUpd8CTPd0vKyyZoWH5+m0NnfvN58NhpvcaLOywwkcP1mqURblIG2rocq+rX4WURGunz93o5d/qQ5lt/XurdjLd+KUJofmvDV79vanpg8yUffCaazA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767712886; c=relaxed/simple;
	bh=/r4SI0+l+6elgaFXyZuBmLqw3XZThStXnYZaeAp4zQ8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tQ9UgjeMKsDY1FW8VY9S9gy7zj0QMWCULFTBHvhXfJwugLVeWaLe6q+Z4hAfI7OAsU4kH+HpgKsljARBzt+sXhp5uqTwomo7jgi0qPTLkyoduo0QqGg26WbT/mDvOt3JenVIiEPaqM7LHcIWhvlnVREc/vKmhN5yveUDJOiKNck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GHj4YyIl; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-459fa8b6044so726979b6e.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767712883; x=1768317683; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yLUdw3G1Oa8h+gUfTU4WhFpXDYDSf42qjb0ihw6v2cM=;
        b=GHj4YyIlFzRXJtDrb/e9o+SxQkMhMQj1KGSdaWbeMa3QvCMOmBC8v5J374MXNLoR3T
         Qko3/nK77u3fBCNn/URQWhcFtytiMIizdoMGUUJRl9yJXoc5hvpPWd5W8B1JCGqm5SQD
         I1XQj50WGJILZOb09vIfw8pxyUEAnLwq8RVJ0Pt6231DVUnebZU/jGpvU23Dal4bo77l
         oo1EWh/7B/zff73/kPKeZaxlxF0oqiWY3A9Ou5Lv4PJSXP74UFuA9RewW/gcyOHVJr3c
         3kcyIDLJKqX5/xUNZ30X4jDeRmZx80+mgsFggVQp3rMWK7/WU3DCKfumQpSV5hvG4H6U
         gypw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767712883; x=1768317683;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yLUdw3G1Oa8h+gUfTU4WhFpXDYDSf42qjb0ihw6v2cM=;
        b=hClmCYazeB2H+ZmvYjQ33ZNUQcP00NwZxkWCTx3dk9stmLSmG11JgHT1w+xAQhN3CM
         mHKiX9Fu0vVe4MVw1uPZOVVxaPr3R4BtiFIkBv88eyN89dm5HuuQIDe/oPHeZBWzp3FJ
         Pis13mCYWG5aZRe+1qvbA3YNl72DVmnK7+8mPXtUTHBgFFxebqRmxS5Ptz35VTZEzi4f
         AyZ5yMFXqty+2Fq+Ggv+0vlpLz86KLi67KufP4xOLWkDvMXbWRmMgCNREKtGepj9bUJX
         MTpcgidGhi/Aa7DVvvq8uDqXrIiS4+udzLdB64r44YNt1jrwpwIKAOVxEf0Jq9xbQsox
         oOfg==
X-Gm-Message-State: AOJu0YwhLklPv5+x3Ua+r04FMmbjP2svIcn8JYjY9M0S245LmU8tl5hJ
	/LoAKHtLcCiMEYOSkT1MdKBDwkmxtjYYLfN7iEUsniUUuq0bYL5NCX7IPyekEgnBqoo=
X-Gm-Gg: AY/fxX4ZV1QOxaL1+7VvrsIXsxVjbTS5XXTjeb4n0vJW+JxcMzXEt+OA9nFDDo2uyBz
	pUQHAkrsPBnBzXl+zs8MIs4H8Hi06TyOTYMGmanxJ4seEEdkzDlOrNlEcsnKxvBc9pwnDoQgm3I
	t/tEqhGr5JeJmHsbwtsIthWE4T14RhD2EDnBqBVvd6QksrUA01I6dM7mgxs41gQRC+u+Fm2TIw8
	JQM6zEAjIE7gk98ilMBkEgcElpbtod1w07Aefg52CH/bmnqItYE4IoaituDnv0NYh87yzueO9W0
	D7z+KDK7iZ79vu4Gh7SjqtlBVoTr9FEcFsRjV1xCHn2T82dkQPVgVuM9AeXpZGhiBtQ7JTaJjA2
	yCd1iJYUtvrH2BGQsLfpUb/AOUJEdC7Nigi2uBiBCdTImxqTjS/Uj6rnUKkzT6+KOPgnLI1RDVi
	A2Uka9o5djOYgvrMo=
X-Google-Smtp-Source: AGHT+IGup1AjpsgEeM6td0S+GkAIxXyYXzINH73dTVDxFtfVdWjCyqWoDbH0jNu3XakXCV9kxL+hzQ==
X-Received: by 2002:a05:6808:2393:b0:459:9961:5114 with SMTP id 5614622812f47-45a5b0326a1mr2002013b6e.16.1767712882948;
        Tue, 06 Jan 2026 07:21:22 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:7f98:2205:4ba4:3e65])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45a5e17cd81sm1041992b6e.2.2026.01.06.07.21.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:21:22 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 06 Jan 2026 09:20:56 -0600
Subject: [PATCH 2/2] arm: dts: mediatek: mt8135: fix pinctrl node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-mtk-fix-mt7623-pinctl-name-v1-2-33817c7f78ee@baylibre.com>
References: <20260106-mtk-fix-mt7623-pinctl-name-v1-0-33817c7f78ee@baylibre.com>
In-Reply-To: <20260106-mtk-fix-mt7623-pinctl-name-v1-0-33817c7f78ee@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=853; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=/r4SI0+l+6elgaFXyZuBmLqw3XZThStXnYZaeAp4zQ8=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpXShqRYtO7Y/t+spHv4BW7bgN+6A//HOuBgp4E
 HzT+WaCxgKJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaV0oagAKCRDCzCAB/wGP
 wMXjB/47mtvPI+cDCbmMMGZhiz/J8R7kY1W5YrlWURnb37g533eh2nPklEmdwNJ7W9bfuovn+6y
 8J+V+GFuA/oXsstge/NYuB4OFPzPv7VVLZK5jQvIqS7grLwTX1ghJW7L84Xv5IHPl6iWkYMMvOy
 Om7ghHzt+7BYMfJWt/T7VqxcAqOq5W4D9hhSnIFqApiu+pCskNV6Eu4MJ/eml8y7kpB0iACoGiv
 Z1A3bKfyjj7le0YNc5efuHLqrqpkDiRZZSU+FSWQ4LEaYZU7KCAiTlt45bq4j6IwisjvL80aU0S
 9FAiOQX5axA8Gb4VTM1NZVnSa7J7NwISmc15RsHIERiV0nfj
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Correct the pinctrl node name to use the same address as the reg
property.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 arch/arm/boot/dts/mediatek/mt8135.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mediatek/mt8135.dtsi b/arch/arm/boot/dts/mediatek/mt8135.dtsi
index 0f291ad22d3a..b03bd980ec37 100644
--- a/arch/arm/boot/dts/mediatek/mt8135.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt8135.dtsi
@@ -148,7 +148,7 @@ pericfg: pericfg@10003000 {
 		 * Pinctrl access register at 0x10005000 and 0x1020c000 through
 		 * regmap. Register 0x1000b000 is used by EINT.
 		 */
-		pio: pinctrl@10005000 {
+		pio: pinctrl@1000b000 {
 			compatible = "mediatek,mt8135-pinctrl";
 			reg = <0 0x1000b000 0 0x1000>;
 			mediatek,pctl-regmap = <&syscfg_pctl_a &syscfg_pctl_b>;

-- 
2.43.0



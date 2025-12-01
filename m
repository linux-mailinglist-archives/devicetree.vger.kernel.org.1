Return-Path: <devicetree+bounces-243313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6EBC96B3A
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:46:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC6B73A3201
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8043C2FDC43;
	Mon,  1 Dec 2025 10:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KHTW+ViJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC9D23D7DB
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 10:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764585948; cv=none; b=qd3ugDLI+J94o8hNY7WHSuE2RtBYZe52yRFwPWBOxD/Rh8X1iZhc0S//Dnj9gWVlLLjbzTEV0NjR6nJi2GBmGkd4n6adKxLUgqKdYxMv0RMg8hUNaZ5fuIcDm94sv2lTGwtwGzvsfYY20Ycrqhorf88wfygDytfgyvRuKS11C44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764585948; c=relaxed/simple;
	bh=jNo2dVX46ep7yogASVgnWC6hbGoR5SWan4ITaGGLyNc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=OHOZ78H+NbB4FdoyP8DW9wLMXo5eykO+9XlFpADOLv3MzzXWrxoSG+vAhr6TkDXkCL/hxJu6hCENFNtzJuGYn/SyRN5MFP+lTRvBEi/JgO6CHxV0NxbOQ6vzTKaNQdwj6UTuy2aThLfakgxaieBvBPiHGAU+EOG9R46AAn8kV6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KHTW+ViJ; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42e2e08b27eso556036f8f.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 02:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764585945; x=1765190745; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bCF0FSqyYlnyWEBaqmzmHC6kRsLUVYOKh7WHQQM9qF0=;
        b=KHTW+ViJVV+073tIkKMWgg4E/M9CucW3AHW6Dwt8ai0cw1YWKLK4jHkKeMBWDlUXaF
         jwX2OlP8oh1wNdD2WECuh/S/mXTO0t88atS/9fhqOUnKcnlrhGAMz1YDOCfIuJsdw+XG
         TwkN1+voStgHvD9sP7iq/UdmYnSxIJ8fdcTs8dF73Y3EXFBsawdiy7AoMhSNQbKk3U+X
         6LSKADJMY4Tr8aJUjyL9RvNeSM8OQRTMtvJWYlB3h49l9Qsii0YTHaFxG4vV6aiJGlrX
         3Ue6QCusv0p4mPEVBnYaqCi0QBsbORdeFYe5lQKTMw2/GRbhNB/agq3dGz0BRg54Az73
         S//Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764585945; x=1765190745;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bCF0FSqyYlnyWEBaqmzmHC6kRsLUVYOKh7WHQQM9qF0=;
        b=P4POqME19JuWAly8hhCKIZBmUqCx3Nck6DtyNZMNJwIuHLQq8r08B5xQ4WgaYwJVaI
         WesFs3FKezsICXaBSpl0k5pMHvdLq5vI0mbKNvloUkaw0CP1a8Cn8ZLNol7cv78MG5pw
         UA2ZD+z3hG23TJtdzzy6vrMafKILEgiT4G5YKHM2ZwTomCwORiF2su6OSQRpY3Cpi9lZ
         CgL3sWKw9STEb02XIuhSnOrGHEjhItIGf0RLphoMbONbPgbL5DqUR9b8mKv0vObuFshX
         GnX8oa0mSE13dapqTtNyOr5P47x+e1VLUON93w4Qtnj2E1izciApMtxlfz6rDsGzHeKv
         gNag==
X-Gm-Message-State: AOJu0Yz+7migoVNvyY72EWfLMCdv/3vaFOCW6dPUYpTMMk/QgpnvyFib
	CnrRx+uU2kxlIhNUEtZbEGnBCFU3vOaJgeH/R1pl09yV70yKvdQmkoUW
X-Gm-Gg: ASbGncstTEj1gZsvHlF4Z8GoMIdyksgGiSv5B1tQv22m5KpNwRSWv0feilnNycV02Mq
	YBLhvy++RQLR+aYBXilj3fmbC8fS2QQ070NGGicRYHRapenUBQ8ZWrthWlzUcRZsTOhotCBfKWO
	Hq694Bq2/EmRPlqM11Ond2jL9ocQ4pmKrDXb0kOrRZWxr8gW2GXVGJ1OdL94FA1T8ETX5Q9EmAt
	GBkwhVg6jj/ihtbxDgWJFFoEhS1I9R0YWwIhE8zHxImHB18rcdk6ByOlia8zl8DpZ1ALK7VWyHy
	MA8Ef6Xl8KwBfebRRV51nXyntcwfe7VW8KUDkplQNx6rZGK7t41mfTPIhE3sLpyBh0y1ShHbKaK
	rQgpoxDePD9A4Jy9cH+ixxjz/dsXu9A9XNkUuROE/S5W/oeBsS0s130QmfAcyJwHrRsj12tyFe/
	iXXbCID60FSiaiDyyuRdFE3hOZbA==
X-Google-Smtp-Source: AGHT+IF+saINz1aMfFQPoF21DyIcobxATSuvnAhtrL28gk23j/ZdYr9KXTQtKbBxA0p/NCWRqd312g==
X-Received: by 2002:a05:6000:1f03:b0:42b:3867:b39c with SMTP id ffacd0b85a97d-42cc1cf452amr32151633f8f.34.1764585945022;
        Mon, 01 Dec 2025 02:45:45 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5d6049sm26264262f8f.10.2025.12.01.02.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 02:45:44 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Subject: [PATCH v3 0/4] Add support for Ezurio MediaTek platforms
Date: Mon, 01 Dec 2025 11:45:16 +0100
Message-Id: <20251201-review-v3-0-07f9af7341fd@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALxxLWkC/2WOwQ6CMBAFf4X0bMm2tBY8+R+GQy0LbCLUtAQlh
 H+3cNJ4nGTe5K0sYiCM7JKtLOBMkfyYoDhlzPV27JBTk5hJkFpIEHyX8MWNBjBSm6qqBEvyM2B
 L7yN0qxO3wQ986gPanzmUSijIC3MGXXLB7xSjH/POhuXaDZYeufPD3uspTj4sx69Z7tW/C7Pkw
 Bsnm1YpRGfwq1Bv2/YBEYIT0dwAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764585944; l=2679;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=jNo2dVX46ep7yogASVgnWC6hbGoR5SWan4ITaGGLyNc=;
 b=ZPpeBmyjbzBJZ6wFdMpdSHQvmIZGec77e91q9/e8Xner55jTqegx9NWGkO0rZ51b4arn7x5pL
 jf2BEC53e2wAz/tAvu1Zx3ADXWriypUbET+29EYWFmcjB+CuoiJGAoy
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

This series adds support for Ezurio MediaTek platforms called
"Tungsten". It includes support for MT8370-based Tungsten 510 and
MT8390-based Tungsten 700 SOMs.

Changes in v2:
- Use b4 to cc all maintainers properly
- Squashed patches 2/3 together
- Updated dts node names to be generic

Changes in v3:
- Added per-commit changelog
- Added missing Acked-by on 1st patch
- Link to v2: https://lore.kernel.org/r/20251201-review-v2-0-dc2df44eec7e@gmail.com

Regards,

Gary Bisson (4):
  dt-bindings: vendor-prefixes: Add Ezurio LLC
  dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
  arm64: dts: mediatek: add device tree for Tungsten 510 board
  arm64: dts: mediatek: add device tree for Tungsten 700 board

 .../devicetree/bindings/arm/mediatek.yaml     |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 arch/arm64/boot/dts/mediatek/Makefile         |    2 +
 .../dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
 .../dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
 .../dts/mediatek/mt83x0-tungsten-smarc.dtsi   | 1481 +++++++++++++++++
 6 files changed, 1523 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt83x0-tungsten-smarc.dtsi

--
2.43.0

---
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org

---
Gary Bisson (4):
      dt-bindings: vendor-prefixes: Add Ezurio LLC
      dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
      arm64: dts: mediatek: add device tree for Tungsten 510 board
      arm64: dts: mediatek: add device tree for Tungsten 700 board

 .../devicetree/bindings/arm/mediatek.yaml          |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 arch/arm64/boot/dts/mediatek/Makefile              |    2 +
 .../boot/dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
 .../boot/dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
 .../boot/dts/mediatek/mt83x0-tungsten-smarc.dtsi   | 1481 ++++++++++++++++++++
 6 files changed, 1523 insertions(+)
---
base-commit: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449
change-id: 20251201-review-750072579991

Best regards,
-- 
Gary Bisson <bisson.gary@gmail.com>



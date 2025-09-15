Return-Path: <devicetree+bounces-217607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEA3B58727
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 00:07:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3597516ABB2
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 22:07:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6CA29BD9A;
	Mon, 15 Sep 2025 22:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eBn+KD30"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E912877D3
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 22:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757974028; cv=none; b=ZBBr1OBWNTf33nERKaEu0mF5AuolAGPEIIBTcfv++7Y6vsQYry1O/dE+NH6eHQggkoNaA9bBav74JdfvG0wnRTdJzj+VpjZc+CddUClJmKVSrKilxjl3tm2ny3MLky4kRW8rdwFaoQzM9GQ2dgJvYi1EoUodAp/JtfEDJl7qGdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757974028; c=relaxed/simple;
	bh=8Erp0FSOgmp8Qh6v7i8vIf09HFje3C/hg4JsqGtXnUk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=kpS3CvoevoT4h7jzj5tpyXGr0d7Mb6HCQ4ObzWB4N0vMGP6nbevDOB8WlXIqVGE8oy3KLZpMpVDJJu/Cj+DZ0L5ZSoIF6h/sF3ANZdX8Tb3Zv5JX6bpvH/QSIV43oIFGhKwWyxy2uvncxZmI1Xkqvkp1NOqz6LkDU3i6mZa/azM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eBn+KD30; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-62f28da25b9so2658692a12.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 15:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757974026; x=1758578826; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mWq9K4N62YrjUgnvfrpfBO/XZHgq78ADcqLRBLBYlQc=;
        b=eBn+KD30qPbEUuOeroUOVcN2pA6lww4B7epE5+sWo8W9+VCD1JOyi3mGUQpnJKI8Th
         hbEHVmfNxCmBbahFO0qj3ieJRwvWsFex4iNfXWEy5y1RyuLZu1Vj3xq4o9X9jYAjOKll
         v4G/1QbY9fDukDLmHiukAfW1qBpRnRPmwSVRWNUENxo2yDjvVz/1cVy3wz2JBmrwAdtp
         xF6SMyZ5By8rohiaN6rH14YoZdZobTzq9Ho3fk53eMMfWTZK++dgp99K3MzQge/e7ikg
         +KyzUFqR3rb047QgFlu8WjWtgF7OryhhSpkmRWp9c0MZJ/7MWV3JIjUJdlVK/24YCeSN
         LILQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757974026; x=1758578826;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mWq9K4N62YrjUgnvfrpfBO/XZHgq78ADcqLRBLBYlQc=;
        b=hkw4iaxkS945Lh/SLsLgS6KXbwfWRk4UOjeHuDgJU2IiplrF5fpxddK3apmdS+PICr
         aMXJ1K+4VU/yKCeul68d885R7b2YhTYVKWPcvd2hE30pDtFJ8EaMv4B5IkSAZjkhUP82
         oIdOFJJDFvJHLpV6ZPiOVU0txF1on2oe8vlWmHyTzHaKK/aIW1FPDEH19yx3ADo6c3kW
         Gh3CxL43H8Y1tqb+uqWFLD5RzgRiDDO9sHGQRXEYMeJZTj3Yqh9Sfs10uSZEjgsXk9Y6
         cgqXatrtFrEMfjyoBrlPTByE/SRa1zLZhIUL74adc8mMPbxHQ3BCKnWXzDQ8tCKtv4S2
         Boig==
X-Forwarded-Encrypted: i=1; AJvYcCXnWodx9xWpgbrcNFNKTxH3StZoDhis1w4d8McDsXDEpPEDMKiLN8hnCf24AZg4OoIPzQA7aFJL2+jJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxfhQyUzAWVEhKKZel2pWYaRdnJvnG/6Df+lRCwVh1j4yGlRYpD
	V0/JQ7oniMXDn34qp+6KzHPJJ++6HSJ5t6h/PYeSf0NNxWqk8oi8y1U=
X-Gm-Gg: ASbGncvc87zTiSr++my65HkfDp4heu+2VD91sYMGo+B8j6hQh7K7i4vVRjuaPftA42/
	UZ3PWkZLGKW7Q4MFn5TMyzm1WJgP8z6DMYKJtMeziOriK/PRUv8JysTsdZG6NwoTTOKL5B3WAlI
	J/6GfFBfa0iQ8/fXHkL/HBjQulF8DGThy/a0DTNlAKtg05FSKd+Jz9r1j/XTNzRx7cG7E2s90XI
	N2x/X6CAxu54e6u4SPNKe+WMlo6DL9+7AJzdKqq4p7j55NvRE5w5sRSaZDf8oV+cbWTusnFHEiY
	amC47GXdyd4zLs/1KHQg+rTVQEAYkzBmIofxvSEdT1k64oRtKLzXe9kNHYJ7NSnLPNbNLdPy/FP
	0V4yohrh0xG02HmxisktpQ45OCt0q77E6vMy5hnMMvt+A8IOqnVMbYg==
X-Google-Smtp-Source: AGHT+IF7dPa8OCPxYg/A8yjmk5DCk3dELMYC35KzC0feKlYcosBohkoTLl09lrT68/wEHUmsB2ldVQ==
X-Received: by 2002:a17:907:3e1f:b0:b04:6047:d4b5 with SMTP id a640c23a62f3a-b07c382989cmr1253021866b.44.1757974025443;
        Mon, 15 Sep 2025 15:07:05 -0700 (PDT)
Received: from localhost.localdomain ([78.243.111.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32dd6f3sm1011464166b.67.2025.09.15.15.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 15:07:04 -0700 (PDT)
From: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	kernel@pengutronix.de,
	festevam@gmail.com,
	l.stach@pengutronix.de,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	jihed.chaibi.dev@gmail.com
Subject: [PATCH] ARM: dts: imx51-zii-rdu1: Fix audmux node names
Date: Tue, 16 Sep 2025 00:06:55 +0200
Message-Id: <20250915220655.143861-1-jihed.chaibi.dev@gmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rename the 'ssi2' and 'aud3' nodes to 'mux-ssi2' and 'mux-aud3' in the
audmux configuration of imx51-zii-rdu1.dts to comply with the naming
convention in imx-audmux.yaml.

This fixes the following dt-schema warning:

  imx51-zii-rdu1.dtb: audmux@83fd0000 (fsl,imx51-audmux): 'aud3', 'ssi2'
  do not match any of the regexes: '^mux-[0-9a-z]*$', '^pinctrl-[0-9]+$'

Fixes: ceef0396f367f ("ARM: dts: imx: add ZII RDU1 board")
Signed-off-by: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
---
 arch/arm/boot/dts/nxp/imx/imx51-zii-rdu1.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx51-zii-rdu1.dts b/arch/arm/boot/dts/nxp/imx/imx51-zii-rdu1.dts
index 06545a6052f..43ff5eafb2b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx51-zii-rdu1.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx51-zii-rdu1.dts
@@ -259,7 +259,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 
-	ssi2 {
+	mux-ssi2 {
 		fsl,audmux-port = <1>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -271,7 +271,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(2)
 		>;
 	};
 
-	aud3 {
+	mux-aud3 {
 		fsl,audmux-port = <2>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.39.5



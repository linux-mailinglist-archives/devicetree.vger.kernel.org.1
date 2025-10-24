Return-Path: <devicetree+bounces-230958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBDDC07DCE
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 21:16:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BCF3835599D
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 19:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4449936B968;
	Fri, 24 Oct 2025 19:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="l57nNXDl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A74436A609
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 19:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761333360; cv=none; b=lzlDh+ndeuiQwqTNs+ONUNYESMyoGfcYFTr7PtXQcn+Nr0r60XUROqVnl8EF45IAcZbutjoc0CtWjiqV+ZQFBr6b0SlZ1s6a302G9Up2z7x1QrSDczZwanVpgw7PmX+qLVTS0Sl6YYK9A4AVu7Moo+kCbFc/CEscsGthM2yjOz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761333360; c=relaxed/simple;
	bh=nMCY7tqu98IJzjclxpQyavU8U1FNBOGWdu3yx7Z5f6I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uFCc4xMu+sasWLwS5aZ0rF3c6gXM5bSkssx4yNmsQxHsx8x8NIW0OPLfd8HpqXcuTRA54DQv6d3qaSxTov63cHMBGM2xjCvua/eT2bO0d/9w5WgJN37h3y0ZwGorPUaILN6pSKp06adnBjui3onpf+K47umW5DJ9Ru2mmAr3Mi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=l57nNXDl; arc=none smtp.client-ip=209.85.166.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-92790f12293so111789839f.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 12:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761333356; x=1761938156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lOGEEJh/33D603wteGhrxPA31YJMUwUVVAtQyDoqnvQ=;
        b=l57nNXDl7bnjlngt9goGzF6apwW/CBG/7s5RfSvAHyIXvPXyrwxoiXJ8uH+Se+euWK
         lXt9P6YZD2ADrBcur1gr9Kudqy5NidCj8CnRsJJMQiX5lT/azUiupbWk/8UBwXMhymsb
         G4VPa0xk6dQSiBd7BcUaTvacaWNnxItESfbf7J8ndoBX8HNzh7xu+U2oAycAN8J3in7C
         70lZOddK06LrdJDWhwFhSJG25ynAgARhgN0z6XOWmvfYzNX1K4iFfIP3pNHgkYnvgx5W
         j57LBK/YhJEqqOlnYCSt4PkMDXVP8+3veJT9UtwmTHqOmjmEekh2ZfQ7Z8H0PQ882iCF
         KPGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761333356; x=1761938156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lOGEEJh/33D603wteGhrxPA31YJMUwUVVAtQyDoqnvQ=;
        b=AuE+0NyOwWM+RFGqAupjjmcWeAxWcI3h3P0Gzn+uNDNgdmLVbMb+MNvyXyHHwt1nN9
         mANIKZHdxPkMuiQYCJ6I3vmFE0JlHXyHsqWbYO44cKfFUJyrDTY47otVj539SrN08uqH
         NKezGfoM0uru/vwB7QPu8dYRTwshO8/8+SeFq8TThQ+B39xGmMs+zCQQ64+MY/aoFhZM
         foh7JTcy/DWiCH9ziWzpAgsxc7hbv4KqVNPyy8gvXJKd+k3znZ7UX7BD+1lvT8h+JD/8
         FxZCN3DoXVvjqlsKzLAvWW/t4BYH1XWQHoba1G/+Oz0VWHXX1wj8+ggh46CUA4P2TiM0
         pFsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSd28tSOu1UVz1NW/wktjHqYtG3ZRUMioQuXcD8dx0FP4uKfOGhp8SyqURwatugRdGXATbe2CTvky8@vger.kernel.org
X-Gm-Message-State: AOJu0YzckCkUfl6Oow1HgV3hzapkgb8gH8C+KAzHiQRCQneYt1VD3qEg
	lKOc5IbtSDKcthVg7EcQ7CrrR0+Ehg1XHB/VeupzXc+DY3FaMofbSDJ6zsCMAFUWpTg=
X-Gm-Gg: ASbGncvNYsfuaZNPUPXrfMIhTGhDrE9IzuUxjyp006XFiYYYWBuSr2eu6l4XknhWNLp
	7s3K9xv2gXczbgyQRQXqIDJld76OIMCJN875f5AmE2Z2JUkmneu6MyqhXd/o5a+uYowe9Bu896g
	DHIjA0tMcmCTwDHkmn3X6fTry0c8YO2safZnMLyWO/rObVI53ysZFdoz8MQXaKQUX9LeJLLZ1L1
	KXLkmNrXlg/RYNEVQ7ubY4T4HGsgeDQBTZnEao9gJyz+Zu8qc28LqOxctRYuIYIMEeXAlPErPKO
	1V7RTRaFlIhnf0B3mekiF+18zV9jg86zsgLjvEiXP1/c0bwDyTLgsYDbhdHCJS7HRzELxm9lvpK
	tDmdJm7ya3r4b1PRLJ/l4gsmvQwchXQI85AxVu4H7nKjh6kTup+Uey5W4SaqAE7L38oIY/abKLL
	+47JGnvy7R9bxhXmwnMt74Z/EX7gTcSn3BkZGSL9cC77mCIUEuavUcJQ==
X-Google-Smtp-Source: AGHT+IFDogyL6cWcfQwc3FAklbFwL0iLqDuDqQppxCvEgv6jdMEMsj7R+FgIMqftII9RxRpxH7qsMg==
X-Received: by 2002:a05:6e02:3f04:b0:430:c49d:750c with SMTP id e9e14a558f8ab-431ebed79admr44368525ab.27.1761333356161;
        Fri, 24 Oct 2025 12:15:56 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5abb7fdb7c7sm2427824173.44.2025.10.24.12.15.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 12:15:55 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	han.xu@nxp.com,
	broonie@kernel.org
Cc: dlan@gentoo.org,
	Frank.li@nxp.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-spi@vger.kernel.org,
	imx@lists.linux.dev,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Frank Li <Frank.Li@nxp.com>
Subject: [PATCH v3 1/9] dt-bindings: spi: fsl-qspi: support SpacemiT K1
Date: Fri, 24 Oct 2025 14:15:41 -0500
Message-ID: <20251024191550.194946-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251024191550.194946-1-elder@riscstar.com>
References: <20251024191550.194946-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the SpacemiT K1 SoC QSPI IP to the list of supported hardware.  This
is the first non-Freescale device represented here.  It has a nearly
identidal register set, and this binding correctly describes the hardware.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
v3: - Added Acked-by from Conor Dooley
    - Added Reviewed-by from Frank Li

 Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
index f2dd20370dbb3..5e6aff1bc2ed3 100644
--- a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
+++ b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
@@ -22,6 +22,7 @@ properties:
           - fsl,imx6ul-qspi
           - fsl,ls1021a-qspi
           - fsl,ls2080a-qspi
+          - spacemit,k1-qspi
       - items:
           - enum:
               - fsl,ls1043a-qspi
-- 
2.48.1



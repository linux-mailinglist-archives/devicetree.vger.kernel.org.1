Return-Path: <devicetree+bounces-84812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7500D92DC87
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 01:19:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32271283166
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 23:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B821152515;
	Wed, 10 Jul 2024 23:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JRXOFFN7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD4E14A0AD
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 23:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720653584; cv=none; b=FWGW+Ce0tMWPUYrPlXxCel94SGbIK5rbl5ETTYVN9tiFWkUwn0kjDRA1SIBZy+4h5/2Y2MzrbCy6alSOOI2txsVOgTCYWmjIDirmDVjWJEr8hG+9lUQjozQ2+nKPPUo0293A9SOI4jf1koAGZ1dn1zLkGiq1GX41BnuIvxdjGfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720653584; c=relaxed/simple;
	bh=5bpQrJvDGsMPCOmxrKisalj5eOajyo+yLXkqjtJzzS8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RaRXR9aKdDRq8t/nBPY0bPd6vXsPImutJJRJpezYexsGKygYVIie3ZtL5D0l56Yo2P5zw6szLYtbH6NTF8D6q/XLJoRYDDmR4KasPV5BwGlLjeBYtMPz25MkD9eiZtPEbvP019kGT1QlaxaQpuPW2nfb5EdBqbnM8TxTUShXtmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JRXOFFN7; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-70365f905b6so132994a34.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 16:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720653582; x=1721258382; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xlOEZ8CFlw0gunjkYZmLs6B2Z818aJ4MtPJBO+SZ+So=;
        b=JRXOFFN7YzEB5p95fjd0xUbaEEZOA4lnlwovRrKU3PfOLI8sdgLm2KyhzznLj/ofeH
         67BaeKq8V+h/JjzgYVJR8SbKMWuND5XKZ5McwLngAJBzD+qV08170Lz8U3gaTtdgCgCE
         npx79bE7iQoTGmG7NXgusYzfn4eElzr0xWv9l+0+ytb6Ex/s/oRkMMU6YgsXwgrvOZlF
         ZojauEqiIcMSDyytHFdM5MkJhdnmHPsWzhzjX/VUoTYSCKGgDm7ozKJOJ8UxSydKXIkW
         INxfKRST1B9kntKZKBF9v7gRH6jtx8pghTiNJmbR0wn2lvKOrvuxNkd3GrthFOgJzPpH
         rK7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720653582; x=1721258382;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xlOEZ8CFlw0gunjkYZmLs6B2Z818aJ4MtPJBO+SZ+So=;
        b=PL4dfh8OEFtUV0cZ8dn4hZNhnRCaCt4z/VI2t+T58sSjPkWGmQOP8Sx5tKDr4kdKef
         hNh1LWeUjvYHfvisyRZopuy1iNb7boKvUFrkLSL3JMuYor9TRGBItS3KRr1DZkBZfFWt
         raM9+sO6Zb2D9LYCXvRn1wUxPCD8sdX9Xewe+7Nps2fFudj4Dvc84BSCbWnfrfvxc7/D
         WDx4rl9DlyBmiCRAt+Skja5EZdfLJBYzmX5qpFlzZnIVFtfqKs2oHVSrBntSZAzEa7Jg
         7mpEOwkHlBXKQvO7J1uwpEKySVAzBENBXSXSuhAVvDiwY+ltUkWtT6GkuJ6NASTYqe1i
         WIDQ==
X-Gm-Message-State: AOJu0YyQGAd577V7lFw1Z8cJAHuJ6ClG75kdXbBsquMsO+dGwE2vBN5z
	neBavdVDOFUePxKBv7TBZwmEkxT+IkmW7x20fq8tNQgb8AwLwgYg
X-Google-Smtp-Source: AGHT+IFU3C9ovCWsqfqnNPU4K7hGjY1M8EhaH+KFXmRlWq7LNfARDmp/J83qRPTPELlNG7FIXsDaLA==
X-Received: by 2002:a9d:6c07:0:b0:703:6aa3:d091 with SMTP id 46e09a7af769-703759faa83mr7202389a34.2.1720653581819;
        Wed, 10 Jul 2024 16:19:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70374fcbf30sm1040207a34.65.2024.07.10.16.19.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 16:19:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	ryan@testtoast.com,
	andre.przywara@arm.com,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 0/4] Add Anbernic RG35XX-SP
Date: Wed, 10 Jul 2024 18:17:14 -0500
Message-Id: <20240710231718.106894-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG35XX-SP handheld gaming device. The
Anbernic RG35XX-SP is a clamshell device, but hardware wise is very
similar to the RG35XX-Plus. The RG35XX-SP has a lid-switch and an
external RTC that necessitate a distinct device tree.

Please note that this series may have a soft pre-requisite on the patch
series here [1].

[1] https://lore.kernel.org/linux-sunxi/20240418000736.24338-1-andre.przywara@arm.com/

Changes from V2:
 - Corrected commit message for device tree bindings.
 - Added a fixes tag to i2c pinmux additions in sun50i-h616.dtsi file
   based on recommendation from Andre Przywara.

Changes from V1:
 - Switched all RG35XX devices from the r_rsb bus to the r_i2c bus for
   the PMIC to keep it consistent.
 - Added missing pinctrl nodes in sun50i-h616.dtsi file for the r_i2c
   bus.
 - Modified devicetree documentation to keep definition of the RG35XX
   series consistent with other Allwinner devices.

Chris Morgan (4):
  dt-bindings: arm: sunxi: Add Anbernic RG35XXSP
  arm64: dts: allwinner: h616: Add r_i2c pinctrl nodes
  arm64: dts: allwinner: h616: Change RG35XX Series from r_rsb to r_i2c
  arm64: dts: allwinner: h700: Add Anbernic RG35XX-SP

 .../devicetree/bindings/arm/sunxi.yaml        |  9 +++--
 arch/arm64/boot/dts/allwinner/Makefile        |  3 +-
 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi |  2 ++
 .../sun50i-h700-anbernic-rg35xx-2024.dts      |  6 ++--
 .../sun50i-h700-anbernic-rg35xx-sp.dts        | 34 +++++++++++++++++++
 5 files changed, 48 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts

-- 
2.34.1



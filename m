Return-Path: <devicetree+bounces-35521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D61983DA1C
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 13:24:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9BB31F25FDA
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 12:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B180A1803E;
	Fri, 26 Jan 2024 12:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H/gOrb6v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3BF175AE
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 12:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706271860; cv=none; b=dHpMSSlvNHoLs2wM8/avty4uEF1wTlUJYxvVZ5u5Z6CDYc+BoSf9XLxJ4lq1Ys5nLbS7B51kKxCyQuh9+y7okwIIozalMYxBj5spMqDPZxQslJ5W3Fi7y/DwLlz609FdoQK7KnDARU3OUkwZaAesP7OMJdN3cPwqcoEOTeT15AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706271860; c=relaxed/simple;
	bh=ha1oh0TGoGTW+WFYrZQRPmUI9C9G9m8v5lP1QyzY7vk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aTvFxysw3MOeXsyPhHGy+FQIqkvEhZQkRNXbtSHAg63i1dki1+BGNZT8R5SIQoec5a+a7DOO7QGsOA8l+xL+IjS95qTdmoy+5MX1U3qqKgcseAtKaEL8nKV99sZ+3RPU9gu4s/06Lwu9QXBDOjTubkz+WWeutnjg8PK+CwjcnH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H/gOrb6v; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a2f79e79f0cso30949066b.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 04:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706271856; x=1706876656; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B+scADelXodvOTX0+9/nghKDOPG8tK4nnYvutfdk8Sc=;
        b=H/gOrb6vv3Gxldv4tzXQ7WD+6Hs//pD6Yj8d0VVbQ7CMye5X57bcQ028Y87FROvZ8T
         7dwPbL2dRH+MAQg2G0zsz4v3orUSRJ0mDtSxT8UK1uNLMn8A+6Ju1SaCiJSg1jwOvt+H
         YIwjOdsjmea9CCmY0ZgHGJzdcOepw6UbWZhg4m+KsdH3lnQizM61m8V5uk0mXXFDTR81
         +x3gJz/eZnmhSu+4T0Gf0F70fjsBhxkybrTxZcIyfg8WB6MQSGWYjqWn6a8EzfyQy/Gl
         EFBVoWv/M37XbNvgFi2TUhgq9VOK5jQvs6cp/nh4BP52hIHRdVR597II8faMldwmyS7l
         hdJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706271856; x=1706876656;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B+scADelXodvOTX0+9/nghKDOPG8tK4nnYvutfdk8Sc=;
        b=KvN4xNxdEcJWr+8k78VtCekd82UXDxhBgPnYmTwF8k4CLj9j4283B79tBl7Cw5Hciv
         P/XamK9VIb4sKHuIxyI1LalOqkIdtHLh5eQ6DNCLdA7UoJhx29ZFPYtUdaqXNd7UZVJ1
         xuYhapVU8z7Cq3v9O5gMDLndBk0YrYC7NTzEadCdum0aHZnABLIRgmBhoj/jczjJ33UF
         D8qWopQ7nnYgjuhFI4IgUi6yAprJ2+XNAeBdwrKlfpluy26DoN+8tWXokT0lxDDgKqjB
         TSwNB8Kewp3iUe9K8L0YJNPKReK1x+0VjzirO/mkoK9tQqhBmx76jzG1NsQtPwB71vB3
         vsdQ==
X-Gm-Message-State: AOJu0Yy5X1qWoiRaCIdEZdRH9VURx7HTbcn330RnU2CLugkqPl/wY5Zl
	tISbeKlOL21OakUgZisZ0iCiIlUKSzX7mG7LOwaaJIpn1yLMPH0AF3rxcFKaT2I=
X-Google-Smtp-Source: AGHT+IFJ+M/HqlZExZeT0b8TCisVvDpY6UGbbR18d3PGjB17THWFiM4YG1CAwf3yD0XSTWM3luMllA==
X-Received: by 2002:a17:906:1110:b0:a31:3162:4a6f with SMTP id h16-20020a170906111000b00a3131624a6fmr627867eja.59.1706271856321;
        Fri, 26 Jan 2024 04:24:16 -0800 (PST)
Received: from fedora.fritz.box (host-95-237-77-151.retail.telecomitalia.it. [95.237.77.151])
        by smtp.gmail.com with ESMTPSA id c6-20020a170906340600b00a310b485777sm579086ejb.51.2024.01.26.04.24.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 04:24:15 -0800 (PST)
From: Federico Borgo <federico.borgo.03@gmail.com>
To: devicetree@vger.kernel.org
Cc: Federico Borgo <federico.borgo.03@gmail.com>
Subject: [PATCH] arm64: dts: allwinner: h618: add Orange Pi Zero 2W to Makefile Add the devicetree of the board in the list of the allwinner/Makefile. The dts file of the Orange Pi Zero (sun50i-h618-orangepi-zero2w.dts) was not getting compiled because it was not listed in the Makefile.
Date: Fri, 26 Jan 2024 13:23:13 +0100
Message-ID: <20240126122313.114857-1-federico.borgo.03@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Federico Borgo <federico.borgo.03@gmail.com>
---
diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index 91d505b385de..0a371f8baede 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -43,4 +43,5 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-bigtreetech-pi.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-orangepi-zero2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-x96-mate.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero2w.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
---
 arch/arm64/boot/dts/allwinner/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index 91d505b385de..0a371f8baede 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -43,4 +43,5 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-bigtreetech-pi.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-orangepi-zero2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-x96-mate.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero2w.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
-- 
2.43.0



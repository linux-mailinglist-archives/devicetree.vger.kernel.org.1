Return-Path: <devicetree+bounces-238347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0A5C5A344
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 22:46:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1683A3541B8
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 21:46:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADFD6326956;
	Thu, 13 Nov 2025 21:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="h+gsh3o0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D749132549A
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 21:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763070358; cv=none; b=AajqBg0elha1TzlKinWSvfw4T/PrCBcc95OOYyk8nDWYajVB84vVS8ueVwz/+P+duav/PJUMryPVRQqVB9YNCE2W1FLYAaKTIpP7dnynSz61W+GaQ5+bwBXHU7Sjg6fy3ThxpbxQrFy6fa2CnApvZhn6S0hOz/m+5nGkbnSTpxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763070358; c=relaxed/simple;
	bh=rpoPtr0vcuPSzME+OCHzsK/d0X2Myz27uF4+n3Cpbv4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YmdN3iAtpumPuaQhHLeGSeqzNsHdhfaD0uG51CgEtzogjWOuTnfzPFr1xfQIav6YStEC68WIyGX1SrPvaAc2ND9Popsd6LOGHmtPTiHbM0rLGLHf+tz/cu3sO2UVW9ZHBfJtHVEm8rok4rDEjsEIVp0sppCQCIMXx9im1qxB3kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=h+gsh3o0; arc=none smtp.client-ip=209.85.166.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-433101f2032so6228305ab.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1763070356; x=1763675156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UrbGzwoMT9Ducrx+C40YCeeXZtuMUvm1QSQu39eFix8=;
        b=h+gsh3o0gaYX+bns0SrdMvFrGAYTyFE5fxMme+KQDTMsbW0msYj8ryo+yZk/JQdOOx
         75lN9ifMBCMgYkPAS0Dc/rHOSeo1+ABAnBIZMDVTfCuLNuydC9maGC887JI33h7Mq9vL
         KP+rLA0nYddAlra2zGoN3xf5H0VBr4K8gZ1qpiwBvgjUATlEtR0cIcuX+zCVjKbICyRA
         ZmUNOuZ7XtDw81gOTqX0Fnq0HSD4ro5ij4cAB+8UyB0UuhOjJBsFT5NIzIlyQ2HwNiZ1
         y6wwIzvuwK7zUL64OLhEjPr79SwdPd/obLrI/6zvfwMMF+Uf34Jd4hUv+jmzcYcwGPr/
         NNxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763070356; x=1763675156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UrbGzwoMT9Ducrx+C40YCeeXZtuMUvm1QSQu39eFix8=;
        b=joX16aLcVc0FPHmmKNxxMrub+Ek155p+huxQ2mvSTdJc9Rj937iutlnvqG6hwC0e4Z
         HHaLkREK436j1IZTSHnDJBkxVav8wcMOkKB+TL20o8h5Mu0almnyltDT4TX7KSnGxceU
         iyHf9Usr1oNF4sXr8gN9VsbsGL7I/d5gncv974TiLxfdR8Bya5/NT2lYGOdPw9n5n3m1
         Ymm7Hosd6s8a9PpVUxGkc6gAUA5Vhwj/YK0cCM1zeZcdV3eMjk00IvGzedUSzgD1tuT/
         TEjgBINsi1WMjUYyuyfIkcB4InQssU0moMFVmf2Qs3Byi8Y+9qs3W5GbfY1YeJ4TlJZI
         lYtg==
X-Forwarded-Encrypted: i=1; AJvYcCVbREczMfC77xyem4sTu43RRnQ/1pfOZmdq+2bsuUL7C3QPezGzVVrqep0Q5B3hRuu9zNhiBJmb/81C@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj6eNjkjtd6Gs+tKefB1hHCqBgqCf4hJrZke/YXjcCiZ799Q72
	pIlpzus4a0kz/znQnGwLV41/i8nvjyxezStBmQ63H/zLfY/dqlGmC7FQEB6raHTUVbY=
X-Gm-Gg: ASbGncuo7ylGJ55nyx0geE7ksVIX0b7kA6FS4XsUkW61acBhF8OO7wzC/qzDbObtoiX
	M3TdIGDJtIBazk0i1pCbh7KrpK+D5E6iJ+qqBtWeXD236g0SDsThF6vgOIBIk6+8yJGAshK6Zco
	dZxana1HgKPhy3m1bbMij1MxvfF06U/SZiIoA3rN02E/ZSjMc18LVQQ0ACoCO47+UXEAdZlp/XT
	Jvb2GYr66lkDdYa3N1ZIEivv29NIXahvtpKGNzOOPqKnWhqxYglaOq0s6Xtbm2AAEPA+9yTgFw0
	kOTS2oUnbEVo5iJ00Lkn45l6+Mi8o9SOeUqXL1PysP0QieNVOSZijRzMsRzStUlAHKkBLoI6CKf
	6aMuLNESy1WfL9KD/KdwNVcM5fTBwFx5nbmmq13CEX2pjeF9GuF5kEYFfbRqmZ3FQiDEnjRdXPR
	0f0neWjhAZKmikhfg4+phzqIZT0q+i4oSce3jmdRKQ3iZ85i1r3dh8Ug==
X-Google-Smtp-Source: AGHT+IFomP3OhkAPUlXBqH3nkrCRAP2vPJKy7pF18zv2dwYytVZuZbONaXMoLuyWSdunyx1jnM/2/w==
X-Received: by 2002:a05:6e02:1d99:b0:433:7e25:b93d with SMTP id e9e14a558f8ab-4348c949c9amr17614215ab.28.1763070355985;
        Thu, 13 Nov 2025 13:45:55 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-434839a4ac7sm10877115ab.25.2025.11.13.13.45.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 13:45:55 -0800 (PST)
From: Alex Elder <elder@riscstar.com>
To: dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 6/7] riscv: dts: spacemit: Add a PCIe regulator
Date: Thu, 13 Nov 2025 15:45:38 -0600
Message-ID: <20251113214540.2623070-7-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251113214540.2623070-1-elder@riscstar.com>
References: <20251113214540.2623070-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define a 3.3v fixed voltage regulator to be used by PCIe on the
Banana Pi BPI-F3.  On this platform, this regulator is always on.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 02f218a16318e..71f48454ba47c 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -33,6 +33,14 @@ led1 {
 		};
 	};
 
+	pcie_vcc_3v3: pcie-vcc3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "PCIE_VCC3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
 	reg_dc_in: dc-in-12v {
 		compatible = "regulator-fixed";
 		regulator-name = "dc_in_12v";
-- 
2.48.1



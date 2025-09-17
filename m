Return-Path: <devicetree+bounces-218332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EF7B7E9FA
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:55:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61E6A3AB3C3
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 10:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 432F836209E;
	Wed, 17 Sep 2025 10:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JyTnb1nV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1DB2F83CD
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 10:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758104317; cv=none; b=NLP4dl3muJis1BBwIQI776YXqc0jd1tb87TUlEi7xtyNJVVrFrjNzWqXcnSKXWKZap0Qa+E/E7KjGImN/aOIgoLiVndP2F6RBsSqzoxnt3TKaOyyiBdhSwMVq2hoUpLS8gEKtzsnDG4qmaxIDKkdH001JnZQPjZ1D897g7FkKO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758104317; c=relaxed/simple;
	bh=uvIYlGmQH1mEHmxGr3VC58oWOwuLYDjJrOFwBGwq8QY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cGNGcYMu11Kfkf34/hf2CQn9WTNwtmzaVd+JdBdesPmayiRdBY/S7D8J3umyE9v1MK9QtzLZGWjY+pK10E4vp5cR0Lko85wqmwFt2kaD++jOnn5uZ9fMbqHGRhF/dAPOtsq4ASrNXrxfGUiwk87d2lgSr3dU7EWOzJsaiATneC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JyTnb1nV; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-269639879c3so2447085ad.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 03:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758104315; x=1758709115; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+kmbJPIKT2sQhA/vxVf0N7X2Z80CDuvnn3C+ZX1OUAE=;
        b=JyTnb1nVKnHO+Mycv2SgI9lub2hub3BYwGJTEEzh5bifqGDAmkdAxtk2ieEIXjqf6y
         qVJKAqjFdN7pnBSygbBe3gfVHptgy9PAzQrB3lgTHvOD/XzmgsClFY2zsDrJ1tjsCzjz
         nFUoCVXBiyvnb4W7xTmKXx098bcVy4r1PAWG8I9dIncmEGpck+Sg7gXo/FS0QSmnks5E
         hLDONum30SebSCRCdHV556q9XfJHOIyFQv9l4Bjoi1X0FBgA1OVVlVrpbY+41bOjrdqG
         yf5Htbv5IeW+OFgLT6E8x5XY9IX60bUFAhSO09lrAEEn7pwlwUb996svgWGE5pTLI6IV
         e2Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758104315; x=1758709115;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+kmbJPIKT2sQhA/vxVf0N7X2Z80CDuvnn3C+ZX1OUAE=;
        b=tR6aQPcpTQsKi7hovOZFn/1haAYLVqWzs3VmP5tx84WwLAJ0mq2TQC0upUEX8ZaPi9
         2I9itOb9uZCqGhvTswHaSRotNw6zW9F1LKqirRYj+0YdbfoL77HcGPGy9eNUV6dmkR59
         jpklargyKEFkrDtoCspHiLDW2WW9c+xf9E7aVPXaA1KX+8Lv5g1dLwq3vkk7DizSA7mG
         +H5uEZdEUPFknUmHTWKOD2HaTKr2+ESCmcC5CkU6HVjzaNIDB60MP71yadn6SqxQ+U96
         Pq425Xp9PWnBiJAkoFG5iYpPAoKtlsCfADc3+331bdHUEu90DapwA1HPSQyb8uWdkxkE
         OYvw==
X-Forwarded-Encrypted: i=1; AJvYcCULTKz1dz1f/uieq3WQ44dN+Fv9+18kJtgvppYFsxynozmjpEsSNFnoraHR/oDDwJ3m1+2jFxXAIWnt@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+7o5G8E41Bub5TqMVb+DIpHY4JJHk85kVTFSg9VS1/XiS3Tb8
	6ZZ9OW3mKBeTGbxyhml9zjqWwfQEGJgYqSVoCRTp0zonVVThNWvnri0P
X-Gm-Gg: ASbGncvkHPvrgbE9//VPtN2t6t6N1NW2rqRhE6Z+IXO23/NJTTQjFJvh60Qw3izXMbN
	IOPlmeun+L1f0oWCIxR/KzmoKogy4BQa62rn9K7tjYqoqQPzaQZVJUy2pHlyDzJDcODow242VAm
	oTfsEt6dGsc0ZI+N1vk+oPVfQy1Tw4O7UsvYoHQ4GunurIhPDJXcjA+Crh2n/2TQk994YG+4cZ5
	188gqYvx/LCZz5bjXfTNCKBeO4Zz1Zylku8t6S3/y2LmpY++oALP4ofu1W8hbeKUypxfnP5d9mo
	BQ5fxUNkeLqr/b+v0uOMMvnCszIEXIxuAY3WRhGyS0q7IXWk2R9mFwFhj9Fi/8VvvVft/Dm9YPs
	/BJZLVU/Ip2Bn2BjCk2yqQUpxY+oexuL2uNXqXEKjLZfvo0ct4iJc/v0lxDUwgoU5lUFwjiSmFf
	aj8hlxVy3jrOw5Q2vpP2fYCdoWmw==
X-Google-Smtp-Source: AGHT+IFiUe1D2qnklzbedzK9Brp0DgIaGignG75uAoJrTAq+Wmo3K/I8sMVvXmtJYvF52h0HPiTMlw==
X-Received: by 2002:a17:902:fc86:b0:25c:2ed4:fd7f with SMTP id d9443c01a7336-2681390307emr21798845ad.42.1758104314805;
        Wed, 17 Sep 2025 03:18:34 -0700 (PDT)
Received: from eric-eric0420.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-267f4d286aesm28588755ad.63.2025.09.17.03.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 03:18:34 -0700 (PDT)
From: Peter Yin <peteryin.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: peteryin.openbmc@gmail.com
Subject: [PATCH v1 1/4] ARM: dts: aspeed: harma: add new line between the child nodes
Date: Wed, 17 Sep 2025 18:18:22 +0800
Message-ID: <20250917101828.2589069-2-peteryin.openbmc@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250917101828.2589069-1-peteryin.openbmc@gmail.com>
References: <20250917101828.2589069-1-peteryin.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add new line between the child nodes of imux28 to match DTS
style.

Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
index 23eaf47a38e8..41ae86180534 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
@@ -524,26 +524,32 @@ power-sensor@20 {
 				compatible = "mps,mp5990";
 				reg = <0x20>;
 			};
+
 			power-monitor@61 {
 				compatible = "isil,isl69260";
 				reg = <0x61>;
 			};
+
 			power-monitor@62 {
 				compatible = "isil,isl69260";
 				reg = <0x62>;
 			};
+
 			power-monitor@63 {
 				compatible = "isil,isl69260";
 				reg = <0x63>;
 			};
+
 			power-monitor@64 {
 				compatible = "infineon,xdpe152c4";
 				reg = <0x64>;
 			};
+
 			power-monitor@66 {
 				compatible = "infineon,xdpe152c4";
 				reg = <0x66>;
 			};
+
 			power-monitor@68 {
 				compatible = "infineon,xdpe152c4";
 				reg = <0x68>;
-- 
2.43.0



Return-Path: <devicetree+bounces-182604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A5AACD5CB
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 04:43:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A40D71898D18
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 02:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6911C78F3A;
	Wed,  4 Jun 2025 02:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ioaecsXM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D198615B0EF
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 02:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749005024; cv=none; b=tSIxuy0sqveumQMkGXghdrBKTKeePOn70FnNb+nySfSIhzmsP0c/d+ibnep9ppOWGaEZPXwmgCucsiiwgKOc7l5ef0zrKZDpYeYz+l1O0khl1g1NG8m3ENQUSCXEtXOnDI6IUIHe346Xj5SyiVhapS1ICSNQUWrF125d1WbofI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749005024; c=relaxed/simple;
	bh=IsOt7VyeYyEHaDvRBFrt3P/iSNotKfSpIRqO1zm72I0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DlJLsGCRprklDQpzsqbwqhRuYwuZF18BT4P3tVkd5tBflx8YNqvlQgnb7mzVE8jhe4XtP/VT0TnnTU190DU5YhyZ8YXeTaDccMnnW+qzRCm/rda+1ec3OJsyM1pr2ijMjnm3Z6AsXBvvZj23E9L73HjZatC3pA8UDrT5IUXocCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ioaecsXM; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-736f9e352cbso2129453a34.2
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 19:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749005022; x=1749609822; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zzyI33QahQw4EGLsu60MP9LUQJo9/3uvUGdSBwg07zs=;
        b=ioaecsXMsY4QGZyDypcanQPEA9KwKpFK8waMxY5WATNos9x/moaHzAPY86c4U7Amii
         2b4ULU2e98DXzshXXLU6xZLgCd1nC/5g7A7T/j2iof+TwIsYkQ8Bp4ip+MYKhSHNgp5T
         8xvRwbuBj2a4Iiy1/4cMQ9xUQMgTZ2WgI54IADSiXDjFZ4Z/BzEf7zfuQDiYVwF/tIIO
         0Nn7SQAK117NeUdtZWaPi8gcKnWNNDxwApMT+5qLVWUEkjDNPpxp8vph0ZkS8GOhPYo7
         ZRMYm4FJmWZGMxh6aLIMrok0+y9wvYg/c0UA7ArsOSTUZUu5JD9Zhx8qTZv0/+H2Tgnx
         FWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749005022; x=1749609822;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zzyI33QahQw4EGLsu60MP9LUQJo9/3uvUGdSBwg07zs=;
        b=TjpyFep3WGdugsEri9V+LZvTleOEvfclhTJYjmCz6ZeSAFMxpWpVjk4DDX9cLPXs48
         ni4NJJPF4L8naBMsv6B+0w/UP6GSp9l5TXoxethCqODoTaquf3MokfF9CPdHcm9SAYi/
         ZH6GynjoVjyj7HbtTENoPva4ESNPwfAMnqIIjRrYNpO6PyOCIoxlEGhGyL7o1cJTzSdv
         eDC9yNFwd/Is6z2q3M1/gyhY9CtwzLcTjDK3A6/uKu4UOeaFRusNbhL/q3wKy7jVFAtt
         k6+Lhnatg+gd++CiECKVhkP7n6P+x4VDtf46odNFcZuZGoNOy0yyNCCrRomUslGxfMVU
         MmBg==
X-Gm-Message-State: AOJu0Yy2siryKWtSCMStYJeyqt9bF+cJmELpyHLYBS2YBAj9fkWKDxtd
	eL5w4SdLVbDHqrZ/IWnm8U6KgqaOPltKGFDph8v5Cym+jO56RiFmiZCTnfzmBw==
X-Gm-Gg: ASbGncu+mRcElPXrvLJP4aI16G3/L0zy6AvfH4u+a0yf/+6T31EKvws69pefYvFCauD
	6h+uiAtv15vxwYJGzoIHZ85KxXO6bg4UC0hZDibfgUmuI+QiTkXnWY9CNKqa6aBANaQIh8+of34
	ua5/fYzu9/T155mio9RD5kKq+792Y9QH3iGxjkQhxlRhqYTErEnOC3OBFh9QZ0RUDU0X/0RXzAl
	AvJpsodbG3OZTLtxJIaOsVPp1LOLoSJEUDGO9nYa4DZEbLCrUxrOsOYZe1/mbgdnNDfHe0SBIWO
	/JeQhBaQ+lcbEN2tJPzJck1j3ZGkcaQhvcjl6UH8btYCg7jl5X1RVHh7BcGqO//uxXhR3A==
X-Google-Smtp-Source: AGHT+IGevKaryisfp7hGFxtdtHdAaYZzF85RcZMoFFr/eEdpz+Ok9wu41U2mYnc9VnMfhCgS+FFggQ==
X-Received: by 2002:a05:6830:6419:b0:72b:823c:8f66 with SMTP id 46e09a7af769-73869c3e159mr1161670a34.9.1749005021642;
        Tue, 03 Jun 2025 19:43:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:cfc:cd11:a912:a3bf])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-735af9ef2b1sm2137830a34.59.2025.06.03.19.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 19:43:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Document unused device on i2c1
Date: Tue,  3 Jun 2025 21:41:19 -0500
Message-ID: <20250604024119.381337-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Update the i2c1 bus noting that the unknown/unused device at 0x3c is an
iSmartWare SW2001 "encryption IC".

Based on the documentation I was able to find, this IC appears to be
used to authenticate a device for certain programs to ensure they only
run on authorized devices as a form of digital rights management.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 233eade30f21..645db9d3d297 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -469,7 +469,7 @@ regulator-state-mem {
 };
 
 &i2c1 {
-	/* Unknown/unused device at 0x3c */
+	/* Unused iSmartWare SW2001 encryption device at 0x3c */
 	status = "disabled";
 };
 
-- 
2.43.0



Return-Path: <devicetree+bounces-244760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AF69BCA89C3
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 18:30:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1BA87302F03E
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 17:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECFD53590A4;
	Fri,  5 Dec 2025 17:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V/clH3w3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583982E0902
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 17:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764955315; cv=none; b=sk2O0thMDHiVQTXdTXFNr0S82s+ussfLVhaz18LYYvrnon3aD7KKODTy2C0lCCOvnMbXZPMJgfMG5fXf8aJcJtTP6UT+/lxhs37lJghiVaxUA+GIVSrRb1PG4tFNaL+tt86y9icyV+N2usXZG5kENExcTRgQsnNdqLXslxgzASo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764955315; c=relaxed/simple;
	bh=B8PSi9jHUdjPhrF+sm3gt+m9lDpiWvOtpnckqkhHugE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=rUBhqUw0SJAKhN7Y325ZOqWHqRBhvYzsPrWkRLQbktv+8VoLEBavTUHNQkpihgHF0Fik5kdU8gqmq8EwMWQrhT+TOgZUkpA9K8tsOroaorfQvLVy0cvYunW+CrnGTQjbCHGC1/x/X0rM5OBg5MLZpps7bEfb5t6hAKrlMNoEoeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V/clH3w3; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477aa218f20so17117525e9.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 09:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764955313; x=1765560113; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:from:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UZCQZm4mibD//j04osocVMx/xPMdekYmVSEU/NvjAMg=;
        b=V/clH3w3uIOTGYGkb7an3O4+cwMS075qK/1+f10rOjALptRySopfAxwcmWGgRVNE7g
         x4ddAgKHGSQkkJGZM0vepxmZs7AUjCq/MQ5wZr11/HbovE4jjHlmloTa7ZzMYX+IpZJO
         P+ZhLH8T/ToOrqd2cprNFVWE14y7uB3aEMx19rHFkrzUO2mJAvWjriRRZp+o2RB06j28
         SWmXobJsm/iTSZrBuTogdjpxbIoyUPRpDD84HzTncN2Dt2w7oXpWlatzExRdU/1I9WRX
         l8p5scPsugA6Ex5oj0f17roF1QYygJ3ZmSaQs8FfSgrTdqSTs6IZcdUE7YxJbo9bVdAv
         D5tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764955313; x=1765560113;
        h=content-transfer-encoding:cc:to:subject:from:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UZCQZm4mibD//j04osocVMx/xPMdekYmVSEU/NvjAMg=;
        b=mAUyVDXVnSpX860RbgXS6JcHcjuEOep1rHuHvjBalPAdHQq7mujgF2L69zmG0c3eA7
         cEjSnHJedpByxlaORc2WyoodHYXX9peqH18r3dRY3wx4hV6LPAsHxSO/etCV5cSlRdzO
         bG9Vyb8nRhi2A+o0mf1pBcNedYr5XSmhuZBTlkPrQ8WjrBtLdZexd6WYdbQd599CQCQS
         wFUURMR3DjWLPLa0yR6oRUUx8qtnuTLqAi2gLEef+aqiICwNjvwABZ3Ae1JaW+WMmCKn
         n0fVfaVV5cnbXqzoAbpMk9fT4RU/6JlISqJsBTKds6KADVP+CLaYCK1fRMvjZuFaN1GL
         gTHQ==
X-Gm-Message-State: AOJu0YyM7fgIFNsZr1H764Ie14CQt/u4g70hpNINC8PZIStNCOaKJ1KD
	ox4IZ8DkpWSbeigYc3IyjkODksv8ChhS66I2q1MjIb828Yx5t2Z/vxkLLJtWSXM0+eM=
X-Gm-Gg: ASbGncsaxyrMcpoQRexAZIppJZcCAI/GmX6RXrjsWn3gwZfmt7Tzr0uKB4k6pt/rZGJ
	8f+jmyrkiznHIP0v5SdJTGlyAXHiIzcUzRYZ2HUPfe27coeBNdZk9ist9t9vH5ZOvn+8HROgqvE
	SmeyE0aEf05firKF5UE/ONSfW3xBqXMUiwmlRBtXOUotF3N9SdRBAJzF8RcuKP5PYApZ/VIPhAH
	WNiqk68IXOd0DwRcetS+4hIoKSoqZ62SWkhHuDiAJzoBkQopO2EVQdB/Am6rmVsXz8qqtBQyH8O
	+/8GXinjbOpaWojWrMXNQiZAtx7EG1S5rZeEglQXJojtfbCDCdhyuNnitECFl0ZkIPwULrXxo/j
	H/Z87DttNpfvxl67dGNIKD8qp6eFVq5DZsNoyl1fWloqjSyVhCSomShdd9jMNGKviZ47i6/it1A
	QLvV2EBo5xOepgeNB0Uzx494P93k5oPUxME2QPK2uC6cK5f73M+SchEWRpSv24tJgBXXTQFV/iI
	HDVvw4QJW4m1TB1hW1XbSpVitMovEv/p1fztj8hRamto3dpqClMOw==
X-Google-Smtp-Source: AGHT+IEm4o0h8b1j4bpARx7YuKAwXXTAp9EAESCVyno/gJt9JehnaUTIUnUp8aaB5eTEW+OITqbHfQ==
X-Received: by 2002:a05:600c:1e8f:b0:477:7af8:c88b with SMTP id 5b1f17b1804b1-47939dfa53cmr462435e9.11.1764955312576;
        Fri, 05 Dec 2025 09:21:52 -0800 (PST)
Received: from ?IPV6:2003:ea:8f47:b600:41b3:37ed:a502:9002? (p200300ea8f47b60041b337eda5029002.dip0.t-ipconnect.de. [2003:ea:8f47:b600:41b3:37ed:a502:9002])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792b156604sm61127675e9.16.2025.12.05.09.21.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 09:21:52 -0800 (PST)
Message-ID: <64533952-1299-4ae2-860d-b34b97a24d98@gmail.com>
Date: Fri, 5 Dec 2025 18:21:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH RFC] powerpc: switch two fixed phy links to full duplex
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Madhavan Srinivasan
 <maddy@linux.ibm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Nicholas Piggin <npiggin@gmail.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

These two fixed links are the only ones in-kernel specifying half duplex.
If these could be switched to full duplex, then half duplex handling
could be removed from phylib fixed phy, phylink, swphy.

The SoC MAC's are capable of full duplex, fs_enet MAC driver is as well.
Anything that would keep us from switching to full duplex?

Whilst at it, replace the deprecated old fixed-link binding.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 arch/powerpc/boot/dts/mgcoge.dts | 6 +++++-
 arch/powerpc/boot/dts/tqm8xx.dts | 6 +++++-
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/boot/dts/mgcoge.dts b/arch/powerpc/boot/dts/mgcoge.dts
index 9cefed20723..cea9bdc65dc 100644
--- a/arch/powerpc/boot/dts/mgcoge.dts
+++ b/arch/powerpc/boot/dts/mgcoge.dts
@@ -153,7 +153,11 @@ eth0: ethernet@11a60 {
 				interrupt-parent = <&PIC>;
 				linux,network-index = <0>;
 				fsl,cpm-command = <0xce00000>;
-				fixed-link = <0 0 10 0 0>;
+
+				fixed-link {
+					speed = <10>;
+					full-duplex;
+				};
 			};
 
 			i2c@11860 {
diff --git a/arch/powerpc/boot/dts/tqm8xx.dts b/arch/powerpc/boot/dts/tqm8xx.dts
index d16cdfd8120..e582487d5a3 100644
--- a/arch/powerpc/boot/dts/tqm8xx.dts
+++ b/arch/powerpc/boot/dts/tqm8xx.dts
@@ -185,7 +185,11 @@ eth0: ethernet@a00 {
 				interrupt-parent = <&CPM_PIC>;
 				fsl,cpm-command = <0000>;
 				linux,network-index = <0>;
-				fixed-link = <0 0 10 0 0>;
+
+				fixed-link {
+					speed = <10>;
+					full-duplex;
+				};
 			};
 		};
 	};
-- 
2.52.0



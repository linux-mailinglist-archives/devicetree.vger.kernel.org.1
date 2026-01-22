Return-Path: <devicetree+bounces-258227-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBt3LwbTcWk+MgAAu9opvQ
	(envelope-from <devicetree+bounces-258227-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:34:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D37628BB
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:34:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 683AD4E8090
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 07:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19365480DEC;
	Thu, 22 Jan 2026 07:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="1Ynneswv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8F2330338
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769067049; cv=none; b=fxWejtQsdtvv17Ql+Kd2BUfxTogrg4bizxtfr2NHCNInlt7rs6V0L0JoVjcVAzYyJHX7gKXfmR/BCCT2DryHw/JhOfdJIEL5g5AmaZSNgzPAxBVVPTERUXbmIxxWn+yo4DxiLlqyFSK1uNvh1+5vhKrM+GNRRGstwKzjRTdmOwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769067049; c=relaxed/simple;
	bh=55Er+0qEI0xEXO6z26TVSp4tDOzpRg7OsSMHH3Yxn6g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KGG5uHUtE3Pop/D3FXKh4M/xdQbIg7dhTSWlewyhiBEDa5VV3pZNJ4i5UhREHWfEwcXsqF9nUiAlFlEuzT3xToV8YykK6By7Ja3QVb/fCjghZT1NVezGSl4dfOYgO2dRUy8TNtgSNyu0xP9xGnxL7/iqlIbJf5cADjXQhcvCPl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=1Ynneswv; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a1388cdac3so5068935ad.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 23:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769067040; x=1769671840; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/f7NGLJwOVQXgq1cgcrLkHsXysP/8ctDFHDwjeS7Sis=;
        b=1Ynneswv19RzqiDHduQIcqBlnRJqDIj66+JDj4evBD+rE/B3rgStLzxXR3MMo++sfA
         rB1q6tUHgqK4itthywvAapaocazlhB3MrozzBuQ3aBeqxxDSyY6oZgHu2QXJ8zX0A3jZ
         IlzDMUA45WwgPeo53iXwIiDLPrI1nPC3vRaCkh9lV2TDWFtJWmEpJ1Sbm0f7A9FdUWaa
         ybI8kv9PdeJfev2gegl+IOFr+B0LkEv/q9twJ5qZHEI4CTOdxzHnzGWcv8KKcXO+tdvZ
         bBJscpst5+PCgL5JnnAj3G4nSDUs1OsAbRIuz9DzU0fUHUkG+LS+JbxX/ThAPeH8e16u
         Fh+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769067040; x=1769671840;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/f7NGLJwOVQXgq1cgcrLkHsXysP/8ctDFHDwjeS7Sis=;
        b=nUqAfRgCtHp3v37/koX1RAYUuuyb9EZjg/yLlC9nLgjcTrRPUy8/akabGwtUjrX4GZ
         2ZQYuq8XFceR+uglx8bM8BQVcak1SABGk/ZlLyK9JbPXve32BkpfkdHMO8zjFtkxSvO0
         GQ3Lt727+JyVdfuMkB1kdaRO0faEw37c5BT1Z8t6flKWPyOtyPBQnW4qivXnH6PLPPF7
         KsydhYR+LwEQhHgFyh2nl4oC9UySJqAsS0ohyZWmTybG2XqxTRVOQWuBoBV4tbEYUtvL
         Ynhv8QV4fbj/Lj6ENyqqW2Dt9Cs//mtoZ4WQpi+i/pjFTD9SLpWO/qRG3K0sebiasemZ
         yagw==
X-Forwarded-Encrypted: i=1; AJvYcCWahwoRuHfoYvQyW8JLzxQ/GSz7q7RR4Y76EkneOkWhdb/xRvfzp6h95wQhOMA1LYoTw6OYNSf22Jjc@vger.kernel.org
X-Gm-Message-State: AOJu0YxoBBMrpVFW4bbTWQAKhRcV/YPaSqX50hhIQ0ZWY1fNHFq/I3I4
	eME0V8oQgLnWefo0a/uAPz5LnRI2j8hqUaLynm3k+Ia3HpT8r1Ydf8cGQbKtTkNsUvc=
X-Gm-Gg: AZuq6aIXB5ULofIzXtxBlyjcfEKdHnRHF6IDevYQeVMim9USCtovjKtIDbmGg+E1IP/
	Dt4JeKKFRoaJ3n0T2zUNNS98ece8Mxhl+Dz7xP1bEnErqejlTeFQuNZhqAZtMso58UkCZ2WGBW1
	88OX8aBe78C9V/1Ycqpw6W95RRX1gSUyFcNZ7oCv00tQMwq2t++LXnz1VFt4xby5yMvbiDOFF62
	Mf532rTEUQtbg9522dK8uXYRM6w6hyvcqcTgU1fv/QpItpHJx+5AF7cPY4OhOqx4/4ZRCeK2pPM
	9hVR8p+mYMBWk0uaePhFf2Vu1TOTzzg5ehaxXGm1Po9JpOG/QoumDnw94ltryYLFe4nqEIH1Z+X
	5fx9CMVzddJZzVfwDR9ovz4K9ZfCChGaYxFkcP+yXu7LujOyd11Dw7jmu5ko13L6fV7sQpdH5ix
	8/vV7QuEfo/z1ninESuY/JN2mQBMEzFyk=
X-Received: by 2002:a17:903:11c5:b0:2a1:deb:c460 with SMTP id d9443c01a7336-2a7175a279bmr175677135ad.33.1769067040167;
        Wed, 21 Jan 2026 23:30:40 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190c9edesm171691845ad.23.2026.01.21.23.30.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 23:30:39 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 22 Jan 2026 17:43:45 +0800
Subject: [PATCH 4/4] riscv: dts: spacemit: k1-bananapi-f3: Update PMIC
 supply properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-spacemit-p1-v1-4-309be27fbff9@riscstar.com>
References: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
In-Reply-To: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Yixun Lan <dlan@gentoo.org>, Alex Elder <elder@riscstar.com>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, devicetree@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.14 / 15.00];
	DATE_IN_FUTURE(4.00)[2];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258227-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,riscstar-com.20230601.gappssmtp.com:dkim,0.0.0.41:email,riscstar.com:mid,riscstar.com:email]
X-Rspamd-Queue-Id: 68D37628BB
X-Rspamd-Action: no action

Update individual supply properties in pmic node to accurately specify
the board's power tree topology.

Previously these relationships were hardcoded in the driver; now they
are explicitly defined in the devicetree per the updated binding
document spacemit,p1.yaml.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 02f218a16318e5b6f512bcc37035fac37c25ee84..c30697732b627d764bdae9bc8ba44d7b503f0897 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -157,7 +157,15 @@ pmic@41 {
 		compatible = "spacemit,p1";
 		reg = <0x41>;
 		interrupts = <64>;
-		vin-supply = <&reg_vcc_4v>;
+		vin1-supply = <&reg_vcc_4v>;
+		vin2-supply = <&reg_vcc_4v>;
+		vin3-supply = <&reg_vcc_4v>;
+		vin4-supply = <&reg_vcc_4v>;
+		vin5-supply = <&reg_vcc_4v>;
+		vin6-supply = <&reg_vcc_4v>;
+		aldoin-supply = <&reg_vcc_4v>;
+		dldoin1-supply = <&buck5>;
+		dldoin2-supply = <&buck5>;
 
 		regulators {
 			buck1 {
@@ -188,7 +196,7 @@ buck4 {
 				regulator-always-on;
 			};
 
-			buck5 {
+			buck5: buck5 {
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <3450000>;
 				regulator-ramp-delay = <5000>;

-- 
2.43.0



Return-Path: <devicetree+bounces-268552-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGnfEDGBn2lrcgQAu9opvQ
	(envelope-from <devicetree+bounces-268552-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 00:09:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A1919E979
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 00:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C821309A119
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 23:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63F0C37882B;
	Wed, 25 Feb 2026 23:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZhY0IwGR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD42376BE4
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 23:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772060931; cv=none; b=gRsO+akJrpV0k6GH/zRJE4xtzGp3lOTjeoE3NnuHkQEnJHnIm8hYOzrhoOnuzpJTqnlcdpCTPP1aVYXYiGo8NloxP0Hj19GOUraS06C5WMLaXD8AQBa06sFhDJKT5Qbjc2Lo95NCEaCVqq4t/ouziLTvoCFLIN4VURIffhDsT7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772060931; c=relaxed/simple;
	bh=IxbPcvo19Cu6ni/hd8SMdlPZy2E8r9elnPSsD7FFDXk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tOGqeZioR0UuIW7i452Of3cMSZ+w4CBU62nF9WK+DMOmAfODvttQNaAZUFkOiWq6fTXl5tFHMdZfV5Mv1+kOLfIaFXs95VwNPAXQfVLyZYE8F0KDRyUPIlfAD4eruQbu/sTgYixesDmxCgEoO3UoW058grTypSMY3cMjBXpw+8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZhY0IwGR; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2aaf9191da3so1078655ad.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772060929; x=1772665729; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z9tiRaqzs41Tp2aztKcPkArrBbXFpbWH4r/ca+c356Q=;
        b=ZhY0IwGRNRvv7Lg2GTlL/3GIusmpwjURQWJVyErTh5+6vUOVALlB2YLsb91mbNFan0
         5drAvweWyE7jKr7/jpQQsoFGiNEfXpuLH+4grWrlojKT4EeyZODMGiG3d5ahkymFESlU
         RwZhD03/1CewnV/I3xkSjTfQiIt2DaciuWcWaICuuH6p6x+9u2noyg8Otty5kdTTk1A8
         UvVuPayg+jDQdnx+uqAryNmjPV5qI9Bzi19G364YYUYy75+R/aW+M0H5hzLkcu+a70Jb
         pqn9eeebxb2G+kp2nWXgHOfb+g5qtC/2Hw5PfvaKOblG4IFgf7ehvWdn9Kj5sEBWtgWO
         dPQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772060929; x=1772665729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z9tiRaqzs41Tp2aztKcPkArrBbXFpbWH4r/ca+c356Q=;
        b=DaRaoj6zO19QIfCA2eTlEyz2SrZscuQk3App7v/7c54vvicjma3wT9TtDbklEhjs6N
         oBb0ym2HDnpBj+iCpgwni1/tVBLokhY+cnESnyME7Bs2F01NU/y7e/USZK8o6dyiyXOy
         GEhTLYxD7LiKu7VgDaP51wo8COvjDjowweddDvF6Enn8S77wlZJqVuKO+b8uJUTKLGWU
         Ykir8bWWqW8GchIFd1IF5QXtiRUL5BTX0QTB+pSOjp8HmiP5mdezWaI28wnCM/WRCdY1
         B75ukrIYvK58gKzLxgidHaI4dHMCkFUQbBrs8iZXRvaukLR7PilsfoLOM3wtV9KaABDR
         gBVA==
X-Gm-Message-State: AOJu0Yy+FJGIk8AL+K00Ne1R1j+3qSuySViGbyDLrvLXruTs81siBqZJ
	lu5k4pHcDm9R49Vzcyr42OYSfx+pldwzrcgqj6vAdJOm9zMLoXd6iG5Jd09BYZ0k
X-Gm-Gg: ATEYQzxyR9EZyXHie+300WobTKGnNx+94jyTTnk0xf8X+OrsX5H+eDYJDJ5SvySlKDS
	HmkdytcmtMf5aCZ9gYHwJsmql/eDygzjDNaTY+1JOspC5uq2V1zvLAqIEijhIwlHqm8dWAd7vU1
	3SAE5JW11fzs3RAgi2v1GLyXd1oiWDR5Q+/4DzXvaQ4wFey+j8S0StBGjLq6DTjO1dvIZEx5oc8
	DuLzK1h/YUFBr47Ej2NpU2/grqPsqDSD05wus0HjpxjTN1DaIe1gm0QUP3v044XO4BNWC3yBp+p
	wddcQ1nKL4pY84+mrpSZFGo28vISwudc/BdLnfNx/VVXvccNcUWMiBGWg76hUKpoN2FpVy+lLh+
	0wYA67SbWa2VuOL0bCmDqLsSPROIR/trBFis9loDsYtDMsGPI+baIUqeGAqca6HrnsZiL8RLot6
	GZohe5AFdLzTmStLTr8ORjgzNzvC5DGginoNkhc6M3Mrf32ITySIAndQ==
X-Received: by 2002:a17:902:f608:b0:2ab:2633:d986 with SMTP id d9443c01a7336-2ae036ef4ddmr979255ad.49.1772060929153;
        Wed, 25 Feb 2026 15:08:49 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5b2309sm3378285ad.19.2026.02.25.15.08.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 15:08:48 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM5301X ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCHv2 2/4] ARM: dts: BCM5301X: panamera: set WAN MAC from nvram
Date: Wed, 25 Feb 2026 15:08:25 -0800
Message-ID: <20260225230827.21715-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260225230827.21715-1-rosenp@gmail.com>
References: <20260225230827.21715-1-rosenp@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268552-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.4:email,0.0.0.3:email,0.0.0.5:email,0.0.0.0:email]
X-Rspamd-Queue-Id: 95A1919E979
X-Rspamd-Action: no action

The MAC address from the stock firmare is offset by 1. Define it
properly to avoid having to override it in userspace.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/broadcom/bcm47094-linksys-panamera.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm47094-linksys-panamera.dts b/arch/arm/boot/dts/broadcom/bcm47094-linksys-panamera.dts
index 2b5c80d835e9..74161b76008a 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-linksys-panamera.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-linksys-panamera.dts
@@ -25,6 +25,10 @@ memory@0 {
 	nvram@1c080000 {
 		compatible = "brcm,nvram";
 		reg = <0x1c080000 0x100000>;
+
+		et2macaddr: et2macaddr {
+			#nvmem-cell-cells = <1>;
+		};
 	};
 
 	gpio-keys {
@@ -230,6 +234,9 @@ port@3 {
 
 		port@4 {
 			label = "wan";
+
+			nvmem-cells = <&et2macaddr 1>;
+			nvmem-cell-names = "mac-address";
 		};
 
 		port@5 {
-- 
2.53.0



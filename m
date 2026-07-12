Return-Path: <devicetree+bounces-325010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3H6rEAxiU2qYaQMAu9opvQ
	(envelope-from <devicetree+bounces-325010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 11:44:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9BD74449D
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 11:44:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=GbIMPeli;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325010-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325010-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0ADF03023365
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 09:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC12039D3D3;
	Sun, 12 Jul 2026 09:44:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8348439BFFE
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 09:44:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783849456; cv=none; b=OMZF/2i5GrhxZawyRC1bAGQYioV8t6/t07kPfI7il5lg8Iu+qSXyYdnwafDlETchj2LfIdMbJKrZrKgOLDfvL8cWpwYEIpCtLBSopdbf71Yl8rKpBJ9P75eDUNAD4mAbMOclGX21/QphsafBxTDt+Vw4Dw+HhF07D+MpD4x5ZeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783849456; c=relaxed/simple;
	bh=sq0oGjxu8DUaLVwSPszvX/dOqwJtPWCsVF3V/zGzKyQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sW/T8UDqB6MXDl3mSEP+0ZD9nBxwkvRtV73FN3two5IjIAjAOMhN3wRcIeY3QNEViyNlC2bOITzXgwNW1uXEmxC5DGsKBMglIry/UHzAzBtllRQNiLHxQ+7iLkKKQfngLW9/QRl5S7UA/4AaPM4D3LsVUqO4nvppfmK4ri7CuBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GbIMPeli; arc=none smtp.client-ip=209.85.215.177
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-caf45fc5202so1722a12.1
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 02:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783849455; x=1784454255; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gfyfU+/y0VxhZvR8biEYcxwDSiNQWNWT41U3UuYJlHo=;
        b=GbIMPelihOB8J306Kb2sx3lvkg2PrAREjZ+mGWXIlZUcmXzW8+ty8ECfVZUtxu9api
         EOnhj7hAPXfJfUjfVa715d922c0h4SKjuxTjyzH+hsn5HAHy1RpYTnCk4ygVvdyWPgUb
         NChFrXmvAjZFxI/6svCn4PIFag8A5uk6QC+m3w8m+StENE4F4qSAQBUHUr/ZNjKOim6I
         J9C4rJU9LWMkK8h+z9ixDoeVUeFY5ahRg+uTAEkeeEUxuvtYz2PYie+UEJE5A86j68tS
         BMm2qttsApdMXrx/1Z2rGhQhck7h849y3kE8MCJDs0FaIX/yr0PvF4bZQjqo0ExGQAbD
         VjfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783849455; x=1784454255;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gfyfU+/y0VxhZvR8biEYcxwDSiNQWNWT41U3UuYJlHo=;
        b=eqtPCy62L2GqxS3ZkCHs1guwx8R4hHAoS+LxjYOrH23UgmIhBhHQr8PUG4wvuBYzHy
         1I3Rpp9v7AneclJYXgBjX3mQVa9zvXlZGBc0AjuJMfF0Q59LxWKJ1xBxt7NixTsDK6YZ
         yn6mUlJV3zoe5e10kW+p0gJPfi1ulX0KZiYBt3wsupaYowzX8eUmeHyMzLS4B4hoJSQp
         Ef7qxfa6Y1D+lX6WvhBEf4gB4RSnYZnHa8cPQWMJ0C8dZs46qWyPNp8kAODkyfseJyVP
         wC98SxvBAJ8N6KIWfihvSSKT03dAP9C1ao29h7TGthCQs7W3DYoW7Z/e/bzoU2zoyk6F
         mk5g==
X-Forwarded-Encrypted: i=1; AHgh+RqBiI6jc1cnr16tuIGU+WReg4bMK7I8tqxoUlI3g4My2azKFevp5OZ9iFHOQLFcaf75O3nBigdQksYN@vger.kernel.org
X-Gm-Message-State: AOJu0YwkQu7TGS1Iw6QRkWe14rHzYHlsUgTNJ5rwT9x6i3lXryFWrNAG
	JtyjpxXfgkrtX2sqtU2UVP6gywAgyosK1S2HdNUb5F/niPdZCyuXyHxk
X-Gm-Gg: AfdE7cme3msdtr/MdRjK+h+tfmaXFslKhiSXwVz8Uzv5pRpvmuywZTwphNdqes/wqLw
	wa/00FkyHgSSpM145Poh2XNrYVDoM1ttAfZ7hkw/u5GGjX/aa5Q8+lMM7xyMuVYe6KxQqDA6lxc
	bTrq/4FbcmtdLHzyKmbrWBxNwiVVmIUdmcbcnevsH9RLTPgg+AOmVMzase8id3VINg+LdySm5/g
	rpFtNzMeEtt8ruODYCFI7r60NkCUpCDwsFlC/oHz/gx4IDMHNmLZpJ5f9bkOYk0JMha5Q7U6l00
	RTHvGQQ3pI4xZt265j/jhvbwALshHc7cO68m9csTF9A25uVoDmO4QrkyeqLV9vlLEFBjWmSGyXk
	kaB0kXVozHcHxDrrS0PDe2/d2WeEixTSDLWLdVOq/UZ9po0fEkA7pbUdGKGA0foIkV2FkEtUAYt
	CYg9pX9C3emQYg7wWvPiikQhlaZnnAbvQR/VshDVM/OSb0cDXAD/NgRV4cj0ETV+Y8bwj0Cq9fz
	sgSrpauklSR1kNZLULLxBqfLzYDJbQ7YL1XELVLgpiKcilUkb5ZIlDFwMXI4n8P
X-Received: by 2002:a05:6a21:6190:b0:3c0:9c18:d5aa with SMTP id adf61e73a8af0-3c1111a84f5mr5649202637.71.1783849454701;
        Sun, 12 Jul 2026 02:44:14 -0700 (PDT)
Received: from [10.160.6.73] ([119.17.57.186])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-313c50c70c9sm15268919eec.29.2026.07.12.02.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 02:44:14 -0700 (PDT)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sun, 12 Jul 2026 19:43:20 +1000
Subject: [PATCH 01/12] arm64: dts: apple: t8112: Add SMC hwmon node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260712-smc-subdev-dt-v1-1-7763006d57c7@gmail.com>
References: <20260712-smc-subdev-dt-v1-0-7763006d57c7@gmail.com>
In-Reply-To: <20260712-smc-subdev-dt-v1-0-7763006d57c7@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=664;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=sq0oGjxu8DUaLVwSPszvX/dOqwJtPWCsVF3V/zGzKyQ=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDFnBiU/cxdwM6t0N38k4zv9fM23D47ntU3dMCHfqMeaKn
 7Ft2vVNHRNZGMS4GCzFFFk2NAl5zDZiu9kvUrkXZg4rE8gQaZEGBiBgYeDLTcwrNdIx0jPVNtQz
 NNIx1jFi4OIUgKk+HM3wV7SNK7otQuGPhYOPrKNpqhFL0r7pddmGMYvVnDI3ytwUYmTY97Jiwv0
 n6xgfppQrTkjdVxHzfWHBxCkSrxuvN274tCOQBQA=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-325010-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jcalligeros99@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AC9BD74449D

Add the SMC hwmon subdevice

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 arch/arm64/boot/dts/apple/t8112.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8112.dtsi b/arch/arm64/boot/dts/apple/t8112.dtsi
index 85c47422d4e8..a3241c816c26 100644
--- a/arch/arm64/boot/dts/apple/t8112.dtsi
+++ b/arch/arm64/boot/dts/apple/t8112.dtsi
@@ -921,6 +921,10 @@ smc_reboot: reboot {
 					"boot_error_count", "panic_count";
 			};
 
+			smc_hwmon: hwmon {
+				compatible = "apple,smc-hwmon";
+			};
+
 			rtc {
 				compatible = "apple,smc-rtc";
 				nvmem-cells = <&rtc_offset>;

-- 
2.55.0



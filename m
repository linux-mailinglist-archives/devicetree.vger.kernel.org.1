Return-Path: <devicetree+bounces-274688-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMBtJ1bhsmncQQAAu9opvQ
	(envelope-from <devicetree+bounces-274688-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:52:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 072B6274ED6
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:52:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81B4830484DF
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A820D3F1655;
	Thu, 12 Mar 2026 15:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LwkvDyS3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416B83DB626
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330620; cv=none; b=HKTsrufhToL1cDT/gg1Tht6VbBd6+HnvkYjhwMaSLz2r11RYwdTFJEKV3G93AYj1TUK9lSxWvnGJ3zz37UVzlljVFBLZqC9EqAiTCBlPWiuCJRW1l8z+ropeezmIJ7+yeTx5rjUyXz4DxwBYLZBMbZyvHiP2pCZ4k8a1zf5uPkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330620; c=relaxed/simple;
	bh=edVr0rbhOgkFhSfFFpjtgCVxX4FcaJ3T2Pi370Z0o0o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=obxLiassNEe/0sZI2yINJeE5bPcgk8xJ+jQSTC9HrUjpicuyOf3l6+7D1vbJZ14u5NeXoQmZME8o2t8EIBFue2QqDut4vZBvrp4MXNPSiD1FC+GnbOT/+lomN42QNdalZSfuHEZOopLtcVgacwDxIgfSFXaBBmgK9S941L3+W7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LwkvDyS3; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so13648715e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773330612; x=1773935412; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fnIikZ33fceOx0YIGtLUvBXoWdyjzbgo3+1Q5/tnQ60=;
        b=LwkvDyS3r7uLqkOdoZS5Z0JTOq2/rgMvyyOJuQn24jVuE3hrQkwOtWlKi1GEsQzupB
         9QUwdnNE5AB/MDhIp+mTSFySmPkNupxL8YsmNgQw6IyucyrNyRV/oIcFTVRIq1chqTtw
         nuH9vz0l02eRM7foPh8lByCnlFNdj4bxUiqfOqw7UMRt+tAa1xojayKbuEoeUWRmjmgp
         GuchyZOzVXT0NW+fMkPVphrejZif9wZysq1QsgXH0tYdy5qOSs0JQREgdyFniZzVDhXC
         9CQ9PGSzELILqFFmyxNCHdzFbvSynMcpbHi11WLvP0loZ6bOdVGzrMY34OQaIJ6y7E4I
         9WcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773330612; x=1773935412;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fnIikZ33fceOx0YIGtLUvBXoWdyjzbgo3+1Q5/tnQ60=;
        b=CUEMzDAqJUj1cz0Qv4NKwChoPDxHZ0Vc/AjFY8D6Rcrbdju6wiiamV6ZnSy3po3T9s
         oqcW+xbMhQfF5MYaUAGzLbEFgtFCZGxqY34Wk+EC4hLFUgAp9/YkI+BfFHTlMtsnY4DF
         VhRhm1mSHhasas+mm+iNAyA/tl00LaPvg3JHmaa3t62mzH0jt3nEOx7+JenMFHMY6shS
         E1BZq9hd80kHW+dAaGiiv8wjlAqFdW1SwlPuie/Dc+9aLMdVXOzYmwPmMkBEYthuZxXq
         0Htn/7bzjOIV75exJh3H+/2756GA90sUEgSz1+xS2qV0Pijvo00e/XWTr3MoRyqavUwY
         NEGg==
X-Forwarded-Encrypted: i=1; AJvYcCUuBzQe8e4q5/zix39+Xo0Jem4FlSnBpQSuV7WlorQGG4WSDGRrDLwpGHu5CXi9uK2+TQiEJ/Q0jc8k@vger.kernel.org
X-Gm-Message-State: AOJu0YwQLCS05Ucp2C6HhT9MOVP77wuxIIFd+6Zbi0xs/iTu5XNh5QZo
	8aeZ3AMmB50YmvVm777/nY2lJeIvQFoxzK7RQG25dwRCPb/VtpPT7sKH8IGTMFI1lt0=
X-Gm-Gg: ATEYQzyRdAEOm7tdiTNQghYP/nBVLWg1DsOV6MfpfIsjJr9hzz+1KMOt1ys1pMrR/Sg
	Q004aRxSyG4tH/MhLowdFSNvgsOPcgrIxuQFVK1Q2G0GKfIIUy4UkggkrGx9u9SRoqa7U/Dh7o5
	x+thMIXkWPue8okBk3xNW53BIZb1Ofo9P3f/BUBVq5UQ3BEWPAg6QQ24/ETjjsxE74BaQ6jx1D0
	OFxrCVM8pzE41Ba+EXIwqgpRcB/5aS3uzFh/4HGPwObeFAho4pA2w21IHjnvUe7dhjTWlCPCWLn
	Cms6cVF04q1kWVNsDq64le3bNCSeZpcikECw4WOePaGKaOzMpbKd3Qq8Km7sIJo/gdVLnWc7d+k
	QFm3T3SnebdwKQvLSh8unbzwLae1GW/bzxTm4d/W/cHon8t10O8lhLZThTCcg0GdzViU9N8HvGO
	aGGwcIKHnxpBK9OSQazMrN
X-Received: by 2002:a05:600c:8b05:b0:485:303b:c50a with SMTP id 5b1f17b1804b1-4854b0f064emr120153505e9.13.1773330612434;
        Thu, 12 Mar 2026 08:50:12 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541acea11sm269787315e9.7.2026.03.12.08.50.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:50:12 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Thu, 12 Mar 2026 16:48:59 +0100
Subject: [PATCH v2 5/8] arm64: dts: ti: k3-am62a7-sk: Add r5f nodes to
 pre-ram bootphase
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-topic-am62a-ioddr-dt-v6-19-v2-5-37cb7ceec658@baylibre.com>
References: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com>
In-Reply-To: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Suman Anna <s-anna@ti.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1183; i=msp@baylibre.com;
 h=from:subject:message-id; bh=edVr0rbhOgkFhSfFFpjtgCVxX4FcaJ3T2Pi370Z0o0o=;
 b=kA0DAAoWhcFWaZAVSlMByyZiAGmy4I6g3ZLR83kcQhbcT+FK7suc2HUjOfNOmusY1ybZ3Szav
 Yh1BAAWCgAdFiEEiWFVZv8fucZjoqazhcFWaZAVSlMFAmmy4I4ACgkQhcFWaZAVSlN5cAEAxmek
 R+iMfvZ7Ha523ikLYNBTzD0cWFBa1VsJt7ZqvpcA/iQKjzj92bSRqPvO9rmBaPloTrU5Mpsq75r
 xUZv5BIsI
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274688-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[9ca09000:email,baylibre-com.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email,baylibre.com:mid,9ca08000:email]
X-Rspamd-Queue-Id: 072B6274ED6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For IO+DDR the wkup_r5fss0_core0 and the
wkup_r5fss0_core0_lpm_metadata_region need to be accessed before RAM
setup is done. These are used to read the lpm metadata region in which
data is stored to resume. This needs to be done before RAM is in use to
avoid overwriting data.

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index c381cc33064ec427751a9ac5bcdff745a9559a89..46483d4085c20fc297d28a49ca7ef5d4bfc4ae9a 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -75,6 +75,7 @@ wkup_r5fss0_core0_lpm_metadata_region: memory@9ca08000 {
 			compatible = "shared-dma-pool";
 			reg = <0x00 0x9ca08000 0x00 0x1000>;
 			no-map;
+			bootph-pre-ram;
 		};
 
 		wkup_r5fss0_core0_lpm_rest_region: memory@9ca09000 {
@@ -957,4 +958,5 @@ &wkup_r5fss0_core0 {
 	memory-region-names = "dma", "ipc", "lpm-stub",
 			      "lpm-metadata", "lpm-context",
 			      "dm-firmware";
+	bootph-pre-ram;
 };

-- 
2.53.0



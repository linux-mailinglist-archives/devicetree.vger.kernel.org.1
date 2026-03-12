Return-Path: <devicetree+bounces-274687-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJceBVPhsmmWQgAAu9opvQ
	(envelope-from <devicetree+bounces-274687-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:52:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED4A274ECE
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:52:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 902B23058E02
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:50:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89A333F1652;
	Thu, 12 Mar 2026 15:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ykHYUVN0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A31B3F0760
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330620; cv=none; b=T1iBkq0s3/ROc5fDibshUY1XftjHcRk39DWtdkpeerFCgxdBE6MlZ/eVRoU3c4y73w3wESLpWOCrn/Qppn95+Z1oekUX2MDEns+XrKHjDsWXkzNGs+rwMWKLdaVJ+LQ5zAm+AVNtDqM/utS/qRA0PS/p2myvm5CRpyhEotcCYM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330620; c=relaxed/simple;
	bh=iQg2/EW5erfGuk4mijSK5nSh9QVwrNZkATnyLQE0wvU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OdB4EhMXGWT7izGkY8Fw5w4IQfdre9+3sS/jkaN7FF/f+Wri8GJ1z5MQHKDD+3Gyp2xcCGM7C8Jm02DBhkuMFl1zHAebLjFAV9gn+a7yxpOHY5oddmDfPJHxdvBGYm4oivLZVf/nmGfzmF03TWqL4SAqP09zHodeAEFEeyC+9V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ykHYUVN0; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4852ff06541so12278615e9.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773330613; x=1773935413; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zGfrel/ZHD/jnfQbmAOjbJYHLBGT6cfB4kl14spMH9I=;
        b=ykHYUVN0YQdEbmDttumLD+YuZUGWaEXvH/6lUXE15HDrhwXCis8jGZqkwWhOODyi0z
         v//M3uZh4ZD6WRCV4sfeQRjUyUmEOoAc1iGJC9ZNOTtPgv0LMPVWiHogCkVXdUN+ACvc
         xgsoECfLTCKtDFL8XXUPwxYkrVlknmdR4+zO4dbUwEQjKq3IEVk4qxjpmurPFl09P5+v
         KhQF+Hbt8ICg7O6lMt6jKwrO/IfQPWA1jyo5UYI0oO46jcWDOEXWW3RHqfvoQ1xwton5
         IoPE34tqDk69tahICZpIwobr4Xxr3ma/oN0LFg7PRYrdtKcmRI808M5OfsLVhZ3pUapM
         //oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773330613; x=1773935413;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zGfrel/ZHD/jnfQbmAOjbJYHLBGT6cfB4kl14spMH9I=;
        b=hK6lTsRhRVQBtY1p5NiAEH1tpoo8feF4xJj8mXoeeQQIT5r8aAeJtpmRry9sfXMTHe
         Nmo7i3w6TZnvmsNDi8DCEcRsozBxs2dbEe0rPy1jFptaA+DweKFFuBuDmw9jGxWLC8/j
         GQ7K/HL23XsYGF5UYomfiFSk+qDxwo/EmdbFMxTT2HF7UIISVfftjUgT6ve6LNOPOxj4
         jepwSKm8sdVwdwcL+2NLck2YNV49+ESOVyJgEFq3bkmtXwIXt73yEfwnDoFGpStyuKtF
         h+iQq3LMiGueaz9FbJJ06w9ClwFEf9YTZ5NIl1cbmAJpv8KDF2aR79Xi2EtUXMu3bqQU
         mbbA==
X-Forwarded-Encrypted: i=1; AJvYcCXCF/Fno06YF+fMoBjc5+Zcd+TijnfFoI78WvhNftlrpGA2tCq91uZPkeqXH+TbJ7LC9eSkGzKJnFuL@vger.kernel.org
X-Gm-Message-State: AOJu0YxUzRVdbMlwEHIq5E619LnPUVZZmkTuparvF2b/OzTTZprlOh1r
	Wx98+Up4empEnT5OmPE60NqYSXEw1/hjOpiFq03qz8r7egZBao7phx9/5aitbY84ZHs=
X-Gm-Gg: ATEYQzyMS3LO3IzvAji2scScPiQlgEd3ctlvtWeOIcOjtHfRfxiSKkJwwFAiwEIyYEP
	VLQ1Iav1KtbzFIy9hW8wZ6wPFXeY7YuUyEdU4jIVeKFqbBeO1cjDRS5rQ9ZBcTS6JY1XyoGyzQn
	2FZnjp5uCah5z/vFh0iM2kl7nytTRbY/VX9RN2IHeWfSAoy61vxCl1zWFXtcPLOzYE96/YCjlz3
	2pbVQ04Jco5ZdYtizMzMdDJbP2dCLpucsvF+MFhmGKBGNFB7oYuIjSx7z0IFtOj8RUtvRDC7YqH
	DRGWodMwQmfBCiqcB4NvomSXkFf0c1dHENDcblRtwl5oxqTfdjZEAQ8RoyzrKN5fbXjtBXqRaOB
	YH8BONo7WoD02o36ZGzWoLg08FC0y/QSO2CKIzPuVkGfCIIOqlXNb7bEWwrxBmM1vz6poqD+q2p
	MlyLODTvCrTDfgk20Fuo0RZZFVrKBqmT4=
X-Received: by 2002:a05:600c:1d16:b0:485:3c66:e21d with SMTP id 5b1f17b1804b1-4854b0a56c9mr119096055e9.2.1773330613544;
        Thu, 12 Mar 2026 08:50:13 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b5e912fsm361182305e9.2.2026.03.12.08.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:50:13 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Thu, 12 Mar 2026 16:49:00 +0100
Subject: [PATCH v2 6/8] arm64: dts: ti: k3-am62p5-sk: Add r5f nodes to
 pre-ram bootphase
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-topic-am62a-ioddr-dt-v6-19-v2-6-37cb7ceec658@baylibre.com>
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
 h=from:subject:message-id; bh=iQg2/EW5erfGuk4mijSK5nSh9QVwrNZkATnyLQE0wvU=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxND6bmTWfLePjz9YetV1XPL1uRe6HDIOXBFz/H8H1Tz
 U9zB8rs6ihlYRDjYpAVU2TpTAxN+y+/81jyomWbYeawMoEMYeDiFICJ6N1h+Gej35bBE71u2YyZ
 r9XPzmT7wqb/fObN/GWTE7xkz9dOk2BiZDj/1cRFh2WfcdS1mvpZH+vz1LWVfyWfFDZWkU9r9vo
 QzwEA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274687-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 6ED4A274ECE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For IO+DDR the wkup_r5fss0_core0 and the
wkup_r5fss0_core0_lpm_metadata_region need to be accessed before RAM
setup is done. These are used to read the lpm metadata region in which
data is stored to resume. This needs to be done before RAM is in use to
avoid overwriting data.

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index 7fa4924ab52484c7ac4243a0cd6c0d7aacaf8b30..55e75e9946f75d4d787c933d1d87de6ea9670a13 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -71,6 +71,7 @@ wkup_r5fss0_core0_lpm_metadata_region: memory@9ca08000 {
 			compatible = "shared-dma-pool";
 			reg = <0x00 0x9ca08000 0x00 0x1000>;
 			no-map;
+			bootph-pre-ram;
 		};
 
 		wkup_r5fss0_core0_lpm_rest_region: memory@9ca09000 {
@@ -868,4 +869,5 @@ &wkup_r5fss0_core0 {
 	memory-region-names = "dma", "ipc", "lpm-stub",
 			      "lpm-metadata", "lpm-context",
 			      "dm-firmware";
+	bootph-pre-ram;
 };

-- 
2.53.0



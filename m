Return-Path: <devicetree+bounces-277333-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLUEIkTHumlobwIAu9opvQ
	(envelope-from <devicetree+bounces-277333-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:39:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE50A2BE68C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:39:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 578AE33A8B16
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A733ECBF6;
	Wed, 18 Mar 2026 15:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dXHCSTXe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBEC3EBF35
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773846869; cv=none; b=dlK0EBYh/Y0cF9REzR0EnkVCY2CJdbrs9VyXJFKODPe6ZXWhkY0v6Rq/3LXrVFnIjQ8nHsyOPrQKseiSyvAkrzgbeMfkDBKjFpQg6BgVMqzr49gqoW9yAcHjQt55Y75pj2Eboo3NzrjLK2pXR6MM0opxOyNpxpKK+E8rhAPZH7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773846869; c=relaxed/simple;
	bh=iQg2/EW5erfGuk4mijSK5nSh9QVwrNZkATnyLQE0wvU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ldkaGtM2va4uYFjs+v7hgoLGcLa6ipMhJx5vKW+u88dRFR7BnS2a3RoxoXobJZ/IvI32h7Xcq3i2biLLluX+vrK+4zhadmxv7fCEzw5u8wFnlvpXwM1DAP99kcqIrdlsN0FOVrMNVG7GXAVIIBnqxOKCtgkFcuCUvHZ7Ja49Wjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dXHCSTXe; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-485345e1013so8140075e9.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773846862; x=1774451662; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zGfrel/ZHD/jnfQbmAOjbJYHLBGT6cfB4kl14spMH9I=;
        b=dXHCSTXecQ7ZxnVepSo9r7nWEG680FKcBJtX19fvXivIetheC8U9QR28Uj25oMRCbG
         AZ4MWE7S52rDg6uClgQbqacJG8I5QjFvMxbzKnXifFMa1GI/0/+7WVJGgaHlx/uu70RY
         T1zziEcqffyQ59+dqcU8Nsc0Lh5zwLziDlIJwIUEFfgBB1XFaIATUmEplSHcTt/dDfzG
         3EZWsqm9VDQNyMqDCrgm36WeEgQBkONiKYBOkwvw/sqAqZkZpm5LDxiZdAJsyjSNz9AQ
         svLN46Ha1Pkfop+3S3ZuYvWBNwWo7AbSwHZLE3mhrTgnWASryTSNfFDZ988e1UHa517u
         A76w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773846862; x=1774451662;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zGfrel/ZHD/jnfQbmAOjbJYHLBGT6cfB4kl14spMH9I=;
        b=MG0cU7KP/ffqnt40FIk+ZEIQJyX9EI4d64428Wusv8wDK9eB3/xojdn/xJdQLljb9J
         JwbDqtfCqos6l7qBnZ7N/G50zVtUz/NC1qNPDyhX35gUQpMfOrDDCk1AeZFOyLVH1Wdq
         pt5JIqaLJ/PdPRWUTQdoEa9Hhzfz9Oe4og52s4ElezVr8L8FmWOcihnvCrxBvJ6dU8AY
         PKCBp8DVyrxoqzQn+9tBrRVKEtLOZih2B2tfjMJi9W6VTRa1gLMP60LTnj2MkuKSysVx
         XGe0wesQPseEDARpmjtqpigvJrdgb2Csj2S9fWNgy/5DLAAnO4NaP2YIeeKcHP/0/0oM
         uuFQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9F0Ltn49TCVn2oZX8xfxNnYhF3YHM58GrOpPsSC9SxoOfCdgVguK5THmRPkkO1eeYGo2O5ubpUZCz@vger.kernel.org
X-Gm-Message-State: AOJu0YwuCrNj2uAi6YBB7tMb1wvMqPJKqVye0GuH3D8Q4pU72jgaKb4Z
	BkFCGO0TwDUOBbG81DnMvHfD9YHyAQ0v+bbEOArOQLKbXdy9zu42m7cOBAEX1w2BgrI=
X-Gm-Gg: ATEYQzy7+5zdQPhY9CyixHBmZvK5Y9pLzxS+TNM5eBJ4WHHFcbdaf82VXnFFeyA2crw
	fomb2yZT4LwGfm4pGXif+vF47H3fB0O+TeVwmP3p7Z8eUM6pxEEdUCkrIzijJyyocoVOcX6i3yQ
	lk+4n6IMQTKE1c3GCF7D5BSxZ0n7U9W9v4WTXi7uOOi44yX98bGeCahaYspXkNNZUIkV0E8gXDz
	OdHCmdh1ImBaH8YWSTALOcZkrTs9nf8sPP5Xmf1GpHxp0m4ZgsqxGNN8BPWq19JohjsAnrf25Fy
	TnX6JSU9UbdNYUBxCpGk3wYB6ZvP0Mup6fHVVZtMafZfsa9cVGuKR27Zd6etwrBPIjMeV+3oo7J
	701WOiTzbV7lOq4CqfO1+ekmLk+hwaOupckOluJH7c9bqkSyZOs8dTiYNPUnOhPTORYElmIWiV+
	WIY/chFhUfdK5zb6r2Fi+D
X-Received: by 2002:a05:600d:6414:20b0:485:39b9:9680 with SMTP id 5b1f17b1804b1-4856eaebb6bmr93960945e9.16.1773846861955;
        Wed, 18 Mar 2026 08:14:21 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5189970fsm9220183f8f.27.2026.03.18.08.14.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:14:21 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Wed, 18 Mar 2026 16:13:13 +0100
Subject: [PATCH v3 7/7] arm64: dts: ti: k3-am62p5-sk: Add r5f nodes to
 pre-ram bootphase
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-topic-am62a-ioddr-dt-v6-19-v3-7-c41473cb23c3@baylibre.com>
References: <20260318-topic-am62a-ioddr-dt-v6-19-v3-0-c41473cb23c3@baylibre.com>
In-Reply-To: <20260318-topic-am62a-ioddr-dt-v6-19-v3-0-c41473cb23c3@baylibre.com>
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
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxdB22qtudcW/vOftsUM4ujlgu+n+nKe5/41MwleM3hY
 L1zwldKOkpZGMS4GGTFFFk6E0PT/svvPJa8aNlmmDmsTCBDGLg4BWAiETsZ/ikkyRsuDzs/88Wu
 ZUs3Ra0+8Ztjv4uC/XytUj1JndeKGUsY/gfvOp1SKBihVZUR1/xs3ulCn/mxE+ZOygl0Z/3UwZK
 vywEA
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
	TAGGED_FROM(0.00)[bounces-277333-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:email,baylibre.com:mid,9ca08000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,9ca09000:email]
X-Rspamd-Queue-Id: DE50A2BE68C
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



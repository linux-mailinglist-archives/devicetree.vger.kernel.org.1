Return-Path: <devicetree+bounces-272873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HaYBZmyrmkSHwIAu9opvQ
	(envelope-from <devicetree+bounces-272873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:44:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8478E2381AC
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:44:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 43F633038F03
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75D7C3A9DB0;
	Mon,  9 Mar 2026 11:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FcnV2Fva"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE57A3A9633
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773056444; cv=none; b=hANwJlBhw3XMBdLyKgVh7YRz4GIDi8bTIsEgYvIqcobZf9JkST9Yjec/jEJoSteloUk7LAWorwCPZlCQkTSp2R2aArujYpAlnpDfo3mgg4UIwKTHxHmBIVi8+JpVV5ab5KhPylCQr9EgERb8BvGqU2DGwT5ZB2fDm4tsVIcyMWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773056444; c=relaxed/simple;
	bh=JfN8DfHHQxhwjIM1D93NxIpzHPkcFqd9tyZUtqUCLT8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=metfAzJGmjXgpZfYfXPXaSC+Py7/45Xge+cia8Bo0DBcBeoxLMgBT1vVQxMCIwk8nEaj55V66+PUATtS9zkhX+ITJYpUdCT8oJs76xA5XV7JVVxyjKxbLJrlHR+o8KS8joKOJAuacwLvhSwBeb5U4BLcA/f+ypjmc6rlV9JlFoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FcnV2Fva; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-439c9bdc1eeso2118771f8f.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773056441; x=1773661241; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=njsRP4EImn90P32g9UPmNNWBlL1/zM1gb0xUIcz/r+Q=;
        b=FcnV2FvarKhQyFysWmhzj4pSQNkaUgVhuh0J9NmTYb98sNIfQFwL7vdvrF2ouSs+dv
         j6FPhXyruE+TE3nOneEWUPgRKqwx5eIdJI0NmnHb2bq/mSuznMzbuFQtt8bceRI4s0yr
         6rXR9yTrMqFglK1o9IM8JISZxXguY+jVU8Q8SQnOTsjxyftkCXXj9DWYOW+bsNyQOXUD
         CX6iqIdsWMj3um8IYyYVxusluzpZlZt8dkEItAxHytuM2jJ5WZ6ZNMcdoAMV8CECQPfv
         ft93pZJczpHJoc1fraJl/C1RW/WDavEeqWyASnbXKiwRhZICBOoN8K7NSZRtBrVAQ0lH
         zqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773056441; x=1773661241;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=njsRP4EImn90P32g9UPmNNWBlL1/zM1gb0xUIcz/r+Q=;
        b=ZohhTot1Xw19BC8cNfLO4slVT6vUBebP6OD5fa4Q7+ZQ1VGZZq+7Dk53iquqZm7BR/
         4eRQolcHrNBSz/r2QAsoUbLqO1ylZ5sqAmaVar05i5YJFe4NXtQsI1VxIEFfloz4J3YG
         xMwkYRQ9K+O8pEDcpb0EjnpuDKWWLnnD8sYi5bPwJVfgQl0xjt8cFLk0oH9MOyFfk05I
         gzLxHuakoEsLELp/lxhOyBpTa1/Tq3qT+U2tGSjO4/tXZcBWFGJkcov2duzrzeC/RIBe
         axK0yIofwMCznWsWl3CTl+G5K2k9cEnAOSE7bCqf9Zb4EdM5B5tRar5+kGPWqdGEAabP
         ecyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjzDrQ4SrmBLx3k0/cIRCCqzGwHmEdE19wc/sJpyn451WBxyU/wt570zmyk6boXvNDNWJ0SNVCAzDN@vger.kernel.org
X-Gm-Message-State: AOJu0YwQM+2WRY1O96qAw4/XQou22UQ0l5p0R3wwsI2WlLl2c+06gg7c
	nzX6NAzXfEtZBLs3xGNfaFSczSQ6ej1tevfJGmN/RCXJCbVJXRfGMe+a
X-Gm-Gg: ATEYQzz4KLqN8fnafT/7kkZBWUaLg5eDhgVmT4Ai33/lCgfNNyFiBcwYvbMQILo3vtM
	sCW415G72vGY329a1po3+3AgXirEMPbrPa0lLB7PqwmGZv1qoOT+GRYQH2rTC2MDxGl4rEbHzVb
	5ldWZENgDL17ozVvqQ/B4S2mAtZHWszlGgAgOF4nvFo/qvwBkt+kylusBYLkkE+YPcJyV9gI9Ku
	HSrCKSASaTB2nqiHuoezXGsV//To8HcGPXLE78nN+wsMs2rWM8yPyCS2qEfLdjujHT17N5wKjuo
	uff56Wrzu/WJnedD82dfDYympxUTaX8Rtt4jQpXsUkCaTqXgNjwfm/S/kodKIOjXwaBihgFBUVd
	SWLIXgeHNCEJtoQi1Vcp/R89rtuC5ygKPT/d/QM1BNbmFLQIyb4tah0kf8cgLHctTK48vzX4oc2
	GKnC1U2hltEU2IBY2FqJKNjpfRwakJqj22C7vpuXHXzGH9jshR1yKpqg0Mpk0MCf14
X-Received: by 2002:a05:6000:61e:b0:439:c18f:5aaf with SMTP id ffacd0b85a97d-439da67bf28mr20283499f8f.34.1773056441001;
        Mon, 09 Mar 2026 04:40:41 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.236.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8ec97sm28471699f8f.5.2026.03.09.04.40.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 04:40:40 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 09 Mar 2026 12:40:17 +0100
Subject: [PATCH v2 7/7] riscv: dts: spacemit: k1-orangepi-rv2: add SD card
 support with UHS modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-orangepi-sd-card-uhs-v2-7-5bb2b574df5d@gmail.com>
References: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
In-Reply-To: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Yixun Lan <dlan@kernel.org>, Yixun Lan <dlan@kernel.org>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 8478E2381AC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272873-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.966];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add complete SD card controller support with UHS high-speed modes.

- Enable sdhci0 controller with 4-bit bus width
- Configure card detect GPIO with inversion
- Connect vmmc-supply to buck4 for 3.3V card power
- Connect vqmmc-supply to aldo1 for 1.8V/3.3V I/O switching
- Add dual pinctrl states for voltage-dependent pin configuration
- Support UHS-I SDR25, SDR50, and SDR104 modes

This enables full SD card functionality including high-speed UHS modes
for improved performance.

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
index 414b03f5e6480f05f5d7eeaaa0afb4e86425ae36..361135269801f436703b6f1d768c91325a52f07f 100644
--- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
@@ -140,3 +140,22 @@ sd_vqmmc: aldo1 {
 		};
 	};
 };
+
+&sdhci0 {
+	pinctrl-names = "default", "state_uhs";
+	pinctrl-0 = <&mmc1_cfg>;
+	pinctrl-1 = <&mmc1_uhs_cfg>;
+	bus-width = <4>;
+	cd-gpios = <&gpio K1_GPIO(80) GPIO_ACTIVE_HIGH>;
+	cd-inverted;
+	no-mmc;
+	no-sdio;
+	disable-wp;
+	cap-sd-highspeed;
+	vmmc-supply = <&sd_vmmc>;
+	vqmmc-supply = <&sd_vqmmc>;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	status = "okay";
+};

-- 
2.53.0



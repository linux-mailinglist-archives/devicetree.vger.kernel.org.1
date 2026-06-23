Return-Path: <devicetree+bounces-314865-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xyJ9A4mYOmpwBAgAu9opvQ
	(envelope-from <devicetree+bounces-314865-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:30:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCD26B7E56
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:30:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=9elements.com header.s=google header.b="K/ZRKo7f";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314865-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-314865-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=9elements.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DBBCB3045C9D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 14:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46FED3CFF53;
	Tue, 23 Jun 2026 14:30:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916FF3C9EF8
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 14:30:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782225005; cv=none; b=mngsvIZmzXOe12+NdzAzDbiOC4sIhYHx/woASyJ1LwZFnk8NftA3mdTJBULuHDLwokpOxdgBUs3AViO00I9Lcylf9VCmndI0NVfW/H8skIq/E8GirE5b/JeEXCUPDgmnTkHR5733mRcGAHTXWcjPcjMQAa7aZT3ax51LR1a68Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782225005; c=relaxed/simple;
	bh=dLaS5Sy8gUpm0N42qZ54uayTqxL7b5QT+UE7kAdTI00=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gIPNAVFF48L2Wf/ZexytuC0cn5bwb9f5YAJOH6esbLS8qVUmx0poyfoWC090YkAjQgQISR2LHfbGJgNtzIy4unfEKy1FeJ0VTzifG6RNWudNLwf8tVY70SUHnNirSIxdXYZdSb6MNyz6XKwnlsXfbdOzEuQHfjotQZ/xAoY0zRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=K/ZRKo7f; arc=none smtp.client-ip=209.85.128.50
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-490b1bbcf3aso37436455e9.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 07:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1782225002; x=1782829802; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E7ygF1/JVCediAjvQA9d7z/Koai/OFw+MbowQK5OiLM=;
        b=K/ZRKo7f6xH+PPagk8fJkPStDnqCTY8ypQKNuIEx7CotZbIZxq0YV4BxNX25PPDngM
         pQb1xocTO3G23aoR9cAJJHJ6ZzoYR3lfhjkGb21ZFuKXXjcdKT4ztBgRggWxAr365cim
         QwRU6H0h7pgJG57PmAdXPZ6KsYxTcNhtvNBphO8p0W6KlVARMIYocfrv2lss2xcqvx8C
         48NRtPZfaBHkqvlMOPFHlpLfmy/Pjxv84tiJQKZDNDtYPKvK2hryD8aoYoQayzubgvKx
         4qKT/9JbfrJ5tOcjliIRlG7xaM15+DhTQMmGyaOyvwjW+tFcCgDJE6Zp1HyCpMJ72JJH
         0wiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782225002; x=1782829802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E7ygF1/JVCediAjvQA9d7z/Koai/OFw+MbowQK5OiLM=;
        b=CL/LthwO3HzgziDrdME/P+zS50q0BZhAanntsBRjky9eaDsvDSMT8qwevNaAx1W9Ff
         cCbbjSbGMBf03g3cqytP4f8KxsXA2FRWsHeakOLrU5TOJxufLwLI6E1guMl6RmlI0Czu
         ddK/BN7cFNqdSEeTRbsFzJfBHL/F5hgX2yvQKpOnJvJS1MG4QUzzI7syvT8W2ZqlcN5h
         eAW+gbhr4IROz0t7JmKoG9k2euC3SshN5gX+mc9+zPdl85J5JZuL2pXgaOKA3kbAMHB5
         k9N6ilsGoxyp4vajUAFAciq0QPmcHhOiog/wyemWXPaqlhjSEhHr/VjLYVelGym51rFn
         ijDA==
X-Forwarded-Encrypted: i=1; AFNElJ/cN7rJ2QJtBEdgdgflL7w3WiK298bc6ebbjwR1VdUMLHE+WjgS8T2h8D8oJK/onPS0ZL0DJHVdcBK9@vger.kernel.org
X-Gm-Message-State: AOJu0YyS0RidmKGQQucNw45t+K7WuyH/oubgpNMc2XN2Z/MBbdtyhYHu
	XUbjHOzaHdSNlYpW5+oTYEmsa6oS2tDf7+hZ6FI9hRD/bqQIPJpnp+K8FLzHC5lrigU=
X-Gm-Gg: AfdE7ckFKlZ+Irr26826Gb73m5FJp3iDWWCvHct+A9ZG0bqhbut87t618hoTNaKDw8h
	bcu4s3D3VfxcPu/h4ohgiJbUEoKO+ziYd2DiOECnE5xSUPlI5erwP9e7HaZGU8UxKeCt0g17T9q
	Z1ml/SaZGhSkQGdHUZP0LAUR1UITLS4tvX+UKQjG6UwcLiz+iuxH7mg/YSrVAJGk4BGzeTJUHjD
	oUPkiqknlh0+vhs+Kk4M1qtG6JDPKwTMThQQ03NtUODDLJbq5WH6GxOPiWk7Dq+6ConvDZvBwe5
	9IUjeivnYYPdvcIFbbEsr42/ClCAbAtpetn5wY13JqErAKqOc60h0lrsLNCn3KUQEQUlo/8iyZ7
	RTeme2AGxhppv4u7wjCVLvmPHV0p6Lb6Ibv53ASK0n/GRnt+iugIbM2mE4+O6e1E3IorOt5mq4F
	yVOQzBeWtS/hJlhgMb7sX4cHynOojAp8lMiwEDYyZqLQ/jWcvJMdn7f7Hcuu2xEYLtbXlMp+da0
	MHgod6KfT6YyUuhdwH5gVMfMTOg
X-Received: by 2002:a05:600c:4691:b0:490:b9c3:6c48 with SMTP id 5b1f17b1804b1-492490af5cdmr215448425e9.29.1782225001894;
        Tue, 23 Jun 2026 07:30:01 -0700 (PDT)
Received: from gregwork.sec.9e.network ([188.111.3.154])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49240efc160sm362507805e9.2.2026.06.23.07.30.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 07:30:01 -0700 (PDT)
From: =?UTF-8?q?Gr=C3=A9goire=20Layet?= <gregoire.layet@9elements.com>
To: joel@jms.id.au,
	andrew@codeconstruct.com.au,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: andrew@lunn.ch,
	jacky_chou@aspeedtech.com,
	yh_chung@aspeedtech.com,
	ninad@linux.ibm.com,
	anirudhsriniv@gmail.com,
	linux-serial@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Gr=C3=A9goire=20Layet?= <gregoire.layet@9elements.com>
Subject: [PATCH v3 7/7] ARM: dts: aspeed: g6: add aspeed,vuart-over-pci prop to vuart3 and 4
Date: Tue, 23 Jun 2026 14:25:45 +0000
Message-ID: <86fc0b2a105a16ceb301ba53fadd096877455bb8.1782224060.git.gregoire.layet@9elements.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <cover.1782224059.git.gregoire.layet@9elements.com>
References: <cover.1782224059.git.gregoire.layet@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[9elements.com,quarantine];
	R_DKIM_ALLOW(-0.20)[9elements.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,aspeedtech.com,linux.ibm.com,gmail.com,vger.kernel.org,lists.ozlabs.org,lists.infradead.org,9elements.com];
	TAGGED_FROM(0.00)[bounces-314865-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:lkundrak@v3.sk,m:devicetree@vger.kernel.org,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrew@lunn.ch,m:jacky_chou@aspeedtech.com,m:yh_chung@aspeedtech.com,m:ninad@linux.ibm.com,m:anirudhsriniv@gmail.com,m:linux-serial@vger.kernel.org,m:linux-aspeed@lists.ozlabs.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:gregoire.layet@9elements.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[gregoire.layet@9elements.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregoire.layet@9elements.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[9elements.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[9elements.com:dkim,9elements.com:email,9elements.com:mid,9elements.com:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9FCD26B7E56

The VUART 3 and 4 are VUART over PCI.
This flag indicates this information.

Signed-off-by: Grégoire Layet <gregoire.layet@9elements.com>
---
 arch/arm/boot/dts/aspeed/aspeed-g6.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
index 7c02633f2bd6..2a19463b4c21 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
@@ -723,6 +723,7 @@ vuart3: serial@1e787800 {
 				interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&syscon ASPEED_CLK_APB2>;
 				no-loopback-test;
+				aspeed,vuart-over-pci;
 				status = "disabled";
 			};
 
@@ -743,6 +744,7 @@ vuart4: serial@1e788800 {
 				interrupts = <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&syscon ASPEED_CLK_APB2>;
 				no-loopback-test;
+				aspeed,vuart-over-pci;
 				status = "disabled";
 			};
 
-- 
2.54.0



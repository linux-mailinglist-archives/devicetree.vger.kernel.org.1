Return-Path: <devicetree+bounces-317548-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +BTyL7+OQ2owbwoAu9opvQ
	(envelope-from <devicetree+bounces-317548-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:39:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D026E24B8
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:39:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=Xpfjl9AW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317548-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317548-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B9727315764E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66E943EDE5C;
	Tue, 30 Jun 2026 09:26:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08CF3E9585
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:26:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811603; cv=none; b=EZ7yDNwB5rF6qeWZ2MM8LsJdEd8M3cnHGlQ7IucvT4kiOW+W5CZHrDqBdbAL6IbLfQrh4A7FIZBMY8viWVYDkc70UjqmFjHT00DBWw//FwwgwrJxiBC3sHxIjxX74eYvcLdWR9TzxPm3SvezhaRM9CVQjWEwoG28nD6UY7lMqAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811603; c=relaxed/simple;
	bh=r4oEtWAGk+0lG2cjCCS/On9c5o0ItK6TwayM08X4LmQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ITpl7JFmuld8k6cV1CgjcAcOtJjSYiv0qEFXqdpWdzm12qAsbElxzviQ1c//Q3wwgGVw2k1ws7NWvvnmGtwwp4QnmzOezZK7GEMsxb+6llnhutly19r6EjFpXKAfKcB0WFEFZFUw/uph8IoAo4poca0VDYbogrhuVAesZ1xxntM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Xpfjl9AW; arc=none smtp.client-ip=209.85.221.51
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-472055b0efaso2088956f8f.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 02:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1782811600; x=1783416400; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G5wRK8UQUntkfKxBkcuhYJT69Pdd0Q05Ua1EKGESaNA=;
        b=Xpfjl9AWsMtyyJrxGXcj6en6ivDKbeuPiZHS0vOAADUdLXqMX8vM1KUWw1mUoFs7XE
         8T+Hhjp9BngxF7sA7YtoF1e0bXgHL0Hw4N/0dDhveROZfYqknCSnoSgZSeYcJYuLXFu5
         5f/DCOilzdXI/PwQ0UZpwV69aL+pvA89u3kKg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782811600; x=1783416400;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=G5wRK8UQUntkfKxBkcuhYJT69Pdd0Q05Ua1EKGESaNA=;
        b=SiCUoY1SvbWf1ofT5/8giGGDuTKQMAQVxQW3ffLVX7gxTjv7GA3sxP7s6xQt0tOtZs
         pvBI21diAxiMBVg9lQlCoHLYuaT5EIOnu3DKo1g0bPu237cwhhHqp4QxduVj0FR8OBUT
         we6lKoHT5YbO0Lw9sYgacsh+t8nYsJmENUm13r9dghckMaOE58VDpU0JTmoY34MBEiZK
         TOdAa/yzHvdTn4a+7wgXJz78cNFzUnt/y+GEXOhXUfMhLX8rq1QSCC7btTo+mjDZmSnM
         Ut4hgW4wzBCVkAqUX2SxnFBp8V9yZxz9Q308qrk0b9Kox5KbHnWi+jhkTOk1pU8KNWtm
         hc7A==
X-Forwarded-Encrypted: i=1; AHgh+RrPYzUXY6qJCQXHJjEBeyCECho6yqDFTUV8Qe5yFB2hKljkXlxtrWuIS/c/ZpueiK13KWYwLJ+LefMh@vger.kernel.org
X-Gm-Message-State: AOJu0YwRVn0KSGf2ahf3RmSTuUq5Xu6XTT8h92Pw32XKcifX92xT0Xnv
	T/i5jP944zC6EmuwmLlWMeNgdcEKIoDxYWDT1LYWZTEfM1x5FUUhmNzZ6bOFVDcEbcQ=
X-Gm-Gg: AfdE7ck4exlM+HSWjYqnshAn/LUxxNKAKsL3oS4ckK23jDTVRpTcPcXJtYs8rVkB5nb
	PPe3R08HRcEmQ2/040YadNbKxT+pA0q96+/N7AAgCtdrnVaJFZ6txHQHTtaLR47t90WJhoiyrNC
	ev0xlSD0xOB5qZ7LvFqyI9HxHSiwHzIpCM9QWuNQHj7V2eUzYaJMWbz0NLmUH3LLatCLE/vJZMK
	1wix04h1bsWUHyzf2+TYSHiAPpvtmwLMKH1RA0/sL3CFjEKiHpuhs6A2JLXiImxVH/ztN6p/1jt
	1lhYYpF7zu88dF2uDQF48SPUCLsPvIjlPlNfoqdfDv8HF0gevowbnC7PXPGonMimaj9h8Zz9Zge
	TL/MLVU053Yr7mybkWXbTQHHowYAp3GfdvOPGQwmQr0D9VS3YqYJGgBd4UMm/WJTs4DQ8LwEFTK
	wOGHSdn8uCAg1RP/zSmeL3u9xhq5EMI1TPAlvgPipp+cKcf1MzcZQ1EnsbqvFp3u/NIxrwmdccj
	LhjqVpSONkm7IY6ypINgxuoal/SRuNzaGkYdTknwDbWCyWjsG9s1SKM/3s2pHLFl2wCsgdoc7kK
	GDtoQV71wJ5g0g==
X-Received: by 2002:a5d:6e5f:0:b0:472:8343:7f5f with SMTP id ffacd0b85a97d-47552c52c13mr2544868f8f.34.1782811600443;
        Tue, 30 Jun 2026 02:26:40 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-48-44-238.retail.telecomitalia.it. [82.48.44.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47567a6f0ddsm5669083f8f.37.2026.06.30.02.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 02:26:39 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	francesco.utel@engicam.com,
	michael@amarulasolutions.com,
	domenico.acri@engicam.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v6 02/16] arm64: dts: st: add power-domains to sdmmc1 on stm32mp231
Date: Tue, 30 Jun 2026 11:24:31 +0200
Message-ID: <20260630092628.1695560-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260630092628.1695560-1-dario.binacchi@amarulasolutions.com>
References: <20260630092628.1695560-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-317548-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:linux-amarula@amarulasolutions.com,m:francesco.utel@engicam.com,m:michael@amarulasolutions.com,m:domenico.acri@engicam.com,m:dario.binacchi@amarulasolutions.com,m:alexandre.torgue@foss.st.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amarulasolutions.com:dkim,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 33D026E24B8

The sdmmc1 node was introduced early in the SoC bring-up before power
domains were systematically mapped. Add the missing power-domains
property to align it with the rest of the peripheral nodes.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v5)

Changes in v5:
- Added in version 5. Suggested by Sashiko.

 arch/arm64/boot/dts/st/stm32mp231.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp231.dtsi b/arch/arm64/boot/dts/st/stm32mp231.dtsi
index 9e1d240888ff..0feb8943efae 100644
--- a/arch/arm64/boot/dts/st/stm32mp231.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp231.dtsi
@@ -727,6 +727,7 @@ sdmmc1: mmc@48220000 {
 				cap-mmc-highspeed;
 				max-frequency = <120000000>;
 				access-controllers = <&rifsc 76>;
+				power-domains = <&cluster_pd>;
 				status = "disabled";
 			};
 
-- 
2.43.0



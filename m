Return-Path: <devicetree+bounces-319818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LHcTH3JcR2rvWwAAu9opvQ
	(envelope-from <devicetree+bounces-319818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:53:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DF41A6FF408
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:53:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=P2sEr6oO;
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319818-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-319818-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A32BB3073248
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 06:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B93738AC90;
	Fri,  3 Jul 2026 06:51:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02890389DF0
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 06:51:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783061497; cv=none; b=fNsJloPdWDxGC+8oGQ/gPu8QPa1ngKQi/63K65Id+i6Ov1spI1Lj1Tumey/ihgKdaPbL3aKyY0Yg6cYYKjQVW9gMibuD48+BMsZ3RVUZRCUq1ZA5XJ5v2+MuxrdJziic9klJWqf98qOEnf1qSkuJcpJEBCrZSAuSVnIc/YM0JxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783061497; c=relaxed/simple;
	bh=r4oEtWAGk+0lG2cjCCS/On9c5o0ItK6TwayM08X4LmQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i+qlvp7ID22/jwU8ezHFcNzg+BzXlfMSKy7/3Nb2Av5CUGUnuy20EO4CKupGs69/VC80ADzrviqGmfN/O7X/jBBeuNfGEUmibYwk+bpHTc9CIZFQDT7e8Yiir9L7Ociuxyi5T0JOILMv9jHnzJ9YmjP9qEkoNWl+afLRFfDEnDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=P2sEr6oO; arc=none smtp.client-ip=209.85.218.50
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-c126fe7d0f3so20679166b.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 23:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1783061494; x=1783666294; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G5wRK8UQUntkfKxBkcuhYJT69Pdd0Q05Ua1EKGESaNA=;
        b=P2sEr6oOA+LfWhuW/B8/D21nLxjazsCq2ascinUL6CXM4WdQUmsc0+vm28L/ugNQ0/
         JNvHXfR6fO9uDxC85U4ZFRvpkDSEot/+CZdQBHu+ODVkiEFFmo3EfnvYi53ivjdnf6Xu
         sN0ifcmHQGA+YFGL9MTJRco/pWxMgTki/RLgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783061494; x=1783666294;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=G5wRK8UQUntkfKxBkcuhYJT69Pdd0Q05Ua1EKGESaNA=;
        b=O1P3q6nJPjnmZKUHUrcAQQGl4CshesAyMfJ/YjLfoAQK0BMuBOWQaY26qCSbNTVMV5
         ugwQHbJMDs8tedzbyq/CKEoSX/VWBpevgcGhJocr6hTnnKQO187qlGDN7+iXRCFzmNzC
         OjUy7qO0Lco1yomGcraBx/PYDEPXpIfpNh7bS4NJAX1R2kFCZxeLpTvAhv+r3SY4OVNX
         W206sIxfVR+tbh9k8FnBtQHyFzwVzv5xbTLVCWA8n+OD3K5kzibeTbvXc1RPwutNdxWy
         la/ovWip2EeY5i6SswlePs0huGHfW0uXBFpefm8TG86n++XjC1fqhraWYk6YEC/Z3BkR
         Pj+w==
X-Forwarded-Encrypted: i=1; AHgh+Ro9iL1F7vtCyCAEaUdbepsrVPck6GUe6zNglgkQHQLu0YmTttYTXwdwdFJHkoSUGcgUaiSLdW5TCSSq@vger.kernel.org
X-Gm-Message-State: AOJu0YyQAfeoS3zCMQ8MbaHURf8In07spj8bmdtlvZC+GaxOL+opAsf0
	eHAsAUsj9KkVlP2GWyhASTIQnt2TGWofH+sLSuyZgQaEeWIgD2OB3sjbxtPiRL1PJI0=
X-Gm-Gg: AfdE7cl6sA3sn97D4zRogea6XKAyecfcesypnwRyZasqG7U31csN4kVpMQS4s5pxme7
	iqYXU1t/0Y0DoPK6xGN/c7GgqAWXTcx4flt5MAfTXtFGqPgRwCT3hthGL0z00shoflTO3R8rrmk
	yPZkHLPty253g8QoeJYvfcbRQ5RRLgay9e4lsxEyr5lugaI4Az1ORE5LZa9AYvXp/NIHngmAEja
	cCuc9vKMn2MDd2AgwagqIL1CwCqivktzktP47R1xdAlZsM/p/v7ocmtxoxrEmAozwiU/009MqZn
	npZ5uelbnaXtISh2iibRevMkb6Q6T+6a8r449raIzK4hher6gj9GTkIsNoj/UYF6724XufqKn2t
	tuLvt2bMnsHnFKJPoY93/L479kFSvhQGZTailwcRtNYHGB4x66+ly3UMCFTj5GYqUu+E088CzrR
	qevUaU1bCdZiYiHSS5UnfhqAQmiSe+of3W7lXIqpB7F3pW1fEyuKkr0u0qz0uqtMnLY7jtpbnl4
	3GfRXQCOXUUqXVJmGX8sQ==
X-Received: by 2002:a17:907:9444:b0:c12:6201:c4c6 with SMTP id a640c23a62f3a-c12a9d18f73mr399200966b.11.1783061494426;
        Thu, 02 Jul 2026 23:51:34 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.. ([2.196.43.95])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b62c4695sm235462866b.44.2026.07.02.23.51.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 23:51:33 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	francesco.utel@engicam.com,
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
Subject: [PATCH v7 02/16] arm64: dts: st: add power-domains to sdmmc1 on stm32mp231
Date: Fri,  3 Jul 2026 08:48:52 +0200
Message-ID: <20260703065110.1433283-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260703065110.1433283-1-dario.binacchi@amarulasolutions.com>
References: <20260703065110.1433283-1-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-319818-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:michael@amarulasolutions.com,m:linux-amarula@amarulasolutions.com,m:francesco.utel@engicam.com,m:domenico.acri@engicam.com,m:dario.binacchi@amarulasolutions.com,m:alexandre.torgue@foss.st.com,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,amarulasolutions.com:from_mime,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DF41A6FF408

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



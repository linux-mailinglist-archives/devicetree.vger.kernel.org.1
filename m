Return-Path: <devicetree+bounces-286288-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJMpD0MY2GkfXggAu9opvQ
	(envelope-from <devicetree+bounces-286288-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 23:21:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEB03CFE02
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 23:21:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78C9330416F1
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 21:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53CD4342CB2;
	Thu,  9 Apr 2026 21:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XJPpqDEY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C2B37BE81
	for <devicetree@vger.kernel.org>; Thu,  9 Apr 2026 21:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775769563; cv=none; b=YXkBXejDF8d2ZX2DnA1HyICUuA3lDCd5YaV92f4SEV99371rZacJkLQJp4HkmjtYLqSiFiL6WQqHVUsgxsGG/U75++b1tFAliZpCIRhF4ga31BOEMNehZ1VyOLKIC2fT00QUVmisdWXAYzwXbpSZ45OeRtlrZ5eYswEwehRtbRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775769563; c=relaxed/simple;
	bh=mODmq4H6SoCNyf3UBT6H3NMHqjUgUOz846A6SMEVURM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CfBe7Vo3TM3z0JCb+Z8/1+BQqRpafrkw2HoXo5cqw7zeCpWXZxSHiNN6tO4I0tZSnTgCUtUCExPRv8uPP+/ulNT/XlYR352WuNqQsUIPza8CFkqsPMvehC1wZWHdlN1vpTUmNP3QNWDcfkwWBtSDBajmxcclvFTp/OgKGA0rIT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XJPpqDEY; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-43b983bb07eso835974f8f.0
        for <devicetree@vger.kernel.org>; Thu, 09 Apr 2026 14:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775769555; x=1776374355; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pbiKzNLvIKfJ8UIXfw+cpWEfdIwdStkgczF64B3I3a4=;
        b=XJPpqDEY4fN/jtsQ0M5VZsyY7BnXsw5qX9RpwxFALPgl/t2YSIFU4P9iKCYCHGMwmg
         W0BBjgtFYaLFf22uOGHotgnwmnK1tqbmwujVLkrb1jfziJzA+kMqk5yT8Ku779l/uDWf
         r2PIUbH0qEMhT60UXvIZx7GlTSlcdQT2PZuQd+slHeb+wQutPZVzqjMvTJe60bPQPg5+
         vVFVixeWJWons7HaOM32sQlUhJvUkeYSp7Pq3kY78+WAu0IwN109J6f0TylFP8vDq/cH
         aPCnxEbFV6V720WZAhc5aRrPbYvKzm6M4GW/IsQFouZYl6n/PWn+BFnsdcY/4AFx/faN
         BhxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775769555; x=1776374355;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pbiKzNLvIKfJ8UIXfw+cpWEfdIwdStkgczF64B3I3a4=;
        b=NvtSfedrM+Eh79wZ0h6cQ99W+h0TsEDqYca7eIKnvuFOYSwhdPz2U1W4wAUI28ivOY
         ZCVtChbyhJ+yuv84bZnMmrrYXB5BZzwfvbSNHSN/1lebRqBuXYcvCPmAl6j5oI68Mc5l
         x6jAVZl4BBmPmbncP6QADUvfyxSWDD7aCAy0AlSn8FcsyhrbAk01HbfLqV2/5qxAEoBW
         +5AvKJ8NzZ53D38TNRukuWkbo+qsIXCcEytfD+NLgmkKJyu2X3R3WWk7GkyXnIhqjeut
         HsNUJ0WDKviNzgS1DMdae3zwIxq6LuEyPQY36e2NWbKlwC5Z0M2mRUuFwRGea9wciqu2
         S3xQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPqZFH1XSQPTfGLuFqemNqgNd/5JwSFLGXTSn9X/Zy2RiKXV9fuCSsXB62eMuGc2iYk7x0LJc8UMFS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8Grp/hpYkEn72WKLOA9bEJq4qEnMRh5YTbEiVjuUtttQrE9rh
	u7ZUxRbrG5PayWP/W21slt6bkEvImft/obaoLwaoo2WuV6TQN+XG53ho
X-Gm-Gg: AeBDieuj41R+P++t83e2j1u3OkZmAn2R+euzRalKXqsJxg01X8WnB+mhNWLZodczcHY
	67aL+Qr+0T43Fdso3A11oxQytRe3a3wb7f5CuEYd0qmX3C2fzkv9j5UB94J0Lp61QVCwgtn6FfT
	UB1ZdkLDbN9rSTmzxznkr+GGgWMCh1bY3HximeS3iX0HkPYgNR31KoG9yjyyUYONtJj6jQG9Jd8
	LUoZllAsddoinC9vrw2E4d7q+p4/xsrfHpokG/Naj7EAIysj0voO8ghS3VmoV/k+PKwTkfYd9bL
	TgULTPtJcfs91XjPkEs6C+ILvj3cSgP5c+Xe6fS9jU3QKZnrgrXpFy+SL58fIVvYhg0IPyKLNez
	ZVFy1SpGPzgP6KNpFtVIVruuTb4y9i8qTr/oeJty2bIdJ5a3p/JJdDFw/SygZLWmZlYksLTGc54
	P1CRyF5SipRdotoCkYGv8lMGCA1R6dTjHi2H/Kz2ULLYCPSvV0cDSthEQajNNqBxG0PsanHoRME
	ncpzxZWbwFpnZDt59pNQrY=
X-Received: by 2002:a5d:584b:0:b0:439:bdba:56be with SMTP id ffacd0b85a97d-43d64255118mr872547f8f.10.1775769555043;
        Thu, 09 Apr 2026 14:19:15 -0700 (PDT)
Received: from [127.0.1.1] (93-140-227-38.adsl.net.t-com.hr. [93.140.227.38])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43d63de2a53sm1797536f8f.5.2026.04.09.14.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2026 14:19:14 -0700 (PDT)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Date: Thu, 09 Apr 2026 23:17:27 +0200
Subject: [PATCH 4/4] arm64: dts: marvell: samsung-coreprimevelte: Add
 missing SDIO properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260409-cprime-dt-fixes-v6-20-v1-4-8df6f88942c8@dujemihanovic.xyz>
References: <20260409-cprime-dt-fixes-v6-20-v1-0-8df6f88942c8@dujemihanovic.xyz>
In-Reply-To: <20260409-cprime-dt-fixes-v6-20-v1-0-8df6f88942c8@dujemihanovic.xyz>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Karel Balej <balejk@matfyz.cz>, 
 David Wronek <david@mainlining.org>, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=925; i=duje@dujemihanovic.xyz;
 s=20260328; h=from:subject:message-id;
 bh=IiMoWzBxuRiuVp1uFOQTGKCJN8g8DoQRj78HlpQTisk=;
 b=owGbwMvMwCW2z0j3+uHIyKOMp9WSGDJviJ++FLCwqSkgRu19bOOxPAkxfyM911kzT9VYu16Jm
 sFS9su4o5SFQYyLQVZMkYV5qdwlvtTwiQ5Ftkkwc1iZQIYwcHEKwEQ4wxkZzk1U9vLy/qQmeMRR
 Ov9XWvX6qrmL4wXtfZ1vLXu0v8T+IiPDlwu7rGfvEBRbkhJYtN2+q/lq1RyLLPGPH/Wa9+5WUFn
 CAAA=
X-Developer-Key: i=duje@dujemihanovic.xyz; a=openpgp;
 fpr=9BD463017690089DAA8DC266275F544B3B1B4792
X-Spamd-Result: default: False [8.84 / 15.00];
	URIBL_BLACK(7.50)[dujemihanovic.xyz:email,dujemihanovic.xyz:mid];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-286288-lists,devicetree=lfdr.de];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20251104];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.941];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dujemihanovic32@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c0a:e001:db::/64:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dujemihanovic.xyz:email,dujemihanovic.xyz:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8AEB03CFE02
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

From: Duje Mihanović <duje@dujemihanovic.xyz>

According to the vendor device tree, the WiFi+BT card must not be
powered off during suspend and is capable of waking up the board. Add
the respective properties to the SDIO node to reflect this.

Signed-off-by: Duje Mihanović <duje@dujemihanovic.xyz>
---
 arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts b/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
index f71bb856f1e7..6ec899c427e1 100644
--- a/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
+++ b/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
@@ -524,6 +524,8 @@ &sdh1 {
 	pinctrl-1 = <&sdh1_fast_pins_0 &sdh1_fast_pins_1 &sdh1_pins_2>;
 	bus-width = <4>;
 	non-removable;
+	keep-power-in-suspend;
+	wakeup-source;
 };
 
 &pwm3 {

-- 
2.53.0



Return-Path: <devicetree+bounces-264199-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yACKG8KVimmuMAAAu9opvQ
	(envelope-from <devicetree+bounces-264199-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:19:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5BD116414
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:19:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FF79300A765
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81B4A2D2491;
	Tue, 10 Feb 2026 02:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RnraYHwo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6234F2D877E
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770689981; cv=none; b=DczitP3uJaBmFKfh+hzwcmUA4fqw+W1BkX1rXKXi7tx6Piy/EnpzxcxQ8ndGajQU7d0rE90wv/ta6rv4zaqu0J1Zc0XLD0FgqX2wIsuWFTAhQlHaGL35RgexevHwHiXvoqtqHdIGiDveHs87ae/y98Lw5xv5+gyHcy1nOErl66Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770689981; c=relaxed/simple;
	bh=JuEIdUklwEG+RzPHMwpT310LEVYhx3Cs+uWXhr5CSP0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BM1gpAd6MnLmMdqSu/h4RSAjpvfrh58c2cEMUclY8L3vuyQA8DBb+AG4tSjx57x4MltDVISkzz63t6zCwChY7trS3nZUl6X8lh0ZWv94EelBeDJL36BQJ2YG+hu4KEEeuLr4If/EtjFZ5J/Fyho8foITxEzQykx6hs3GGOZAfng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RnraYHwo; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-89549b2f538so6548776d6.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 18:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770689979; x=1771294779; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=trICzJbfAGRUinFxpIlScezsbIN1wIpZqx7ryhwMH/k=;
        b=RnraYHwoKVdI/e8nLLQpq4asTRd2sgUdqNNUFd3QT5gR24lIavrhZ5kyu5NBXyw/Ep
         IyIGv1B+10JN3lujuokawaSX61Jnq5MjlZ3HhodWrUb8fm3zUHnvJePgblieW+fws//p
         OJu50qzOH8LuVne6ULohpsAwYoYjttPWYpe8+DHOpkrI8EW8kEJgM326pLm231c+nSvM
         pS0RKT3SMgWWF1VZzc0KMqZi8h5xWsBrvlrJ6vmVOk3YEifmDYKI7kvv2pgf0GsxjU1z
         WzNAt3s0nMLtzqmyU8tkigvAJqHB516D1KAByjdL8GQ8MDZTI+6cnpDYOVAj9TCMv9AA
         mglg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770689979; x=1771294779;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=trICzJbfAGRUinFxpIlScezsbIN1wIpZqx7ryhwMH/k=;
        b=os/7L4oAdjZxkh1H2HGszROeyM+ob12dG/Z7y0VfTvsH2sL9IRgzOqA6hFBcqnd1hi
         mOGgSMh3wORRvLqk5+ynQsuqqi+/rzt6ZLWoz99joMg+8ysc/fmCO0soiZqiJZUh2FLP
         9XBr3CSOKjQMJI1KeMSxD8yYAd8AOnRMok+aYi65Iyzla4EUnk6ZnMj1am3qXIcB6kbm
         NQxmjuxIBbunsCZdT4kDLvh+FTkTE2SQbz38xT8dEZC9m0wJpAalQymrIzIdL7H0RtsM
         zHElzMsSWBDbKanlk7aAx4VGD33jqEZPqI62MAKHgv6dYGL5NwHh/oVU1FLcoIhRVp+c
         otjQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5T8ELBcP7YyPSt2u4yY7fe179k+BVigHgWS0k/rydRlJW1kI1omM7nK03Svk1qIkQaw3oJzwfBrgW@vger.kernel.org
X-Gm-Message-State: AOJu0YytzKG1dQzSplwFRUr7TRh5n989GX0eFxyOTTbA4a4Od1M8zZUd
	00ERvrDtu4mVS0Z1UD5TBWkDkyAmb0YplsHoN4+OZFBG5BwJ/VMFrdaL
X-Gm-Gg: AZuq6aKwltlRyVWHFwqCyu2i4gumGZeSpZLqOxG4xXU/XqRuC0CGcHGD9JEkEYBOP1c
	/0y8x3yKstHWwkaA1DN+icpX4GVXflGw2QS+wii/yqLsDf6CydCk4w7GILfAWLyrVGnoHspkIY+
	OBcxorYhJlIi+OWT5kscumtc5doNtZulBuDhRIx/jWR9Xu7yIdHeRluuwAItlLi+GzqX/FkSoh3
	26iy/Y1+/FqdC5Xb/qY2iIBJDJQleVY6K4yokeUHRX4ihboGNBMS5AC/ElSSgNEyUlqadkY5k/d
	xqkyPVLkcc4XGawBtd6IvB8YuvAwPuDjFhcxAO8dEnwGnt3+a5Xn433E5qThUOOCDwWq/NTsFHG
	Kh6d8loS76fjIKO4ETcvP55Q/k9KQyDVUxxktb0OY357NFQQm39I2cEpTMSEVkOqdQzCroGH3PW
	znVXB9X4D5OnLOqVdPYQAfhgGGFwHqcknQge8jKctSq1VkMuwyJY4umUlIl25LZYJ83gQYJsEEv
	x2p+DLWzJRLL74=
X-Received: by 2002:ad4:5aac:0:b0:896:f47e:fd51 with SMTP id 6a1803df08f44-896f47f052cmr110932636d6.47.1770689979374;
        Mon, 09 Feb 2026 18:19:39 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf7aeed8bsm964810885a.20.2026.02.09.18.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:19:38 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 3/3] arm64: dts: qcom: sdm670: add llcc
Date: Mon,  9 Feb 2026 21:19:57 -0500
Message-ID: <20260210021957.13357-4-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260210021957.13357-1-mailingradian@gmail.com>
References: <20260210021957.13357-1-mailingradian@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264199-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.21.14.160:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.16.200.224:email]
X-Rspamd-Queue-Id: 0E5BD116414
X-Rspamd-Action: no action

Add the Last Level Cache Controller (LLCC) for the SDM670.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index b8a8dcbdfbe3..b5f832ca42f4 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -1130,6 +1130,17 @@ refgen: regulator@ff1000 {
 			reg = <0x0 0x00ff1000 0x0 0x60>;
 		};
 
+		llcc: system-cache-controller@1100000 {
+			compatible = "qcom,sdm670-llcc";
+			reg = <0 0x01100000 0 0x50000>,
+			      <0 0x01180000 0 0x50000>,
+			      <0 0x01300000 0 0x50000>;
+			reg-names = "llcc0_base",
+				    "llcc1_base",
+				    "llcc_broadcast_base";
+			interrupts = <GIC_SPI 582 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		mem_noc: interconnect@1380000 {
 			compatible = "qcom,sdm670-mem-noc";
 			reg = <0 0x01380000 0 0x27200>;
-- 
2.53.0



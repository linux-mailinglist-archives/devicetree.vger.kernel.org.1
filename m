Return-Path: <devicetree+bounces-257962-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OhpE97YcGmraQAAu9opvQ
	(envelope-from <devicetree+bounces-257962-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:47:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C8A57CCB
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:47:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 69BA5A229D7
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 427FF4949E7;
	Wed, 21 Jan 2026 13:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aRFO2umK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7596648C8BD
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 13:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769001998; cv=none; b=bFMqlhLrSo+PkI1fCA/Z2ycLVGtTzj2mkAl3QYCL23u7myUo10jaiHheA++Lr2bb9s8XY8c/HbbPzMtyFZM0GqdyP2fzJ1p02H9jd3ysCgFKbKRGtiyTxkjHu59UQ2DPi/Y/xsbsoHy+jJ0+7xcN88f/mzeiiAncI5HJoi+OYRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769001998; c=relaxed/simple;
	bh=59zkknkV+4u3lCcwhYSFnDAH6nnfGIvbUcRT8uB4bM4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IV43A4Dz7m7uJiAgLacSXWckjOEsJ25er0/JZw850DzUPDhkAdvuO9EYaELLxZzXfQjhPOdiUW9QWgVuf4TdG3DkvbLDiGGtebrN9qXPbEgQVyZECLfASXGy1gkPQI/ZI+qQeuqAHL5pZ/H8IdhtWeShrRaitIBLo+2V5LLa4Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aRFO2umK; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a743050256so18091735ad.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769001996; x=1769606796; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HYLY1bnmT/UELNGJiy6K4e9PC0QLu4h8bdmEIDbDCz4=;
        b=aRFO2umKYAO7YAIG2X1xHw3gQ5gQeSg/lAwbkSUOEw1e1li+7CWo2lcUWYCp1MnR0H
         reku2V+ISmLei5LIclnUNZ+VDSJ7NbtoWy6dzEZyLnSKqNZRH4DnogmZw+Czgx6eUKuV
         Zr+ov+VIG4mguP6mC0p2GpiyR8vGaiuQCaAekMcyl4F4sLRoJzbrCtN5+UwSMrwBuoC6
         RLISZmeNzN7sznYV3NhPF/z2OCccnvwpfGl0+PvWemeoAhswuvmcRqmsMs2IkWlWtsTX
         CpbgUp6yIo/QpyQC2nJmbExieKcTVJ45EGVdZtNpufFUOzlIZSC3kZxXnggVz5XHsOGx
         FCIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769001996; x=1769606796;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HYLY1bnmT/UELNGJiy6K4e9PC0QLu4h8bdmEIDbDCz4=;
        b=vpS/XzSIQPSuPzGRFevNhV2ehcey8tXEdwSAj/2fwoTwa+BZ8NcCRr7hv+O6r5VKCH
         PCEBPXgILzXMasQcrcfY1U7eKhYZ5k2k23/yBe7xqZQEcdNScTHo47Vp7IDB+LLl7tuT
         AvYt2KeB/SfTL039VK7p1XDeWzeQXwB7HcDw23KQ8BYcCcSwINHoffjvuK71/iVayRdU
         /KyZb3RPxZFlXx8XPXwAtjnphoN1BFhhaziDIhge7thwQyWe8UremfdgwvN321K5zsej
         A6mXCflcnR0LGxmHDi6L3zqI3KiQsXWZKlD4HpcFAO5O8Pf8kQMei94WhySFRVNYKUd1
         KsZg==
X-Forwarded-Encrypted: i=1; AJvYcCUlIMQFTsyvl6HT7Wt8l5GR2sfsx42wqkm7etYyzIe4PD45IrwnhEZVWaqlQKb16V6QdfGKkYj+tkso@vger.kernel.org
X-Gm-Message-State: AOJu0YydCHoW3SFBC7F+imaxoY37HvUAgOzuVr2VxI7qTkQUmxuhY8pG
	XAosps+A8JC4jM9WYggmupbZLP7A/aLx/K359+RlFxtRHsp4C8Dl9+klmYzraQ==
X-Gm-Gg: AZuq6aLZR1qh5q+Pc/CPPMx9e4/wcnEATvdK/FT2tJCJ4hMtnS2mm0y3EInGqc3QHO1
	DZqIUm+5YYHawP4Qiz7uLd24GAD/dW+A5W4patuwlSkn/QGeoP7KHW3Y/WAp6a0RZu86WH4Sx73
	TMZc6/XVy19PlcPXnhUOOKf+N6BCQlbQSou6JqWxN4651Rq0IoJcpEUSkpAMP9Y1VfMBtdAQLbR
	BPjwpNEZ3SgYYbPggQL3q7aSlaQKiVtuTnbI3nIGuLn2llNfe314i4mRjuz7xjexlK+JXQKnyUp
	AX+d8v0h2JeNa/0utQUdEFvJ/5EHjUNrzD7KyAEysY5+9w8H6nxzKsJmB1Nul1+Sm1xd3oQZEWg
	xpzxGmnVahhiHY72cdhLtR6hqJhX9V0BWYJsaOUzQ2rIDqNdEpwKrJrVhuUNtMrNXhtHrDqamzk
	HBRj8BPqZpA8xosMPx
X-Received: by 2002:a17:902:cf41:b0:2a2:b293:27d2 with SMTP id d9443c01a7336-2a76b1695f7mr49461905ad.53.1769001995875;
        Wed, 21 Jan 2026 05:26:35 -0800 (PST)
Received: from [192.168.0.101] ([45.113.101.30])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a7194164dfsm151487235ad.88.2026.01.21.05.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 05:26:35 -0800 (PST)
From: Biswapriyo Nath <nathbappai@gmail.com>
Date: Wed, 21 Jan 2026 13:26:18 +0000
Subject: [PATCH v2 2/5] arm64: dts: qcom: sm6125: Add PRNG node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260121-xiaomi-ginkgo-features-v2-2-fb3ee94922d0@gmail.com>
References: <20260121-xiaomi-ginkgo-features-v2-0-fb3ee94922d0@gmail.com>
In-Reply-To: <20260121-xiaomi-ginkgo-features-v2-0-fb3ee94922d0@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Biswapriyo Nath <nathbappai@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769001984; l=817;
 i=nathbappai@gmail.com; s=20260118; h=from:subject:message-id;
 bh=59zkknkV+4u3lCcwhYSFnDAH6nnfGIvbUcRT8uB4bM4=;
 b=m5f4PVPOPIMFak8j/1n29OrUeOp6fju09JAA6T+z2o0besh8gpvSgjm4E76pTNvlIesMflI1a
 fQmy/puj5kxAc2VmDnnOza3LAAvM2M6WDmX0/iARue4kw3D07Bhv7F5
X-Developer-Key: i=nathbappai@gmail.com; a=ed25519;
 pk=slmb/9yXbet+KTiT3EYLCp0p0MEOYa3EdjUXP+HXfjg=
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-257962-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nathbappai@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_PROHIBIT(0.00)[0.24.156.200:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,1c40000:email]
X-Rspamd-Queue-Id: C4C8A57CCB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a node for the PRNG to enable hardware accelerated pseudo random
number generation.

Signed-off-by: Biswapriyo Nath <nathbappai@gmail.com>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index 8f2d65543..e60d4d74c 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -686,6 +686,13 @@ hsusb_phy1: phy@1613000 {
 			status = "disabled";
 		};
 
+		rng: rng@1b53000 {
+			compatible = "qcom,prng-ee";
+			reg = <0x01b53000 0x1000>;
+			clocks = <&gcc GCC_PRNG_AHB_CLK>;
+			clock-names = "core";
+		};
+
 		spmi_bus: spmi@1c40000 {
 			compatible = "qcom,spmi-pmic-arb";
 			reg = <0x01c40000 0x1100>,

-- 
2.52.0



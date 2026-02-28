Return-Path: <devicetree+bounces-269552-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 49psBKzlomkB8AQAu9opvQ
	(envelope-from <devicetree+bounces-269552-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:55:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 561561C3120
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:55:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BAEB9303010D
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:55:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2F8043637A;
	Sat, 28 Feb 2026 12:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KL3Rwh3c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2792428470
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772283304; cv=none; b=WaqZMRHbH+OW7VlgeQO2bxz8hoJn9B6kCJW4uCdmdi4Tt9WkXVk0XK2wyW6ap81lHhesmGffw1QPvfQTO0RZEcic24Qvh/s/SbIvX+T1lyf2rmCrU0yrBW4CXF8Qiz15zWj6n3xaVWbFqbng+j2XENa6jdSoz0e9q2t+p2YUEWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772283304; c=relaxed/simple;
	bh=FYxTbUS8wvQIr8o/w4A1iqxKt/ip7PD5E6jkILL4MIo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=D1MWTpQQpvoWtlfKWmLRYj/WAvg2kCEDPLgZVwZE7FjE4yedogQ6XYa2tszXcVtgsFq9f9AcvU9j3V3DkFgvERofDYeMRjqSEeZ6+Eof5hBgt0vp7fpsiPnG6WsfxAW5v2Z+8OhTGuX1XgHaeyRsURcHR1fvBvBLRey2wjUSyOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KL3Rwh3c; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-35982fd8910so22071a91.1
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 04:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772283303; x=1772888103; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I0TjNGD04YyVddq1HrmWd/i6gkJbEakr8TUWq/SQPr8=;
        b=KL3Rwh3cGqOc2vgbRk2BYBNPoRoSsdulxJ6HOQS3yGEUwzfHRk3Hy/20MfNhNINcKf
         G9Ce9Hy70ZS15R9Wh1ffJV2YINlRhmO30sm2Cn70tnhUNNEuNDBWX+zZKU6QBHcShGrL
         roFGvyAjoUDWgPcrdZKDnhOM8hFXraei6bdWBDRg0gA9zJyiggRUBRr4aUmeUNxq/mZD
         Mup25xBN4WNwfLxwEs/kSyNWR2g5doufKzAhIN02CHdtQyub09od+buiZ5vkXJ8d5xZ3
         48KWOvuFrwgVf8gP/sHd0TUgzGt7TYFMV7/BjAwgDNoiuwTTXifj2g76Psc4hOAhpkEz
         f0yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772283303; x=1772888103;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I0TjNGD04YyVddq1HrmWd/i6gkJbEakr8TUWq/SQPr8=;
        b=e+64ixvDqDUHOiuWfWxkaiMGFVG5Vhpd7rcO0KrShDCVSHTMYgqAdCtzLC7j4zLxen
         zt050AhY2eWNgnIU6FFVyPBcx6kBThFr1NvTc3bb3yaN3AuFqmHFjzhWaQ/tHwsrNiad
         u1+lPtKb+Y1uHVKZzE5SmbqtScxc9oSNmJiWlnFItfFMjrGDGAULEdifnexxghEtDjLU
         8LKsGfiApQ7hSShhJCWcAUzxI1aLeoLZoWMeHOEc9XBT/SBfbjYD8eYoNQdV1a2Mc9V6
         ZwIayy0zoT0HAXPrLcw5Umq3nOYCAaz09uFmsx9UUBwluTD52WbO7hMLAwgMoESvya4o
         Re4A==
X-Forwarded-Encrypted: i=1; AJvYcCW9KHX8fT0EYIv28XryOwC8pcerHUJFnTWOqkGEje9h3dJyyCtNemtIS86DeT0qlfujs2Rx7YdZ4H0O@vger.kernel.org
X-Gm-Message-State: AOJu0Ywym2Pekc4mIfK0iiiui44p4c06ZlaWbxGnKX+tP+CBsflAY9yo
	fyefJSymewpd2ulC9QI2mCldEziXtVwqdldgQSxmWLoSZf4ZPlrGK99r
X-Gm-Gg: ATEYQzzXJRPWC3GH+NIR8c4hwCqyP335bK42rgGealD1aRnD+gqt4YAp9l73qZHmWJh
	ucZ8s9oG5ibhhBeLGw43sZ72hSvlK6flfhvrNaQnCsVCom1yZ5XJ/lJjVYWY7VYglmJivQ0KH1x
	j/5sexswmf9V1RjxR0K2/VLyfPKfTtxVZUF6wmS6/IpMonakeglYr31s1ujJtloM4EhHCNQGVht
	JfyqroRyBxQfKWz0DKy0BBe8QwdjHIAvrUduwKtwVn/OJhKdGOVw5RNNyDVTDXgZTGf9GCQx8QR
	WbRYvQf9YC7tBilFLXDBcJmhZ4OQuJ2scKVTFHUkq0sNeWMBXBPSvWGuOOtQ9IBrqEihFsZ/+Ud
	c07a2PxyVFB9Fhi+cIxh/z91RBbQ2jNa6Z+Ufv1+zHq2nrWsn+cpa8tcMl9iw8rXoQkMndCZ2Iz
	Y+TyuNKYN9XYCBTe76fr9K
X-Received: by 2002:a17:90b:1d82:b0:356:2db3:1206 with SMTP id 98e67ed59e1d1-35965c34e95mr5018398a91.13.1772283303037;
        Sat, 28 Feb 2026 04:55:03 -0800 (PST)
Received: from nuvole ([2408:844d:b08:3702:16a4:72fd:8170:4ed3])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359131d8a79sm6721338a91.3.2026.02.28.04.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 04:55:02 -0800 (PST)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Pengyu Luo <mitltlatltl@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sc8280xp: use refgen regulator for DSI
Date: Sat, 28 Feb 2026 20:54:30 +0800
Message-ID: <20260228125431.23098-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269552-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[1.81.40.128:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ae94000:email,1.81.32.176:email]
X-Rspamd-Queue-Id: 561561C3120
X-Rspamd-Action: no action

Use it for the DSI controllers, since DSI nodes have been added.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
This patch depends on the below series:
https://lore.kernel.org/linux-arm-msm/20260228101907.18043-1-mitltlatltl@gmail.com/
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 79021267d..1599d698b 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -4843,6 +4843,8 @@ mdss0_dsi0: dsi@ae94000 {
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SC8280XP_MMCX>;
 
+				refgen-supply = <&refgen>;
+
 				phys = <&mdss0_dsi0_phy>;
 				phy-names = "dsi";
 
@@ -4942,6 +4944,8 @@ mdss0_dsi1: dsi@ae96000 {
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SC8280XP_MMCX>;
 
+				refgen-supply = <&refgen>;
+
 				phys = <&mdss0_dsi1_phy>;
 				phy-names = "dsi";
 
@@ -6398,6 +6402,8 @@ mdss1_dsi0: dsi@22094000 {
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SC8280XP_MMCX>;
 
+				refgen-supply = <&refgen>;
+
 				phys = <&mdss1_dsi0_phy>;
 				phy-names = "dsi";
 
@@ -6478,6 +6484,8 @@ mdss1_dsi1: dsi@22096000 {
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SC8280XP_MMCX>;
 
+				refgen-supply = <&refgen>;
+
 				phys = <&mdss1_dsi1_phy>;
 				phy-names = "dsi";
 
-- 
2.53.0



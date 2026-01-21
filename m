Return-Path: <devicetree+bounces-257691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cD0dCHUycGkSXAAAu9opvQ
	(envelope-from <devicetree+bounces-257691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:57:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FE64F6AE
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:57:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 78E8858FA7A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 01:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AA64329392;
	Wed, 21 Jan 2026 01:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="ODS4KFkY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F4E322740;
	Wed, 21 Jan 2026 01:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768960535; cv=none; b=nNjBwaHeYEWmqhHl2YByyOkvTbRMdyKwdje2qgnulZq1NdU2/K1KLjG4va+YnUk7RZQuKRdirTOtAkOXTU7wl7kSDhTQa3jWrAfGWzHRNllzqKiLjqiePFDqttr+vWE93hbQxLzMGzfs7eOuzrR+Fs/b4R2SFRP+2r//qsyoF0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768960535; c=relaxed/simple;
	bh=hm4d4Jo6MYzCFgIfLXlHqtIrkJCFJYpmcnHUPsDDNYI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=EcHm/eXV1RYYXI/Tlj5c1aYndLKqNOhWGgpfr026FfnTXjxRyTnojVKWtdQ3nIEh8jOZN6Cmzfu6Fn4tSza1yfL1KmlvxKQHQn0gHNelDT7bUgXubySZTVyZdAEsnUP/9vhJQJsRrfAByJjAPTG0LG7tHzl7ByLHGT6ombBGdes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=ODS4KFkY; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1768960456;
	bh=EMiVJUqDKq7YKJIu3ZUJNtEQU6Eyi5qop1Aw2z7vqEc=;
	h=From:To:Subject:Date:Message-Id;
	b=ODS4KFkYUJM9P5JQe7KcA++voyQwBuPmDxf3HV/nwkkoXuiSDK9KhPvpVRQTtiw3C
	 iGUF5XyeVo3t8+Fry5wVHczC5Mgn0+g5ovku1uJCDo84eTtBt4jbRtplfRAyDwrltz
	 OMkkOEYIZeYmXOFTScOP10MljWFG6Bx4g4hxqV0Q=
X-QQ-mid: zesmtpsz3t1768960449t34e3db31
X-QQ-Originating-IP: trgEGomIIScwtOw4X+5nDC8xLSpkC8M3hxjgA5wCodo=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 21 Jan 2026 09:54:05 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13469771434486797081
EX-QQ-RecipientCnt: 21
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Hsun Lai <i@chainsx.cn>,
	John Clark <inindev@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: arm: rockchip: Add rk3576 evb2 board
Date: Wed, 21 Jan 2026 09:53:56 +0800
Message-Id: <20260121015357.291-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260121015357.291-1-kernel@airkyi.com>
References: <20260121015357.291-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: N2K7JO7TcIoEKhrUTvTn9Ag1/8SN/fVQEb2I75WRUufQLbVg9udwaZK7
	5D6EjWWcbXMDdIAlbgSfjlk0my9tKnt2DF3ts2camqYtpr6K2whrsouTg6pbLryH9zfwMvO
	+T6Fuqqz5YmUGqm2eSt5RMK9DNyZ5kqP7LVQuHMxl+YoROcEt3wXulO6EeA0HVnapTHoPv2
	Bteao2+k1B6oR7GCvASVQJ3peGEivfsTLL3yctK3IPGkX1HegUIhueU/JqU4c2ZHaMz7N/D
	3+WjwdG9EN9gogsOyvnRuDSLdrOhJJH8MvIWrLIO9SHxpqj78wfVSS3EJvApBe068FJ9/39
	RbNrJQXN0vD/bmaQce1bXbBYATpzJ8IvoKI6UD2F2QAOiuujH245/1SvQ6ruw5aq0Ps/9+A
	nksZo4KxtInA0F7JSkKnOB1r/3psqUemG+sPtKLIN0PZRtU697hLfRHb3/K9VAt3153B0eV
	nHn8xIu+o3EMLudIyKe9lxceimZ1saBI9cWR10qxLlaWV9c3IVRfEXRwj+nv2u4eQq+eC1Q
	dB1ydb4torZDKAJivPZO4OsdlMp1dr4e3t19RQmubVeR72lCVYAK3xnFuxRFLBTN21gzbm0
	WS5emVS66gtfvaRyJJu4H9nh6+DwOl9pw8Ur+xLHVJKtUmojdTK/ljXfLvFuU1eqouzMxz1
	CJ4JlpnjU2Lh7QJiH+oXB7mE9ilZElOkTD1BSDghRsJUF8H6KPAGkL5aw1a8f23la+VLyQY
	JrNFXzIiWsCdmOFBnUK5qV/dL7F5hDdWjbJYzU/Ij0fASXCDg5dhTQXseIogrd3Tfp4Tu2y
	uIoY1ATTMnB6Rd/eQUZ2SQAr96BAKTE/TEHcKb0bbpzXtLT/5vftCsJAZ+y88Gb2pprh6fO
	mpXV7RXJrGqtA0Vx00qVyenD5/h2bQDz/UrYK4mb6tdfkgP5wk97+CUIlbFuwbOHwG2J/pG
	E+tQQw3LG8rcQCXMZm5RNhaLpnqHhcmZ2fI8UpzhoN6ZhFB6D+159GqrIgbUSKR97y+6ACD
	4goX+ej/NZSvczUTUL
X-QQ-XMRINFO: Nq+8W0+stu50tPAe92KXseR0ZZmBTk3gLg==
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[airkyi.com:s=altu2504];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257691-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,sntech.de,cherry.de,kwiboo.se,rock-chips.com,chainsx.cn,gmail.com,manjaro.org,collabora.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[airkyi.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kernel@airkyi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[airkyi.com,none];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,qualcomm.com:email,airkyi.com:mid,airkyi.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: B6FE64F6AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Add devicetree binding for the rk3576 evb2 board.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
(no changes since v1)
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8acbb2..59ed57082003 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1136,7 +1136,9 @@ properties:

       - description: Rockchip RK3576 Evaluation board
         items:
-          - const: rockchip,rk3576-evb1-v10
+          - enum:
+              - rockchip,rk3576-evb1-v10
+              - rockchip,rk3576-evb2-v10
           - const: rockchip,rk3576

       - description: Rockchip RK3588 Evaluation board
--
2.51.1



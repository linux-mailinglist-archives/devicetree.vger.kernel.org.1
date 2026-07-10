Return-Path: <devicetree+bounces-324234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nWewFmCSUGoy1wIAu9opvQ
	(envelope-from <devicetree+bounces-324234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 08:34:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3943737BB9
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 08:34:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=eHX6o88t;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324234-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324234-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7E04302261D
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 06:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E36AB3B19B5;
	Fri, 10 Jul 2026 06:34:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CCB53563FA
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 06:34:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783665241; cv=none; b=E+2gXZxq+qwsbTcEuR2AGCLJ9sOKvC4VgcSFpdnxZCcgJHXZ53QE+c+Jv9bX9GBbd6DTef62bzDKoN0Jd7DXJomCmDwQn+6dkQCRlbk+StKxQ7kbFZ9qfi1FXeSqXlip0MMmQvKaBiruwePtJ/DujsFLUk2yV7VvYey429x+MSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783665241; c=relaxed/simple;
	bh=dbwF3XOwIkmwKWyPcfA1lqI8eP024y8lcreua3BESFI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DL2k4YqLYTBvABSG8QLZdlkzqtjE2q1scHeteoOYmWCHg6GeGAGn9OhboJU0LkdCCOz42QlGQp3GYEq2kfuzXRA+5NesbqVhLaK0gkAAWTzQYsfhf/UzZvNud3UPxWx/JzQAJ24pBD7cZ0FFPlWu5+GpZlqYyMV8+7dwCsJaWvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eHX6o88t; arc=none smtp.client-ip=209.85.210.173
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-845b6d9bf39so590825b3a.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 23:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783665240; x=1784270040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hVhq88axF1qV0hsa5snykJF0ozONqTGS7mDXfQTF8KU=;
        b=eHX6o88tFcbtVnYYLMK0Ny6x7cwUYpRp8+Bdfc+AaUzXJpWPfle9WNSX/wlzradqWx
         1aIzN3xS4HrguV2BZd2Dn6fGTtz7PO7mCI93d62KL67h5te6HkJGE+0UJ4GYYNQUJMgE
         gNvbf1/oPaX8PVWceMP5oZti50p+YjqxyaUxV9E7AQIinPOq/KEIJ6INQjiGBzL3RDdz
         8P0wP8JdFbHV77mncSyV/mDeGTlv8m59B1U7XiVTLmPBLaNzTIATV3KGLD5GKMr47UOC
         L0Jp6swTxoZKb/gzSKClC55K1mz9DZNuTzkevs3O8/TzWZ6QwCsURd6ZyXMb1NTGrauu
         0Xrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783665240; x=1784270040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=hVhq88axF1qV0hsa5snykJF0ozONqTGS7mDXfQTF8KU=;
        b=FHDyfy9STSCcAeyYbJbi9WOM7T35qcrcvtVoGERZzTIQb+e1PdNRSuD7/VsmDQs59P
         5WNCylCo7yqw3RZKs92i3GkrYmv82BkxZepYkfsV1iBfhWHPFo9qRoATSFZj8eyjqrj2
         w8XNe+1PNtD8DylK4k8b1LFUDwfSyjdLZbRa1b7dHvaw47kPLOaFV95r4CDwHKuge/nz
         40zHiS9tQPrcngvxd66AQux9bJshv2pGK5uYY8AwoabD1EBTjGzETZuxqzNdcpTj8Zqz
         NKRk6R66K0aW7IbYTF7iulvG5O0LHdRieL4s7gOn65m4ltk2I0OYtRbAOG/YS7WN4+bV
         S09Q==
X-Gm-Message-State: AOJu0YzdNJxfCBgy6/bSS1DEZAp/hwzeLQn0JjJXhf7Xu7qQKzesQqsF
	vZCkq/Y/x9SOY39hzpMNMVbrCGAWO3LBrlKOWqPOYjXsVuaWRK8776IX
X-Gm-Gg: AfdE7cnBLUV9ospmG2QAf+N9rwYO/qQR8W5MF554TS7fomlvGShYcy8eBtJozMEEdxr
	RNxGGDx8L6RL/1rXOl952E+DfstFjLdu+PjSbAnf9hGqqnv1pqc4S5IaUu5ikXB5MK+QaTWFOdf
	B0ZM7IdPevRIa5V/6L8cSdIvCWtR/DNzbzbz4D/dBuiBWum+NFwGQ5H7GQnm4Z6S6/dP/STTXxG
	mbiURnQDJWBBCietjHJcFwKkyLh4woGSpg4Vw+yPcuka4BRi81y3OOAxBRddiLhU5ayBQ0l+XQF
	R5prtrcv7sWuNpayrEG6KOIOmINXNwEmJNvjSUTV442YXPKj0AE61v14Dc0f7243Du7fuCNCQVv
	wND8HNYPul1lOI9hUwf7c47+NlRSFUKTti091q0+DZCV4ukTIffUZMKUeyxxcW1ptDoDI6+gMR7
	p0iU1e1s3NZNA=
X-Received: by 2002:a05:6a00:850:b0:848:2ef5:50dc with SMTP id d2e1a72fcca58-84870ba9000mr2044134b3a.36.1783665239872;
        Thu, 09 Jul 2026 23:33:59 -0700 (PDT)
Received: from localhost ([121.250.214.124])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8480da8bab0sm8174681b3a.8.2026.07.09.23.33.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 23:33:59 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Inochi Amaoto <inochiama@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH 2/2] riscv: dts: spacemit: Add enough deassert time for the PHY on com260 board
Date: Fri, 10 Jul 2026 14:33:13 +0800
Message-ID: <20260710063314.1030249-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260710063314.1030249-1-inochiama@gmail.com>
References: <20260710063314.1030249-1-inochiama@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324234-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:inochiama@gmail.com,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:dlan@gentoo.org,m:looong.bin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:looongbin@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gentoo.org,gmail.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E3943737BB9

RTL8211F require at least 50ms deassert to guarantee the register
access, 10ms is only enough for the PHY reset.

Fixes: cfe5c91cb73c ("riscv: dts: spacemit: k3: Initial support for CoM260-IFX board")
Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k3-com260.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/spacemit/k3-com260.dtsi b/arch/riscv/boot/dts/spacemit/k3-com260.dtsi
index a38d7b738258..b704b537385c 100644
--- a/arch/riscv/boot/dts/spacemit/k3-com260.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k3-com260.dtsi
@@ -178,7 +178,7 @@ phy1: phy@1 {
 			reg = <1>;
 			reset-gpios = <&gpio 1 5 GPIO_ACTIVE_LOW>;
 			reset-assert-us = <10000>;
-			reset-deassert-us = <10000>;
+			reset-deassert-us = <50000>;
 		};
 	};
 };
-- 
2.55.0



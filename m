Return-Path: <devicetree+bounces-259434-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEmNNiI/d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259434-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:17:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAF286A32
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:17:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 18F463028665
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D282330B17;
	Mon, 26 Jan 2026 10:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OuzNbhIS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 907BA2FBDE6
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769422515; cv=none; b=IQNZlgx4ZWrr6LQ/QSSdm3m8yuZwRKqBev5eYGAqNY6MVIrBUu7e6QbHtKdG690UowCRCc46SAd5IsKjXJJhaj3+9/0kW/49TBimamUQClxaQPBK+qRjwaLeh1NpRDjMKzoF7zsL1G1fuk1f0PeNMkBaHuKbn+fvkq9i61cfBy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769422515; c=relaxed/simple;
	bh=VAcTrN4SEtCtkSuzww4o6pK0mdDw8d4krQPbqlihmNA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TULmlW1tJGHSs3XwAsUKEuZVQhCdO8KOUNYhDXZzfGKycSFYnNcV1sBrBBPSiOn11/l6LPtuFQpJEuKUqqs0m6vFo5manXABe4UQlb5vBrjVXPNTLPMcfvEedQ3uKN41BjkW8nA7sh0REBvA9OvO8yzk0Fv7T3VsMD7j5lVjM08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OuzNbhIS; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-48039fdc8aeso22486035e9.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769422512; x=1770027312; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=60kkHg9EpcHMwtWKY6bs7zqhBr9lwoD5Ih0JKegSxHA=;
        b=OuzNbhIStQnMFOQeqYqCOwS0jxXjQYkGHZuh4nVKHCmrVOGxB86KHRmjw/u/JI2cAC
         pjNnmRdMLLvleIwGdc6s2wvjpHsGVPm4n9yWr0dmjIhag3p+W8Ly+nVj7kOyOSY9O13t
         /Ib6QcLTZIrDEKbahoraiqThAFTy1eogzhvxAyfUQ6NASgsA1D8Kutg8GuRBGndSXci2
         eBNaAV3i3NbefE0SgWR6pU4ckvuMUdkLQz1urW3x+06L4X8qgB6tfus/1eVdGSQ3hO43
         El8h4si/ywojQVDgwfLNEwb7UDOBkYgngiuc4fKKR1JYjnkZqqAAmOaLGftzGYIEZFDM
         cHZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769422512; x=1770027312;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=60kkHg9EpcHMwtWKY6bs7zqhBr9lwoD5Ih0JKegSxHA=;
        b=gfZqsgdlmUL/w9iIdWuO7yJq3lLdOap5nbIaeMq1Sl0RzSD64hqu7RFll7OjsgnhNX
         eR67KG6VIsOfF+BXKuxzAdNrZxMsSu/IYbi18en04xNj+Zl5NmiwVYH28nWz0AtjRxoo
         xGUpLNo9igkq35G3VcJqxU80gPGsnxYUdq9l0KHGjEaRUh6EhfcdiiQXcq3fo6eV0zVt
         X6h+ghiozeVC02DvTTfxfRc5jK6gD3X0lLTCTdEFsxWuTlD8Y1DkEi7QjwjBnYb3B1qp
         mTuUwaODd+XqKIwKy4LL4SDZTtH/K2/xOEIgpf5tDhcbstVSm8MpwobMjbPSPWpNu8VS
         4bUw==
X-Gm-Message-State: AOJu0Yz+eSrcH5yg6zb/nzBjs5ciu3Gk+PUeKXjzL/quEwLm/gaiG7ty
	awehc+NWeIslSYgggvbzVwAeiSOCf2oP8GuKj1VXcuxOc4Jnb+M5FMXH
X-Gm-Gg: AZuq6aLiC/j0Slp4fTjCOm8IJkBPw4+9b2UqFp/l9pJWquG/WNwcuz7nKKTu7yNAS9R
	Ce7yI53hDkwwfEhgjLA+N4S/hpQkfmRoibx2GcoFMxvKTWRyrbUcp2gDLyMo7GTpOuB93yGriuo
	eJMSpSJbwzUsUdmGGqvSREkVtkQ5pkGRuZGoMFAqM8oj9PeJmMifEIu049PlKnHeZFYrvej4qbW
	7QyVwV0ZR+F09q934eTAGmM9YbhYROcIN0baGUWJkmVnoU+TbiUZ/71D72Oh2y1/Jb/6fiV9/+V
	xDCFNpTXJd1LvGFL3aQOHSSy3oHnxIBOzlIPQIcvf+fxOs+ezy6Xw00s4EJ1Y2KhpNQkWDLNAbP
	5JKKG77sXucasu1L0EPlAOfDx7EdX6t9ZGuYrevtcBGpFOdBEXQ0vQnB8u4dterVKyIu9Bu1fKZ
	Ck
X-Received: by 2002:a05:600c:468a:b0:47e:e946:3a59 with SMTP id 5b1f17b1804b1-4805d06c77amr59044075e9.34.1769422511702;
        Mon, 26 Jan 2026 02:15:11 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d8a5c32sm319771795e9.11.2026.01.26.02.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 02:15:11 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] ARM: tegra: lg-x3: add node for capacitive buttons
Date: Mon, 26 Jan 2026 12:10:17 +0200
Message-ID: <20260126101018.24450-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260126101018.24450-1-clamor95@gmail.com>
References: <20260126101018.24450-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259434-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com,yahoo.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.11:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,1a:email]
X-Rspamd-Queue-Id: 3AAF286A32
X-Rspamd-Action: no action

Both smartphones have capacitive buttons but only P895 supports RMI4
function 1A (0D touch), while P880 exposes buttons area as a region of the
touchscreen.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts b/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
index ab8f5cf317bf..414117fd4382 100644
--- a/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
+++ b/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
@@ -109,6 +109,12 @@ rmi4-f11@11 {
 				syna,clip-x-high = <1535>;
 				syna,clip-y-high = <2047>;
 			};
+
+			rmi4-f1a@1a {
+				reg = <0x1a>;
+
+				linux,keycodes = <KEY_BACK KEY_HOME KEY_MENU KEY_SEARCH>;
+			};
 		};
 	};
 
-- 
2.51.0



Return-Path: <devicetree+bounces-259625-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QF0kG5q9d2l8kgEAu9opvQ
	(envelope-from <devicetree+bounces-259625-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:16:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFE68C766
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:16:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7CB893044A6D
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 19:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E74B283FC4;
	Mon, 26 Jan 2026 19:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MBYe08HZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6BA2280327
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 19:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769454954; cv=none; b=cWlLVWIuv/qGEMBxMKEJgwDWLRMxsu1BEArShgQ/CB8wgPR+wC18ejsUDTjSNLBlNLBdjCU+c6bGiwtSBzDaljhmymT6oeumXJXuUZtBm/yyquZEo3H+7Ng6GQ/T8Uy1tMNND7Oz5v0WTNd25cOlfRTnojis3wXkwdtOr1iW7pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769454954; c=relaxed/simple;
	bh=oa/n902LliLC6uyPYXcLfglL0I0+KjM62CVXT1z90/0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t0Gg4xM3AoLYJu7tJPYidX+/xwtvS/apYJL3vMaqwntCZticQmZxlPask9QJqzGNYXhPBHeaeWBY4kQ8BipXPZvLw3WtwWI21w5wQLUkmigjlbdqQDEcHqTRT69kkAUADwrDEFakDN4NIpha5Y44UWjBaULK5LX9genL+YDuK0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MBYe08HZ; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4801c731d0aso38496165e9.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 11:15:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769454951; x=1770059751; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xRjplM4qFrlSXwStHXK/BY3jnQdeBftAW/sjI9HhO44=;
        b=MBYe08HZsyD28Q0BAA020po3OL/8WHA2l5JSljiyjpymOlgXjKgfXrOfZRPWLpUbr2
         /9yAHnKvR2hH83ozqZkXLz75r4Illj2mYorX/e4NXi9J51hNI28AaUpPaogjon1xHB1H
         4BXaEqeeA+vJkP00TI1xv32gz4EX5VQS3GVJRkkgjXWzZ3STPg6KXDQQKEfkAaZckA3/
         kSWMeNS3kWHT4ODmBgjnA+r7rZFj2aJJYmXkj6rBWF2OgbQ0jyCd5iScwTu2xrDkkroJ
         PVm0RiKvPOZlbTC2xyFBCu1Q2FLVT0XSmBHjQuRGVyU1z0viRbF93fT1dHRonAq62Z+t
         13mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769454951; x=1770059751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xRjplM4qFrlSXwStHXK/BY3jnQdeBftAW/sjI9HhO44=;
        b=LgUFqBJCjHLl3HR7yqCltJix7iBAPm29vSRNiWdoKhIu1EvsRDQ6nz266kR7LmmlJe
         i/s1a96dG3YKshVxCpSETJW6KxT+zbTIbs6rd8RLSswI0K7Is3q1jY0NpUw6EyZv056U
         H5ry7625dclLjJ5O6u89FZZCcP6qR3H6kpaoaCpLDgsPr9NbDlcGoBO5nEzDHTjTYEqm
         mdZd/fWHkOJESIbBZQX9118e9khr2ebNUfF24WPqM5r2gKzOCJkS156FgqyUNu0Pasua
         Tu8urzaa6jEQHt+327b0Eax6QZpa6slmAwMkfSjhpvr57HW60OBWp9FQ3A69oPKeuzQ3
         r8wA==
X-Gm-Message-State: AOJu0Yxdg9o7vMV70a6t1L8Rrw46mCweAHD3mOn7YAhAJv39PRxtpLW0
	kDuLDQk4AB15eSC9PtI31XQsE9wlEPjJS/diPyALBpOP3QlhXBdwG/H5
X-Gm-Gg: AZuq6aItv2dP+6GR9owq2eFqhszKOACSALRrG9dZVaetm8U1+2rRYai0JpTzwjEgoDW
	2t4KR6nGOPXxphO5T5q4GDI7ME8ZgjS/SXuLkAPrxd+eprX4XDcqOE6otJWOAWg6RGcjxmMTF2u
	8cKUy2QTcQ1EmSs8RVhDnMqO/1rwFOHD8tOo3jgv/ynkCWV5aVe3EnQWKvj87sFzQALSWiJ5RBb
	a88l6aWn224Ly3usSEbxW5N1PCrsVzjqR0wV9QCXeBoSdUqIoyixKCSs19Dqj7vYWBpDyIIfbC7
	w5yg/NVwXE3DdPFDnNRcGbui7jd+r+cOiWYK+jSHKd6JmWrkRWNHIVkma1oL4kse9paH6El+b7b
	Sukyuf/dsq79tcOtgtZuOwSpKVJue8Pcfa2bXDYrDayfoZv76fEg7eyzPkK7Tr3mQttRynAye3o
	3X
X-Received: by 2002:a05:600d:6454:10b0:480:1b1a:5526 with SMTP id 5b1f17b1804b1-4805dd2cf6cmr71031375e9.16.1769454950771;
        Mon, 26 Jan 2026 11:15:50 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c02d0dsm30958219f8f.4.2026.01.26.11.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 11:15:50 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Mikko Perttunen <mperttunen@nvidia.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 4/5] ARM: tegra: add DC interconnections for Tegra114
Date: Mon, 26 Jan 2026 21:15:35 +0200
Message-ID: <20260126191536.78829-5-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260126191536.78829-1-clamor95@gmail.com>
References: <20260126191536.78829-1-clamor95@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-259625-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[3.59.6.192:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,3.59.163.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0CFE68C766
X-Rspamd-Action: no action

Add DC interconnections to Tegra114 device tree to reflect connections
between MC, EMC and DC.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 arch/arm/boot/dts/nvidia/tegra114.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/boot/dts/nvidia/tegra114.dtsi b/arch/arm/boot/dts/nvidia/tegra114.dtsi
index 9acba15fba25..f1af206f50ee 100644
--- a/arch/arm/boot/dts/nvidia/tegra114.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra114.dtsi
@@ -125,6 +125,17 @@ dc@54200000 {
 
 			nvidia,head = <0>;
 
+			interconnects = <&mc TEGRA114_MC_DISPLAY0A &emc>,
+					<&mc TEGRA114_MC_DISPLAY0B &emc>,
+					<&mc TEGRA114_MC_DISPLAY1B &emc>,
+					<&mc TEGRA114_MC_DISPLAY0C &emc>,
+					<&mc TEGRA114_MC_DISPLAYHC &emc>;
+			interconnect-names = "wina",
+					     "winb",
+					     "winb-vfilter",
+					     "winc",
+					     "cursor";
+
 			rgb {
 				status = "disabled";
 			};
@@ -144,6 +155,17 @@ dc@54240000 {
 
 			nvidia,head = <1>;
 
+			interconnects = <&mc TEGRA114_MC_DISPLAY0AB &emc>,
+					<&mc TEGRA114_MC_DISPLAY0BB &emc>,
+					<&mc TEGRA114_MC_DISPLAY1BB &emc>,
+					<&mc TEGRA114_MC_DISPLAY0CB &emc>,
+					<&mc TEGRA114_MC_DISPLAYHCB &emc>;
+			interconnect-names = "wina",
+					     "winb",
+					     "winb-vfilter",
+					     "winc",
+					     "cursor";
+
 			rgb {
 				status = "disabled";
 			};
-- 
2.51.0



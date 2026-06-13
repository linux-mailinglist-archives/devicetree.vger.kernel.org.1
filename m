Return-Path: <devicetree+bounces-311229-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CrjGDqj/LGoYYwQAu9opvQ
	(envelope-from <devicetree+bounces-311229-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:58:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5F167DE19
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:58:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=k6AOfF3C;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311229-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311229-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 901C93009CE9
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 06:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D720F381B0D;
	Sat, 13 Jun 2026 06:58:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1921D393DEB
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 06:58:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781333925; cv=none; b=CP8fVzU3Ya4/UaLTX3n72a4hIDjciQiQ6UooWnJVsZ2XPxeZZDEsxCRxffCd3Bk3Iqrds+GMHYvBXrJarfRQ09MkgpeSSAbgwzT8RM6UecsqApFii/UzOIqwTSYmOdbiFt2rT/6hoCWU3JymDIW/eELyJV/Bfm1bPvgu7D2TwNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781333925; c=relaxed/simple;
	bh=nPY3wv2mci8wkKBwmvFP6TpH+QPqSd5Lve4SBi0sdAE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oQRV2MYVaN+ULbP5OWgxjGJSMkh9tziXPC7sMnXktvkxrOgbiQKsocvM0N9+ga4J/JGs3u/sQw7jL+Vzz3wMh5W37Sez1sOKMyjn0Euvo3mgpAGPk6pdD0vSMX+FCWM6kUpjj5ZWzPnJT0FpGnSRNEbY/NtbM94CxJmle4m45+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k6AOfF3C; arc=none smtp.client-ip=209.85.128.52
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4905529b933so16783875e9.0
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 23:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781333922; x=1781938722; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6JonI5tVCKFVj4EE3HntNYMlqngF+zGzezn1FD6cSzY=;
        b=k6AOfF3CoM028XgK9ioM+RJZUwbKRCc/LPiJaAobCyTZCmLDSyvTVC3Dr2yzCdlhoM
         TPTRHfgG+MVI5nS2tonIMr3jQ7zSKV27xT96MCB2d5JNl0nFBUeb++pJ5KsJpbTIsvVD
         JdPrrXqOX4djH1gGpP9f908J+j0qPln/eI/RFCjxIvUrY7xDAqxpMPsiGZ3pfovLk9to
         96lBSPMcBV7VQGn7ZJpR9uG8p6jTm9WdrFpEGSZsxMEP78c5ZwzAPvtoXRSzuA1ItYZF
         /9+TDnXrRF3JQ6oCxOsYcIyTLbHy42rBQtflfRUO4vzjAMw/5EOaqQByixKntRAjPRRt
         lbrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781333922; x=1781938722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6JonI5tVCKFVj4EE3HntNYMlqngF+zGzezn1FD6cSzY=;
        b=YJMJFyoaCX9v2D1T0W9yOM5HIxqAR6Vh88gyB4xTU6OLcTpSg8Wc+wngywzU6117C8
         HPdDnuGS/8WaphIIQ0wY4XWbB/m6tryBlp9LxiuWquerVTAeTyJKknELw+LtJ0rcs31j
         sppf68Jjd2qqHOckN73y853Pf+OfR2I/835vxpxS9QdZMiXBl3CNGXy+0e/mmkWmDGxO
         1DBjJ9dp8wHSTS1Ih5pViMVb0lLq2z3M/3oHqS16hPsAlaH24s8y8pcYfRm78xFxkUXX
         V1d3n8o1NkqnM8KRURCm3BsL1FsMTu+3u4kSEh4yuoDmXRMJgQXA0LKC9WNCwtXpkQf0
         MJVQ==
X-Forwarded-Encrypted: i=1; AFNElJ+N9anM+DhPwLrdboCh3U82okoOpAwFm9GGGbDbQOdvwOnWX1LIAL8TkHJIT0OubOz/Lkc6FsmBNbF7@vger.kernel.org
X-Gm-Message-State: AOJu0YzORa4VYf7WFNoDcFh/Wojee2bhE6Ou4Ophvb9qZed+8i7KuWsY
	e+tKZIp/G83UhCbrF/0rP3p6ARltUczcDs875wshDt2XVJgrs6zRMsnU
X-Gm-Gg: Acq92OGgyGrXt0FkaZC8tFn06WwUPoZluHykHET5GC5lW5XdnUGmeBkuapdhCTSQbFP
	LkZuRlR4gA5cxQCuwkG7OCDzs/lJdsC6d3KLlRqgKYYGyk2KeMUfnH8yQXjP299AObtyVwioUqj
	cQyn5kQLBCv78ORKRisaIsghQ8mbW1wAdhGCONPVYXdDWZ+GhIkVV5iQAqV0+eIA+PeGfhBKLLX
	di92RmrDmJlILIWeJLR00zf2JizKGObGawvvYOtKob8ydmAjG7/6S9LiMtzoE6raD1EeAxXw/LS
	rp5jol8IxJGPkdPW6SkahqZUBpLVwxkLcip2lt95DhuQH4iYo8RB6QPFjSsTdNBr4Kva4FPGagg
	g6MW8fK0eZomeSp8SL/v0ETtQzygNAys/zper+9Q5YRG5KYLxU2W6hqFd6qoPnjR4kW6rMQBGXZ
	o40SS5cVXXHiR5IZyazbtzLrvIEw+Wm3ul9F+01Vk1Rg==
X-Received: by 2002:a05:600c:83c8:b0:492:1e36:d16e with SMTP id 5b1f17b1804b1-4921e36d1a9mr40797495e9.36.1781333922475;
        Fri, 12 Jun 2026 23:58:42 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492202e5cbasm42917705e9.2.2026.06.12.23.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:58:42 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulf.hansson@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	xxm@rock-chips.com,
	chaoyi.chen@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	jonas@kwiboo.se,
	Midgy BALON <midgy971@gmail.com>
Subject: [RFC PATCH v4 8/9] arm64: dts: rockchip: rk3568-rock-3b: Enable the NPU
Date: Sat, 13 Jun 2026 09:01:15 +0200
Message-Id: <20260613070116.438906-9-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260613070116.438906-1-midgy971@gmail.com>
References: <20260613070116.438906-1-midgy971@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311229-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linux.dev,rock-chips.com,cknow-tech.com,kwiboo.se,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ulf.hansson@linaro.org,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-pm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:xxm@rock-chips.com,m:chaoyi.chen@rock-chips.com,m:finley.xiao@rock-chips.com,m:diederik@cknow-tech.com,m:jonas@kwiboo.se,m:midgy971@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F5F167DE19

From: Midgy BALON <midgy971@gmail.com>

Enable the NPU and its IOMMU on ROCK 3B and wire vdd_npu as the NPU
power domain's domain-supply, so genpd brings the rail up and down with
the domain (the domain is marked need_regulator). The PVTPLL compute
clock is brought up later by the driver.

The rail is no longer kept always-on, so pin it to 1000 mV (the NPU's
1 GHz operating voltage; the driver runs a fixed compute rate with no
devfreq voltage scaling) and mark it boot-on, so it is up before the
power domain de-idles the NPU NoC at power-on.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 .../arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index 69001e453732e..d3f9776c2bdc3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -330,9 +330,10 @@ regulator-state-mem {
 
 			vdd_npu: DCDC_REG4 {
 				regulator-name = "vdd_npu";
+				regulator-boot-on;
 				regulator-initial-mode = <0x2>;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
 				regulator-ramp-delay = <6001>;
 
 				regulator-state-mem {
@@ -787,3 +788,16 @@ vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi_in_vp0>;
 	};
 };
+
+&pd_npu {
+	domain-supply = <&vdd_npu>;
+};
+
+&rknn_core_0 {
+	npu-supply = <&vdd_npu>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
-- 
2.39.5



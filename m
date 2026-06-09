Return-Path: <devicetree+bounces-308587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DgV/HjR2J2r8xQIAu9opvQ
	(envelope-from <devicetree+bounces-308587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 04:11:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7109E65BCFD
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 04:10:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ultrarisc.com header.s=dkim header.b=Wakr1QTr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308587-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308587-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=ultrarisc.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E9F59301A278
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 02:10:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D5F91F8691;
	Tue,  9 Jun 2026 02:10:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ultrarisc.com (unknown [218.76.62.146])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB30F355055
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 02:10:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780971046; cv=none; b=LwxcYRw3kILBiIm601DCwmG0UUOnLxgJv+DM+l9gLnGhqdjXpHH2BrczlA7uNpgGKZAu2l2ZxZfm2XpdzAdOwQFQuTImtSMKuRGorxqhKQVpqx4o/KdmQQYLvX6eF94nWSZIyTMe6Vso0TWMGVi2Y7BNFnKbxnb1Upq2XUSe12E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780971046; c=relaxed/simple;
	bh=teQaR4A1Zlndlra1Ed1ZkI7fbbKZCmwuBm+AIvpT6QQ=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=I1GzqqO1PXGV68dvxkiew1sEML3EuKXXBllGiDjbCrvKPLKSE8onAsmWfS4LzXbagAJ0Lc/Rt37WbQO9WTe7aYbwRj4e8UtwJT6BHLvGZ64Ea006uyCwpnUOAqqSJXO+RDQV/mpaTMstUYFFNsH99WHn8MMUEIjF0fgO5wk9HsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com; spf=none smtp.mailfrom=ultrarisc.com; dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b=Wakr1QTr; arc=none smtp.client-ip=218.76.62.146
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ultrarisc.com; s=dkim; h=Received:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Subject:From:To:Cc:In-Reply-To:
	References:Date:Message-Id; bh=y6swWkyW3pFl4jhFsCyLgIFMrQBo79gM9
	UghTuTKTVQ=; b=Wakr1QTrMWhoSS4qEY5EaV7056CAX3D4q3uOgRLn6C40al6fe
	6ZFawUHhjcegv7+6vMgsc9V5ECVG44WmE3NQrJyOZKM8tStIXro5gOXd/VE/ak7R
	k07NIu93TKrdVGSom2DQ+qjaCpQMgtoDNgx9IniAd8K9VogcmSILbrHQCU=
Received: from [127.0.0.1] (unknown [192.168.100.1])
	by localhost.localdomain (Coremail) with SMTP id AQAAfwDXEEJDdidqLaAJAA--.8835S2;
	Tue, 09 Jun 2026 10:11:16 +0800 (CST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v3 1/2] dt-bindings: pinctrl: Add UltraRISC DP1000
 pinctrl controller
From: Jia Wang <wangjia@ultrarisc.com>
To: sashiko-reviews@lists.linux.dev
Cc: Jia Wang via B4 Relay <devnull+wangjia.ultrarisc.com@kernel.org>, 
 devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608075749.68ED71F00898@smtp.kernel.org>
References: <20260608-ultrarisc-pinctrl-v3-1-30a09ed74275@ultrarisc.com>
 <20260608075749.68ED71F00898@smtp.kernel.org>
Date: Tue, 09 Jun 2026 10:10:38 +0800
Message-Id: <178097103868.1947369.3891180215442972716.b4-reply@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780971038; l=1668;
 i=wangjia@ultrarisc.com; s=20260515; h=from:subject:message-id;
 bh=teQaR4A1Zlndlra1Ed1ZkI7fbbKZCmwuBm+AIvpT6QQ=;
 b=nMR/UlfIMBqoPoAcVxrFddm5ENM5yTIBfYDVFZ3Dhyz4LlHWvlXPrwnwvBEE0uP+A52f+PV+l
 lt30hXUN9X7C2r6id4+zmekajd1ZxlHu6RB4vl1DsC3kK4zAovjn4tN
X-Developer-Key: i=wangjia@ultrarisc.com; a=ed25519;
 pk=wGVm18siRScehKOkOz0WKxgxDy7IezHEszhnN4/TUCY=
X-CM-TRANSID:AQAAfwDXEEJDdidqLaAJAA--.8835S2
X-Coremail-Antispam: 1UD129KBjvJXoW7KFW5Zw1kXw4fury7Kw4fGrg_yoW8WFykpF
	sxGa9xAF97Jry3Kws3Kw1fA3WfXr1xAFy7Za1q9w1qyFsIqr10qa9YkwsI93WDWr48GF4q
	vrnxu345Aa18Za7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUv0b7Iv0xC_KF4lb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVWUJVW8JwA2z4x0Y4vEx4
	A2jsIEc7CjxVAFwI0_Gr0_Gr1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
	64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r106r15McIj6I8E87Iv67AKxVWUJVW8Jw
	Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lc7CjxVAaw2AFwI0_JF0_Jw1l
	c2xSY4AK6svPMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I
	8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWU
	twCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x
	0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_
	Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU8
	6c_3UUUUU==
X-CM-SenderInfo: pzdqwylld63zxwud2x1vfou0bp/1tbiAQAAEWoWakYABgA7s9
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ultrarisc.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[ultrarisc.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:devnull+wangjia.ultrarisc.com@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[wangjia@ultrarisc.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangjia@ultrarisc.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-308587-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,wangjia.ultrarisc.com,dt];
	DKIM_TRACE(0.00)[ultrarisc.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ultrarisc.com:dkim,ultrarisc.com:email,ultrarisc.com:from_mime,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,get_maintainer.pl:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7109E65BCFD

On 2026-06-08 07:57 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] The newly added dt-bindings header file is not tracked in the MAINTAINERS entry.
> --
> 
> commit f7f86b1233735eea88a3047d747f41d13c3dc00b
> Author: Jia Wang <wangjia@ultrarisc.com>
> 
> dt-bindings: pinctrl: Add UltraRISC DP1000 pinctrl controller
> 
> This commit adds device tree binding documentation for the pin controllers 
> on the UltraRISC DP1000 RISC-V SoC. It also introduces a new header file 
> containing the corresponding pin definitions.
> 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> 
> [ ... ]
> 
> > @@ -27357,6 +27357,12 @@ S:	Maintained
> >  F:	drivers/usb/common/ulpi.c
> >  F:	include/linux/ulpi/
> >  
> > +ULTRARISC DP1000 PINCTRL DRIVER
> > +M:	Jia Wang <wangjia@ultrarisc.com>
> > +L:	linux-gpio@vger.kernel.org
> > +S:	Maintained
> > +F:	Documentation/devicetree/bindings/pinctrl/ultrarisc,dp1000-pinctrl.yaml
> > +
> 
> [Severity: Low]
> This isn't a bug, but should the new header file
> include/dt-bindings/pinctrl/ultrarisc,dp1000-pinctrl.h be added to this
> MAINTAINERS block as well? Without it, get_maintainer.pl might miss CCing
> the maintainer on future patches that modify the pin definitions.
>

Thanks. I'll move the header to arch/riscv/boot/dts/ultrarisc/ and
submit it as part of the DTS series in the next version.
 
> -- 
> Sashiko AI review · https://sashiko.dev/#/patchset/20260608-ultrarisc-pinctrl-v3-0-30a09ed74275@ultrarisc.com?part=1
> 

Best regards,
Jia Wang





Return-Path: <devicetree+bounces-307625-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aUrzMOq4I2q6xQEAu9opvQ
	(envelope-from <devicetree+bounces-307625-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 08:06:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C2F64CAB2
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 08:06:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ultrarisc.com header.s=dkim header.b=cvasc9c3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307625-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307625-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=ultrarisc.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E2F8D3011A46
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 06:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E69412ECD3A;
	Sat,  6 Jun 2026 06:06:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ultrarisc.com (unknown [218.76.62.146])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A17DCA4E
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 06:06:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780725990; cv=none; b=B+zWpToo8bMjmDBP66TfQMYbFKxld5cgT6g8VLK0nDineIwA1UEvOKuYG6odo88S83wmZDyBQT466oWnpgWGOZwZ0+f7xp13+9o86DEBW1yqVqAMOVDgCFtTbtpZ0JRiYG9vMNQ6MhriA1wMYNhGSXKvRux/Xsc5rayrF6a2ACY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780725990; c=relaxed/simple;
	bh=qqDXo+uYr/5IvPcf9pSOsL3u5vxQd4pvbVrNWz+1/oA=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=MpewxAi87rN1v+xp1bG9VNeq1Ju5c6bvvmbmfWWWzdoIAkpS5kM3bhHgvNK3VMasqQPVIvpG7ao2Ni6DubX7q9VSELG4rwKPpvjSbDPhMbv0wQ4uzYHNjniBxzzDLVZd5rlStwZzfWEDKh5RZl098Mg2lEUkeYuU5HdPyny4GPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com; spf=none smtp.mailfrom=ultrarisc.com; dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b=cvasc9c3; arc=none smtp.client-ip=218.76.62.146
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ultrarisc.com; s=dkim; h=Received:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Subject:From:To:Cc:In-Reply-To:
	References:Date:Message-Id; bh=W8reLofs7i9/TLfJM49j3oPOhhw4TfU+0
	726U5kHaUo=; b=cvasc9c3U3xs0rFN48bDmD3dtj2BlN8HWwM8JMGp28H8ehTgd
	L8FhMJr33OkytlujZiDlx8mCs+BfxWgw0+2imhiSwJ5SzJbIcOFcIP9Y9WjOok2Y
	bOxvm+jwEhwJBfroQ9kEDghGvHXlThXMXfMzUWCK0IxHQOQa4S8ezmtaBw=
Received: from [127.0.0.1] (unknown [192.168.100.1])
	by localhost.localdomain (Coremail) with SMTP id AQAAfwA3cUIHuSNqfPAIAA--.8933S2;
	Sat, 06 Jun 2026 14:07:03 +0800 (CST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v2 2/2] pinctrl: ultrarisc: Add UltraRISC DP1000
 pinctrl driver
From: Jia Wang <wangjia@ultrarisc.com>
To: sashiko-reviews@lists.linux.dev
Cc: Jia Wang via B4 Relay <devnull+wangjia.ultrarisc.com@kernel.org>, 
 conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260601102233.F2E711F00898@smtp.kernel.org>
References: <20260601-ultrarisc-pinctrl-v2-2-07ac5130a96d@ultrarisc.com>
 <20260601102233.F2E711F00898@smtp.kernel.org>
Date: Sat, 06 Jun 2026 14:06:25 +0800
Message-Id: <178072598572.310568.4489785072318421270.b4-reply@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780725985; l=2153;
 i=wangjia@ultrarisc.com; s=20260515; h=from:subject:message-id;
 bh=qqDXo+uYr/5IvPcf9pSOsL3u5vxQd4pvbVrNWz+1/oA=;
 b=vEZM7cbLnl849Qqgm9NVybEJzT6P6rEtKlLOoIXsCpHose3C4DsWtc1S7I5hdDgVlpKZIeL5r
 RsPCG7hzwFMAj9XsosujISUipWR4j5hkohFv1pr6D7jkh2AgxxcyB0/
X-Developer-Key: i=wangjia@ultrarisc.com; a=ed25519;
 pk=wGVm18siRScehKOkOz0WKxgxDy7IezHEszhnN4/TUCY=
X-CM-TRANSID:AQAAfwA3cUIHuSNqfPAIAA--.8933S2
X-Coremail-Antispam: 1UD129KBjvJXoW7WrWfXF1kKrWDCr43Ary8Grg_yoW8uF1fpF
	Zaka48CF17JFW5Kayxt3ykC3Z3Za1fAFW5Arn0g34jvFW5C34UCryDG34UtayDCr4jgw4j
	ka4F9ry2ya10va7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUv0b7Iv0xC_tr1lb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVWUJVW8JwA2z4x0Y4vEx4
	A2jsIEc7CjxVAFwI0_Gr0_Gr1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
	64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1Y6r17McIj6I8E87Iv67AKxVWUJVW8Jw
	Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lc7CjxVAaw2AFwI0_JF0_Jw1l
	c2xSY4AK6svPMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I
	8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWU
	twCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x
	0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_
	Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU8
	Q_-PUUUUU==
X-CM-SenderInfo: pzdqwylld63zxwud2x1vfou0bp/1tbiAQAAEWoWakYABgAqss
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ultrarisc.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[ultrarisc.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:devnull+wangjia.ultrarisc.com@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TAGGED_FROM(0.00)[bounces-307625-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,wangjia.ultrarisc.com,dt];
	DKIM_TRACE(0.00)[ultrarisc.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ultrarisc.com:dkim,ultrarisc.com:from_mime,ultrarisc.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 21C2F64CAB2

On 2026-06-01 10:22 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] The Kconfig symbol ARCH_ULTRARISC is referenced in 'depends on' and 'default' but is not defined anywhere in the kernel tree.
> --
> 
> commit ae98cd11bdead29c422db358de808560e3f3ab23
> Author: Jia Wang <wangjia@ultrarisc.com>
> 
> pinctrl: ultrarisc: Add UltraRISC DP1000 pinctrl driver
> 
> This commit adds support for the pin controller on the UltraRISC DP1000 SoC.
> It provides mux selection for pins in ports A, B, C, D, and LPC, as well as
> basic pin configuration controls.
> 
> [ ... ]
> 
> > diff --git a/drivers/pinctrl/ultrarisc/Kconfig b/drivers/pinctrl/ultrarisc/Kconfig
> > new file mode 100644
> > index 0000000000000..a9257dda5d656
> > --- /dev/null
> > +++ b/drivers/pinctrl/ultrarisc/Kconfig
> > @@ -0,0 +1,23 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +
> > +config PINCTRL_ULTRARISC
> > +	tristate
> > +	depends on OF
> > +	depends on ARCH_ULTRARISC || COMPILE_TEST
> 
> [Severity: Medium]
> Does ARCH_ULTRARISC exist in the kernel tree? I couldn't find a definition for
> this Kconfig symbol. If it's missing, this driver will only be selectable
> when COMPILE_TEST is enabled, leaving it disabled for its actual hardware
> target.
> 
> > +	select PINMUX
> > +	select GENERIC_PINCTRL_GROUPS
> > +	select GENERIC_PINCONF
> > +	select GENERIC_PINMUX_FUNCTIONS
> > +	select GPIOLIB
> > +
> > +config PINCTRL_ULTRARISC_DP1000
> > +	tristate "UltraRISC DP1000 SoC Pinctrl driver"
> > +	select PINCTRL_ULTRARISC
> > +	depends on OF && HAS_IOMEM
> > +	depends on ARCH_ULTRARISC || COMPILE_TEST
> > +	default ARCH_ULTRARISC
> 
> [Severity: Medium]
> Similarly here, ARCH_ULTRARISC is used in the depends on and default directives
> but appears to be undefined.
>

Thanks. ARCH_ULTRARISC comes from a separate series referenced in the cover
letter.
 
> -- 
> Sashiko AI review · https://sashiko.dev/#/patchset/20260601-ultrarisc-pinctrl-v2-0-07ac5130a96d@ultrarisc.com?part=2
> 

Best regards,
Jia Wang




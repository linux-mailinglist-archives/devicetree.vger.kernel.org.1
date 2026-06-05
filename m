Return-Path: <devicetree+bounces-307277-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EejeIn+cImqzawEAu9opvQ
	(envelope-from <devicetree+bounces-307277-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 11:53:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A476470ED
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 11:53:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=Qhv75Hp5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307277-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307277-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=mailbox.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BB6430C8CBB
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 09:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FF613803F2;
	Fri,  5 Jun 2026 09:33:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1AF84192E3;
	Fri,  5 Jun 2026 09:33:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780652019; cv=none; b=RlZsp1WM9eCoD7+oZ+sYIkyqwODHmi/8Z+OMEF8SivxEBy70wP//xP1HEF/NRIzM31BtnW2SFr9glxnXgmyOdSgoX/5fDBqxLw+bkHd3DMQOVEdUBDXtuVqqZJvMjqdlBwS4HTpoW6Lxg3M12vY13ZMt1isIw4l2uToMeVnCpJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780652019; c=relaxed/simple;
	bh=6bNZUcvnY+5Blv3aY9YAqimAK5AIGlF+H59bfPEl9HE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=VEC5bOvWpm9aG/Y6TnbknvONrHvC0ReWzc35kseQjE0FOENQxif7kSg2HZFFo00oiGdwfhj2VxQWz96ZiyQ84G6SMfaeF7gailIiB2e4VO8vi7wfbzR5o1ZlDMa8wT2GpBQ6KHe1L9Cv8WdUE4mqqC/bselv6w+X6x2/SsS0/Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=Qhv75Hp5; arc=none smtp.client-ip=80.241.56.151
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4gWx7x26TDz9twd;
	Fri,  5 Jun 2026 11:33:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1780652013;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3QhLZZ7DF5RQcecWKZHROUBnz5EbLkvAFAJ8ZXow1xg=;
	b=Qhv75Hp5L7mhw4yvb9CtlBJWQgGZJ0hczOCA7bUsBW/xavDLSqRI3Qtd59VcpkyZZFFIoN
	5TGJRbhXsiwhimVe/mfUqrhxDaFSgzCOVRkdqM2kjFVZ7jYr+0+z0bpIl3yGVymhPmnyUF
	XIr4fx10cX6eAV5tV1JWJgxH8K3C+2BWVoRCJMvdi8XkQuWeaDCRaLlykuTQrnGRn1u2xt
	3OCykKdhQHhxmyKt34pr2R74/42tMYdGQl1jpFLbq2BQknDp2eZMp8u+rq4lw28Av9X8Zc
	8LUGDogh3C/U5JE0pg3ZCw5PWyREMgacDMsfWbxIuE2B2awLPQVSrDScA3AO7g==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 05 Jun 2026 17:33:23 +0800
Message-Id: <DJ10GDDAE672.1N365YARL5KV1@mailbox.org>
Cc: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-riscv@lists.infradead.org>, <sophgo@lists.linux.dev>,
 <hanguidong02@gmail.com>, <michael.opdenacker@rootcommit.com>,
 "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Subject: Re: [PATCH v5 RESEND 4/5] riscv64: dts: sophgo: add SG2000 dtsi
From: "Shuwei Wu" <shuwei.wu@mailbox.org>
To: "Joshua Milas" <josh.milas@gmail.com>, <tglx@kernel.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <pjw@kernel.org>, <samuel.holland@sifive.com>, <unicorn_wang@outlook.com>,
 <inochiama@gmail.com>, <daniel.lezcano@linaro.org>, <palmer@dabbelt.com>,
 <aou@eecs.berkeley.edu>, <alex@ghiti.fr>, <liujingqi@lanxincomputing.com>,
 <alexander.sverdlin@gmail.com>, <rabenda.cn@gmail.com>, <dlan@kernel.org>,
 <chao.wei@sophgo.com>, <anup@brainfault.org>
References: <20260530173347.33533-1-josh.milas@gmail.com>
 <20260530173347.33533-5-josh.milas@gmail.com>
In-Reply-To: <20260530173347.33533-5-josh.milas@gmail.com>
X-MBO-RS-META: cnakhfhm6eenn8abomp48ddt71ztasak
X-MBO-RS-ID: e6d4df9cfa9ec01b400
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:sophgo@lists.linux.dev,m:hanguidong02@gmail.com,m:michael.opdenacker@rootcommit.com,m:linux-riscv-bounces@lists.infradead.org,m:josh.milas@gmail.com,m:tglx@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:samuel.holland@sifive.com,m:unicorn_wang@outlook.com,m:inochiama@gmail.com,m:daniel.lezcano@linaro.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:liujingqi@lanxincomputing.com,m:alexander.sverdlin@gmail.com,m:rabenda.cn@gmail.com,m:dlan@kernel.org,m:chao.wei@sophgo.com,m:anup@brainfault.org,m:joshmilas@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:alexandersverdlin@gmail.com,m:rabendacn@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-307277-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[shuwei.wu@mailbox.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,sifive.com,outlook.com,linaro.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,lanxincomputing.com,sophgo.com,brainfault.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shuwei.wu@mailbox.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,rootcommit.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,milkv.io:url,mailbox.org:mid,mailbox.org:from_mime,mailbox.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 04A476470ED

Hi Joshua,

On Sun May 31, 2026 at 1:33 AM CST, Joshua Milas wrote:
> Adds sg2000.dtsi on the RISCV side.
>
> Signed-off-by: Joshua Milas <josh.milas@gmail.com>
> ---
>  arch/riscv/boot/dts/sophgo/sg2000.dtsi | 53 ++++++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2000.dtsi
>
> diff --git a/arch/riscv/boot/dts/sophgo/sg2000.dtsi b/arch/riscv/boot/dts=
/sophgo/sg2000.dtsi
> new file mode 100644
> index 0000000000000..412adacc00576
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/sg2000.dtsi
> @@ -0,0 +1,53 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +
> +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
> +#include "cv180x-cpus.dtsi"
> +#include "cv180x.dtsi"
> +#include "cv181x.dtsi"
> +
> +/ {
> +	compatible =3D "sophgo,sg2000";
> +
> +	memory@80000000 {
> +		device_type =3D "memory";
> +		reg =3D <0x80000000 0x10000000>;
> +	};

I noticed that this describes 256 MiB of RAM. The Milk-V Duo documentation =
lists
the SG2000-based Duo boards as having 512 MB of DRAM [1].
Is the 256 MiB size intentional here, or should the Duo S board DTS overrid=
e it
with the documented 512 MB DRAM size?
[1] https://milkv.io/docs/duo/overview

> +
> +	soc {
> +		interrupt-parent =3D <&plic>;
> +		dma-noncoherent;
> +
> +		pinctrl: pinctrl@3001000 {
> +			compatible =3D "sophgo,sg2000-pinctrl";
> +			reg =3D <0x03001000 0x1000>,
> +			      <0x05027000 0x1000>;
> +			reg-names =3D "sys", "rtc";
> +		};
> +
> +		clk: clock-controller@3002000 {
> +			compatible =3D "sophgo,sg2000-clk";
> +			reg =3D <0x03002000 0x1000>;
> +			clocks =3D <&osc>;
> +			#clock-cells =3D <1>;
> +		};
> +
> +		plic: interrupt-controller@70000000 {
> +			compatible =3D "sophgo,sg2000-plic", "thead,c900-plic";
> +			reg =3D <0x70000000 0x4000000>;
> +			interrupts-extended =3D <&cpu0_intc 11>, <&cpu0_intc 9>;
> +			interrupt-controller;
> +			#address-cells =3D <0>;
> +			#interrupt-cells =3D <2>;
> +			riscv,ndev =3D <101>;
> +		};
> +
> +		clint: timer@74000000 {
> +			compatible =3D "sophgo,sg2000-clint", "thead,c900-clint";
> +			reg =3D <0x74000000 0x10000>;
> +			interrupts-extended =3D <&cpu0_intc 3>, <&cpu0_intc 7>;
> +		};
> +	};
> +};

--=20
Best regards,
Shuwei Wu



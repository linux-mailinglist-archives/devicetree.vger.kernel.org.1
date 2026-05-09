Return-Path: <devicetree+bounces-294878-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UowFCwsm/2lx2wAAu9opvQ
	(envelope-from <devicetree+bounces-294878-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 14:18:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF104FF905
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 14:18:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 829F9300E27A
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 12:18:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A26A330FF1D;
	Sat,  9 May 2026 12:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGRVQTci"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1021F4C96;
	Sat,  9 May 2026 12:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778329086; cv=none; b=LVYIKmOcZ53gpQTogFmIyL3NjKIlpA9cy75edRAqZHSbH3nIiXy42bs2d3ya22h2PZZ2NaI7HOGNCHU981GhcV8ljNgHuIXzp3avP8Jvx8PHFCKEd9if7NcpqcoYm5L8U3gN5TULw78IXya7k8KX0bZYr7mT38qcpk69b2wMGBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778329086; c=relaxed/simple;
	bh=e2oFXTT2JCKAlsxuWsZ6hENzU/VoBbUd/BrLIBFBNP4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YTq1K82KweCk/kCWbbyqlM3+yi3RKAzIvO2EUqrrqtzNkA4942RaR3RKu5ZImkuzQYT6+AHAigu/bS1yD8bGOPSoD5s1/xIuo/wlii3rdOrz1ATmpB9vGqqvr3aKQXk4kr75aBIBd5ytDjaMH/Anhqij8yWWeUutzKdERQjMSEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGRVQTci; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86A9FC2BCB2;
	Sat,  9 May 2026 12:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778329086;
	bh=e2oFXTT2JCKAlsxuWsZ6hENzU/VoBbUd/BrLIBFBNP4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HGRVQTciuPangxRxax8jZyIRUUotI2KItf+rr+a5pIP/kRPNqBkBffgLG+LPr49j2
	 Sg/CsTt4o1qiPlKxruGVWNJlhcF0/pN/2uaZBtNzpC5yFQM1YowZQrDGTMP6k1XG9V
	 jsVqryep0OA0ba/WJ6mfWLmkF1meAicdVTLNXod78+9fyAnh0pYyTo97nQ3x2l8PNj
	 IRGtblwh54w8OKgoFq3nxuGkCGLukFGi3T882Zk+RrJTrENoU9QcEWtOC3ZDdzHRmE
	 r+o9vx0PKj02EGFS7Ls3CqZQWJx66H+llTxwvHwqxyvx6rkVWxikxW18DZEv6JQbhD
	 sHrOPfOpKqHXA==
Date: Sat, 9 May 2026 12:18:02 +0000
From: Yixun Lan <dlan@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:RISC-V SPACEMIT SoC Support" <linux-riscv@lists.infradead.org>,
	"open list:RISC-V SPACEMIT SoC Support" <spacemit@lists.linux.dev>,
	open list <linux-kernel@vger.kernel.org>,
	Han Gao <gaohan@iscas.ac.cn>, Ze Huang <huang.ze@linux.dev>,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v2 1/4] riscv: dts: spacemit: k1-bananapi-f3: Add
 vcc5v0_sys regulator for Banana Pi F3
Message-ID: <20260509121802-GKB3601591@kernel.org>
References: <20260502051906.8160-1-linux.amoon@gmail.com>
 <20260502051906.8160-2-linux.amoon@gmail.com>
 <20260507024524-GKA3579608@kernel.org>
 <CANAwSgQLhgC6puNy2dkMjL=hd+yTYizBBFykd63KJDbw48219w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANAwSgQLhgC6puNy2dkMjL=hd+yTYizBBFykd63KJDbw48219w@mail.gmail.com>
X-Rspamd-Queue-Id: 6FF104FF905
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.84 / 15.00];
	SEM_URIBL(3.50)[jmu.edu.cn:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294878-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c0a:e001:db::/64:c];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	NEURAL_SPAM(0.00)[0.440];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,iscas.ac.cn:email]
X-Rspamd-Action: no action

Hi Anand,

On 13:06 Fri 08 May     , Anand Moon wrote:
> Hi Yixun,
> 
> Thanks for your review comments.
> 
> On Thu, 7 May 2026 at 08:15, Yixun Lan <dlan@kernel.org> wrote:
> >
> > Hi Anand,
> >
> > On 10:48 Sat 02 May     , Anand Moon wrote:
> > > Define the system 5V fixed regulator (vcc5v0_sys) supplied by the
> > > DC input. As per the schematics, vcc5v0_sys is the input power source
> > > for the VCC5V0_HUB and 5V_VBUS reglators. Update these regulators
> > > to correctly reference vcc5v0_sys as their parent (vin-supply).
> > >
> > > Cc: Han Gao <gaohan@iscas.ac.cn>
> > > Cc: Ze Huang <huang.ze@linux.dev>
> > > Cc: Chukun Pan <amadeus@jmu.edu.cn>
> > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > ---
> > >  arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > >
> > > diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> > > index 5790d927b93d..9727ecdd9f6b 100644
> > > --- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> > > +++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> > > @@ -50,6 +50,16 @@ reg_dc_in: regulator-dc-in-12v {
> > >               regulator-always-on;
> > >       };
> > >
> > > +     reg_vcc5v0_sys: regulator-vcc5v0-sys {
> > This will fall into the catogery of "non-controllable & serve no devices"
> > see similar comment for 'reg_dc_in' which raised by Krzysztof
> >
> > https://lore.kernel.org/all/6530526f-59ca-4753-a068-46c62a1a1fed@kernel.org/
> >
> > or should I ask, what's the real problem if regulator has no vin-supply?
> 
> If the device tree is not configured with the correct power source it
> will affect performance.
> 
Please elaborate, or provide enough evidence to prove this, because the
conclusion you gave here contradicts with what Krzysztof pointed out

> > Any probe failure or something bad happen? (besides /sys/../regulator_summay)
> 
> Not really; the regulator summary just confirms the PMIC used the
> correct power source.
> with te device ip blocks.
> 
then I see it's unnecessary to add this

> Bananapi F3 schematics.
> [1] https://drive.google.com/file/d/19iLJ5xnCB_oK8VeQjkPGjzAn39WYyylv/view
> (page 24)
> 
> Please check the shematics VCC5V0_SYS page 4
> VCC5V0_SYS->USB_VCC5V0->HDMI_VCC5V0->FAN_VCC5V0->VCC3V3_SYS
> 
> Please check the shematics VCC5V0_SYS page 24
> VCC5V0_SYS input for VCC5V0_HUB and 5V_VBUS give the USB hub,
> which is enabled by USB3_PWREN (gpio pin)>
> 
> Plese check power tree page 4
> USBVBUS->SY8386J UXXX -> PCIE_VCC3V3 for pcie vin source
> 
> So, this series tries to fix the vin source for USB 3.0 and PCIe nodes.
> 
This is not what I ask..

-- 
Yixun Lan (dlan)


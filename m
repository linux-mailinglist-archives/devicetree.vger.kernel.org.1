Return-Path: <devicetree+bounces-109178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F3E995876
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:31:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C8F11F24744
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 936EB215014;
	Tue,  8 Oct 2024 20:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="dKVfBIy0"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3B5A212D23
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728419270; cv=none; b=B5VfqZRILUfLZKUNAPpYUhkBOjCL4TlsiNUznhz+4In3ahI+YIuXemFyo2MXyEi3WVoaxgde2tERaxKVS76L4ZiUzEHm7+/DGad/ztCN/HnYoWfo3HPBqlD6dVkA2LBOwy7XDkQe+53vkNWxT1QIUQe217umcm40U6+Z7PZqMZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728419270; c=relaxed/simple;
	bh=V3iEYlTtL6t+n1v+7kOoDEA7tOfEMPVBA3ANsGxc5BQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tE2f3AJP+NBLx62UMk7eL87h8LWeDL3UFI+uJMO6JEDLy+0hf89RpP1RQvW9epFVM7MtzlEAQ4+D6wNhjIIyNc+8RcWtlbSVv0zYPmnG2GaS2s/vQweVOjineP5eHhRbIwzO2kVbPFOfOHOaExMexzRottk4Vp+pHa1Dq3sRUtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=dKVfBIy0; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=M4NnTSMddp+YfBMRH/oiahTSO5eeHY8eZ2vPTCt4xpY=; b=dKVfBIy0kcHcUqF+wwR4r75oIj
	DIXVhaf5W7W6pbOdxaRoYRwGMkfQ+kmsoPXA17zxtObjePruV3DuhaNN9+c08YkveVYyvOVJIxrGG
	YSej1zoR2KRp3bJl8waWyASdqF9FmDHtOzEwdD+kWBF8om8h+ROG03kGZIYcnI/T8L8gfoF1CK009
	pptLBF3HnQc/vExmt7TSvBKy6zvk83nsSYaVVc2ETnkr8mEOT8p2lKe6tlLHaAwkjm819lJqM0JJ1
	qZsQL4LFWBHjaFJemM3AjV9u444Ve4gabF/lD05jmBtoLfhzC6zlNjiW+GNW/Ut4l2xgvLuuLH+jJ
	t1S2NeUg==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGo4-0007gx-1C; Tue, 08 Oct 2024 22:27:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Furkan Kardame <f.kardame@manjaro.org>
Subject:
 Re: [PATCH 3/8] arm64: dts: rockchip: Drop regulator-init-microvolt from
 rk3568-roc-pc
Date: Tue, 08 Oct 2024 22:27:43 +0200
Message-ID: <1812768.VLH7GnMWUR@diego>
In-Reply-To: <605c8024-ada7-4f2e-b18e-8d5c3f1bf612@kwiboo.se>
References:
 <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-4-heiko@sntech.de>
 <605c8024-ada7-4f2e-b18e-8d5c3f1bf612@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jonas,

Am Dienstag, 1. Oktober 2024, 00:55:42 CEST schrieb Jonas Karlman:
> Hi Heiko,
> 
> On 2024-09-30 23:01, Heiko Stuebner wrote:
> > regulator-init-microvolt is not part of any regulator binding and is
> > only used in the Rockchip vendor kernel. So drop it.
> 
> Mainline U-Boot is also a user of the regulator-init-microvolt prop,
> and use it to help configure an initial voltage on regulators during
> boot.
> 
> Mostly useful for regulators that has different min / max voltage and
> is not enabled by default or set to an unexpected voltage on boot, e.g.
> the typical npu regulator on rk356x defaults to 0.5v, yet needs to be
> around 0.9v during npu probe.
> 
> Maybe a better option would be to try add the init property to the Linux
> dt-bindning?

Looks like that topic comes up regularly, last time in

https://lore.kernel.org/linux-arm-kernel/4519023.cEBGB3zze1@phil/

and that still is true. DT is not a configuration-space, and if needed those
properties should be in the -uboot.dtsi

Heiko


> https://source.denx.de/u-boot/u-boot/-/blob/master/doc/device-tree-bindings/regulator/regulator.txt#L40
> 
> Regards,
> Jonas
> 
> > 
> > Fixes: 007b4bb47f44 ("arm64: dts: rockchip: add dts for Firefly Station P2 aka rk3568-roc-pc")
> > Cc: Furkan Kardame <f.kardame@manjaro.org>
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts | 3 ---
> >  1 file changed, 3 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> > index e333449ead04..2fa89a0eeafc 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> > @@ -272,7 +272,6 @@ vdd_logic: DCDC_REG1 {
> >  				regulator-name = "vdd_logic";
> >  				regulator-always-on;
> >  				regulator-boot-on;
> > -				regulator-init-microvolt = <900000>;
> >  				regulator-initial-mode = <0x2>;
> >  				regulator-min-microvolt = <500000>;
> >  				regulator-max-microvolt = <1350000>;
> > @@ -285,7 +284,6 @@ regulator-state-mem {
> >  
> >  			vdd_gpu: DCDC_REG2 {
> >  				regulator-name = "vdd_gpu";
> > -				regulator-init-microvolt = <900000>;
> >  				regulator-initial-mode = <0x2>;
> >  				regulator-min-microvolt = <500000>;
> >  				regulator-max-microvolt = <1350000>;
> > @@ -309,7 +307,6 @@ regulator-state-mem {
> >  
> >  			vdd_npu: DCDC_REG4 {
> >  				regulator-name = "vdd_npu";
> > -				regulator-init-microvolt = <900000>;
> >  				regulator-initial-mode = <0x2>;
> >  				regulator-min-microvolt = <500000>;
> >  				regulator-max-microvolt = <1350000>;
> 
> 






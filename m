Return-Path: <devicetree+bounces-276120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HcWOrPqt2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:34:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6319D298BDD
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:34:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 13FE6303E77B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58A5C365A0D;
	Mon, 16 Mar 2026 11:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="Qb/gHHBd"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1826317B50A;
	Mon, 16 Mar 2026 11:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773660767; cv=pass; b=uhLJlPlxu0iTIoWBGiJemiLQUYQMy4Oj5E9RlUtlHfKYSSVaklM2hkaaziPmBSnCKPjwJwbi0y7k5JaiLJKgmJr7qigqEyimip4jw1QwHJZf2Ld3f4FsYLUY/ioWp4sayt1TZ95ynkeQEQiTGDDqNBy166eqX9QaZERZI1RPw54=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773660767; c=relaxed/simple;
	bh=r7mNWGlc0Bk8vWfXnN9rWb/4K04AUTspLpeoEQ6OIe8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uIVi9hTsbR91aY9VOkGxywjDGAqOLLsi4g+56s0QIko5ahRSf9ODyWAU8PKp9jS37uTNlInIShrfqPEKR0XCpL+5YSu/xn7nxJdWlw3Y9qRu1sVIKiSoQSG1tlV2gc18X/Nwe40MnSYvFleA6OUWd7V90UfomJgLO6QxHNYdW1k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b=Qb/gHHBd; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1773660724; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=F5QPg5QvClRsgprNIOWkQWiwFQm+dWKe9f8HPyUMho0soxoQbkLiFJfIpez5JZ1PigEn5p2Onftnis86ah6JBlxcsJDUpEKiQlUw3t3rOdVbwY8B1NjqVlnlQsfRfwABdmS/4NLUt57tqvnIqUUTUWfMF7H8/4et17f+VoGbim0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1773660724; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=CXwiJopPTfeJca7/CePLy+cTjnRvIej3hEugFxqj6bA=; 
	b=NPHsMkbLcQtUOQ2SMvdf0pDuTMLy/4JSD6/lF/IVJS4DHw9Ts8pzy+9H7H6lQgKEHMDF5c0N8fBFb1CnB/2+K5G70mC4bVpd2G7zShMyPfCrSFpNpTWogfNC3sGpEBumVrWNQZz5WMy23+PHY5kPBFVAvPFBSmL+YhML7vxnG5A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1773660724;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=CXwiJopPTfeJca7/CePLy+cTjnRvIej3hEugFxqj6bA=;
	b=Qb/gHHBdfTgv/e9eLd1d1KVInpZsAKl9y9HQM5Qb10aD7Ho7wdwJlrXA6f05+YvU
	opCkIGjTDy/QFmlArMrZ1HHUhFRhMXKYRemytIMttdtrG5iCnY282H4Pk5Dc086IIlC
	CFPxsim+VxRyLq9U5QPYCyx39lPuDrID9b6avwhg=
Received: by mx.zohomail.com with SMTPS id 1773660722084398.51922306894573;
	Mon, 16 Mar 2026 04:32:02 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org, Damon Ding <damon.ding@rock-chips.com>
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, alchark@gmail.com,
 cristian.ciocaltea@collabora.com, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 luca.ceresoli@bootlin.com, dianders@chromium.org, m.szyprowski@samsung.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v1 2/4] arm64: dts: rockchip: Add eDP node for RK3576
Date: Mon, 16 Mar 2026 12:31:54 +0100
Message-ID: <9590182.CDJkKcVGEf@workhorse>
In-Reply-To: <20260310105307.309765-3-damon.ding@rock-chips.com>
References:
 <20260310105307.309765-1-damon.ding@rock-chips.com>
 <20260310105307.309765-3-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	CTE_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276120-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,rock-chips.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,0.0.0.1:email,0.0.0.0:email,rock-chips.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,27ed0000:email]
X-Rspamd-Queue-Id: 6319D298BDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tuesday, 10 March 2026 11:53:05 Central European Standard Time Damon Ding wrote:
> Add support for the eDP output on RK3576 SoC.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 28 ++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> index a86fc6b4e8c4..14900a66d3e1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> @@ -1446,6 +1446,34 @@ hdmi_out: port@1 {
>  			};
>  		};
>  
> +		edp: edp@27dc0000 {
> +			compatible = "rockchip,rk3576-edp";
> +			reg = <0x0 0x27dc0000 0x0 0x1000>;
> +			clocks = <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>, <&cru HCLK_VO0_ROOT>;
> +			clock-names = "dp", "pclk", "hclk";
> +			interrupts = <GIC_SPI 365 IRQ_TYPE_LEVEL_HIGH>;
> +			phys = <&hdptxphy>;
> +			phy-names = "dp";
> +			power-domains = <&power RK3576_PD_VO0>;
> +			resets = <&cru SRST_EDP0_24M>, <&cru SRST_P_EDP0>;
> +			reset-names = "dp", "apb";
> +			rockchip,grf = <&vo0_grf>;
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				edp_in: port@0 {
> +					reg = <0>;
> +				};
> +
> +				edp_out: port@1 {
> +					reg = <1>;
> +				};
> +			};
> +		};
> +
>  		sai7: sai@27ed0000 {
>  			compatible = "rockchip,rk3576-sai";
>  			reg = <0x0 0x27ed0000 0x0 0x1000>;
> 

Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

By cross-referencing the TRM, I checked the address, the IRQ number,
and the power domain, and verified that there are no new check_dtbs
warnings introduced.

Kind regards,
Nicolas Frattaroli




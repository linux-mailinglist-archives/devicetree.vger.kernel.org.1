Return-Path: <devicetree+bounces-265227-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JIdG5OPjmkcDAEAu9opvQ
	(envelope-from <devicetree+bounces-265227-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 03:42:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 729BC1326D2
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 03:42:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 78E6330257BC
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 02:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D58FE2253EB;
	Fri, 13 Feb 2026 02:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="K2OM3Si9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731116.qiye.163.com (mail-m19731116.qiye.163.com [220.197.31.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADEAE2F851
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 02:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770950542; cv=none; b=CBuyA9chqu7snbYlwvyNFys6cmZiq78BBdbQLhrU0RLe5kRPwJB0qL0ycEHquT7ABrAs7TOoceyu1XQEnNZgKIv5OicNluNumpw/oIAqUsrrAq55xKgN5pOumcDYGQ29sputVZ4G3+9VwQTdRFZKylLIPdhLC3/LPw1kIyoj7n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770950542; c=relaxed/simple;
	bh=FjCYg6UwA5FRSElfVhRwwJVdw9zteqHWXEzdGV838yw=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=qRAympb72muzdcRS4WpmNtCxyWBHOhMzLXcfrMNERqmFmvlH86tVXtKEc4kMFZtGYXzehBHFX5Gwu3jkviCRbFbRw6IPluDEcV5HXmC31NJixA2gthkE+s2ypiN14sziNYowEjI55QFHI7PbgiE+6GMBvJbeBC+atjhGEXB0GXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=K2OM3Si9; arc=none smtp.client-ip=220.197.31.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 340a00380;
	Fri, 13 Feb 2026 10:42:10 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add domain-supply for
 pd_rkvdec0/1 and pd_venc0/1
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
 <1770950113-19802-2-git-send-email-shawn.lin@rock-chips.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <ea9df274-278d-f344-f66d-8821388e6690@rock-chips.com>
Date: Fri, 13 Feb 2026 10:42:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <1770950113-19802-2-git-send-email-shawn.lin@rock-chips.com>
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9c54e094bd09cckunmb048d5ac255a59
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh5IQ1ZIHUkdT0MdTxlCQx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=K2OM3Si9wBqCmq8bANg7KqcJFis8rf/sua0SZoVww4sK+Cjw6sLX6w6TdhTLyLeyNfgId8yvo2FVhai1YSB+i4lCUhyrbnowQO5uX479Da0rdFtPUsmJyRwxs77nDpyJXv4+LV+pyQSi9MtxyMswdhR0CMr/0kqY2PdAK/4ycgI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=sCi3YGgnLoVE1W2HsrMQ/FCP0zR7jFK/2gBDx58+5Yw=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,rock-chips.com:mid,rock-chips.com:dkim,rock-chips.com:email];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265227-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[rock-chips.com:+]
X-Rspamd-Queue-Id: 729BC1326D2
X-Rspamd-Action: no action

在 2026/02/13 星期五 10:35, Shawn Lin 写道:
> The power domains pd_rkvdec0/1 and pd_venc0/1 depend on two voltage supplies,
> vdd_vdenc_s0 and vdd_vdenc_mem_s0. These supplies might be missing or cause probe
> deferral. Since the Rockchip power domain management code currently supports managing
> only one power supply, and both supplies belong to the same PMIC (making it highly
> unlikely for one to be available while the other is not), a practical solution is
> implemented.
> 
> Both supplies are configured with the boot-on and always-on properties. Only one
> of them is assigned as the domain-supply for pd_rkvdec0/1 and pd_venc0/1. This allows
> the power domain code to perform a nominal enable operation on this single supply,
> thereby successfully acquiring a reference to both supplies (as they are from the same
> PMIC). The system then relies on their boot-on and always-on flags to maintain the
> correct state.
> 
> Crucially, this approach handles cases like probe deferral correctly:
> if the PMIC is not yet ready, enabling the power domain will be deferred until the
> necessary supplies become available.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>   arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts  | 16 ++++++++++++++++
>   arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts | 17 +++++++++++++++++
>   2 files changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> index c9d284c..09bc7b6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> @@ -568,6 +568,22 @@
>   	domain-supply = <&vdd_gpu_s0>;
>   };
>   
> +&pd_rkvdec0 {
> +	domain-supply = <&vdd_vdenc_s0>;
> +};
> +
> +&pd_rkvdec1 {
> +	domain-supply = <&vdd_vdenc_s0>;
> +};
> +
> +&pd_venc0 {
> +	domain-supply = <&vdd_vdenc_s0>;
> +};
> +
> +&pd_venc1 {
> +	domain-supply = <&vdd_vdenc_s0>;
> +};
> +
>   &pinctrl {
>   	audio {
>   		hp_detect: headphone-detect {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> index f820505..25d80b6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> @@ -381,6 +381,22 @@
>   	domain-supply = <&vdd_gpu_s0>;
>   };
>   
> +&pd_rkvdec0 {
> +	domain-supply = <&vdd_vdenc_s0>;
> +};
> +
> +&pd_rkvdec1 {
> +	domain-supply = <&vdd_vdenc_s0>;
> +};
> +
> +&pd_venc0 {
> +	domain-supply = <&vdd_vdenc_s0>;
> +};
> +
> +&pd_venc1 {
> +	domain-supply = <&vdd_vdenc_s0>;
> +};
> +
>   &pinctrl {
>   	audio {
>   		hp_detect: headphone-detect {
> @@ -580,6 +596,7 @@
>   			vdd_gpu_mem_s0: dcdc-reg5 {
>   				regulator-name = "vdd_gpu_mem_s0";
>   				regulator-boot-on;
> +				regulator-always-on;

Oops, I sent the wrong version. Should remove the this line change.
Will fix it if v2 needed.

>   				regulator-min-microvolt = <675000>;
>   				regulator-max-microvolt = <950000>;
>   				regulator-ramp-delay = <12500>;
> 


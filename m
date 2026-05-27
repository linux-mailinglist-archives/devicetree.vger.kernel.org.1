Return-Path: <devicetree+bounces-303229-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uYQrKtBqFmr3mAcAu9opvQ
	(envelope-from <devicetree+bounces-303229-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 05:53:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A795DF106
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 05:53:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E7A4300F162
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 03:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCF02261B8D;
	Wed, 27 May 2026 03:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRjIpeu4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA07D2475CF;
	Wed, 27 May 2026 03:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779854029; cv=none; b=OBll7I/TNsi5E0p08W6el/VXTNJ/04Rq8SHSLHQ4PxZawyupLfQrLZjTRSB/FzvapWhNxT7xq0QlTCnPFTmaDHEqU36QB9yUReeL7xQh1OJtWarENnBgB9nhtZJbTT+/LbtYnbFgfRjzLtrDxTH35OHm5yytlTVgj8uKPUAS6Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779854029; c=relaxed/simple;
	bh=ArXGWaeMxU1LhuajSP8dDdxpvSw3VCO1IkSoT+K4ric=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=lDujYDI3J4Zf25AVAYASgt0WSWpLOZhT/SApbH1J2kPPFXbszW/HjWbIZ/y8+jP2TbmcIL6lvAgNM81esUNE0skUyM7c7+/3epuf8RZtWzoEXqJoqVzCDt0PZL5frF+9l2nPVdGlbGXxVHlE2gVxPLK8mJq0sq6tGss3kJtz1fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRjIpeu4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0702D1F000E9;
	Wed, 27 May 2026 03:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779854028;
	bh=QBIcUoeF2QoUxoI+VAA/e93kFvC0zK2wjZtsLkFv3jk=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=LRjIpeu4sF5UE+WlO9GH55yMLoByPjC3zOIV+LYg9KXrZFIcwIEePL3Jlo0RGPTbL
	 nJY5l0i/JYRz2DcyM09q4wjnDb0yd2L3XZq8HOs7hmq86J/KuiltSfjMFGAFPv7PiU
	 DiAjzBdM9lGYckz6tFsi0DsSAurFnQmMwaQZyAqRoTyZkyB+GN2c2jqMV1WrvJCQKx
	 wBpS0dHvi7+oIX41tPbaVgnsK/s9qPLBmpHkTVq91XUeiHWM2f1SdPmTkddGj7b51O
	 y8N8DHWXxoZLOKv1WGGVhiIZf58BQrOiYtGyX8L8tfHhpgX5s2nzqDBqLdUqj87mto
	 va+5rkrPDPLXg==
Message-ID: <52cc1c9c-db59-4e0f-8d68-4ade421e87d3@kernel.org>
Date: Tue, 26 May 2026 22:53:46 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: socfpga: agilex5: enable i3c0 and i3c1
To: Adrian Ng Ho Yin <adrian.ho.yin.ng@altera.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <219d67474c90843f4768cba2598e79cfafcc1ac2.1779778817.git.adrian.ho.yin.ng@altera.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <219d67474c90843f4768cba2598e79cfafcc1ac2.1779778817.git.adrian.ho.yin.ng@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303229-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Queue-Id: 32A795DF106
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 5/26/26 02:03, Adrian Ng Ho Yin wrote:
> Enable i3c0 and i3c1 for Agilex5 devkit.
> 
> Signed-off-by: Adrian Ng Ho Yin <adrian.ho.yin.ng@altera.com>
> ---
>   arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts
> index 262bb3e8e5c7..7f6fab506867 100644
> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts
> @@ -61,6 +61,14 @@ &gpio1 {
>   	status = "okay";
>   };
>   
> +&i3c0 {
> +	status = "okay";
> +};
> +
> +&i3c1 {
> +	status = "okay";
> +};
> +
>   &osc1 {
>   	clock-frequency = <25000000>;
>   };

https://sashiko.dev/#/patchset/219d67474c90843f4768cba2598e79cfafcc1ac2.1779778817.git.adrian.ho.yin.ng%40altera.com



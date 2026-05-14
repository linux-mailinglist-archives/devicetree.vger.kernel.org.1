Return-Path: <devicetree+bounces-297503-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KP10M/64BWpZaAIAu9opvQ
	(envelope-from <devicetree+bounces-297503-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 13:58:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BFD5414CE
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 13:58:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ECF3B3048554
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 11:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AA403C276F;
	Thu, 14 May 2026 11:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2tKX3gI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B723A783E;
	Thu, 14 May 2026 11:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778759918; cv=none; b=tcG3Id2znZE5dQEp9tRUNyKOwA7xmLv3RV7JN/FmxFaRauX/4icfKlrtH/IVllUco2udrPMa8g2jzFjjhZ3Keao9nlOcAqF5eFqmynNXbtRS8jQw6ddjuQvMLG2vHGR/083WPgLvFX/3Tp/TqFqhf6f29vSlM5g/NnJWAoihgL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778759918; c=relaxed/simple;
	bh=cP7vBRjto0Od6hPwUrxpJPX5C1cOvW9fCZloovO92yk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HGIsWAPenMMnQUDZ8XXiq7cSmSu1T72bjSKQKx1idH9Oa+WruL4H/BVdQ6xwP8YIdvjoWXuQoVJ3Q/cLlxUSmJeZ4eLMpSJKJcUCybyyUxx4K9noFXchip7CAI+1mStQ5XpP+wHJtWZ7rBoylvb7AtpoMaDF39TUvngeQxCcdoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2tKX3gI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40699C2BCC7;
	Thu, 14 May 2026 11:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778759918;
	bh=cP7vBRjto0Od6hPwUrxpJPX5C1cOvW9fCZloovO92yk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=g2tKX3gI2mKWMo/y3h3hPs/WksZanf1vX/WLc1WLmJlFrdi7cvZG+Ssz0vKTrFuZ7
	 HQY1OWP4ztQ9XDiRDh7uxwrG+ey6nIkDUqeHbw1CQyBHUvXyc7/bwzq6N3uFcugNuU
	 NuiinuzzZLQpmFXtcYzmt2BrRkWiBISaHX258yE2AvxumgOBoRQ0xX69GvUjxa4vS0
	 VhfJtk4dpANL3OXPhPZKvefz+XQ2N1YSA2Pl/QhlLPy0zLh/C0+3sg9F0Fov++NQjB
	 Y+G3yRNneXRVjXNSkSvPNCqMs2b6fv1CCedF3q4gXsl2DXQivK1QIBeKN2Ate2j3Hi
	 vgnZLmoXYxnGQ==
Message-ID: <4b74eb09-4265-47ac-93fb-f6ad7f231b04@kernel.org>
Date: Thu, 14 May 2026 06:58:36 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: socfpga: use consistent QSPI boot partition
 label
Content-Language: en-US
To: tze.yee.ng@altera.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: adrian.ho.yin.ng@altera.com, muhammad.nazim.amirul.nazle.asmade@altera.com
References: <eff34df0c67d39a26d20ec91eda8dd9e15f9f5cc.1778658884.git.tze.yee.ng@altera.com>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <eff34df0c67d39a26d20ec91eda8dd9e15f9f5cc.1778658884.git.tze.yee.ng@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 18BFD5414CE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297503-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,altera.com:email]
X-Rspamd-Action: no action



On 5/13/26 03:05, tze.yee.ng@altera.com wrote:
> From: Tze Yee Ng <tze.yee.ng@altera.com>
> 
> Several SoCFPGA board DTS files labeled the first QSPI MTD partition
> (qspi_boot / partition@0 under fixed-partitions) as "u-boot" while
> others already used "Boot and fpga data". Align the QSPI boot
> partition label only so naming matches the combined boot + FPGA
> image layout and stays consistent across Agilex, N5X, and Stratix 10
> SoCDK variants.
> 
> No QSPI partition layout or reg properties are changed.
> 
> Signed-off-by: Tze Yee Ng <tze.yee.ng@altera.com>
> ---
>   arch/arm64/boot/dts/intel/socfpga_agilex3_socdk.dts         | 2 +-
>   arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts         | 2 +-
>   arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_013b.dts    | 2 +-
>   arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_modular.dts | 2 +-
>   4 files changed, 4 insertions(+), 4 deletions(-)
> 

Applied!

Thanks,
Dinh


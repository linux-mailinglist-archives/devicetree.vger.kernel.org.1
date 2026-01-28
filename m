Return-Path: <devicetree+bounces-260428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IN14KoQPemmS2AEAu9opvQ
	(envelope-from <devicetree+bounces-260428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:30:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE61A22B2
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:30:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EBCAA3057332
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:29:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 799D23542EA;
	Wed, 28 Jan 2026 13:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="T+LOKvdW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4123542CB
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769606946; cv=none; b=qu68op0TxnGR0nnz3FE+KoDXWQPm/DPUKFTfJUqrm3+x+ONnBHWuWqJAGPQAIWifWO6ZB+WSyH6M1WNwB2DX3f6/Hfi7KfV+orMl1oUUJwZ83eps9FbiBudinCTAb7TgGIHMx3iSrSV7PL5kldIjuu7cMp9V5kP5+2bhspRb5Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769606946; c=relaxed/simple;
	bh=AwkTB+Y8vc2jpSus7qu1cjCswZPdr3ovkHfH+PLJ0xE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ygzf6OsmJw61GPFwzHUfuCrsGW+1l4UwCnbPzxBduLQDgHv9tgIj5K8mZ7TI+Olvb+NuJrcKEdOQ8htwsEcqY6RHpygTqGGxT9lr2RKYcKCIGS/LGthFWW2nI0xsKxcvvrIgWQ76cLIzHlRWQcfElMZPaJVd6+RLI93IhwME9EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=T+LOKvdW; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-6610b05b37dso5394292eaf.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769606944; x=1770211744; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=raYtuP2NjeAqA5181HGaACfoUp8/gkl6VSn/CKYueq0=;
        b=T+LOKvdWUzfz7tBKp1NSBuIiq0+IyRtKsD1kaJqhhuU7rJE2Y8RCBxI3Qz6HxYUqfD
         khZXDmMcZH1shHeGGBslP2OSvwLb5ZZoe4YOiw61mxBREb991tUoZV/3F+t9JxmqLNyy
         mMgCNsUUxNjtdxGRm+7c5dPLdCsumkUchvwNNfHHz/8O1RMz514BNDnMZl9ZUxfLnGZb
         Iom9FDFmWqYJ9Uvu/k9NxzuPbdtT8v1HMbNWG0UTelyiLiZs3yt1KvhAXAOaRcnUsXql
         sYEJMaIbHF/DjF378fR1QBZ66euHQ98xd+bA4MmFC4nh6XIP2vFjpw1OaMPzQ1n+/xN5
         HlUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769606944; x=1770211744;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=raYtuP2NjeAqA5181HGaACfoUp8/gkl6VSn/CKYueq0=;
        b=KH/KX0H57cv4bU8R/5AC5j9gifv18hNrzj7j41yog6kJ+vFL1stWfH8gwFZxflDY/f
         jLL3PBGvvGElz8uR8SLttw77GTvQuqFibphwigXurEGG8v9YYaiULjpeK8MXGMFYac9a
         MPXmtDFA64G0oo3nn7o8O2EGMTZUamwCgXVvcqGe491CEov2MqSuk83Znsbmcdy2RJvd
         qfq+mBKU/nR2QYfXym3XYAawzfFsFh5J0Jeystl4IAbCFOoG9TociuDkGY7Oc1rdhn/+
         MNSTXjirE9CHvZQcu3zJc+98XLpWeX3/r5AOBDnly0Oap8D52atnJwG+MA9PgwRo/VRW
         43Sg==
X-Forwarded-Encrypted: i=1; AJvYcCWtuydF0kgO4kiXks6f628qku4zZMnhnrz0ZhYULz6Vqep9KnM8TNO03HuMigL//9R67CvyPVtCRJLk@vger.kernel.org
X-Gm-Message-State: AOJu0YwteEr5vS/DUrHBTwG2iqBidGUhJBv952WUdwOxYRvHQaCtITBR
	axwN+uB/Cppk9b/n+KxOa19k/MfZajeqSEhcWKwypAeObMgM9hcJbBjSkcElnDCWibs=
X-Gm-Gg: AZuq6aL40Lo+1tqpkCMYJHG5NKvUjpEFqbmR0Bg591kM6z5s0TDZHbSpNl62Wm09sST
	6+44dRItT6STFT7LYxqrUdXkZokFKlH3/GIp5VzzHbK7eaSMouckpxkPbme6JaQlDPYLEiAFOMI
	zwJEJ35DwC5ArmNnkzbG9vDY1d5WUDJ+4ReW4yc4kgZBt5vOZxRV6LN/ZUi/qGvrilFwd+4z3cQ
	G7w5NJjaK5/UWGmjLCC612RWL4J8FUCvcG5wixPqcQRstjT10Hg65Jh9TeiMtDNpy8xGSNERabU
	0ACM0/8UwiP7O+XxJbNMwV2ch8trvQDs6Q82hnHVV+gBM0uknyNzBtxz3A/DX/SqjVV/sxijRKv
	dLSu6rlaPeq5hQm3IOepheNQvnF884moiCSiIiLv6X16YegvsyIBIhM1J+3SalteZhOjBxVrDGn
	vKFFZi7iAYd8tYQQqC4TCkXpywVT1Yg3eIWSym5jmHmOCKMt9soDI=
X-Received: by 2002:a05:6820:4588:b0:65f:1012:69c5 with SMTP id 006d021491bc7-662f20f917fmr2413146eaf.76.1769606943544;
        Wed, 28 Jan 2026 05:29:03 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-662f994388fsm1374132eaf.4.2026.01.28.05.29.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 05:29:03 -0800 (PST)
Message-ID: <7f892961-5978-4283-bec9-0f2953db42b7@riscstar.com>
Date: Wed, 28 Jan 2026 07:29:02 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] riscv: dts: spacemit: Update PMIC supply
 properties for BPI-F3 and Jupiter
To: Guodong Xu <guodong@riscstar.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Yixun Lan <dlan@gentoo.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Troy Mitchell <troy.mitchell@linux.spacemit.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, devicetree@vger.kernel.org
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
 <20260124-spacemit-p1-v2-4-2c86b06694ba@riscstar.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20260124-spacemit-p1-v2-4-2c86b06694ba@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[riscstar.com,gmail.com,kernel.org,gentoo.org,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	TAGGED_FROM(0.00)[bounces-260428-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.41:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar-com.20230601.gappssmtp.com:dkim,riscstar.com:mid,riscstar.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9AE61A22B2
X-Rspamd-Action: no action

On 1/23/26 6:20 PM, Guodong Xu wrote:
> Update individual supply properties in pmic "spacemit,p1" node to specify
> the board's power tree topology for BananaPi F3 and Milk-V Jupiter.
> 
> Previously these relationships were hardcoded in the driver; now they
> are explicitly defined in the devicetree per the updated binding
> document spacemit,p1.yaml.
> 
> Signed-off-by: Guodong Xu <guodong@riscstar.com>

I acknowledge that you've made an ABI change, and I should
have done a better job of describing this the first time
around.  (And reviewers might have caught that!)

I had some of the same thoughts about supporting just
"vin_supply" for older systems.

However I agree with the conclusion you and Vivian
came to, which is that practically speaking it isn't
likely to be a problem.  Boards should use either
old DTB and software or new DTB and software, not
a mix.

Reviewed-by: Alex Elder <elder@riscstar.com>


> ---
> v2: Added the pmic supply properties for K1 Milkv Jupiter.
>      Updated the commit message accordingly.
> ---
>   arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts   | 12 ++++++++++--
>   arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts | 12 ++++++++++--
>   2 files changed, 20 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> index 5971605754b3..444c3b1e6f44 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> @@ -190,7 +190,15 @@ pmic@41 {
>   		compatible = "spacemit,p1";
>   		reg = <0x41>;
>   		interrupts = <64>;
> -		vin-supply = <&reg_vcc_4v>;
> +		vin1-supply = <&reg_vcc_4v>;
> +		vin2-supply = <&reg_vcc_4v>;
> +		vin3-supply = <&reg_vcc_4v>;
> +		vin4-supply = <&reg_vcc_4v>;
> +		vin5-supply = <&reg_vcc_4v>;
> +		vin6-supply = <&reg_vcc_4v>;
> +		aldoin-supply = <&reg_vcc_4v>;
> +		dldoin1-supply = <&buck5>;
> +		dldoin2-supply = <&buck5>;
>   
>   		regulators {
>   			buck1 {
> @@ -221,7 +229,7 @@ buck4 {
>   				regulator-always-on;
>   			};
>   
> -			buck5 {
> +			buck5: buck5 {
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <3450000>;
>   				regulator-ramp-delay = <5000>;
> diff --git a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
> index 800a112d5d70..e2702a781734 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
> @@ -100,7 +100,15 @@ pmic@41 {
>   		compatible = "spacemit,p1";
>   		reg = <0x41>;
>   		interrupts = <64>;
> -		vin-supply = <&reg_vcc_4v>;
> +		vin1-supply = <&reg_vcc_4v>;
> +		vin2-supply = <&reg_vcc_4v>;
> +		vin3-supply = <&reg_vcc_4v>;
> +		vin4-supply = <&reg_vcc_4v>;
> +		vin5-supply = <&reg_vcc_4v>;
> +		vin6-supply = <&reg_vcc_4v>;
> +		aldoin-supply = <&reg_vcc_4v>;
> +		dldoin1-supply = <&buck5>;
> +		dldoin2-supply = <&buck5>;
>   
>   		regulators {
>   			buck1 {
> @@ -131,7 +139,7 @@ buck4 {
>   				regulator-always-on;
>   			};
>   
> -			buck5 {
> +			buck5: buck5 {
>   				regulator-min-microvolt = <500000>;
>   				regulator-max-microvolt = <3450000>;
>   				regulator-ramp-delay = <5000>;
> 



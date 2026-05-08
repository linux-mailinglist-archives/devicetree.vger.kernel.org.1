Return-Path: <devicetree+bounces-294723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PdNHU9j/mmoqAAAu9opvQ
	(envelope-from <devicetree+bounces-294723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 00:27:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 738E74FC576
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 00:27:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1741B300F285
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 22:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7FA5390221;
	Fri,  8 May 2026 22:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q14sNOL/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C66388395;
	Fri,  8 May 2026 22:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778279237; cv=none; b=DqFdjxkRH1C/vnIKRpxFf/xcOOCDTlHZONY29Wn72SYSJg7l9r8VAZ/gp6z3Yulmy8/P3pY8OxD4neWOXPsioDk7dtXYaNRmMuag/BpD2yK7WHufLPp/c+KcGVQEwbyB5KuAYBRMLqys21AN/R4iiUbxZBpiNCNOEJE0S67n+WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778279237; c=relaxed/simple;
	bh=ARXB7IXHajXNXClhcBq3h8oAt0A8+aZDLCr3/8KxfqY=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nAKxPNjLudmXGa5rDLHKUesiewrwB83P6Ckza1GdZC8gJ0uXf7dBDlPrFES5VaW7K2L38JsOiBOvvCUOdCZPeQH8cHANBBU9Ck+2WQ/PvvDgzoCFMYQjr92S6oos1US83bEzrKE0jPfLGX4XuOJ4qGopCfAJygxw2Ly/KYrgmrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q14sNOL/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7953C2BCB0;
	Fri,  8 May 2026 22:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778279237;
	bh=ARXB7IXHajXNXClhcBq3h8oAt0A8+aZDLCr3/8KxfqY=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=Q14sNOL/eiPwdP3e+3zHr0JzszikuMTxc6cRHiRSPs4RiC6YNtwehVosdJWfo4gSJ
	 NF8iCTtzbnvpTjyBeo4l2jEvTCvrJcDOVFlRkmKMDjewpV/P1FEBtfcPtXdCA3iJnW
	 2z4MjcJC9S+Ywfwx62aiQ3O4BJnBlnVwWqoGSFc5CSTbGT52RmKzWyKhzl32msJ1pc
	 9V5RWKv4QpiP1PPKSm6WJjsqx4dfnxQMNM/Ne2ciHLGf3DTuXzkNXXu//wFQXMFg1Y
	 dfPgrXQfbDFd98LFcr4xQ78caV/fGPKhOHZ+kfITSv/nAE17xrpsloMLz5/N53m2cU
	 S/BlIJbLTz8eQ==
Date: Fri, 8 May 2026 22:27:14 +0000
From: Yixun Lan <dlan@kernel.org>
To: Iker Pedrosa <ikerpedrosam@gmail.com>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Troy Mitchell <troy.mitchell@linux.dev>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org, Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v8 8/9] riscv: dts: spacemit: k1-bananapi-f3: add SD card
 support with UHS modes
Message-ID: <20260508222714-GKA3590877@kernel.org>
References: <20260413-orangepi-sd-card-uhs-v8-0-c21c40ec16d0@gmail.com>
 <20260413-orangepi-sd-card-uhs-v8-8-c21c40ec16d0@gmail.com>
 <afzZ6Fjdt4puGjZ6@aurel32.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <afzZ6Fjdt4puGjZ6@aurel32.net>
X-Rspamd-Queue-Id: 738E74FC576
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-294723-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,kernel.org,intel.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,linux.dev,rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hi Iker,  Aurelien 

On 20:28 Thu 07 May     , Aurelien Jarno wrote:
> Hi,
..
> > +&sdhci0 {
> > +	pinctrl-names = "default", "uhs";
> > +	pinctrl-0 = <&mmc1_cfg>;
> > +	pinctrl-1 = <&mmc1_uhs_cfg>;
> > +	bus-width = <4>;
> > +	cd-gpios = <&gpio K1_GPIO(80) GPIO_ACTIVE_HIGH>;
> > +	cd-inverted;
> > +	broken-cd;
> 
> Card detect is marked as broken as a proper definition requires pull-up 
> support in pinctrl. Support for that went into 7.1, so I guess it's not 
> safe to use the proper definition. That means using the following 
> changes on to of this patch:
> 
> --- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> @@ -406,9 +406,7 @@ &sdhci0 {
>  	pinctrl-0 = <&mmc1_cfg>;
>  	pinctrl-1 = <&mmc1_uhs_cfg>;
>  	bus-width = <4>;
> -	cd-gpios = <&gpio K1_GPIO(80) GPIO_ACTIVE_HIGH>;
> -	cd-inverted;
> -	broken-cd;
> +	cd-gpios = <&gpio K1_GPIO(80) (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
I agree, please see this patch which was merged

https://lore.kernel.org/all/20260312-k1-gpio-set-config-v1-0-8c3541da16b1@pigmoral.tech/


-- 
Yixun Lan (dlan)


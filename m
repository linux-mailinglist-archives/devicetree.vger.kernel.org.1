Return-Path: <devicetree+bounces-269526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AF2TGc7Iommy5QQAu9opvQ
	(envelope-from <devicetree+bounces-269526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:51:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E33CE1C24EB
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:51:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1702E301E5EE
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 10:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01F9B427A18;
	Sat, 28 Feb 2026 10:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wjj1qPrB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F4A427A0A;
	Sat, 28 Feb 2026 10:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772275915; cv=none; b=PsO1mDup68UzHNpLaFA686UOdYTS1m/etv3KRuaPQ8XhQqIJ/FVySb1e3eVScOqaCurgsO7yX5XB80AoxUhrYLGWvqYIyEXYUBfZtX9jiHaOnLADU/g1sPgJe0Ig8vh2nw5SfGreSApLidr3IvQNqx5JzPRaETrnJy/q3e4W5xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772275915; c=relaxed/simple;
	bh=+VmgSKqHuhNwHUwW7Tb2zgDtnMRJgSUoq9NvtWt/eQw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IfwomkLz8SJpau9TDc0X4sy4gu+R1ox30untsvbs1b8hpt4LAbgI+T9JL7za7D5UWrZu/W+W0RTN+o7H0YrfpimLmkPfmbllluwIJjCV4n4RD5HtqZAT7uEh1GzqHC7OPB+XkDueyHocOK8Yuo/rgm6YyknB+lj3y1ideIWTsfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wjj1qPrB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 230C4C116D0;
	Sat, 28 Feb 2026 10:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772275915;
	bh=+VmgSKqHuhNwHUwW7Tb2zgDtnMRJgSUoq9NvtWt/eQw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wjj1qPrBh3yJpAcTYVytuCqIEx4TeMbpmSHcVmFQefYTlJzCLMgmuSMY5L32RUc76
	 BOBeXnK8oULlUY+ZhpsR9G4DXfyR4T6UWAEx9Wj50yMSA2IPToNrxiIAtxkGK+CYVx
	 gmuQ/+PM17O2N6h5zy3gmH6ZLhGle6bvYVyIVm3gMtV+mk1HTC+lw+51a9rH6Wk6zh
	 Lxynt254VwglbcnWICPwfAh7tkbIInc9jkuDrritJ9+sTlqClHh0Va0K4SeN1t8wzt
	 Yxb9D/ErR5txwqzwnaJuxSAUIf/q3j7K8Wxxqjn4718a51lCWalOZ4no1JHzCINf5k
	 blfToyYGD9B9A==
Date: Sat, 28 Feb 2026 11:51:53 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	wens@kernel.org, jernej.skrabec@gmail.com, samuel@sholland.org, 
	mripard@kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: sunxi: Add TaiqiCat (TQC) A01
Message-ID: <20260228-functional-python-of-will-f92712@quoll>
References: <20260227155801.211376-1-jerrysteve1101@gmail.com>
 <20260227155801.211376-3-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260227155801.211376-3-jerrysteve1101@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269526-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,kernel.org,gmail.com,sholland.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,uqsoft.com:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,archive.org:url]
X-Rspamd-Queue-Id: E33CE1C24EB
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 11:57:59PM +0800, Jun Yan wrote:
> TaiqiCat (TQC) A01 is a set-top box powered by an Allwinner H6 SoC,
> equipped with an AXP305 PMIC, 1GB LPDDR3 RAM, 8GB eMMC, an AP6212
> WiFi/BT combo module, one 100M Ethernet port, one USB 3.0 Type-A port,
> one USB 2.0 Type-A port, one Micro USB port, HDMI, SPDIF, Micro-SD, and
> infrared input.
>=20
> It is a blockchain-based terminal product launched by UQSoft
> (Beijing UQSoft Interactive Technology Co., Ltd.), a wholly-owned
> subsidiary of Ultrapower. Its dedicated product homepage[1] was once
> hosted on Ultrapower=E2=80=99s official website[2].
>=20
> It should be noted that UQSoft's official website[3] is no longer
> operational, and the company appears to have been discontinued.
>=20
> [1] https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.=
cn/product.html
> [2] https://www.ultrapower.com.cn
> [3] http://www.uqsoft.com
>=20
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



Return-Path: <devicetree+bounces-285169-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SO26I1e81GlRwwcAu9opvQ
	(envelope-from <devicetree+bounces-285169-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 10:12:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB8E3AB241
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 10:12:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0FD06300F53A
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 08:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D2E23A3E7B;
	Tue,  7 Apr 2026 08:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="bEVWl10R"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138E53876AF;
	Tue,  7 Apr 2026 08:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775549490; cv=pass; b=BIYkRuxBeQO/OhQksrL1vZCpg8gabJhmBkUlXSaCAp+O/dcCdyOwMFijExmrcjLDpPQSSxoMD95pMKUNlxLoZoSUMqVMH0b+3EPZ1sEDlm2ydyNWhZ3wBthgbuCgz7W7YvaLfXpK6vH//qmReWB0pvxP4JFuIDrnV2eUL48Hwsc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775549490; c=relaxed/simple;
	bh=NzT3YRxBWCNcLAbEluJPEgLwwNDU1qLzXtOkCooYXoQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=R3Ns1y0hQfHc3+oPZNnFr/6U5HTD7aVsRzIcXOyueVeZD26Xj2IF8fqJT/r+eWPFS0gDItbZMYqUWTG16TtX+lWV6K5fRy5DvQrI+TofU9ipbr7KwqlewAF8WPqQct2q5oQhTjC/wfbqT7aXpiuSfRKSeVANTXgGIpFjDEC1A1U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b=bEVWl10R; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1775549428; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=WBi0XJ0BbSsT1rPp1AL3eNjXsDZlyrl/SDYEBiBDhWn0pm5DSTSzcuVoKIbb17SLKr7KJ//7qyQrOKL2WjZYE95QzXp4/KVqIdSekwI+rKZuE1oXwsvJIeX08XnnplMvCc8aUcVHVOQjMYrgoUKJG1lf6FiGGUFeWLROpDubsnQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1775549428; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=YwOkgIATGiCfLvpCgh2iVw4y707zmZ1cDQaby807Hjw=; 
	b=nrQESSwguAS1L+yTiGaeTVpa7nkpj6m2LgxZKABb8vrEhHB0AbnXIEzbUA9tHjIRzbAn0bgaJCbOORCLnKJjMhQc0OSY37ey3oaOycv7HyzHl7MDj61OWAYdH4mYYlyBQfbQd55WGcgL2dAuIc6zO8vJS/yNgYX+OG6UMuFXhRc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1775549428;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=YwOkgIATGiCfLvpCgh2iVw4y707zmZ1cDQaby807Hjw=;
	b=bEVWl10RDW8jT+tnbC1NpOKLXO//mFuU75mYBlFj1qettNdizXDBQu9uFQeehAop
	YrNYbDKfvArT9QsNWMki5LlTNisTxZcSIWmOpElDIy9KelOtt/O1aFLPA4qAsjshX9b
	WhMctqOG2QZIS9fzM92eOWeVw/zqUy23CHNOv8+U=
Received: by mx.zohomail.com with SMTPS id 1775549425509524.2343363376186;
	Tue, 7 Apr 2026 01:10:25 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniele Briguglio <hello@superkali.me>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Daniele Briguglio <hello@superkali.me>
Subject:
 Re: [PATCH v3 3/4] soc: rockchip: rk3588: add SYS_GRF SOC_CON6 register
 offset
Date: Tue, 07 Apr 2026 10:10:21 +0200
Message-ID: <6254685.lOV4Wx5bFT@workhorse>
In-Reply-To: <20260320-rk3588-mclk-gate-grf-v3-3-980338eacd2c@superkali.me>
References:
 <20260320-rk3588-mclk-gate-grf-v3-0-980338eacd2c@superkali.me>
 <20260320-rk3588-mclk-gate-grf-v3-3-980338eacd2c@superkali.me>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-285169-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:dkim,collabora.com:email,superkali.me:email]
X-Rspamd-Queue-Id: EAB8E3AB241
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Friday, 20 March 2026 11:34:15 Central European Summer Time Daniele Briguglio wrote:
> Add the RK3588_SYSGRF_SOC_CON6 register offset to the RK3588 GRF
> header. This register contains the I2S MCLK output to IO gate bits,
> needed by the clock driver.
> 
> Signed-off-by: Daniele Briguglio <hello@superkali.me>
> ---
>  include/soc/rockchip/rk3588_grf.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/soc/rockchip/rk3588_grf.h b/include/soc/rockchip/rk3588_grf.h
> index 02a7b2432d99..db0092fc66ad 100644
> --- a/include/soc/rockchip/rk3588_grf.h
> +++ b/include/soc/rockchip/rk3588_grf.h
> @@ -19,4 +19,6 @@
>  /* Whether the LPDDR5 is in 2:1 (= 0) or 4:1 (= 1) CKR a.k.a. DQS mode */
>  #define RK3588_PMUGRF_OS_REG6_LP5_CKR			BIT(0)
>  
> +#define RK3588_SYSGRF_SOC_CON6			0x0318
> +
>  #endif /* __SOC_RK3588_GRF_H */
> 
> 

Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Verified the definition by comparing it to hardware documentation,
it checks out.





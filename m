Return-Path: <devicetree+bounces-258107-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLAiDO4lcWl8eQAAu9opvQ
	(envelope-from <devicetree+bounces-258107-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:15:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D81EC5BF16
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:15:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D51B95CC37C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:48:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6FB3ECBC8;
	Wed, 21 Jan 2026 18:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beoogyAi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8AA3D1CB3;
	Wed, 21 Jan 2026 18:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769021090; cv=none; b=Ml1UuVtlhK8gwxBbek5muCLmYolF6Wegf/HQBteWkNRRGFpj0U6YhHYoQ1yyov81dVXamyhVhS4OniNl0Py6eTZ/+VwDGp6D/hkEfT/LD/xNPIxA7fWjsEJxMOsnAshH/8612mikUlaaMKCLXOJH23JFaSmTPWUgSqqEGfkPml0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769021090; c=relaxed/simple;
	bh=DFfruDUN0GCaBJxNrq8hR1q+b44uiIfw8LCXXTbIN78=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hwg2h0grwFSHtfsuDtcqfRrnWIQjjtZd5bweuS0so7ioU+v6iFujEy0RODOEJD40WhontjRel2u/BX3E0wSZ1ydoNhanIkuRuupUM0rd+/2pDlPC7156pOLUdD6YvihiUlxA2IrKKuV2IwRRgYe+OuWI3L6OdFo+88zOABUEljE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beoogyAi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49FF1C4CEF1;
	Wed, 21 Jan 2026 18:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769021090;
	bh=DFfruDUN0GCaBJxNrq8hR1q+b44uiIfw8LCXXTbIN78=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=beoogyAianYQ4cEs9nVCQWnpaQVBpKTAoci6sihl7+xqJdmzLbuKK657djX4EvbD1
	 IlBx7EPOXMKE3nzSGuM76osQNJfk+7gtHtifPWnRuLtFMdB9De1HrBQVgoiNf1/vCy
	 2wGkbWwK2hgxVBNQGhwKdeXWRSgW140drEq4TDfv9h2hVd8JkpBjIvokIlgSrX2mZT
	 k6w7IIPNMVZTz21hEb8pIXZrQ1pC88stCoio3FQfEbfKhZ0sxKhHFd4GJ9uCy2/7ym
	 aCwDgsYUlIZH9MXq6E1rz7f2d56ouI3+CGShdPtoiQu2QuNFHDuX2A7jalbdOZilYx
	 LMI55VtzFai0A==
Date: Wed, 21 Jan 2026 12:44:48 -0600
From: Rob Herring <robh@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	matthias.bgg@gmail.com, ulf.hansson@linaro.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 5/5] arm64: dts: mediatek: mt7622: Add missing power
 domain to afe
Message-ID: <20260121184448.GC3842411-robh@kernel.org>
References: <20260113110012.36984-1-angelogioacchino.delregno@collabora.com>
 <20260113110012.36984-6-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113110012.36984-6-angelogioacchino.delregno@collabora.com>
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258107-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,baylibre.com,gmail.com,linaro.org,vger.kernel.org,collabora.com];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D81EC5BF16
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 13, 2026 at 12:00:12PM +0100, AngeloGioacchino Del Regno wrote:
> Add the missing MT7622_POWER_DOMAIN_AUDIO to the audio controller
> node to fix a dtbs_check warning and to make sure that the AFE is
> indeed powered on when needed.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt7622.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Rob Herring (Arm) <robh@kernel.org>


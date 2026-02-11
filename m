Return-Path: <devicetree+bounces-264861-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAQ0Bcz+jGn4wgAAu9opvQ
	(envelope-from <devicetree+bounces-264861-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 23:12:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F63128073
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 23:12:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E79A330362EA
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 22:12:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 353A334AAE2;
	Wed, 11 Feb 2026 22:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALTQLPMH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A96337BBC;
	Wed, 11 Feb 2026 22:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770847932; cv=none; b=LjYCkb/6Os2ft0KR1Z9X6wA+SdWR8RReFXWjxQxU94JEVhYSvquBkGF1dGkiA/PrXd4n+FPVEH54x9EsSf6TxmV0DPCgmH+BIantg6gCRpZdGVHsMkBZhYAGQn2pujKHwOz8D4Ovv/vPwcotxA/i4SjL3hYN1xHKoUuor0J8b9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770847932; c=relaxed/simple;
	bh=2wknGGj/tQtYgMsR5Og293YW4vT4Sazms0ZgfiF2RdU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kfzwkWJ6MktQxOC/am5xp76gpSqTOgW46j75I6Ta4PwsJ2iTXsviLUQZVE718wNWbk1yI20kr4IE2RWIn9LV+VO95nFATQZBnWtljgbg8PoMCYdHKiWl8wWrECrpvML/gYND57han6LmASXvyNwnt0iNxl3mijQwRbt0YXY42lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALTQLPMH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BFB8C4CEF7;
	Wed, 11 Feb 2026 22:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770847931;
	bh=2wknGGj/tQtYgMsR5Og293YW4vT4Sazms0ZgfiF2RdU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ALTQLPMHCF6KkggM5f0s9W0ACwPE0sE0nAiNXkLieyzCm3x3oKGbesa5GuzsQ01wu
	 8ZI3updV9WPhzyyBg1DjOiL7aEGX9tN2wT+/K5NS2Go6ZOZiZGo2sAbceQTIaRivaM
	 5Cnxseb/JpVADKV3w6nxNZ/xtWL+OfbXtmwpWajMQouWzcPHMDzAThBHscGelytrDc
	 eagfabA2Ys1k0UvxFwisOEJqsrsgw2ygErBQuHMam5Oss25TgSiCuo3OoNPj2vm0x8
	 rPOCGHIkjcBBADu7/hKdGmq9K5Dv/TxfW8cnVcWTA0kJwNkmcvNWhDzOjgNRE+luLu
	 V1cGHft2u2NTg==
Date: Wed, 11 Feb 2026 16:12:10 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, lgirdwood@gmail.com, broonie@kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: asahi-kasei,ak5558: Reference common
 DAI properties
Message-ID: <177084792956.4004630.3110943987155530878.robh@kernel.org>
References: <20260211101009.2895296-1-shengjiu.wang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211101009.2895296-1-shengjiu.wang@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264861-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: 46F63128073
X-Rspamd-Action: no action


On Wed, 11 Feb 2026 18:10:09 +0800, Shengjiu Wang wrote:
> Reference the dai-common.yaml schema to allow '#sound-dai-cells' and
> "sound-name-prefix' to be used because asahi-kasei,ak5558 is codec DAI.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  .../devicetree/bindings/sound/asahi-kasei,ak5558.yaml        | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>



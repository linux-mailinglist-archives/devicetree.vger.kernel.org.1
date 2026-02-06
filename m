Return-Path: <devicetree+bounces-263247-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MOPGJmdhWlKEAQAu9opvQ
	(envelope-from <devicetree+bounces-263247-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 08:51:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC06FFB213
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 08:51:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23EA93009B0A
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 07:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F43345740;
	Fri,  6 Feb 2026 07:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVRCeEVX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4349D3451B0;
	Fri,  6 Feb 2026 07:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770364293; cv=none; b=ZLi9JLHoUfARSPfi9J/MIaH/Ar9uikkalSQvnxSTjut8X1iLxDeTYMlynRDSzc1JsLEERiGBIjVazvzrsw2Hxm1WjCjLbwWCdwDAvcCDLlWgiWlbUBKQEMJkXTa5aV2LvEwGAuoLkQxuRfW5/38ZQBKBumTzx++d3C3D+VlT5EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770364293; c=relaxed/simple;
	bh=xqbUcSUTpk4arpBV33lwK63+MR69RzUxztVajpd6IpA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u70gtvzNRqhgMRnuHvNwHYs3ZhG7EuXomfDB0UhAwadnOuyMoBT95r25lHKKTmmihPRfbgA+7BpLRG4K/98bjA3uoZL1vp10YseiWbdobbiN1qB5VyxLn8kvP77+kkaHTFeGgnt8Ah2awFTxhV4ahFgWHIr6EalF9EKpc9vw4Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVRCeEVX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F98DC116C6;
	Fri,  6 Feb 2026 07:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770364292;
	bh=xqbUcSUTpk4arpBV33lwK63+MR69RzUxztVajpd6IpA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QVRCeEVX4NnXHRYQVZb6WuR31nT0YfJbSMQsc1IcIk8zKF8I/rQVkHGNZ7yMt85oH
	 uaW92gF7XGyL5HjlgYujTjtl5o0vA3beeM4Tw1zXc+SFo1F2LITXUy2R33r61TxLha
	 lwxdLdpD6dfpnwu1HrudaJunjOsnm6G81QxyCyAdK3ss54QFXw5TBA/KPspq/LLyom
	 7cykMPEMtKp+YBVZI159knhhpF6QEW0uHe9DL/ByJNx2OnU1gOr3Tu+IRBWjgmHx3A
	 Xl7S/fpVsOXwZl0MWkbOcfxyJ3+HPPjfA1a9//G7+eANpq+7+XBuuZR3ndEo24lHYU
	 /zqtO/fv1OvhA==
Date: Fri, 6 Feb 2026 08:51:30 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: dmitry.baryshkov@oss.qualcomm.com, heiko@sntech.de, alchark@gmail.com, 
	andrzej.hajda@intel.com, conor+dt@kernel.org, cristian.ciocaltea@collabora.com, 
	airlied@gmail.com, jernej.skrabec@gmail.com, jonas@kwiboo.se, 
	kever.yang@rock-chips.com, krzk+dt@kernel.org, Laurent.pinchart@ideasonboard.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, neil.armstrong@linaro.org, 
	nicolas.frattaroli@collabora.com, robh@kernel.org, rfoss@kernel.org, hjc@rock-chips.com, 
	sebastian.reichel@collabora.com, simona@ffwll.ch, tzimmermann@suse.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: display: rockchip: Add rk3576
 DisplayPort
Message-ID: <20260206-transparent-primitive-pig-7ea2f8@quoll>
References: <20260206010421.443605-1-andyshrk@163.com>
 <20260206010421.443605-2-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260206010421.443605-2-andyshrk@163.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263247-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[163.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,sntech.de,gmail.com,intel.com,kernel.org,collabora.com,kwiboo.se,rock-chips.com,ideasonboard.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rock-chips.com:email]
X-Rspamd-Queue-Id: AC06FFB213
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 09:04:11AM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The DisplayPort found on RK3576 is very similar to that of RK3588,
> but work in dual pixel mode. And itself does not depend on the I2S
> clock or the SPDIF clock when transmit audio.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> ---
> 
> Changes in v3:
> - Fix compatible order

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



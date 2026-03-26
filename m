Return-Path: <devicetree+bounces-281061-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oO84KCH8xGny5QQAu9opvQ
	(envelope-from <devicetree+bounces-281061-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 10:28:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7014332530
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 10:28:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4157B3132328
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 09:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2D6D2EDD40;
	Thu, 26 Mar 2026 09:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXbBplnW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD93D186E58;
	Thu, 26 Mar 2026 09:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774516634; cv=none; b=ZWmSqBh7Z1COgQhhz/xD7xI8CFJFYepYD4CypUJGF7C8Lp9YcUCw10mJOQ4Opqhkc3gTkrxqU+HiVSG8Qc66I6Qamzip25OLvATn4d5VJhFkEJ+GuGY37odO6+z+30U9NJbRwgDfexLkzT9hEDNQgQX94NqJBRlf+xqOU7qUd/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774516634; c=relaxed/simple;
	bh=G84K/2M3CxqOxKC7wFqRvw5LwHGm2WI3SpgTvoWdTSo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kwj9l4oI+oe+BkT5gL3eFBsl/f2HiEUtREI4i1u+f9BiFQg1z+m1Zlqe9wSt5zMweD7nm/z4O5Q4qa172mMxAWte17NpglR9+16h4935G/oYVzM24mniIn6rDhbALFfOyvb1SPFZv2LMIw7uCCjBAh7QrjOsZ9t11Rb5OqWKyaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXbBplnW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2DC8C19423;
	Thu, 26 Mar 2026 09:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774516634;
	bh=G84K/2M3CxqOxKC7wFqRvw5LwHGm2WI3SpgTvoWdTSo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jXbBplnWaJ1/yqn6Q5pwHu63DJmf1A/wrAAGtBTZmoUNjsALP6A9ugvbzRMPO983W
	 QKVmbMTufJ8DEIXN0q/ofqgO0avz8haV+KlYnD+tOEAtLcpEraKR+P1FE4ouX2zAY4
	 6ll3Qck3faqm7e2ImgHmYMTOyvVLbqbCyoWNOqVc2wEO+4dOaB1N7NhXWDDJo442eY
	 LPw5fydYLQNf9UELoGZ+K1RM5bz6EnXxjpC/dgOjhipx0sGrIb0p1yp60eX+CK4/jW
	 4WpzAECLTQspALtlhFGToqkNNoLodEDdkYqbh5BfGRBfXl0LwgzqyHtZIs9nZf8S82
	 Nm00FCmfAmiuA==
Date: Thu, 26 Mar 2026 10:17:12 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bhargav Joshi <rougueprince47@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	xuwei5@hisilicon.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	ulf.hansson@linaro.org, zhangfei.gao@linaro.org, linux-mmc@vger.kernel.org, 
	daniel.baluta@nxp.com, simona.toaca@nxp.com, d-gole@ti.com, m-chawdhry@ti.com, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: hisilicon,hi3660-dw-mshc:
 Convert to DT schema
Message-ID: <20260326-overjoyed-chocolate-bobcat-6c41e6@quoll>
References: <20260325225439.68161-1-rougueprince47@gmail.com>
 <20260325225439.68161-2-rougueprince47@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260325225439.68161-2-rougueprince47@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-281061-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,qualcomm.com:email]
X-Rspamd-Queue-Id: E7014332530
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 26, 2026 at 04:24:38AM +0530, Bhargav Joshi wrote:
> Convert the Hisilicon DesignWare Mobile Storage Host Controller
> (dw-mshc) bindings from text format to DT schema.
> 
> As part of this conversion, the binding file is renamed from
> k3-dw-mshc.txt to hisilicon,hi3660-dw-mshc.yaml to align with compatible
> string naming conventions. Examples have been updated to pass schema
> validation.
> 
> Note: synopsys-dw-mshc binding specifies clock names as "biu" followed
> by "ciu". However, this Hisilicon binding reverses the order to 'ciu'
> then 'biu' to match both the legacy text binding and in-kernel Hisilicon
> DTS board files.
> 
> Signed-off-by: Bhargav Joshi <rougueprince47@gmail.com>
> Acked-by: Zhangfei Gao <zhangfei.gao@linaro.org>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



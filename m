Return-Path: <devicetree+bounces-265342-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLcJHdYMj2kgHgEAu9opvQ
	(envelope-from <devicetree+bounces-265342-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 12:36:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A325135C14
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 12:36:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 40F8B3008C0E
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:36:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B91BD34F24A;
	Fri, 13 Feb 2026 11:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caJNCcok"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93480348463;
	Fri, 13 Feb 2026 11:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770982610; cv=none; b=j9Hq65KjZUFAzgqHH1jM3FsWUipXFKwIrEZlHq4BHzmCjQLRg9FIJ3p5nWaVMHbDy3XSzXvobxsTEdl3SN83srFFxfDTNviCUI8RA3saUtM6FwHzjhc1WexFZCSEsaQLKteErN5ZPxWGrfda8nbA3sXTQCgqbM8jLHxYCq/izJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770982610; c=relaxed/simple;
	bh=gYIUDyOnQ4i+NX/uRmisjwBc8e2TSySxYxiqfeOYn8k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YDmTzXQmp4OLssSlR7j0ZRxlR8aUI3oaV4TcnOShb3a75naEeINhVGQMJducsiz5R9QU2kGod9NsyHLST5lMS8DynYVkN8gYR21Y5nDgECc5c8I12ok7DpuHIsgF5zopxlxeAGDcFt8GEGlzrgThR4Hbi1O00W7+xOgOPQfyOh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caJNCcok; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB283C116C6;
	Fri, 13 Feb 2026 11:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770982610;
	bh=gYIUDyOnQ4i+NX/uRmisjwBc8e2TSySxYxiqfeOYn8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=caJNCcokTOFaoy5qVeixCz6GWmO+vpd5b/ulWWauByaWJxvOdrSs349mS2wEjK39+
	 KhQyqms9iunHaYIAJ5GZ/Au305z/p2MPwXGgzOSfL6dgsHS7gF4zjp/ZpyohdcFuAZ
	 xzprcZu/+7qISqExYV4OJMBxeSiuF89YvizZQoChYPh1fdspZfJaAvMvZpVXKQ80b0
	 apnnFSLPv+e7JHLUehNNXb41eX8Xss4LOeohT5R3x2+DSBlcKN6ThzRxCKYD6SVhn2
	 w2ni+MnoDQaFSwdn7apIhJ/rkDOyIFzEdadCus7aIrNMJPMG+37NyOwtBBlvDDrJh3
	 5DBdfATgnGWgg==
Date: Fri, 13 Feb 2026 12:36:47 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, simona@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, mani@kernel.org, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, dev@kael-k.io, kever.yang@rock-chips.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dianders@chromium.org
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor: add taiguan
Message-ID: <20260213-seriema-of-optimal-vitality-f4cb8b@quoll>
References: <20260213071946.1436852-1-yelangyan@huaqin.corp-partner.google.com>
 <20260213071946.1436852-2-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260213071946.1436852-2-yelangyan@huaqin.corp-partner.google.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265342-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 0A325135C14
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 03:19:44PM +0800, Langyan Ye wrote:
> Add the "taiguan" vendor prefix for Shenzhen Top Group Technology Co., Ltd.
> 
> The prefix is derived from the vendor's website domain:
> www.taiguanck.com/en/, which uses "taiguan" as the primary

Website does not work, so cannot verify any of this.

> identifier of the company.
> 
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index fc7985f3a549..a0fcd7154ff8 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1598,6 +1598,8 @@ patternProperties:
>    "^synopsys,.*":
>      description: Synopsys, Inc. (deprecated, use snps)
>      deprecated: true
> +  "^taiguan,.*":

taiguanck, because this is the domain.

> +    description: Shenzhen Top Group Technology Co., Ltd.
>    "^taos,.*":
>      description: Texas Advanced Optoelectronic Solutions Inc.
>    "^tbs,.*":
> -- 
> 2.34.1
> 


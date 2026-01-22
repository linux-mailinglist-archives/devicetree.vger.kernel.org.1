Return-Path: <devicetree+bounces-258242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELVeHcrccWk+MgAAu9opvQ
	(envelope-from <devicetree+bounces-258242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 09:16:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BC01B62E84
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 09:16:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2F98F7A8C21
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A19F48124E;
	Thu, 22 Jan 2026 08:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSaYinXl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFBD22F16E;
	Thu, 22 Jan 2026 08:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769069366; cv=none; b=Y6Ax5rcQgVKfO9omTqBIp6q8YTWNpKBO+FfQZQFuNWUY7NByl9LJpaeaS+nT3hO89eYNc1QQ+8f1uqjgPHBy9AbAfjQgh3q0E+ber9pHZW8Zg0RfTADL+t5n3XCZJ6giGwwyzZC2QmNrElfRntTRahzy+sqvLuJDZ/SI3f9uyEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769069366; c=relaxed/simple;
	bh=fOklhs6iunL4lUPDllYNI7Q83nACQ0gHAGFO8a9aP2M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QCVUMQGR/slwuuMGEWXB9+WHVF7p+z2vXEv3E0Nc19ZmPI0MvYLAHxRMMn2IkeNe6HX2L6yB6+E25LmW0ckwYQHlQq4JkaQcQTXjaWaUZ8PM9JH5hZ70buFKS1IbLzqXNccOLWlba8VGMShL3mXhK7jXwSCcH9szcL/aSTcCy9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSaYinXl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42005C116C6;
	Thu, 22 Jan 2026 08:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769069365;
	bh=fOklhs6iunL4lUPDllYNI7Q83nACQ0gHAGFO8a9aP2M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tSaYinXls7B7nIDgGKh9uCFVFUjlSaVBgSBykepGXiAs/8yCSVBtjq89ko7rx6gjc
	 N+G6ZbR5zbGZ+GdEnx24rTDUpGrD198qvsw8k1fu6PPy7UAie3G9Wt/26wVLVQ/PtB
	 5zazkua8wKKFYgqf8x3SM90UeOCk6A0gw3o8KZf450OZysZ28SB73U3TAIGSm0IAr5
	 DWgStTwOIDmQlyJ5uw4zGSvgfyXeiZyTuy2uK4VBp0arGThamPXsMwvhv2t3hhFvf1
	 kZSBxnRW93NB6KQc21WOI4rKacBMUOdbW4u/U9HIkYCMuISTkFbFmFxklRENaI44Zv
	 T52OCy7R6CkZw==
Date: Thu, 22 Jan 2026 09:09:23 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, jingyi.wang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com, 
	kamal.wadhwa@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH] dt-bindings: mfd: qcom,spmi-pmic: Document PMICs present
 on Glymur
Message-ID: <20260122-colossal-heron-from-lemuria-56aeaf@quoll>
References: <20260121-glymur-pmic-mfd-v1-1-2aab4f21e79c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260121-glymur-pmic-mfd-v1-1-2aab4f21e79c@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258242-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: BC01B62E84
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 03:52:03PM +0530, Jishnu Prakash wrote:
> Document compatibles for the pmcx0102 and smb2370 SPMI PMICs.
> 
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



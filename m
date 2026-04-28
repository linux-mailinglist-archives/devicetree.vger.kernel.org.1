Return-Path: <devicetree+bounces-290907-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLF+AFtu8GmgTQEAu9opvQ
	(envelope-from <devicetree+bounces-290907-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 10:22:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5210847FEDB
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 10:22:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BBD513013C46
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 08:22:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F22F3D3D03;
	Tue, 28 Apr 2026 08:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckbzzsS3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5314B3D34BD;
	Tue, 28 Apr 2026 08:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777364542; cv=none; b=Za8OkX1ZBJXSfRH4wM7eGXwy4cTq2kGkXRRiJammohLknT1iEDh+shSzgNljFV0hBQvkdplySRZ0Tpx5eP8RrlIy8p/J4tpAXJrp/7RMWTZnTCZ1cmS5llf50ydUW5AmcXccEw030PNH+z0mAqquLJyjrG35v99R/6K233LynOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777364542; c=relaxed/simple;
	bh=lfz/ksKkFC0NR846C2PlTrK9Y+PX6UClsHE5m5sF8Oo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WTWSw7+LqGUPHxpMEePffSakWWxWwp7iEDKG0UvQMZ01d0UO+orM2I61blBbXPYmrMKsc9CeP2L/7cCopM9skCE7dvHq+zwd7Hm+LUG7wBwd7z9HQs8rDK4LMrs1rssqoS0OWD1m2wCVxAU3O5Ug/wp1H/H9X7ylIklMfHrYNZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckbzzsS3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 911F0C2BCB8;
	Tue, 28 Apr 2026 08:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777364542;
	bh=lfz/ksKkFC0NR846C2PlTrK9Y+PX6UClsHE5m5sF8Oo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ckbzzsS3dTUcLoud7ObxAGoHH/pnOiVYzZIXnFUpw4JGOouPYSFGSpPkGKczCb84u
	 GnjfjCT0eVd0w5uJuSD9Nx9Q/0/+VEW7w6KPSw2gWzqT0Ig25iUxfZe6o5sixzNgmB
	 kO02/Yr9TWgGa1Vd7v21aYdi8iudOnRPZFapQf0wBn1xMM5ABa1b8Sk+grO2CYCYse
	 kxi2xciOrWOCAo7BJjm1YMEICSZKF8sWYgtU/zdhJnjKpEzHIzud8gllqtNVXT+NO4
	 rpfPa+04OsRfBsi9E/TNd0YsTSqhTXhNyKkiJRfma6/Wc9Soi2mp1qkPHrDxKuc1w6
	 tyPUfjBDPvH3Q==
Date: Tue, 28 Apr 2026 10:22:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: soc: qcom,aoss-qmp: Document the Hawi AOSS
 side channel
Message-ID: <20260428-golden-swift-of-effort-74d802@quoll>
References: <20260427181609.3648384-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260427181609.3648384-1-mukesh.ojha@oss.qualcomm.com>
X-Rspamd-Queue-Id: 5210847FEDB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290907-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email]

On Mon, Apr 27, 2026 at 11:46:09PM +0530, Mukesh Ojha wrote:
> Document the Always-on Subsystem side channel on Qualcomm Hawi SoC.
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



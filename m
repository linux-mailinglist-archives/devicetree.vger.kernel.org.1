Return-Path: <devicetree+bounces-287078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCwzBkMm3WlcaQkAu9opvQ
	(envelope-from <devicetree+bounces-287078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 19:22:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 714F03F1430
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 19:22:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9D89830AB7B9
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 16:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BD9B32D0CF;
	Mon, 13 Apr 2026 16:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFXetNPb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5992632C924;
	Mon, 13 Apr 2026 16:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776099399; cv=none; b=ZHyy23R395iUpqxTB8u+3c5ibjBfw+68V48aFfVHRhpJ4QeahwRMCwNvNd564BL1KvXpSsmDCG6aQBD0Fi9iGh6iX4eqTOXpxJLsRKtrQazg19meM5iVz+wGhSuHpgaxO7usvYlzS0hxpOUu1WMq+xgAFF/YoQ2g8QQ+w3ihhqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776099399; c=relaxed/simple;
	bh=A2WKUiolSN0cifqJeS1wIZRnUlA6BejCiUNUjikFF9w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W9cX6rzcvEnYrfsSI9fj1C9l2k1KUHyGnno/jBNSzi44JamNtFoANXMsDKWT5ezp3oMixc5A++tbVyFE0vSjiw9rRbu3pFKhFyh8G00Fwt6bo89xiWj0PzKgvIUQyhGpUx+Guna6XTp7JM62BoPzIEIdBQIKVC57k8Z9A02/jlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFXetNPb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E360BC2BCB7;
	Mon, 13 Apr 2026 16:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776099399;
	bh=A2WKUiolSN0cifqJeS1wIZRnUlA6BejCiUNUjikFF9w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KFXetNPbHkpkD6oeSvI0ClRDN4DkgKpVb9/tau2iXoD30Xij3ryha74ZpSiGxpJIH
	 d4MDtmFjnaZL5xxRiDzN9IDydR+UYwH2HSYpQHp1KsZ6+yApqvPPsoaiRdqpRzmi7S
	 bdYur8Bzwv+tTciq1vuFOvHpF8iER9rEVXRxawqjIUPraQxSXCV5iuh0g/nAnsL4Cz
	 ktOdv8PstAvgLm6jv9izTLJoKjD/xa+j4HycKBA7TY/ByS501TGPsg/GAfQ38Fd0kt
	 vwxzvRknIGqbqBTLY7A4d74lmyUrLedIs2hSE7TaqRd1ZxSKAxxENREG6aCciX4EB1
	 bE+eX9UpRAGsA==
Date: Mon, 13 Apr 2026 11:56:37 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: sram: Document qcom,hawi-imem compatible
Message-ID: <177609939245.2987177.17896963682646094969.robh@kernel.org>
References: <20260401125528.594108-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260401125528.594108-1-mukesh.ojha@oss.qualcomm.com>
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287078-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 714F03F1430
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 01 Apr 2026 18:25:28 +0530, Mukesh Ojha wrote:
> On Qualcomm Hawi platform, IMEM is a block of SRAM shared across
> multiple IP blocks which can fall back to "mmio-sram". Document
> its compatible.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/sram/sram.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!



Return-Path: <devicetree+bounces-297448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yF14EXKqBWrtZQIAu9opvQ
	(envelope-from <devicetree+bounces-297448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:56:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF44540AD6
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:56:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 515323004604
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 10:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB4BB3AFAE7;
	Thu, 14 May 2026 10:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkP7XDkB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73C735E93B;
	Thu, 14 May 2026 10:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778756204; cv=none; b=PHE+bUyM3CiFUjBKREpSusEfRwIFnCJcT0W1gEJ89zP5GAKMy2GtHJCRkdXytedO99z1O95HH4pCRRoPqF6mK8d0NcYx132T7BNy8L+h+Im6FLMgdBQz9cwSbJgrZmNuVvpQQMllCbMV+uY6gbfIBgs0ieCJIt/8aJq2GMYsb0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778756204; c=relaxed/simple;
	bh=3sd58P8BjyDEsnYK0YwYR2aJcegO650XuBzHu4xS7aQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q/WBxfNzGEBr68CfiCzMpX3BaJtSLBoZsi/mKYeEUkEL7bU4nL4DU4pWYFe+RQyelF5dmiCDLAPNW3NuB8cJ6JudaiCr1MwAYn8d1KKDB64jl/dLpLhRdqpE96fFpjEaNFHMP9g1izX4ChTlgZU4IH7k5znot+vLqY1WCIGQ9IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkP7XDkB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D487DC2BCB3;
	Thu, 14 May 2026 10:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778756204;
	bh=3sd58P8BjyDEsnYK0YwYR2aJcegO650XuBzHu4xS7aQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lkP7XDkBxVVFfVM3Pw4zE8HOQinBXzLMRIRnrMLQwkCVAISnpmAmbXRLT8V22yaoS
	 jniokEZTUXHGWLRdPLSs1B4i9k228IwRrC3K3VK1IgGlQL20HcOblao8SckL5prU39
	 eQ+t3ReekannPRs4CFpjfmAW6Nk6+YOQYzzV4VgbWECq7UqKzkrF9EQQHO3k50eF70
	 C8rJ1Rj1b7tNrw5FoIYoy6D4+Z7AravdHq+PIYNMVzGolwB5Ub7atLlGIPYNQ9vXBL
	 CF/lv/cRssNvpJX9Vkm0IwA/eIvD2tGQq7yqx4h2fLb/C2uJmI0ntm1+0J0xd8M8tP
	 QR2WdrQ7gbuRQ==
Date: Thu, 14 May 2026 12:56:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: crypto: qcom,prng: Document TRNG on Nord
 SoC
Message-ID: <20260514-therapeutic-echidna-of-maturity-4730fd@quoll>
References: <20260510021809.1130114-1-shengchao.guo@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260510021809.1130114-1-shengchao.guo@oss.qualcomm.com>
X-Rspamd-Queue-Id: 1FF44540AD6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297448-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Action: no action

On Sun, May 10, 2026 at 10:18:09AM +0800, Shawn Guo wrote:
> From: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
> 
> Document True Random Number Generator on Qualcomm Nord SoC.
> 
> Signed-off-by: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



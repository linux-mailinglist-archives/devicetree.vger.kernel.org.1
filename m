Return-Path: <devicetree+bounces-262952-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPrUInJqhGlz2wMAu9opvQ
	(envelope-from <devicetree+bounces-262952-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 11:01:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B12F11DB
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 11:01:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C257A300251C
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 10:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 782D03644D2;
	Thu,  5 Feb 2026 10:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNdWW+aa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A0831A565;
	Thu,  5 Feb 2026 10:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770285671; cv=none; b=Q/1MqLoPHpTO4/AqTSpCML0ZBWJuk9R2qQeMcJfEQzP78QFYns4u9vdejole14VM2Fjvpj+s8PIwoKgPJrfrZ3LIMKk+zHRs7z7qM//RbfsIELQVfoibsZts7F0kiQ5uSVGh2MgGAAOwCuH/OVw682/PMHoquCSYG/2O8xR6dh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770285671; c=relaxed/simple;
	bh=2u9itVTkE3ZX3OdeIEws7OJRUYqNn/cyRFsypgfS4WQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mQZI0M2ehqn+L64EHuEXjI1n/5rGc4A2s8ctYCmQc3+CFCUH5us2atbBfRKDiihI31m35kfesghQrHrrh73ujIEc0v5Y1FI/2Mgj7FWmVUMLt+/OSXoTHtk5ORYJ+Cm5nrAi5cVc3k0azX5S/K9r5p1f+FDXD4liJkjHnbQIKqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNdWW+aa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F90EC4CEF7;
	Thu,  5 Feb 2026 10:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770285670;
	bh=2u9itVTkE3ZX3OdeIEws7OJRUYqNn/cyRFsypgfS4WQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DNdWW+aavg7RlG9Gr6kyA3np+w5DkiliX4JhzvsC8kcAKdOfuH+FPNb9zfddgmffc
	 3gQMEP9EXCA7g8dNJZPnfuXXrhyI2V3hPtRlTqpfvY03z7tn8OmTdxQ5LoSJxIRX+N
	 O+edtpPTENbpMinR4lL0h8AmKWNRrraSc5PtyMYaXwLFZIX3uY+BXbefAdFQtu8M2+
	 kmzqLMA2au7C6oSscuo8Lv2t305yAUaX0KKJi9f+uwGzfbqTEBjjhAlo7xv1y2DZ8E
	 AqXpcfhpjRAoBf/NJ9+d1gwTxow2Nnc6RezYwuz5/5/JQUn3jZ1zUWEdG4UknC7+jr
	 dDmdaevNmPlJA==
Date: Thu, 5 Feb 2026 11:01:08 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, sumit.garg@oss.qualcomm.com, 
	dmitry.baryshkov@oss.qualcomm.com
Subject: Re: [PATCH v4 3/4] dt-bindings: arm: qcom: Add IPQ9574 AL02-c7 eMMC
 variant
Message-ID: <20260205-loutish-just-rattlesnake-d1fff5@quoll>
References: <20260202073322.259534-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260202073322.259534-4-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260202073322.259534-4-varadarajan.narayanan@oss.qualcomm.com>
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
	TAGGED_FROM(0.00)[bounces-262952-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[qualcomm.com:server fail];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[krzysztof.kozlowski.oss.qualcomm.com:query timed out];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 42B12F11DB
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 01:03:21PM +0530, Varadarajan Narayanan wrote:
> Document the IPQ9574 AL02-c7 eMMC variant.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



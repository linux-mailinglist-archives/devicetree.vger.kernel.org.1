Return-Path: <devicetree+bounces-290836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Ft0ObtR8GlNRgEAu9opvQ
	(envelope-from <devicetree+bounces-290836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 08:20:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 490D147E022
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 08:20:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 72C4E300B8FD
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 06:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44868345745;
	Tue, 28 Apr 2026 06:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5I+x14t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203192DECBF;
	Tue, 28 Apr 2026 06:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777357238; cv=none; b=E6mMU3dzMhU7Dp4ujIjoFe+Vrp3Eo3phZeERkjK8LlOyVbOWtkh55pSrru/aHzWccnz4+nTdTmtOv73idaDiT6WiqLGjFq/XkBEzgDTGU1kpAeS3YcPX5cbgC/5teUnqd2QV4W94s1EdJy2/7cvOTqp/PFPyzt6Q+AqdpY0irOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777357238; c=relaxed/simple;
	bh=zVLSiuhLnWSlgMLSLcR56FrD5XmA9WGm0HRaLNp0vvE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kkz1VhdqXCF6rfy1WJ/IL2L/+/gbLehxr1eLol+/tyyB1DjVRJE2UkaWvApcByYgzxnWSN3tXFyUiKWH27N9aSVmQY4OjIXu8q0iNWj5gdL8HwJcrCXKXX/1m17podJ8X97OxyGR4yeg5SDZzY47E751QKWJOdi6qJP7T+FKMeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5I+x14t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C9F1C2BCAF;
	Tue, 28 Apr 2026 06:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777357237;
	bh=zVLSiuhLnWSlgMLSLcR56FrD5XmA9WGm0HRaLNp0vvE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b5I+x14tnn56ulxVhKph/T8hiIBFduIPjqYVx9px/rJUCmrG3vKdN7N+tifEbshV6
	 ucSRT36gHuV8ln6a1Krpw6J3ioz/bcZBMSOJiCo/uuDnjjHNjvwXUWUpBBab5Qst31
	 cS6tBoh0h0yZN6butOWTTkFGlCYPjI5hFtyVj7lQn4ryc+6BtdzTaMyyjLNK18l6Df
	 Iac2hw9DhzkyFhVyTr4NN/ChVowYuOCbWF7yH5uAvFm8BAxLyEIy0bwhnB2KZhlTYQ
	 CwuP661Fwx3VLyN7i8j+iTZDDge1AzD+8KfLkbOHo9+ZTeE5Zf7wcKrEiN/fh7FBaL
	 Z68GHcgUQyr0Q==
Date: Tue, 28 Apr 2026 08:20:35 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>, 
	iommu@lists.linux.dev, devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: arm-smmu: Add compatible for Qualcomm
 Nord SoC
Message-ID: <20260428-tricky-magic-koala-b21fed@quoll>
References: <20260427011728.231026-1-shengchao.guo@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260427011728.231026-1-shengchao.guo@oss.qualcomm.com>
X-Rspamd-Queue-Id: 490D147E022
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290836-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

On Mon, Apr 27, 2026 at 09:17:28AM +0800, Shawn Guo wrote:
> Document APPS SMMU on Qualcomm Nord SoC which is compatible with

What is APPS?

> 'qcom,smmu-500'.

What is qcom,smmu-500? And which one? Adreno or not-Adreno? Please do
not add any obvious parts to commit msg.

Best regards,
Krzysztof



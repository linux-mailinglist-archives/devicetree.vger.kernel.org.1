Return-Path: <devicetree+bounces-284634-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMg/CQvt0Gn4CAcAu9opvQ
	(envelope-from <devicetree+bounces-284634-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Apr 2026 12:50:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A81BA39AD59
	for <lists+devicetree@lfdr.de>; Sat, 04 Apr 2026 12:50:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32C223013D76
	for <lists+devicetree@lfdr.de>; Sat,  4 Apr 2026 10:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA9B4312832;
	Sat,  4 Apr 2026 10:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvy7ergd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5FBD2D3A60;
	Sat,  4 Apr 2026 10:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775299847; cv=none; b=M9YPcbVyquwzEjj/EDLnbd6LQO9Wy0XQp1thYRA90sE1Ur4ZFaR/fNqH51jXIrASR8eWMntE65FuPexVBkyP+YaDrqgCX1P8KT0Fk56BqKJIU0G0Xk3+Q9adN2Np7xuunY47wxF30hvM+3kvKK9AI4ACGp6ZbNFC6FvF4SYoVmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775299847; c=relaxed/simple;
	bh=XlV93qt8XxCZGBNC86/HRqHqRPWS0RQnPhDy2NL8/VA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F9knnBisWSFBo5CdzMiWltYGlRd8ZHlkL7sBZ89HtiAbpD9pJmkLn+r/K2BZqoxfK10l3niilwRURjzZkfoO+m6xsU2j6ie1xf9uxAPUvz8EG1aRfLxecdlWgud5YfXq0Xa4+6MWVs/TLDhGzqScwsPbpM9qaBR5A5NHhDA7wgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvy7ergd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8484C19421;
	Sat,  4 Apr 2026 10:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775299847;
	bh=XlV93qt8XxCZGBNC86/HRqHqRPWS0RQnPhDy2NL8/VA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cvy7ergdvQvaay7kV3qQWauJcg/3sL8wHUNwYoHNmuMOtWWZT+CSy8fzUdoAyj5XA
	 im6n5mdOd9xfLx0XSwv05Rac5aRpujCigBYkNPphd0uZl5Luz9tgz9RLcaq3u6l7uN
	 daY/acphESIcmLfti0Ic3e37xelWgO9E/gZ0suYA3pdPPEugWQN+yT7SlI/UxTURD8
	 +iuoED22jDHZ07XsD6OYydgo8c/lO8DDgdp7+p11E9UZMn+5GPA4Yu7sqKjgZKQ33g
	 NW0PFWPLMO3dMo6iVbc2MzT5lab25QJW9f+xMAjcryQ8z2WdK0MmVkoOhMBJqd94KX
	 qJRrKYCIYwEnA==
Date: Sat, 4 Apr 2026 12:50:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Robin Murphy <Robin.Murphy@arm.com>, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: arm-smmu: qcom: Add compatible for Hawi
 SoC
Message-ID: <20260404-hissing-determined-doberman-fa1ab6@quoll>
References: <20260403080956.2714415-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260403080956.2714415-1-mukesh.ojha@oss.qualcomm.com>
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
	TAGGED_FROM(0.00)[bounces-284634-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A81BA39AD59
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 03, 2026 at 01:39:56PM +0530, Mukesh Ojha wrote:
> Qualcomm Hawi SoC include apps smmu that implements arm,mmu-500, which
> is used to translate device-visible virtual addresses to physical
> addresses. Add compatible for these items.
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



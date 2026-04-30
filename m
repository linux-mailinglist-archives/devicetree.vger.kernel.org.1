Return-Path: <devicetree+bounces-291835-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBF+IIMi82nIxQEAu9opvQ
	(envelope-from <devicetree+bounces-291835-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 11:36:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7309C49FE5E
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 11:36:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4B0BA300C3B0
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 09:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A7F939B946;
	Thu, 30 Apr 2026 09:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIhKsY/q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C3C3A254A;
	Thu, 30 Apr 2026 09:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777541686; cv=none; b=ebpHhHYjiUInRj46KAa6cZie1ZVOkQbJB1QjxZJN3QUJDtdflKJxVZhT3yLXxy6jAZuxju98vuQZmGytPjJm+uTIBXD/dIIe1PWd2CrkPN3YCjZkhMdCI3rkVjcROBzoGffeS1HuwpWnrz/MvlVc3J8WwCUb8QcuUITtxHBrUBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777541686; c=relaxed/simple;
	bh=5IOnM7q7Jm/DXFfFjyyeOcR9CRYv1oWiz+UcEgGVKlg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pj5X7sfHRBNZM+w5BCiwaxaXyDlGAWwTrXnBbyR2nYQRqqNIjULbDL12BAizKFUnQxKCmQ/ObmsW/H9PTrWXp9tYxqZhs+hVu4krDY5FqzKqmCY852yFW88kjBy4t18ITPPTyhI/Z3OSNXfgbkpG7mx/sX+xkKH/WJP6CzY6cxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIhKsY/q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CEAFC2BCB3;
	Thu, 30 Apr 2026 09:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777541683;
	bh=5IOnM7q7Jm/DXFfFjyyeOcR9CRYv1oWiz+UcEgGVKlg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rIhKsY/qVbL1QIUoaXwLT1kQYTjIwzlhtXR6M7pXw1YReXgKFoq9ndn4de2K6FBXv
	 +w7+4YHM5UF6NSHF+sQITJe6ow0FEEruO6tsWadfdOQ6iCAbDJSR4scan0x1STf+JK
	 0a11Ji0XfAZw8l9ly/2re2lRSwyNWhqoACSrMfw5dJy3FSyqbmRBR7uepzQIPcTWWB
	 6kK0HJRq2rzxuf2akW7ZG4AUscF7SvcgyYWlqL68QrlsXf3jmrl8G3HsPB1cWU9nRz
	 5xfucSUCYU81IQLUcm7CAcZFbJ8jHKc49j7xrKicD+zZKxeaYjBTPuEoLBo9wWLs/i
	 JXc9jdEzeuuXA==
Date: Thu, 30 Apr 2026 11:34:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mailbox: qcom,cpucp-mbox: Add Hawi
 compatible
Message-ID: <20260430-serious-taipan-of-enterprise-ac2f7b@quoll>
References: <20260427182412.3666971-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260427182412.3666971-1-mukesh.ojha@oss.qualcomm.com>
X-Rspamd-Queue-Id: 7309C49FE5E
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
	FREEMAIL_CC(0.00)[oss.qualcomm.com,gmail.com,kernel.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-291835-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email]

On Mon, Apr 27, 2026 at 11:54:12PM +0530, Mukesh Ojha wrote:
> Document CPU Control Processor (CPUCP) mailbox controller for Qualcomm
> Hawi SoCs. It is software compatible with X1E80100 CPUCP mailbox
> controller hence fallback to it.
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



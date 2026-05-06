Return-Path: <devicetree+bounces-293404-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLQeKEXw+ml1UgMAu9opvQ
	(envelope-from <devicetree+bounces-293404-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 09:39:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 193E74D7564
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 09:39:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 32D983005EAD
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 07:39:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 593F23CAE92;
	Wed,  6 May 2026 07:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdSfHTqO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345892FE56E;
	Wed,  6 May 2026 07:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778053173; cv=none; b=tbBIT8sZcCkM0ZmnSvdJUgEc3BU1PEqmr3+g9NXmczGcK+pdcIzByBNJ5mTlqLjtDzyPaOhZds74Ekb1FnH+Vw4tDBb2t1+5YD3+a8cJdrU7eLSqd5vNDcbD2RDuE/YUOfUWntFAQy8Lr8qXMkM0AGNR21ufvotjW24o4V6+1qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778053173; c=relaxed/simple;
	bh=lOZR6R92sYmsE+sacZXYlzXEvAzRCNPQjdcttW+HiEI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qMONofuYqDChDg1YY8ixuWEdUoGrPJCpJsDknStD5Ge840TMhzn5Tr3DYhfIVch5PwP1JgoYKbvmpBaGkW1osV8CT4Qkp0dxIw4O/a+BXDJutvdWPWIDKrglUePIG7LRgP9NDt+RUA21DTfYe9g34C97a9bEyDBvG1ouEe/9tbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdSfHTqO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29243C2BCC4;
	Wed,  6 May 2026 07:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778053172;
	bh=lOZR6R92sYmsE+sacZXYlzXEvAzRCNPQjdcttW+HiEI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WdSfHTqOu5BFKhh9H6gB60W8gXq3rmKibmrf3vbev1u6CaDiACnCqH1Cenf5p0UyI
	 b2nD+HZqCQBOqukKByXS/Q1rbIoYpoPy6urYiYUU16ln3I+LQNkU3xMa0shIsO7yQW
	 +OToIFNoAS04L4hnYTr7zvE7drWwa0XzVqJ8U/bZDy8k1JBhVeO2WW3vmE6X3FWGIv
	 5N0N0zUMwWIXPlriZw3P7ZpOQ1bYRxYxmOAhmNd6X/ORe74NG5tcLqyrhHkgqeMWIh
	 GWlcXyB0ws1TmjfnjLl6jVeAS4hETzrhvdR0e84YiDgA9a/Z5NSC81N8siQiW6XyVH
	 KMiEGOXxaxZ3A==
Date: Wed, 6 May 2026 09:39:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: input: Document Imagis ISA1200
 haptic motor driver
Message-ID: <20260506-nautilus-of-abstract-efficiency-eebe94@quoll>
References: <20260503165243.215979-1-clamor95@gmail.com>
 <20260503165243.215979-2-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260503165243.215979-2-clamor95@gmail.com>
X-Rspamd-Queue-Id: 193E74D7564
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293404-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]

On Sun, May 03, 2026 at 07:52:42PM +0300, Svyatoslav Ryhel wrote:
> Document the Imagis ISA1200 haptic motor driver, used primarily in mobile
> handheld devices and capable of supporting up to two motors.
> 
> The exact datasheet for the ISA1200 is not available; all data was modeled
> based on available downstream kernel sources for various devices and
> fragments of information scattered across the internet.
> 
> Tested-by: Linus Walleij <linusw@kernel.org> # Samsung GT-I9070 Janice

Drop the tag here, you cannot test a binding. It's not possible or
otherwise explain how YAML file was tested by this device.

Best regards,
Krzysztof



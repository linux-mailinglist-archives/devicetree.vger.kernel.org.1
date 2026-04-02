Return-Path: <devicetree+bounces-283803-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFuaJdQezml7lAYAu9opvQ
	(envelope-from <devicetree+bounces-283803-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 09:46:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 286D8385605
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 09:46:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 298F5308303A
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 07:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D2F03845AC;
	Thu,  2 Apr 2026 07:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBnzc+PX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BB118FDDE;
	Thu,  2 Apr 2026 07:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775115561; cv=none; b=ZJ96Z9tW3VJSne08t2QrW8LZFBHgX+UvhtB8a5mUjFZ9uF5Ex9+Oim7v3MSDshguAe6Dg13HMyPb3x7viCF64Vv/BFHyXp4w4DxoP/TV2UHtas0ZwEQEKxiWZcwkw3LTrmjDtbJ8vji3E6uHe562GA0zQsWTukrLb5zvshmta18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775115561; c=relaxed/simple;
	bh=no6QOf/VFhguYHVORKuUHdwtLtBKZ2459unNnteq/hY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WlZIDIBjF0+2TQpX7bdz9v53oDj9sDx8rrEdGt+xcsuG+R+82fV2Fwfd3nueWgdS5iSY9OUzZqDTdIkMA17OzCbAg/guwq5vs0aVHN+ZMsAJrZQfZbs3gj6xQVabjhriEm+FF2Dml4my3dUvzqwvjrAP0JwkBuCxmfXUNOY2e0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBnzc+PX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 584F9C2BC9E;
	Thu,  2 Apr 2026 07:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775115560;
	bh=no6QOf/VFhguYHVORKuUHdwtLtBKZ2459unNnteq/hY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VBnzc+PXAxhL6UdbS47xiK1BwjKryy20q1Pgr+/C6MN38wbFYU56toFcHxODXn0T7
	 iXlH0O7X2+kz8nzHtc04NSUetwgJPs4pzEKF+SCRaqZABPls9tSs8CFAxYuhEJBSDI
	 n8eQFP5D56x6YNeaHdFKzA/zqvxwpRaKpM/dnvDCBukxZM8diEqyUBXbGbfFNoxpsJ
	 GAFQLmX0QUaLAy0nMAhreIMcrhKk3LVpPLdpe7tOIeXEXxMuA3rYAK+31ioTj3NFIa
	 LbiqVvi9XmsyY0RVB7BE+H8P6nCAzZ3DHjbXa1cE5QZmzrz1o6ng1Djpqf9AiehDH9
	 qDd6ZFdbuqGUA==
Date: Thu, 2 Apr 2026 09:39:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Akashdeep Kaur <a-kaur@ti.com>
Cc: praneeth@ti.com, nm@ti.com, vigneshr@ti.com, kristo@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, rafael@kernel.org, 
	viresh.kumar@linaro.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, d-gole@ti.com, vishalm@ti.com, 
	sebin.francis@ti.com, k-willis@ti.com
Subject: Re: [PATCH v2 2/6] dt-bindings: opp: ti-cpu: Add ti,soc-info property
Message-ID: <20260402-sweet-wise-coyote-138ff8@quoll>
References: <20260401105404.1194717-1-a-kaur@ti.com>
 <20260401105404.1194717-3-a-kaur@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260401105404.1194717-3-a-kaur@ti.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283803-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 286D8385605
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 01, 2026 at 04:24:00PM +0530, Akashdeep Kaur wrote:
> Add ti,soc-info property to allow OPP tables to reference the SoC info
> device (chipid) for establishing device link dependencies.
> 
> This is used on K3 SoCs (AM625, AM62A7, AM62L3, AM62P5) to ensure proper
> probe ordering between ti-cpufreq and k3-socinfo drivers. The ti-cpufreq

Nope, sorry, DT purpose is not to perform probe ordering.

If I change Linux to load k3-socinfo before ti-cpufreq, then the binding
becomes invalid?

Not a DT property, drop.

Best regards,
Krzysztof



Return-Path: <devicetree+bounces-315494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3eh/HCHNPGq1sQgAu9opvQ
	(envelope-from <devicetree+bounces-315494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 08:39:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC036C3145
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 08:39:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LRzz5Q7a;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315494-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315494-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8FDC23028B72
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 06:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E468B3C1096;
	Thu, 25 Jun 2026 06:39:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CDB2E06EF;
	Thu, 25 Jun 2026 06:39:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782369565; cv=none; b=ZAaeaMChDtDYR6PCnL7Bmlbrl/CnoJWKo6L/R2NE41EAYcSB4yn72ku42YIYbW/Nu6UC8YrS3aLb1HBW2vaOvjkCqk0jyX/9nGhf9KV+VgkWCC5iI5sX72MLWDRB/To5IAHWP4QElz90m/+K8M1EreVOpDSM+++lE6LZowtHKRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782369565; c=relaxed/simple;
	bh=dla6KEGixxcbbpeE32Y0FV+s+JhG0zt3mNXu9vf2RbE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FgGTo958fpUvwiJ1qKu/Uds33kIqbEw0xjwRLP8s9Fwr3CuLRoMXez7BdWJX0odFcjXXOdPO9yk6SKRMuSo2ulJyQh5rJxLIS6yxnBj0We31SO4mNhmpS9Q57i7Qe70Co3oXZHs+Fi0X0quo21+CzdumoAiacUcdwfaQI9kuPTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRzz5Q7a; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68BE01F000E9;
	Thu, 25 Jun 2026 06:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782369564;
	bh=GcoSB0XZI4hLE+JDx5MBKb7eQx9RhsjyMhNWGGvT4Gg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LRzz5Q7aVp0LE/z0exmrhdbrKF1B8680nCHxXz5/RIqUGDxAMa3aF/6V0gGRPOafj
	 LhPPOUtUhEBDDFrRw0fJgaEZxBpCVpR5kpnMcpjZVw19Kn7rD1MMT7ozXSRkRgeTFD
	 RfeK7G7MXzmk24Y+rAQebnMoBWsZMZHHYGnG5nPBVXr244kLD+dws7+NNnxFqwDE5V
	 IH7HuV3eE7NAVLSnH5hIfD6TRcdIxM4N9R4GYTyOUoFryBn0RGR4SKdOukkTWKJ0pl
	 Wva2/fgnXcxKyRGvYjsdmOSXNtT4Ufde36pdnleU1EctdhhWPQZHDCW/GEupGp0Dgk
	 lPvjSFiGiXdPA==
Date: Thu, 25 Jun 2026 08:39:20 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rama devi Veggalam <rama.devi.veggalam@amd.com>
Cc: bp@alien8.de, tony.luck@intel.com, michal.simek@amd.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, linux-edac@vger.kernel.org, devicetree@vger.kernel.org, 
	james.morse@arm.com, mchehab@kernel.org, rric@kernel.org, git@amd.com
Subject: Re: [PATCH v3 1/4] dt-bindings: edac: Add bindings for Xilinx Versal
 XilSEM
Message-ID: <20260625-grinning-copperhead-of-love-b6bc2c@quoll>
References: <20260624212545.2850787-1-rama.devi.veggalam@amd.com>
 <20260624212545.2850787-2-rama.devi.veggalam@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260624212545.2850787-2-rama.devi.veggalam@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315494-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rama.devi.veggalam@amd.com,m:bp@alien8.de,m:tony.luck@intel.com,m:michal.simek@amd.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-edac@vger.kernel.org,m:devicetree@vger.kernel.org,m:james.morse@arm.com,m:mchehab@kernel.org,m:rric@kernel.org,m:git@amd.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BEC036C3145

On Thu, Jun 25, 2026 at 02:55:42AM +0530, Rama devi Veggalam wrote:
> Update versal edac device tree bindings for
> Versal Soft Error Mitigation (XilSEM).
> 
> Signed-off-by: Rama devi Veggalam <rama.devi.veggalam@amd.com>
> ---
> Changes in v3:
> - Merged XilSEM edac with Versal Edac

One more thing: There is no xilsem here... or commit msg is just missing
the main point. This is very confusing or heavily incorrect patch. No
clue which one.

Best regards,
Krzysztof



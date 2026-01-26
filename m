Return-Path: <devicetree+bounces-259336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEAbCRfwdmn5ZAEAu9opvQ
	(envelope-from <devicetree+bounces-259336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 05:39:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAE183EC6
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 05:39:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DEAEA30048FF
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 04:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E74842FE571;
	Mon, 26 Jan 2026 04:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzNblzFi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33CC188CC9;
	Mon, 26 Jan 2026 04:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769402387; cv=none; b=f5cFkt1g59Lae8GyvUvk9DcYDG3bJgsdv5HuWozzSQ8G4TLHW3mdZQlPjMI5ej42KJElnKlOYcrM4afyW/upQ27RWksTnghiE1b7xxMgS1WLiaFcaBBcxNTEd+7aH1tdA8c77P3n+8/jF6JCVJIoEivZ0uf9k1kBkwUo4nY1Wxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769402387; c=relaxed/simple;
	bh=xYL6Y9uJSGiYhZ4mrTgA5hW4bps4rpwFYq7i4yMRqE4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=MBV3nhCboTAvNp49IOaNx90r77bpMiSmkHnrSYrZOOFe2As5yFtjOCl1W4rOZJwEkPy7J4spVw3kblN5mqkertxZJ+cZyp/NeGDrjEJsCvkcViSLnaykiCoHBgq7joQPob1picMRyaoEfJr70b3H3on82WyasPXgLBrffma5XWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzNblzFi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FA16C116C6;
	Mon, 26 Jan 2026 04:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769402387;
	bh=xYL6Y9uJSGiYhZ4mrTgA5hW4bps4rpwFYq7i4yMRqE4=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=lzNblzFiBww6mkOvdpw7X2cUsH8UE49Bv+gdT9at83tBCBDhAHy2/OoN1+ome0RiG
	 CVNxmuLAwDrgs5KMLx3mIWrHJ95SAAA15oMHhHJNUJTxsywvB5LD2WyWcvwhwEJryM
	 kLBth/Co0+aAbIDwuPRKXs+Yx2Pkd/8G78p0JP9gFKzXsak+qqURnCRh6y2MwtVDgc
	 YlDp9brwj7y/kEvSPVHOgbsgnffWATPJnadT/cR7S2lD5ZiI1F1ZKJ1rJQis4/c6Nc
	 Ek/9gf9oYep6ZHDqFGFnQLt+vBXf9Fro4UllIgoN7lmI541szGs9S0gGCtWp9Kvkct
	 vqailsrs7pbAQ==
Message-ID: <68ffeb08-3d02-4fcb-8f53-c06f53c80744@kernel.org>
Date: Sun, 25 Jan 2026 22:39:45 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: altera: Add fallback compatible for
 Stratix 10 SoCDK eMMC variant
Content-Language: en-US
To: tzeyee.ng@altera.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1769398006.git.tzeyee.ng@altera.com>
 <866ca9c14f4c72791acf6ec422af691ff2c6e749.1769398006.git.tzeyee.ng@altera.com>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <866ca9c14f4c72791acf6ec422af691ff2c6e749.1769398006.git.tzeyee.ng@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259336-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5FAE183EC6
X-Rspamd-Action: no action



On 1/25/26 21:45, tzeyee.ng@altera.com wrote:
> From: Ng Tze Yee <tzeyee.ng@altera.com>
> 
> Stratix 10 devkit support a separate eMMC daughter card. Add compatible
> string for the Stratix 10 SoCDK eMMC daughter board with
> "altr,socfpga-stratix10-socdk" as a fallback, since this variant is based
> on the standard SoCDK board.
> 
> Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Please put Acked-by's above your Signed-off-by: and remove the empty 
line between them.

Please refer to Documentation/process/submitting-patches.rst for future 
patch submissions.

Dinh


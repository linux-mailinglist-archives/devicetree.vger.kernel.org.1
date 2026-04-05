Return-Path: <devicetree+bounces-284744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LV8F9sY0mmATQcAu9opvQ
	(envelope-from <devicetree+bounces-284744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Apr 2026 10:10:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EDC39DCFE
	for <lists+devicetree@lfdr.de>; Sun, 05 Apr 2026 10:10:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60A3E300950D
	for <lists+devicetree@lfdr.de>; Sun,  5 Apr 2026 08:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D015736B06C;
	Sun,  5 Apr 2026 08:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGQdgBbm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD6E234CFD6;
	Sun,  5 Apr 2026 08:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775376584; cv=none; b=M0QiiAtSG5Wqn0yX3XD0xf9Eu2HOLpAIaDa2eXnyvZS+hf046Z5gjVlMH/ggblYuoY0MXI49V4Aj7P74vEFI5jPWXMb4SKjnr3zQgzhhz1qHTEmfT6ZqqE3/ESgo91dvOrFnmODZYze40laloCSyCw66Ov6PRtCmjx4+cnAKcrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775376584; c=relaxed/simple;
	bh=tmwI+VqD0Msey8y4xzbIo39Fptd9tbedOvW8qNkYZAY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KUz6O/tX/FDW2libSmxtM6FLY9RQej9l1/u/yXGOpJMQhSir8o5xfzp6YP8dJYlbnxJTNdhlO+xmvFbQ7dI7pdE8Z/Mtk+QV30JaY3LfBKaGPO1ArzEKvwlY7hXIfaEzpJrVSdMPAYmDTT3yfJh7AKe+AJN2z+BSLMzOt7Cvq5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGQdgBbm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8DDDC116C6;
	Sun,  5 Apr 2026 08:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775376584;
	bh=tmwI+VqD0Msey8y4xzbIo39Fptd9tbedOvW8qNkYZAY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GGQdgBbmxN2ecBSt7z+PQHKqlxJyp16EXZ7lvUbvr4ZxxHQ43V3FWb9USUj8Eb9YS
	 i7xU8eND2CQD0I6q8RsU/p7O30XTrPKLHCOjy+bw0Rddh2Qcjg+MOHj/3AEQOMe0Eu
	 K5q6RjAH96cmfuQY5Yc04TAI4ffGG1455YddgPWstLLu5k8luAJu/ndBNX7jTgMdDo
	 CIDu1eSyN0notTHpbdtXiRHXFjfPe77qfaA28orsQrWglZgqp6sJzXUgXG5AO8u4Rw
	 2mAHvMAIrK93/8Voi+vIV0tZWBIQb2VXNWNh1UFdwlrpisWbtIU1AuSwSd9QL7q+D7
	 seteuZPefoE8w==
Date: Sun, 5 Apr 2026 10:09:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Vasut <marex@nabladev.com>
Cc: devicetree@vger.kernel.org, Baojun Xu <baojun.xu@ti.com>, 
	Conor Dooley <conor+dt@kernel.org>, Kevin Lu <kevin-lu@ti.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Shenghao Ding <shenghao-ding@ti.com>, linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: ti,tas2552: Add sound-dai-cells
Message-ID: <20260405-wild-neon-dachshund-80cbd2@quoll>
References: <20260404033709.340026-1-marex@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260404033709.340026-1-marex@nabladev.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284744-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,ti.com,kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E9EDC39DCFE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Apr 04, 2026 at 05:36:56AM +0200, Marek Vasut wrote:
>    For system integration the dt-bindings/sound/tas2552.h header file provides
> @@ -34,6 +34,9 @@ properties:
>      maxItems: 1
>      description: gpio pin to enable/disable the device
>  
> +  '#sound-dai-cells':
> +    const: 0
> +

missing ref to dai-common and unevaluatedProperties.

>  required:
>    - compatible
>    - reg

Best regards,
Krzysztof



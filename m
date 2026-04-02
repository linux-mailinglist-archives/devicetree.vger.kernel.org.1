Return-Path: <devicetree+bounces-283778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDFJL60ZzmlxlAYAu9opvQ
	(envelope-from <devicetree+bounces-283778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 09:24:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FA838518C
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 09:24:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2AAEC31462D6
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 07:17:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B1C5388E58;
	Thu,  2 Apr 2026 07:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fR0JdB4O"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37959362143;
	Thu,  2 Apr 2026 07:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775114264; cv=none; b=RhfqKDOtnT7OzWxT4PFaAVwjNLWUhsKbzlUnPRfK+Q6oENVt/Xfyel2Fcn8COPjIfYmqHWwM20C5jc0186eGrGwKSAjXHb3LVUslriEcuHuBH/tZzZ6PdOHM6hPo5QEVTYR6iudRSmrq5y4LIhVi74sQfbZ6iB/XAQehKpUkGbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775114264; c=relaxed/simple;
	bh=j7EzA/5tsJSk/5VZryXf1o458zlikhC3NnA5f1CNu0A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gRPdiIbme23Hrla3pQhUI2EfZuXIvJ9qMbrXy1Q602kTUoyKz3KRtvblb9NhM2NcMozPpfzoB6U0ThBXdJVyA/G5K1eR+sbv5ca5oorGv26MmIzXeKH9FcCD//4Bqbm37IaM9U9KK2Qbckd3cAamK2mZJNLFRfTHB1cbEwnJfRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fR0JdB4O; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F9B2C2BC9E;
	Thu,  2 Apr 2026 07:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775114263;
	bh=j7EzA/5tsJSk/5VZryXf1o458zlikhC3NnA5f1CNu0A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fR0JdB4OftwER5qUImwAEvuPxvOKQgQv2xAfFX+ullczvUqPguUBnzhUWIRuevcLX
	 z5mz2MLvJZobhfFErbkPqFfNBYoB3NW3CBvxapB5fwrlldtoRjPA2dI4Aw13WAa2sK
	 VQOr5xtGSSD0cg4Ayv1oWdpvX0neSpOjCeTg1kpOUsO57yKCuJT3ToxO7UciM/rOAn
	 BV4ZIxvXnTOllNcCIfYifa78OF2ZkIGKkjuL02Icg1X2iQRuDXGeurUNW66jbmmx15
	 +FZn+ahlcilhQ+VtZRT0OF/Ro0vgeJDKRmhjNNVTyKvma4d/bx13XZFDFThG1m1N1o
	 Esxs7Mko9jWIw==
Date: Thu, 2 Apr 2026 09:17:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Geetha sowjanya <gakula@marvell.com>
Cc: linux-perf-users@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, mark.rutland@arm.com, 
	will@kernel.org, krzk+dt@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: perf: marvell: Document CN20K DDR PMU
Message-ID: <20260402-tentacled-alluring-snail-8c2d7a@quoll>
References: <20260401081640.23740-1-gakula@marvell.com>
 <20260401081640.23740-2-gakula@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260401081640.23740-2-gakula@marvell.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-283778-lists,devicetree=lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[marvell.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 36FA838518C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 01, 2026 at 01:46:39PM +0530, Geetha sowjanya wrote:
> Add a devicetree binding for the Marvell CN20K DDR performance
> monitor block, including the marvell,cn20k-ddr-pmu compatible
> string and the required MMIO reg region.
> 
> Signed-off-by: Geetha sowjanya <gakula@marvell.com>
> ---
>  .../bindings/perf/marvell-cn20k-ddr.yaml      | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/marvell-cn20k-ddr.yaml

I forgot:

Filename must match compatible.

Best regards,
Krzysztof



Return-Path: <devicetree+bounces-271758-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNICDq4YqmlfLAEAu9opvQ
	(envelope-from <devicetree+bounces-271758-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 00:58:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C81FF219932
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 00:58:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A66783055957
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 23:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0388635AC23;
	Thu,  5 Mar 2026 23:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbKmm8QF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22B31C8604;
	Thu,  5 Mar 2026 23:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772755065; cv=none; b=NMaw9ufwljkib86v6nnrPj62+3Mn/4YaF6BnVSTjnWC9sVUwj+OKaIhG+o39JdK+wMxin5QS64I+z0CfI/YWMeghhDm4UOk924veraMAQdcDBs1retMv+GXhMkSp+7OKBWmvlvKSNy3Hh62yD905KQhv81G3TvsUedpwRyhiniU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772755065; c=relaxed/simple;
	bh=tBfpp14m/8Gs3o4AG5PVJFEEzHdY0P9obORwDPPfI80=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GrM5ZPSyMjNw4VRodAbF2aWCVhxqJ5rKojvkQNlNI8Qyg2LRBs2S51Nb6uGNVFg1A3E0hrxvUsRLPU+0+v1IkGghmnaDnejrJVpHXXg9vb18EpOiG/9tXSj1wNe3A97BL7nnE9YoMEI83nNdbCWfmFwUiu+z8eeSzqGi7TqtyvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbKmm8QF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A3B3C116C6;
	Thu,  5 Mar 2026 23:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772755065;
	bh=tBfpp14m/8Gs3o4AG5PVJFEEzHdY0P9obORwDPPfI80=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rbKmm8QFAqCQ7gV2dg+OA5vvi7c1O4NILDmUXJxMT8AB7R8H8hdWv/HrE1jCZ5n/1
	 Bcz7fVAg5t0Rzd3jbRW46VWcLK0ImJMkFUKe8004Gv+ErykX2wgnfLVw23bP1cqWDx
	 Gp3ZnXutHBZSXpT+8nnC6Db17qRRfDoMvJXeC5O6DyHHyQ6/28tJpruTaJX0OTQXS7
	 liSxosrIkdc5T/5F1DQRZgS/lvGInkWCV5u+S+6E3hqBzKwuF+UMeCoBaVIVHwv6lJ
	 K89nrMDPGaXtbbs/kPdSML5HnLFamPWifmiSeFCEcWSNsiaMssBQkO+j8SnWKmH3QX
	 2UlRrHUiwrOXA==
Date: Thu, 5 Mar 2026 17:57:44 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	devicetree@vger.kernel.org, Pavel Machek <pavel@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
	linux-input@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>, linux-leds@vger.kernel.org,
	linux-kernel@vger.kernel.org, Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH v3 6/9] dt-bindings: mfd: motorola-cpcap: convert to DT
 schema
Message-ID: <177275506395.811570.1098915265984970605.robh@kernel.org>
References: <20260223063858.12208-1-clamor95@gmail.com>
 <20260223063858.12208-7-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223063858.12208-7-clamor95@gmail.com>
X-Rspamd-Queue-Id: C81FF219932
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271758-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,gmail.com,vger.kernel.org,kernel.org,atomide.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Mon, 23 Feb 2026 08:38:55 +0200, Svyatoslav Ryhel wrote:
> Convert devicetree bindings for the Motorola CPCAP MFD from TXT to YAML.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../bindings/mfd/motorola,cpcap.yaml          | 411 ++++++++++++++++++
>  .../bindings/mfd/motorola-cpcap.txt           |  78 ----
>  2 files changed, 411 insertions(+), 78 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>



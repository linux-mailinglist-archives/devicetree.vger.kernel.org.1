Return-Path: <devicetree+bounces-271756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHSzD6AXqmlfLAEAu9opvQ
	(envelope-from <devicetree+bounces-271756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 00:54:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 375142198B9
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 00:54:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2FB43300D76B
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 23:54:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA4936922D;
	Thu,  5 Mar 2026 23:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ee47HRT/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4E9369224;
	Thu,  5 Mar 2026 23:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772754842; cv=none; b=TsB6vc87gKK4c81qtkPOzrRhR3aw78CuTzn+DZB86SGSjvDZmrWLTOhzs5V4JxKqatzzbXozpS2yDLLj4IrbeXPs1bWRcljYrF5hIjUpNqF9eZdkDRg9o0vUmqrv9AR70/X8n3dknU/R0ywK+58LdtDGqgdcnn1aYgVgT5nAzZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772754842; c=relaxed/simple;
	bh=3GW0DLJzL7idTf1EI4wFZY+pgAJtLC07kNcuB2s04mA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N+QbYduLfo0VC3DJkRUFQwvR7pJv9zAZ5bumZCHeC1pEaEi2pQgq9lGjajKaNXywrShFbyXYiQEfxGxFnZt4m4lJbpus0/eIjcOz8/CmL+esUnUMCAcBYGNdYwZsfOhZYt5LIVbUNmYK5isHBl1XXoejNFbKDZBP8LqBeyRglSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ee47HRT/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15B8BC116C6;
	Thu,  5 Mar 2026 23:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772754842;
	bh=3GW0DLJzL7idTf1EI4wFZY+pgAJtLC07kNcuB2s04mA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ee47HRT/igVAUE/FK5YOD77jz82RugO6VP6//OfdxSIPDaFN09gFy20rcmwOJ0RRe
	 jGbv61kN8jf+gF4QtRhIUtZ/NpfbSpKuKxSKgy5vm5VmpV3qi/uy9Frh+y5vf4KsDN
	 1DvKzjJ5Bv48ACIKl95aHvctoDAou3ipjImo+Scy/Mj0IUy1BG1Z/Rrpcv1RQ0Qb6e
	 V80DD0BM11uIr0jyibIbwo5sQQ0epqXLbqKma5SLh3O/B2DyF/1H+tCGoGdfQnKrBg
	 03evVF/3ENNCld5sz9SDYvI7cJDt6jTj9eqBLKNi70m/eCkGVivmfwXHvimjfGzy+6
	 MImyMRtbPcX1g==
Date: Thu, 5 Mar 2026 17:54:01 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Simona Vetter <simona@ffwll.ch>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: document Atrix 4G
 and Droid X2 DSI panel
Message-ID: <177275484048.807348.11297712760388672567.robh@kernel.org>
References: <20260223064630.12720-1-clamor95@gmail.com>
 <20260223064630.12720-2-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223064630.12720-2-clamor95@gmail.com>
X-Rspamd-Queue-Id: 375142198B9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271756-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[ffwll.ch,lists.freedesktop.org,vger.kernel.org,linux.intel.com,kernel.org,gmail.com,suse.de,linaro.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Mon, 23 Feb 2026 08:46:29 +0200, Svyatoslav Ryhel wrote:
> Atrix 4G and Droid X2 are based on a board called by Motorola "Mot" and
> use the same 540x960 DSI video mode panel. Exact panel vendor and model
> are unknown hence generic compatible based on board name "Mot" is used.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../display/panel/motorola,mot-panel.yaml     | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/motorola,mot-panel.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>



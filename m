Return-Path: <devicetree+bounces-267578-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0O20KD6VnGnRJQQAu9opvQ
	(envelope-from <devicetree+bounces-267578-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:58:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4686117B306
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:58:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BDCD7300612D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FE9733A6E4;
	Mon, 23 Feb 2026 17:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGm9nGOB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D96433A03A;
	Mon, 23 Feb 2026 17:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771869500; cv=none; b=DMCDDNAAyNI0ZBd/4uueuvP9pDVbr0UCIyJZ+K3soSo2aNRu1BaGOlbjs/Bd8G463BMZSuvRKYfHxJRBGIs12+apOaAvtsPkMqDdohtwCRxCIVoa08s643mOFK04fmX5o7vXiMqESXHdtHiNMQt5TMn8yfOlsYR3xWmXg1XXXXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771869500; c=relaxed/simple;
	bh=7+KA4pvA79fRJqA/rpjt6JxxIEIEtgNQYdzdD8iqzPc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fqu+udon+z4HWG+Ei4wDh3arFRtxsAf9wl9HKHVGNjpHGxQb2uVYj1FDZlL2Yp19r6iUCOiitpSsIucpkVdvQnKuJPB0PYb3gwWNVYbhedkTsDClXSqNNScvsistELGQzBZB09g7C10pZY25loSjvtt12nd0WZ5KUBvSbrDR464=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGm9nGOB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DB60C116C6;
	Mon, 23 Feb 2026 17:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771869499;
	bh=7+KA4pvA79fRJqA/rpjt6JxxIEIEtgNQYdzdD8iqzPc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hGm9nGOBmsnbdVhFBDVHFi0wXAlFnS4cR7WcPJ+txQTqv40F6q24UZQXCcOgT+0Gn
	 +UBVd3VwoBaYQfLLhRejRFr+tPhsVr4u/lLUupzcY8XvrngcUQYx6FIGtROl7YCBeY
	 6080IauCd+l76c5vB2sigIEX0RgE20U/AIoTkEh2baFZtt4DehufFxmwMxQ9XX8chp
	 iltMXNSlmvPYvxbB0CykUVF+0EJlZ7taPVLC93uJDws9q9l2aAPPsJTXnP3VC178YQ
	 EroX9ZY9X7XmSphIXZr/rXqGYOdf0CJpms6xGZgHaSWyj1csmEi2I0RXMOa0Cdzm3H
	 K1mMrz0VshpOg==
Date: Mon, 23 Feb 2026 11:58:18 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: dianders@chromium.org, mani@kernel.org, simona@ffwll.ch,
	conor+dt@kernel.org, dev@kael-k.io, devicetree@vger.kernel.org,
	heiko@sntech.de, dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de, prabhakar.mahadev-lad.rj@bp.renesas.com,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	linux-kernel@vger.kernel.org, neil.armstrong@linaro.org,
	kever.yang@rock-chips.com, krzk+dt@kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: display: panel: Add compatible for
 TAIGUAN XTI05101-01A
Message-ID: <177186949783.4183478.6418421929069094848.robh@kernel.org>
References: <20260214085409.3489057-1-yelangyan@huaqin.corp-partner.google.com>
 <20260214085409.3489057-3-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260214085409.3489057-3-yelangyan@huaqin.corp-partner.google.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267578-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4686117B306
X-Rspamd-Action: no action


On Sat, 14 Feb 2026 16:54:08 +0800, Langyan Ye wrote:
> Add a new compatible for the panel TAIGUAN XTI05101-01A. This panel uses
> JD9365DA-H3 IC, so add the compatible to the jd9365da-h3 binding files.
> 
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>



Return-Path: <devicetree+bounces-297701-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFf6DBLxBWq3dgIAu9opvQ
	(envelope-from <devicetree+bounces-297701-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:58:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9550854460D
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:58:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20E3530131EF
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 15:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6D513F411C;
	Thu, 14 May 2026 15:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmGtiR+w"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A6122CBD9;
	Thu, 14 May 2026 15:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778774042; cv=none; b=G56hfIB3pnNrXy+3soYYFCrvFprGoexcdthxyui/v3GUySIAF4qPctwK6G2SEee2L9mffy++CRCVot6eNCaGtvNA0HFHM5XBmVCFf6wxPX7NN0BDnPe9dZiNe3krcUoV2wq4nXiNqosXQ4o6CRwE2KVmqbbPx9qSDlpO+yhf4Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778774042; c=relaxed/simple;
	bh=bIW7LtaChhz4AEZBim0S+LH+kJwuuAC8M+hMs+g+X40=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tb8Sh390Tu2r89Do2i0miWudo+oBiExJf3zQ7TMQnmk8AnT+UtSn+gOKI1i2fkA3/rAJZlR5cEEuy3C+1iYlfPfmTES1fWVuxUSJfZ2MHU3t75sZ8CuWnkjcFDWbncYzWQsTYxZrf/HC6oRfLCwWylqfuq0snY8AMjN1OtHXPfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmGtiR+w; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3047C2BCB3;
	Thu, 14 May 2026 15:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778774042;
	bh=bIW7LtaChhz4AEZBim0S+LH+kJwuuAC8M+hMs+g+X40=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hmGtiR+wxNbd30cOB2ZjS5GXZzhcJ64wdr2zdCWrZ4d2EjX6M2yX3ehT1Qp1Vzm4i
	 g9n4YeN1YOTZjg790iG91qN/iPudpfe3yPqQTkJv9nuut5Rurf7RPRURvSYZLmHDHn
	 DOYRGh1k1u0WyU88o+qZGtBcLztv/y283rQnlsOnTvrQHRtRocukSjvdUt8fV9AhHx
	 M2/Q2qrvQ1RdgTayP6QYQCI9MJvgkPsWJ7Fv/bRDAUEp842XJgckJTZQ6jEA7evsPI
	 m4iIzydvBTyz4ixvjkDnbUmzSOFa8Cq3cNRTm/kjTrHyqToAnDJi6/Ra6HLFsJWgr6
	 V/joviEzrjk/g==
Date: Thu, 14 May 2026 10:53:58 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Manish Baing <manishbaing2789@gmail.com>
Cc: s.trumtrar@pengutronix.de, devicetree@vger.kernel.org,
	yilun.xu@intel.com, trix@redhat.com, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-fpga@vger.kernel.org,
	krzk+dt@kernel.org, mdf@kernel.org
Subject: Re: [PATCH v2] dt-bindings: fpga: altr,socfpga-fpga-mgr: convert to
 DT schema
Message-ID: <177877399996.840047.5687994834400196062.robh@kernel.org>
References: <20260512182033.66222-1-manishbaing2789@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260512182033.66222-1-manishbaing2789@gmail.com>
X-Rspamd-Queue-Id: 9550854460D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297701-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


On Tue, 12 May 2026 18:20:33 +0000, Manish Baing wrote:
> Convert the Altera SoCFPGA FPGA Manager bindings from text
> format to YAML schema.
> 
> Signed-off-by: Manish Baing <manishbaing2789@gmail.com>
> ---
> Changes in v2:
> - Removed Rob Herring from the maintainers list as per Conor's feedback.
> 
>  .../bindings/fpga/altera-socfpga-fpga-mgr.txt | 17 ---------
>  .../bindings/fpga/altr,socfpga-fpga-mgr.yaml  | 38 +++++++++++++++++++
>  2 files changed, 38 insertions(+), 17 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/fpga/altera-socfpga-fpga-mgr.txt
>  create mode 100644 Documentation/devicetree/bindings/fpga/altr,socfpga-fpga-mgr.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>



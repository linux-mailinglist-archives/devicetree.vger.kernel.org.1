Return-Path: <devicetree+bounces-264167-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id TQv6Fsp6imnJKwAAu9opvQ
	(envelope-from <devicetree+bounces-264167-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 01:24:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF8A115960
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 01:24:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71FA0301AF41
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 00:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63487202F71;
	Tue, 10 Feb 2026 00:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YE6/vob6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2AD7262A;
	Tue, 10 Feb 2026 00:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770683078; cv=none; b=s//1PU3uj2cXXRdDptT3wKz0T7GXuOQgEpgUhXor3cQieGmgtkIDT89w7nNb2w0mnlvEPN75B1A4GE/as1Lu1+GISP0OAQRWYU1t0Fk5hph0X7wXLrMZXLgIVQdyHNbiqfvoAiJCWEdpcgub+qNou8irrMUfF9Zo0TMTm81IxzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770683078; c=relaxed/simple;
	bh=kYDsdy95DgJsymUtNlgSQCwbWq5XH6lAUToKBGJfySI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i9ZS9TD9UwygWiP8zb6aipNO7bqNwmPonxohbxSdwZWb/wc7kxeAn2PvhshqO9CuvHm0gHZeYnlX9UtdODOmdvQoG6kdgFY+5uOEX/aiandq3C5WT+V8xCkoYWD1XGCdouBGYR+uMc3yTOkUeIC/6HrccNYcTSYk7//ft6dcrA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YE6/vob6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6702C116C6;
	Tue, 10 Feb 2026 00:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770683077;
	bh=kYDsdy95DgJsymUtNlgSQCwbWq5XH6lAUToKBGJfySI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YE6/vob6Z096raVqRG1E+7JJ+EEUXybPXLWgT04SvE97iSarnH5osCkfGopc7q1eG
	 yoLG33SNgafdaD9sWZNT0S67/sD5DO0udIrqSrhbERLgEpkuQNkoc00vhOTxYq5Gri
	 fWLKct7Bj0RSQFOEROwal/SvRSZ9oqkr0bhYsf4GguMIuOiZkP0+9zPnD078NCgEpW
	 qbwYBdXd7uoDF3Qm74Pt7wexrxIc8OC1KSRlQmc9zRtFS/sAsqKOrEoorLHZBplb6h
	 sbfNUKS19qARxUWB2b3K8nAiJ79531BnOLdMv2/dzKfPvQJ/dvyWFgaVMit1NKAlIN
	 3yh7Ojf/pEiIA==
Date: Mon, 9 Feb 2026 18:24:36 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sean Anderson <sean.anderson@linux.dev>
Cc: Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/8] dt-bindings: pci: xilinx-nwl: Add resets
Message-ID: <177068307621.2186902.1439727413310059254.robh@kernel.org>
References: <20260203002128.935842-1-sean.anderson@linux.dev>
 <20260203002128.935842-2-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260203002128.935842-2-sean.anderson@linux.dev>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-264167-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 8BF8A115960
X-Rspamd-Action: no action


On Mon, 02 Feb 2026 19:21:21 -0500, Sean Anderson wrote:
> Add resets so we can hold the bridge in reset while we perform phy
> calibration.
> 
> Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
> ---
> 
>  .../devicetree/bindings/pci/xlnx,nwl-pcie.yaml  | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>



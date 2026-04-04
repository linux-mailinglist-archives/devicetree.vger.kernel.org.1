Return-Path: <devicetree+bounces-284602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6qkjJ3mC0Gl58QYAu9opvQ
	(envelope-from <devicetree+bounces-284602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Apr 2026 05:16:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6335399B26
	for <lists+devicetree@lfdr.de>; Sat, 04 Apr 2026 05:16:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6611D302F727
	for <lists+devicetree@lfdr.de>; Sat,  4 Apr 2026 03:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 911AA3168E1;
	Sat,  4 Apr 2026 03:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2odijld"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB0B1C84DE;
	Sat,  4 Apr 2026 03:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775272566; cv=none; b=g/lT/bfDlHR4Cc/RdhLzWCrFL11JPnsZXz9Bna27A5ABsb2OKjGPFyg/09C6f0/HKtOg14ua5wgJKJQpaUeU+B/QAYXgsAVcyX9oWv79+6NCKrU+StO4qxcs0kgDgH0/8NtZSs/HzcTLY7lc7NpevDvYpie81bMy+2rzH5U7c0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775272566; c=relaxed/simple;
	bh=OiA/EBiA4K4f20ZyYpTH5r9/Q39LqAb3VffWQuH4Eso=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZNfCf+1SlwIiK9V7iLRTMD3su1/BSL/nI3gWuLBVvd8rJ4Bqrjbl9x7DAqZXUi/zSbJfnHKPu1u9DwutQ/fT18G8sIoBP/e63+3QyZOaE5WcqVe7n0VPEh4x/KBCUW3t1NvGd6CK9HzwjbdT5fkMArT6vYmwNMPBflWymT1eeug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2odijld; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78915C4CEF7;
	Sat,  4 Apr 2026 03:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775272565;
	bh=OiA/EBiA4K4f20ZyYpTH5r9/Q39LqAb3VffWQuH4Eso=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I2odijldKRSXMKo82KQ4jvLQMRFRbMeTHsNQpO+DxWFaDFNEle/K/QX8raBqNLTr1
	 OEGAskf7B3vQDbGLz4jTTidoIeyF9QjeurdVpTOFnuFuxdLPInK21Ng9V3pmPb7fIa
	 GqPuj+CXYy30WLrhuv+bqySLqmsxPCZegYbdOIDgEi4bHG2TKQjYMSckqj13gG62C9
	 sWpZ4qEsOT4ObMuHhfhTb1Qv5g0C1E6X3W2lKYObOnXfZvXA6dwcwY1+hivt6maoc8
	 AthMfNPCWIAwMDExdkaXpIpSKgNR2WUY8hdGEYanaRqQxjHl0zuewFIR1QJXvgyLVc
	 tkeaTLgeFkghA==
Date: Sat, 4 Apr 2026 08:45:52 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sai Krishna Musham <sai.krishna.musham@amd.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, cassel@kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	michal.simek@amd.com, bharat.kumar.gogada@amd.com, thippeswamy.havalige@amd.com
Subject: Re: [PATCH 2/2] PCI: amd-mdb: Add amd,versal2-cpm6-host compatible
Message-ID: <iruxyxjoaozkt5xigchqnqvik5blbxxy7vubmadtcn5jyjnwzn@lvdnttblbx3f>
References: <20260402180006.486229-1-sai.krishna.musham@amd.com>
 <20260402180006.486229-3-sai.krishna.musham@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260402180006.486229-3-sai.krishna.musham@amd.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-284602-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D6335399B26
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 11:30:06PM +0530, Sai Krishna Musham wrote:
> Add "amd,versal2-cpm6-host" to the OF match table of the AMD MDB PCIe
> host controller driver.
> 
> The Versal2 CPM6 host controller is DesignWare-based and supports
> PCIe Gen6 operation at up to 64 GT/s per lane. It is currently
> handled by the same driver and match data (NULL) as the existing
> MDB host controller, but CPM6 uses a newer IP revision and differs
> in legacy INTx register offsets.
> 
> Use a separate compatible to allow CPM6-specific handling once legacy
> interrupt support is validated.
> 
> Signed-off-by: Sai Krishna Musham <sai.krishna.musham@amd.com>
> ---
>  drivers/pci/controller/dwc/pcie-amd-mdb.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-amd-mdb.c b/drivers/pci/controller/dwc/pcie-amd-mdb.c
> index 3c6e837465bb..325bf7aad657 100644
> --- a/drivers/pci/controller/dwc/pcie-amd-mdb.c
> +++ b/drivers/pci/controller/dwc/pcie-amd-mdb.c
> @@ -511,6 +511,9 @@ static const struct of_device_id amd_mdb_pcie_of_match[] = {
>  	{
>  		.compatible = "amd,versal2-mdb-host",
>  	},
> +	{
> +		.compatible = "amd,versal2-cpm6-host",

As Krzysztof commented, if the PCIe IP is compatible with an older version,
'amd,versal2-mdb-host' in this case, you don't need to add the new compatible
to the driver. Just document the new one with fallback to the old compatible in
the binding and let the driver work with the old compatible.

- Mani

-- 
மணிவண்ணன் சதாசிவம்


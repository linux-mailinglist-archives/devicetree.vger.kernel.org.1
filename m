Return-Path: <devicetree+bounces-294621-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBKLLYEp/mngnQAAu9opvQ
	(envelope-from <devicetree+bounces-294621-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 20:20:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B06E4FA853
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 20:20:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 004313042C57
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 18:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD3BC3CBE9A;
	Fri,  8 May 2026 18:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zme2SPDe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AFD233D6F9
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 18:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778264427; cv=none; b=nM+B45tGudYTXUVStY2YtUsYQ+A/wBM1pkLEI4zPRihgZtbRhrwLw7tRwnMvn5KvDNp47Sj1cdOGpvD6U+cVaZV/mzNiJ0zOEj5mfIVwjBe+pYM+9RwqDoBJD1qWQTwdVXAtN6TAB4qtoyhMv7e2a1S3rVpXNVkzPBIXLuGZxxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778264427; c=relaxed/simple;
	bh=0sPNk1D/Cl//7Qg1VJNJPRMkDd8b+Pxeiu4w+PskwlE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nu4f+clSyxlLVIztonxzoX154Fg7TXyDpu6m3e9Wa7+cuikWW2BFglghX3TAO6lK9LEBjNNkFeg2fGutpQKWLsx7tgWcGzVJNAa80O4+kLLXkpcQYStSLFcLdiGxfuThCpoyBNS0nzjPlQ0PrLuAwOk/X+MsleaYCxH8fRfS4qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zme2SPDe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F833C2BCB0;
	Fri,  8 May 2026 18:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778264427;
	bh=0sPNk1D/Cl//7Qg1VJNJPRMkDd8b+Pxeiu4w+PskwlE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Zme2SPDeydly5dEPQMj8gGpUNGMSSfXg3ilOHRge+wUb1RHiUKzoJWEtHc4KPBMPU
	 9RNJi+C/VyNcmPuFU3wRHlQVEBzIf+kbQIXthKTQYui61s/rJRRgReuk/sOiLMlYbJ
	 0bcNEX5zUD0W5n2F7gS01o+1bl74pfo804C1dbS70XhWhfo4DgbjAMA9yp3fmmf3id
	 LbbuukSuM0BNwjH7x9q1DOrujKz4kQGOdTHSoQGDB6n3skvs6ys8z8T/XSK3m5xJIr
	 mV0WpnNHFiZEnrma53phTLsn5EICb5FqUOmWaSZgWYQWf2H03GR5dJRDzxnh9AL/DZ
	 9/FPO8pdbQuiA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 6/8] Bluetooth: hci_sync: Add NVMEM-backed BD address
 retrieval
Reply-To: sashiko@lists.linux.dev
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260507-block-as-nvmem-v2-6-bf17edd5134e@oss.qualcomm.com>
References: <20260507-block-as-nvmem-v2-6-bf17edd5134e@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 18:20:26 +0000
Message-Id: <20260508182027.1F833C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 7B06E4FA853
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294621-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Retrieval of NVMEM data during `hci_dev_setup_sync()` bypasses the=
 probe deferral mechanism and ignores errors, causing silent initialization=
 failures.
--

commit 543fb62fd4ba7de331b6ec2a7642078d5eebdac4
Author: Loic Poulain <loic.poulain@oss.qualcomm.com>

Bluetooth: hci_sync: Add NVMEM-backed BD address retrieval

This commit adds support for retrieving the Bluetooth BD address from an
NVMEM cell using the NVMEM framework. It introduces quirks to indicate when
the address should be read from NVMEM and whether the address is stored in
big-endian byte order.

> diff --git a/net/bluetooth/hci_sync.c b/net/bluetooth/hci_sync.c
> index fd3aacdea512a..589ccdfa26c12 100644
> --- a/net/bluetooth/hci_sync.c
> +++ b/net/bluetooth/hci_sync.c
[ ... ]
> @@ -3588,6 +3589,37 @@ int hci_powered_update_sync(struct hci_dev *hdev)
>  	return 0;
>  }
> =20
> +/**
> + * hci_dev_get_bd_addr_from_nvmem - Get the Bluetooth Device Address
[ ... ]
> +static int hci_dev_get_bd_addr_from_nvmem(struct hci_dev *hdev)
> +{
> +	struct device_node *np =3D dev_of_node(hdev->dev.parent);
> +	u8 ba[sizeof(bdaddr_t)];
> +	int err;
> +
> +	if (!np)
> +		return -ENODEV;
> +
> +	err =3D of_get_nvmem_eui48(np, "local-bd-address", ba);
> +	if (err)
> +		return err;
> +
> +	if (hci_test_quirk(hdev, HCI_QUIRK_BDADDR_NVMEM_BE))
> +		baswap(&hdev->public_addr, (bdaddr_t *)ba);
> +	else
> +		bacpy(&hdev->public_addr, (bdaddr_t *)ba);
> +
> +	return 0;
> +}
[ ... ]
> @@ -5042,12 +5074,17 @@ static int hci_dev_setup_sync(struct hci_dev *hde=
v)
[ ... ]
>  		if (hci_test_quirk(hdev, HCI_QUIRK_USE_BDADDR_PROPERTY) &&
>  		    !bacmp(&hdev->public_addr, BDADDR_ANY))
>  			hci_dev_get_bd_addr_from_property(hdev);
> =20
> +		if (hci_test_quirk(hdev, HCI_QUIRK_USE_BDADDR_NVMEM) &&
> +		    !bacmp(&hdev->public_addr, BDADDR_ANY))
> +			hci_dev_get_bd_addr_from_nvmem(hdev);

Are errors from reading the NVMEM cell intentionally ignored here?

If of_get_nvmem_eui48() fails, the error is lost and the controller might
be initialized with an all-zero BD address.

Also, if the NVMEM provider is not yet probed, of_get_nvmem_eui48() will
return -EPROBE_DEFER. Because this is called from hci_dev_setup_sync()
rather than the transport driver's probe path, will this bypass the kernel's
probe deferral mechanism?

Could this leave the device stuck in the HCI_UNCONFIGURED state instead of
retrying later? To properly support probe deferral, should NVMEM resources
be queried in the transport driver's probe function before
hci_register_dev() is called?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260507-block-as-n=
vmem-v2-0-bf17edd5134e@oss.qualcomm.com?part=3D6


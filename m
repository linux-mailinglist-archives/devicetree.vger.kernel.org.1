Return-Path: <devicetree+bounces-319467-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wZzlJN2LRmpEYQsAu9opvQ
	(envelope-from <devicetree+bounces-319467-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 18:03:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E10C26F9DE2
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 18:03:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Vh2RQhXE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319467-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319467-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 977ED30864D8
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 16:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47D4A30BF69;
	Thu,  2 Jul 2026 16:01:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246CA30C368
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 16:01:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783008091; cv=none; b=vFRMDy5zYGs1olblbBUEHJGXiE065gbVTmH0U+MbP+G8e+nQ+dXrxhQUmTHN5VvdNeuKEj18GZhsW+nSToC9PdmDwinBMJM/M4/mCxoJCL0wf0fv1YJJ6aPq8jhP6t5yKYaY5eTxVem3wfg+aPlCdcIauYuGj5nw1uVh+A4KI1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783008091; c=relaxed/simple;
	bh=qGA4M8l5ZCVd40chcDWiFwpxRfiZfKcjDfCRB9Mfv08=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BtyjKkrdVaVK0Nmc9MLIm5mdS6K+4Wuk22RlgW8fs0KiJEFV/NXwriXzK8BzEY3z0ellvXjqljtO/3zxICaGHSwBCN1O4sSpNj9dYfeFUDdluCtB90F6bSOp+CwUlg9nACZlWB7BQ+1I0fXIB2eH7UfpL52Oabhzlva9SJffM6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vh2RQhXE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BDFB1F00A3D;
	Thu,  2 Jul 2026 16:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783008089;
	bh=b7K6Chf/HOxl6nAQ+4BlRwBPOabCj5sXtBJCqkt5yas=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Vh2RQhXEZvTsk1wSkSqVi/HtvvA8tUopIW24Ww249IfF1oVcRyYX8pnJOJckzJJng
	 a3ej4Jn8X9sw5SlMFlZ1gpjjxLXc98SEz5OKupPhimXmFrGTL720Pj/OcyjZ43tGjt
	 ETTYRhdkrTgBnM4KYb7QrSlb3JtSODdw53r5d/15O5c6IRdZ2+QazYPDrze0TUe0R7
	 jsmJ8uMBS1TaPVEuu3ZnQ15wGfTMzy0Lj+sd9q4Q0cwjYdwITlTV9AYvhe02CGZt0K
	 KqSz/DQxHK4bLdry6qVyF64ek3c1QiOn99LJGySEfraKtf48Dg4PuASNn4EoKnxO/D
	 jOkKgIb8Ws1cQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 8/9] Bluetooth: qca: Set NVMEM BD address quirks when
 address is invalid
Reply-To: sashiko-reviews@lists.linux.dev
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260701-block-as-nvmem-v7-8-3fe8205ef0a8@oss.qualcomm.com>
References: <20260701-block-as-nvmem-v7-0-3fe8205ef0a8@oss.qualcomm.com>
 <20260701-block-as-nvmem-v7-8-3fe8205ef0a8@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 16:01:28 +0000
Message-Id: <20260702160129.7BDFB1F00A3D@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319467-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:loic.poulain@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E10C26F9DE2

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] NVMEM BD_ADDR retrieval does not reject the unprogrammed flash sta=
te (BDADDR_NONE / FF:FF:FF:FF:FF:FF).
- [Medium] is_configured() and get_missing_options() fail to consider HCI_Q=
UIRK_USE_BDADDR_NVMEM when determining if a device is configured.
--

commit 9ecd7dcbdb800bbe76edbfcc8d48e97314e0cafb
Author: Loic Poulain <loic.poulain@oss.qualcomm.com>

Bluetooth: qca: Set NVMEM BD address quirks when address is invalid
   =20
When the controller BD address is invalid (zero or default),
set the NVMEM quirks to allow retrieving the address from a
'local-bd-address' NVMEM cell. The BD address is often stored
alongside the WiFi MAC address in big-endian format, so also
set the big-endian quirk.

> diff --git a/drivers/bluetooth/btqca.c b/drivers/bluetooth/btqca.c
> index 04ebe290bc784..06cb787b0559f 100644
> --- a/drivers/bluetooth/btqca.c
> +++ b/drivers/bluetooth/btqca.c
> @@ -723,8 +723,11 @@ static int qca_check_bdaddr(struct hci_dev *hdev, co=
nst struct qca_fw_config *co
>  	}
> =20
>  	bda =3D (struct hci_rp_read_bd_addr *)skb->data;
> -	if (!bacmp(&bda->bdaddr, &config->bdaddr))
> +	if (!bacmp(&bda->bdaddr, &config->bdaddr)) {
>  		hci_set_quirk(hdev, HCI_QUIRK_USE_BDADDR_PROPERTY);
> +		hci_set_quirk(hdev, HCI_QUIRK_USE_BDADDR_NVMEM);

[Severity: High]
Does this safely handle devices with an unprogrammed NVMEM cell?

If a device has an unprogrammed flash state (BDADDR_NONE or FF:FF:FF:FF:FF:=
FF),
of_get_nvmem_eui48() will retrieve it without rejecting it, because it only
checks for all-zeroes:

net/core/of_net.c:of_get_nvmem_eui48() {
	if (len !=3D ETH_ALEN || !memchr_inv(eui48, 0, ETH_ALEN)) {
		kfree(eui48);
		return -EINVAL;
	}
...

Then hci_dev_get_bd_addr_from_nvmem() will assign this to hdev->public_addr
without checking against BDADDR_NONE:

net/bluetooth/hci_sync.c:hci_dev_get_bd_addr_from_nvmem() {
	err =3D of_get_nvmem_eui48(np, "local-bd-address", ba);
	if (err)
		return err;

	if (hci_test_quirk(hdev, HCI_QUIRK_BDADDR_NVMEM_BE))
		baswap(&hdev->public_addr, (bdaddr_t *)ba);
	else
		bacpy(&hdev->public_addr, (bdaddr_t *)ba);
...

Could this result in multiple devices on the network being initialized with=
 a
broadcast Bluetooth address instead of being marked as unconfigured?

[Severity: Medium]
Will this quirk be properly evaluated when determining if the device is
configured?

Currently, the core logic in net/bluetooth/mgmt.c:is_configured() only chec=
ks
for HCI_QUIRK_INVALID_BDADDR and HCI_QUIRK_USE_BDADDR_PROPERTY:

	if ((hci_test_quirk(hdev, HCI_QUIRK_INVALID_BDADDR) ||
	     hci_test_quirk(hdev, HCI_QUIRK_USE_BDADDR_PROPERTY)) &&
	    !bacmp(&hdev->public_addr, BDADDR_ANY))
		return false;

Similarly, net/bluetooth/mgmt.c:get_missing_options() omits
HCI_QUIRK_USE_BDADDR_NVMEM:

	if ((hci_test_quirk(hdev, HCI_QUIRK_INVALID_BDADDR) ||
	     hci_test_quirk(hdev, HCI_QUIRK_USE_BDADDR_PROPERTY)) &&
	    !bacmp(&hdev->public_addr, BDADDR_ANY))
		options |=3D MGMT_OPTION_PUBLIC_ADDRESS;

While the driver sets both HCI_QUIRK_USE_BDADDR_PROPERTY and
HCI_QUIRK_USE_BDADDR_NVMEM here, does the core logic need an update to hand=
le
HCI_QUIRK_USE_BDADDR_NVMEM independently?

> +		hci_set_quirk(hdev, HCI_QUIRK_BDADDR_NVMEM_BE);
> +	}
> =20
>  	kfree_skb(skb);
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-block-as-n=
vmem-v7-0-3fe8205ef0a8@oss.qualcomm.com?part=3D8


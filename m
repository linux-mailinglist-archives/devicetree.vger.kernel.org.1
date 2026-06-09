Return-Path: <devicetree+bounces-308955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ctvHGmDxJ2of6AIAu9opvQ
	(envelope-from <devicetree+bounces-308955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:56:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F2865F2E2
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:56:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bKgOy5Ae;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308955-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308955-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3155630EE3AA
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 10:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6749A3F99ED;
	Tue,  9 Jun 2026 10:51:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588783F9A1F
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 10:51:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781002280; cv=none; b=SxJv1Pw6x6zwMfNJCvDZgOxdFu8+LZ2W6AFSduLlYvFcB3WkuNlkhP1PZBFRftRmJgJvDxVt0ssdLYQDMOGljobRCeMwm+mWcl96LR9klNO1gr0wL/VM+xVApUcv2QKOyuddU2/VIG0CRmCCgi0k+DcECmolaIvPSbEbNhOu3RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781002280; c=relaxed/simple;
	bh=+BldebRc4dteebf7RO5mEidFyYDbeKt1DjBOMI3oLuk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MzfTVLHwWZ1rGrJoBRYECEMnvgxLK1uHbG+YChBzGxo792QnLFwVIgVfmGOR3PA2GiNK+K/CmgDUEOGMy7/cD2jeJ77IxBkh6gLe1b5hHkTLrlxtDcQaK4oV6ct6q62nuFvZHmBBmCxTzvywlCya8z2WuQg70jeOJZqGD98rRrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKgOy5Ae; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94EA21F00898;
	Tue,  9 Jun 2026 10:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781002278;
	bh=cVN0GqlNui9MDP9m/2jeDnHCymzYNhxDl/buXV6Iwk4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bKgOy5AeLST4JNOEJ/3ie/U9BrN2HX3317IvpbTpBN8Lqy3iK60OBV+il7B9zolxv
	 baiwnfmmskosbeyInfehP6oLvLZ5pDhqLBf3UyX2NUvH5F2hNXXU5BibSHp9K5DuhM
	 7i+sbqPTVHyPrXdjxWvT7uMYIstI67BLJ8DglTs2UaZXfYbFlIyFPgLHDi8eoIXX5I
	 g9aay32qNfy77O8SBbbJ77SM1o1kn1oIqTEq08ZSZ8J9G47X8xSNs0WEasYd2I3Ihq
	 yG8Xvx3P3x0PwTQopbiFeSpsSqqmCfmPi7rEKZeSXCKKX3j/iJIWc6JDYvV3cXDpjN
	 2H3D//IE2QNXg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 7/7] Bluetooth: qca: Set NVMEM BD address quirks when
 address is invalid
Reply-To: sashiko-reviews@lists.linux.dev
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260608-block-as-nvmem-v3-7-82681f50aa35@oss.qualcomm.com>
References: <20260608-block-as-nvmem-v3-7-82681f50aa35@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 10:51:18 +0000
Message-Id: <20260609105118.94EA21F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308955-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:loic.poulain@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,qualcomm.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D2F2865F2E2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Silently ignoring -EPROBE_DEFER when fetching the NVMEM BD address=
 leads to a boot-time race condition.
--

commit 11d2d539f650246c72131a488fa018ce70494c2f
Author: Loic Poulain <loic.poulain@oss.qualcomm.com>

Bluetooth: qca: Set NVMEM BD address quirks when address is invalid

This patch adds NVMEM cell descriptions for the BD address in the device
tree and updates the QCA Bluetooth driver to set NVMEM quirks when an
invalid default address is detected, allowing the core to fetch it.

[ ... ]
> diff --git a/drivers/bluetooth/btqca.c b/drivers/bluetooth/btqca.c
> index dda76365726f0..df33eacfd29fa 100644
> --- a/drivers/bluetooth/btqca.c
> +++ b/drivers/bluetooth/btqca.c
> @@ -721,8 +721,11 @@ static int qca_check_bdaddr(struct hci_dev *hdev, co=
nst struct qca_fw_config *co
>  	}
> =20
>  	bda =3D (struct hci_rp_read_bd_addr *)skb->data;
> -	if (!bacmp(&bda->bdaddr, &config->bdaddr))
> +	if (!bacmp(&bda->bdaddr, &config->bdaddr)) {
>  		hci_set_quirk(hdev, HCI_QUIRK_USE_BDADDR_PROPERTY);
> +		hci_set_quirk(hdev, HCI_QUIRK_USE_BDADDR_NVMEM);

[Severity: High]
Does setting this quirk silently ignore deferred probes and leave the
device unconfigured?

By setting HCI_QUIRK_USE_BDADDR_NVMEM, the NVMEM lookup is deferred to
the asynchronous power-on workqueue.

If the NVMEM provider hasn't registered the cell yet,
hci_dev_get_bd_addr_from_nvmem() returns -EPROBE_DEFER. Looking at the
core code, the return value is entirely ignored:

net/bluetooth/hci_sync.c:hci_dev_setup_sync() {
        ...
        if (hci_test_quirk(hdev, HCI_QUIRK_USE_BDADDR_NVMEM) &&
            !bacmp(&hdev->public_addr, BDADDR_ANY))
                hci_dev_get_bd_addr_from_nvmem(hdev);
        ...
}

Because this happens asynchronously instead of in qca_serdev_probe(),
the driver core cannot properly defer the probe.

While fw_devlink is present, partition scanning and NVMEM cell
registration for block partitions (like the mmc-card supplier
added in the dts changes) happen asynchronously after the block
driver binds.

Will this cause the Bluetooth driver to randomly fail initialization if
it probes before the NVMEM cell is fully registered?

> +		hci_set_quirk(hdev, HCI_QUIRK_BDADDR_NVMEM_BE);
> +	}
> =20
>  	kfree_skb(skb);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608-block-as-n=
vmem-v3-0-82681f50aa35@oss.qualcomm.com?part=3D7


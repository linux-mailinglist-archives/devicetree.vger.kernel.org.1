Return-Path: <devicetree+bounces-323520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id L8RVMIBqT2pXgQIAu9opvQ
	(envelope-from <devicetree+bounces-323520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:31:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B81C72EF90
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:31:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QeFyZm5S;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323520-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323520-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13D733182BF4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 09:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDFA84028E9;
	Thu,  9 Jul 2026 09:19:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA5BB400E18
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 09:19:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783588761; cv=none; b=t3l+ZxPV1huwd0/JwW9T4NdJynS29iEmtM8wWIxfpLgZ1UI5vWHYhKUyoN8dpPGUPi8Ng++QnKxy+8X6tm9Glk4p60b1Cy+j5esEfeu+HvbLpM7XyZgY3WpP2gimFSZV7LhwZ1tGSTSdAMkAh+f+U7bAOX3FKFqGOG2fGhhOU8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783588761; c=relaxed/simple;
	bh=63Gel5F/sgkZ7tnHtBh2dSmDKcJpyJtSP+0XhdDsJbU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=J2LF3PCLHmGCXC8cAjiXwB6XsyiHwuuywxmK2MYGZ8aj5azsXspBaSlaObftY0uEZttP374XQflyImKlK6syRksNGiqbDTU5ZNE1gQC7/vYGPmvpHDmgCzFgB2RuewluyflkrJZQS/BYHohhXn3LIexk01STtA1tD/IJ6eEqORc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeFyZm5S; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 390B11F00A3D;
	Thu,  9 Jul 2026 09:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783588760;
	bh=rJk+2bj8kYCZa7LVHtU5zcUWhQv8qrKoDAUPqo+/1+c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QeFyZm5SAWwVUn5wagaMmtwkt1qPaQv2gdUq4cmmYtK/eV8OZIZimrT6677PhNgFe
	 ZIeIAc2TaLfDMMSdamSergGxKqxPyz5TjfPEr/tREnvONR6m8uJTr4Woch0kJnyf2Z
	 BBaH+YJSDyoXY76/WZEieaoXmBBHyP7hOImsCKbtLE9oJ+JTEBIkoYvBorX7GMbTgp
	 SBJQd5mCawKWuoL//1CAQrZHWgKST1CvC+WXXh+l+/lUx6uQbiU1ACgVpmTIMre9fU
	 83WXMeLi6l58/bUjoMb9do4G6DwtoN9k8EYEklUkod0VAXuCMiMzc6+qaeTX7S86/4
	 gWSvcWnN/8SgQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v9 9/9] net: dsa: lan9645x: add port statistics
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?SmVucyBFbWlsIFNjaHVseiDDmHN0ZXJnYWFyZA==?= <jensemil.schulzostergaard@microchip.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-dsa_lan9645x_switch_driver_base-v9-9-0d1512a326d7@microchip.com>
References: <20260708-dsa_lan9645x_switch_driver_base-v9-0-0d1512a326d7@microchip.com>
 <20260708-dsa_lan9645x_switch_driver_base-v9-9-0d1512a326d7@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 09:19:19 +0000
Message-Id: <20260709091920.390B11F00A3D@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-323520-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jensemil.schulzostergaard@microchip.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,microchip.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B81C72EF90

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Potential spinlock deadlock due to using `spin_lock()` instead of =
`spin_lock_bh()` for `sw_lock`, which is shared between process context and=
 SoftIRQ context.
--

--- Patch [9]: [PATCH net-next v9 9/9] net: dsa: lan9645x: add port statist=
ics ---
commit 3c87269564235dbc14761981f5b167363d8b2671
Author: Jens Emil Schulz =C3=98stergaard <jensemil.schulzostergaard@microch=
ip.com>
net: dsa: lan9645x: add port statistics

Add statistics support for the port counters. The driver maintains a 64-bit
software cache and updates it frequently from a delayed work item to handle
hardware overflows.

> diff --git a/drivers/net/dsa/microchip/lan9645x/lan9645x_stats.c b/driver=
s/net/dsa/microchip/lan9645x/lan9645x_stats.c
> new file mode 100644
> index 0000000000000..e38f510eb8f66
> --- /dev/null
> +++ b/drivers/net/dsa/microchip/lan9645x/lan9645x_stats.c
> @@ -0,0 +1,929 @@
[ ... ]
> +static void __lan9645x_stats_view_idx_update(struct lan9645x *lan9645x,
> +					     enum lan9645x_view_stat_type vtype,
> +					     int idx)
> +{
> +	struct lan9645x_stats *s =3D lan9645x->stats;
> +
> +	lockdep_assert_held(&s->hw_lock);
> +
> +	if (!__lan9645x_stats_view_idx_hw_read(lan9645x, vtype, idx)) {
> +		spin_lock(&s->sw_lock);

[Severity: High]
Could this lead to a deadlock if a softirq interrupts the process context
while the lock is held?

In __lan9645x_stats_view_idx_update() this lock is acquired from the
background workqueue context using a plain spin_lock().

However, lan9645x_stats_get_stats64() is called from atomic/softirq
context and also tries to acquire s->sw_lock:

/* Called in atomic context */
void lan9645x_stats_get_stats64(...)
{
        ...
        spin_lock(&s->sw_lock);
        ...
}

If a network softirq fires on the same CPU while the background workqueue
holds sw_lock, it seems the softirq would spin forever waiting for the lock.
Should the process-context callers use spin_lock_bh() instead?

> +		__lan9645x_stats_view_idx_transfer(lan9645x, vtype, idx);
> +		spin_unlock(&s->sw_lock);
> +	}
> +}
[ ... ]
> +void lan9645x_stats_get_ethtool_stats(struct lan9645x *lan9645x, int por=
t,
> +				      u64 *data)
> +{
> +	struct lan9645x_stats *stats =3D lan9645x->stats;
> +	u64 *c;
> +	int i;
> +
> +	c =3D lan9645x_stats_view_idx_update(lan9645x, LAN9645X_STAT_PORTS, por=
t);
> +
> +	spin_lock(&stats->sw_lock);

[Severity: High]
Similar to the background updater above, should this ethtool callback
also use spin_lock_bh() to protect against the softirq reader?

> +	for (i =3D 0; i < ARRAY_SIZE(lan9645x_port_ethtool_stats); i++)
> +		*data++ =3D c[lan9645x_port_ethtool_stats[i].idx];
> +	spin_unlock(&stats->sw_lock);
> +}
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-dsa_lan964=
5x_switch_driver_base-v9-0-0d1512a326d7@microchip.com?part=3D9


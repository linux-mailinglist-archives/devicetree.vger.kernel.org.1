Return-Path: <devicetree+bounces-309662-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3F1PBHE7KWroSgMAu9opvQ
	(envelope-from <devicetree+bounces-309662-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:24:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 564696683B3
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:24:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cknow-tech.com header.s=key1 header.b=X3cX35lj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309662-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309662-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=cknow-tech.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EDD23026145
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEA743E44E5;
	Wed, 10 Jun 2026 10:06:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta0.migadu.com (out-170.mta0.migadu.com [91.218.175.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9903E317D
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 10:06:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781085968; cv=none; b=O60IZK73Jp5OuugDhpXPFUKTu2hrY2SlQu3IND4qZ4uhRURENsFJ8BSKTN1sB7inQ211tlN4FzBBKJ7vztQaCcBLCE5KlBv/q7EfjjLiJfrdMcjXTGgV7UC5qBggKaPN15cFZ6QmF3xWhny17YCZoHIyfQBW2ojovJH9/+1bSJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781085968; c=relaxed/simple;
	bh=nDKru+A/5+2b/+LLwoootxfndMCqwvHDdol8mHMjvc0=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=WSqTa5EwopwqbnmET6D1YRjzytOX6kk77f7hT/U1l+WwyOfNO61UQnmbtXb5eVRIwllcaRGX7wPTUf2tTW274P/BSGft5QZcxg99BQEnqR43CgL86QfcDr+cINmRDC2SHO3XJZ9EonSe+BQJp/LSCiCJUbSrFlormoZJlKZ1vFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=X3cX35lj; arc=none smtp.client-ip=91.218.175.170
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1781085953;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YXhOcqMPHO+S5QqlHxh7fMeK781ZP72bMnS5EH8zaug=;
	b=X3cX35ljKdPrn8ghjGraHP1nRfUjKOzodTDZBQC8Bodbl4K5BZ3SeQCEUQYnIQHXomWMv2
	GDYsnnYDG6qC9nxUOC6skm9sE/n1P6wkH55bWQZjwRr28gq4kBZemajTf/2mM0CPe52B5u
	4IASRmUHKLwqpGKX38uLjYe3EMrnhDqZppAtJmbn8Ed7cp/1gIkFPaAccACARsT97Bxzcs
	HPydH1A3PBbFf0pU8obu+92IEPA+vLo2RX0wsIfwwIjfCjhrfZQFDAtSiiSsMaiiVXOyM+
	irD1BK2deVH2yC9tmxTdbTJXa+lrr3N7jnjiUNuYuTEjOYBkP69T0tsjKXcRaA==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 10 Jun 2026 12:05:49 +0200
Message-Id: <DJ5A9XL183RZ.20J3ASQ3EWUZ6@cknow-tech.com>
Cc: <tomeu@tomeuvizoso.net>, <ogabbay@kernel.org>, <heiko@sntech.de>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <joro@8bytes.org>, <will@kernel.org>, <robin.murphy@arm.com>,
 <dri-devel@lists.freedesktop.org>, <linux-rockchip@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <iommu@lists.linux.dev>, <linux-kernel@vger.kernel.org>, "Simon Xue"
 <xxm@rock-chips.com>, "Finley Xiao" <finley.xiao@rock-chips.com>, "Jonas
 Karlman" <jonas@kwiboo.se>
Subject: Re: [RFC PATCH v3 0/9] accel: rocket: Add RK3568 NPU support
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Chaoyi Chen" <chaoyi.chen@rock-chips.com>, "Midgy Balon"
 <midgy971@gmail.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
 <3d99569e-9c3a-49d1-93fb-1335382523e9@rock-chips.com>
 <CA+GS1Y1s78PwN63X2YJoS8VEGp7CpTERo_K65yKs00U4VRAw4Q@mail.gmail.com>
 <e5058919-9485-4de5-8eea-331ebfc2987c@rock-chips.com>
 <CA+GS1Y3ysdWZ3qCq3ip_Pbw+v4LxHZd95aBo=jwB+orYaMBBNw@mail.gmail.com>
 <CA+GS1Y0kAM_XGLQuKPTphif2HcQg18ZXhd8RHHr2xPOEMCDvXA@mail.gmail.com>
 <bcedaff0-abf8-4585-a0ea-057062cd0411@rock-chips.com>
 <CA+GS1Y2-hRqpGgsknh+oOX+-uZ3DZtdekdP9viTP6a40zhhUhg@mail.gmail.com>
 <b05f7154-e85f-4207-80ae-f080282ba780@rock-chips.com>
In-Reply-To: <b05f7154-e85f-4207-80ae-f080282ba780@rock-chips.com>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: add header
X-Spamd-Result: default: False [9.34 / 15.00];
	URIBL_BLACK(7.50)[catirclogs.org:url];
	SUSPICIOUS_RECIPS(1.50)[];
	MV_CASE(0.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309662-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:xxm@rock-chips.com,m:finley.xiao@rock-chips.com,m:jonas@kwiboo.se,m:chaoyi.chen@rock-chips.com,m:midgy971@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	R_DKIM_ALLOW(0.00)[cknow-tech.com:s=key1];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	GREYLIST(0.00)[pass,body];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_TO(0.00)[rock-chips.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[cknow-tech.com,quarantine];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c0a:e001:db::/64:c];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sr.ht:url,catirclogs.org:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,cknow-tech.com:dkim,cknow-tech.com:mid,cknow-tech.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 564696683B3
X-Spam: Yes

Hi,

On Wed Jun 10, 2026 at 3:14 AM CEST, Chaoyi Chen wrote:
> Hi Midgy,
>
> On 6/9/2026 7:11 PM, Midgy Balon wrote:
>> Hello Chaoyi,
>>=20
>> You were right - building rocket as a module fixes it. Thanks for the po=
inter.
>>=20
>> I rebuilt with CONFIG_DRM_ACCEL_ROCKET=3Dm (everything else the same:
>> need_regulator on
>> the RK3568 NPU power domain via a DOMAIN_M_R variant, domain-supply =3D
>> <&vdd_npu>, and the
>> regulator-always-on workaround dropped). The board now boots cleanly
>> and, more importantly,
>> an NPU job submit no longer hangs: I ran the test workload five times
>> with no RCU stall and
>> no freeze.
>>=20
>> So with rocket=3Dm the need_regulator approach works on RK3568, and I'll
>> keep it for v4
>> (domain-supply + need_regulator, instead of marking vdd_npu
>> always-on). rocket=3Dm is the
>> normal configuration anyway; my earlier hang came from building it =3Dy
>> in a self-contained
>> image, so it probed in the initcalls (around 2 s) and the genpd ->
>> I2C-PMIC regulator
>> transition ran before the system was ready. As a module it loads from
>> udev much later
>> (~6.8 s here), after the I2C controller and regulator core are fully up.
>>=20
>> On your question of when the device-link error is printed - it is at
>> power-domain
>> controller probe, not at the rocket probe:
>>=20
>>   [    2.700618] vdd_npu: Bringing 500000uV into 825000-825000uV
>>   [    2.749637] rockchip-pm-domain fdd90000.power-management:power-cont=
roller:
>>                  Failed to create device link (0x180) with supplier 0-00=
20 for
>>                  /power-management@fdd90000/power-controller/power-domai=
n@6
>>   [    2.945955] platform fde40000.npu: Adding to iommu group 3
>>   ...
>>   [    6.840374] rocket: loading out-of-tree module taints kernel.
>>   [    6.877647] [drm] Initialized rocket 0.0.0 for rknn on minor 0
>>   [    6.879950] rocket fde40000.npu: Rockchip NPU core 0 version: 0
>>=20
>> So the device-link to the rk809 PMIC (0-0020) fails to form at ~2.75
>> s, well before rocket
>> loads at ~6.8 s. It is non-fatal here - the vdd_npu rail is brought up
>> by the regulator core
>> and all jobs run - and there is no "failed to get ack on domain npu"
>> NoC warning this boot
>> (the always-on kernel had one). The complete boot log is attached.
>>=20
>> Two notes / one question:
>> - This boot used fw_devlink=3Dpermissive on the command line. Is the
>> "Failed to create device
>>   link ... supplier 0-0020" at pmdomain probe expected/benign, or is
>> there a clean way to make
>>   it order correctly (so it also works without permissive, and a =3Dy
>> build wouldn't deadlock in
>>   the initcalls)?
>
> We encountered the same issue on the RK3588 NPU before. And it was
> resolved with the following patch at that time.
>
> https://lore.kernel.org/all/20251216055247.13150-1-rmxpzlb@gmail.com/
>
> Please compare the differences in NPU pmdomain and DTS configuration
> between the RK3568 and RK3588.

About a month ago on #linux-rockchip we were discussing PM 'stuff':
https://libera.catirclogs.org/linux-rockchip/2026-05-15#39939137;
which references this paste
https://paste.sr.ht/~diederik/89d9f84e22474e837b55286d213b67f03859ce2e
I've since removed the DCDC_REG2 for PineTab2 and the 'fix' should likely
be extended to cover all RK3566/RK3568 devices though.

It's what I made at the time hoping to fix a suspend/resume issue when
trying upstream TF-A. It didn't fix the issue at the time, but may still
be useful/needed and I think it's what Chaoyi hinted at.

Just yesterday, Jonas posted this patch which may be useful/needed too:
https://lore.kernel.org/linux-rockchip/20260609154124.445182-1-jonas@kwiboo=
.se/

HTH,
  Diederik

>> - (The convolution output is still uniform zero-point / the job times
>> out - that is the
>>   separate NPU compute-completion issue, unrelated to the power-domain
>> work. Finley, that is
>>   the one I flagged earlier re PVTPLL/NoC.)
>>=20
>> Kind regards,
>> Midgy
>>=20



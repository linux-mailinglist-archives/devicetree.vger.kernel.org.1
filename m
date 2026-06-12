Return-Path: <devicetree+bounces-310863-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fkZ2HwDcK2pFGgQAu9opvQ
	(envelope-from <devicetree+bounces-310863-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:14:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF690678A1C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:14:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nDWBDJ8G;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310863-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310863-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A806301175B
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 10:14:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E76A837C92B;
	Fri, 12 Jun 2026 10:14:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66CB360EF2;
	Fri, 12 Jun 2026 10:14:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781259259; cv=none; b=Dl15e1/lmVBHelnysN9DnwBwOIndv2CcU4pfeNHtY2axDldO2iE5vboNTVwUvK/8MtojJeRJV701Q9LgiRSrr7zOQVDvEl8IXz2HuNydOHvzsEibSDvvxPsSbXTxIzCFmpbbhQ4eAvYngUpisnXuoIJP+7MLIWMXYBcZPtLEVak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781259259; c=relaxed/simple;
	bh=tEmcEXxvLYoHM4sH4rMlQvgwzu6WEIQmfvXDIsa8WpU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cPpP2FP2SnQQoM2KYi4uX5EzwuKyzd9zzvf/2pzvRiNNynlbnHg42VoWgrsdDVOvBthh9Y4r465Mq5mLTsN8LDa9KmRPX0Ne9TWQoIgTkJK97MDytN1phW4Kx/w8jsCRHV4hTvwDlvmsz0Sp6IZxNKaGrKGoLw3tX7xFsD+i+3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDWBDJ8G; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FB5D1F000E9;
	Fri, 12 Jun 2026 10:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781259258;
	bh=maLilZDWgF+74Kk7sHYF+LxSJJp1j/twR+KKsrm64u0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nDWBDJ8GqJPBRbFypdr6Tzj5et4cNmCFTjAPFCQahu4vEHEzWEjvC6easau+EoiL8
	 DWUlow+f+NL5PzuUWlGiBWcVVngD5JLTdVkCWDhe+QbWHUQWAFIRtf93yKmqSbLw6m
	 UooSfAsZ22IaBMxnDL2EvomTPen3rDDbElRiZcFGgH5TnaGeXLz+N1tNFVvrpxgh/I
	 ruAq+IcOhdSWq6ECyUdXyED+dqDBgTSkPh/O6PJfgPftHTnmxOj5hs3RuyiH9EyYsc
	 DgAyyoDaw/2TrMwhuakGKv1L/ICuT5BSi7M3PXW1RRieuEJ47zfRa669t7ALAmY1FB
	 J6NAAfJOh/BtQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] perf: marvell: Add MPAM partid filtering to
 CN10K TAD PMU
Reply-To: sashiko-reviews@lists.linux.dev
To: "Geetha sowjanya" <gakula@marvell.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-perf-users@vger.kernel.org
In-Reply-To: <20260612095746.19679-2-gakula@marvell.com>
References: <20260612095746.19679-2-gakula@marvell.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 10:14:17 +0000
Message-Id: <20260612101418.3FB5D1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310863-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,marvell.com:email,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gakula@marvell.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CF690678A1C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Inconsistent masking of `event->attr.config` causes valid MPAM p=
artition ID filters to be silently bypassed (or hardware programming to be =
skipped entirely) when upper bits are set.
--

commit f4f2ecc176ec6e4641448761b6600d2344554e81
Author: Tanmay Jagdale <tanmay@marvell.com>

perf: marvell: Add MPAM partid filtering to CN10K TAD PMU

The TAD PMU exposes counters that can be filtered by MPAM partition id
for a subset of allocation and hit events.

> diff --git a/drivers/perf/marvell_cn10k_tad_pmu.c b/drivers/perf/marvell_=
cn10k_tad_pmu.c
> index 51ccb0befa05d..af706b890bf17 100644
> --- a/drivers/perf/marvell_cn10k_tad_pmu.c
> +++ b/drivers/perf/marvell_cn10k_tad_pmu.c
[ ... ]
> @@ -27,30 +35,92 @@ struct tad_region {
[ ... ]
> +static void tad_pmu_start_counter(struct tad_pmu *pmu,
> +				  struct perf_event *event)
> +{
> +	const struct tad_pmu_data *pdata =3D pmu->pdata;
> +	struct hw_perf_event *hwc =3D &event->hw;
> +	u32 event_idx =3D event->attr.config;

[Severity: Medium]
Does this cause valid MPAM partition ID filters to be silently bypassed if
upper bits are set in event->attr.config?

In tad_pmu_event_init(), the event_idx is masked to 8 bits:
u32 event_idx =3D (u32)(event->attr.config & GENMASK(7, 0));

Since it is masked there, an event with upper bits set successfully passes
the validation checks. However, because it is unmasked here in
tad_pmu_start_counter(), it will fail the bounds checks below while the
lower 8 bits are still eventually programmed into the hardware counter:

> +	u32 counter_idx =3D hwc->idx;
> +	u64 partid_filter =3D 0;
> +	u64 reg_val;
> +	u64 cfg1 =3D event->attr.config1;
> +	bool use_mpam =3D cfg1 & TAD_PARTID_FILTER_EN;
> +	u32 partid =3D (u32)(cfg1 & GENMASK(8, 0));
> +	int i;
> +
> +	for (i =3D 0; i < pmu->region_cnt; i++)
> +		writeq_relaxed(0, pmu->regions[i].base +
> +			       TAD_PFC(pdata->tad_pfc_offset, counter_idx));
> +
> +	if (use_mpam && event_idx > 0x19 && event_idx < 0x21) {
> +		partid_filter =3D TAD_PRF_MATCH_PARTID | TAD_PRF_PARTID_NS |
> +				((u64)partid << 11);
> +	}
> +
> +
> +	for (i =3D 0; i < pmu->region_cnt; i++) {
> +		reg_val =3D event_idx & 0xFF;
> +		reg_val |=3D partid_filter;
> +		writeq_relaxed(reg_val, pmu->regions[i].base +
> +			       TAD_PRF(pdata->tad_prf_offset, counter_idx));
> +	}
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612095746.1967=
9-1-gakula@marvell.com?part=3D1


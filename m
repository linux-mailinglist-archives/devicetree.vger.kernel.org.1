Return-Path: <devicetree+bounces-270375-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEoiNr6kpmkTSQAAu9opvQ
	(envelope-from <devicetree+bounces-270375-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:07:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8101EBA12
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:07:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84B1430210CE
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 09:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07AA138C2AE;
	Tue,  3 Mar 2026 09:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="axM3jgiP"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E45374E7E
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 09:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772528544; cv=none; b=RB4ypvZ0AuDM/TO0DSj5CpRctsoSyItIpqCnJKwLqiqf2DG1tft0Pc5synX2juUqJG1CSqesbeTyytXkR1M9d+UmykJKmDM/oiIwKQVRvg1YA6xTbIMplMKjxAnHP3KamPt38qhIdW2p1iiSd1xm31SSNKOjou6BLK43VJnDc+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772528544; c=relaxed/simple;
	bh=FMN/FjIaB5bn7tF5kXKzMgp9kUlFKZnuHuASP5kBlWA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=ag1+Fdo9a3ULAVPaaR3YxGej26Ufp+7H2gcjfYC6ya8eefnFfyj8K/LkXtwGEOyQV3h4ZYFM/xAufMeGwyzs/h7kyziNff3dh803WEkDZyWeeSSg0GwCtvLjh7uKDOp4SgXSlP0kU0Dv/Axga6E1znH8nHl0p114jeHJnyYHnAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=axM3jgiP; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260303090219euoutp028d466c2a39a8ed88ff3ef1c363433d76~ZSVDHiG1X0910809108euoutp02N
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 09:02:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260303090219euoutp028d466c2a39a8ed88ff3ef1c363433d76~ZSVDHiG1X0910809108euoutp02N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1772528539;
	bh=IJNlv8R6cZKXjL4l+PbkPgdf1L56XfT5lWaXnTIbLbg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=axM3jgiPiarTcnfNPfN00RCJmZPnJsMecJ+ZtsDwfEMzuXp/5QSgcarEoZMiOA5w/
	 2NYj2nteNHTYxJzp/ClSoCzs6eF4IxxhPBLRH5c8GeEOovXOHViSxe6U3eRxZlTEPQ
	 5+DBdOGL8bt27U+09haJ2YrzwocvTXVAP106F4HQ=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260303090219eucas1p1711b5b0f0e8ae56bc421ad8f6e5bf365~ZSVCoyKyt2751827518eucas1p1V;
	Tue,  3 Mar 2026 09:02:19 +0000 (GMT)
Received: from AMDC4515.digital.local (unknown [106.120.51.28]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260303090218eusmtip1b7cadd576d57e165c9f1292f8d94b5a8~ZSVB_eFnx1199911999eusmtip1c;
	Tue,  3 Mar 2026 09:02:18 +0000 (GMT)
From: Mateusz Majewski <m.majewski2@samsung.com>
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: Mateusz Majewski <m.majewski2@samsung.com>,
	linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Bartlomiej Zolnierkiewicz
	<bzolnier@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Rob
	Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Sam Protsenko <semen.protsenko@linaro.org>, Anand
	Moon <linux.amoon@gmail.com>, Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v4 0/7] Add initial Exynos850 support to the thermal
 driver
Date: Tue,  3 Mar 2026 10:02:09 +0100
Message-ID: <20260303090211.673143-1-m.majewski2@samsung.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <DGIAUIFPUHN8.35B5MNEUK1JW5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260303090219eucas1p1711b5b0f0e8ae56bc421ad8f6e5bf365
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260303090219eucas1p1711b5b0f0e8ae56bc421ad8f6e5bf365
X-EPHeader: CA
X-CMS-RootMailID: 20260303090219eucas1p1711b5b0f0e8ae56bc421ad8f6e5bf365
References: <CGME20260303090219eucas1p1711b5b0f0e8ae56bc421ad8f6e5bf365@eucas1p1.samsung.com>
X-Rspamd-Queue-Id: 7C8101EBA12
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[samsung.com,vger.kernel.org,lists.infradead.org,gmail.com,kernel.org,linaro.org,intel.com,arm.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270375-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.majewski2@samsung.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[samsung.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.153.167.240:email,samsung.com:dkim,samsung.com:mid]
X-Rspamd-Action: no action

Hello and sorry for missing your mail, thankfully Marek pointed it out
to me.

> I applied the whole series locally, it applies fine on 6.19 but I didn't
> check linux-next; and tested it on Exynos850 E850-96 board with the
> following DT node:
> 
> tmuctrl_0: tmu@10070000 {
>     compatible = "samsung,exynos850-tmu";
>     reg = <0x10070000 0x800>;
>     interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
>     clocks = <&cmu_peri CLK_GOUT_BUSIF_TMU_PCLK>;
>     clock-names = "tmu_apbif";
>     #thermal-sensor-cells = <0>;
> };
> 
> and thermal zones as you mentioned way back. It works just fine.
> Temp goes up to 48 C with a loaded CPUs and settles at 36-37C when idle.
> 
> So for the whole series:
> Tested-by: Alexey Klimov <alexey.klimov@linaro.org>

Thank you!

> However, do you have plans to update it or re-submit?
> Or any other plans working on it?

Honestly not sure. If any other patches are merged that conflict with
this series, I definitely can resolve the commits (for now it applies
just fine to next-20260227, though I haven't compiled the result yet).
Correct me if I am wrong, but I don't recall anything to be done in this
series otherwise. If there is interest in this series, I can retest this
on the other boards and re-submit this later this week.

Kind regards,
Mateusz Majewski


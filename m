Return-Path: <devicetree+bounces-319393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Hfy7NjJgRmpUSAsAu9opvQ
	(envelope-from <devicetree+bounces-319393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:57:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C94B6F8005
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:57:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=OGSf3pvA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319393-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319393-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E6913014BC6
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 12:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24DA147DFB4;
	Thu,  2 Jul 2026 12:47:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB7C47F2C1
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 12:47:00 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782996422; cv=pass; b=TJnQD60uNIwI/Pg5AKUyqSEj5/kGSXzIsRVl6zRsyW+lafgDDaUvg8S8OYv8dR400VkGY9Qh/2Bt/5jIQ2+t2l0o2jhL1Jj+u7427IqFIfQs6OikDUZRVj+LTnjbjXZxZxOT60C/tckpd/C9qTRLrG547wmQxEA1MTnhcWhwuHQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782996422; c=relaxed/simple;
	bh=oNckSp1C/TB12p42yk8TUfLXS/YDIbgZNDslJOayYZE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=h+cW6dlfnj6WNHenvYu8x9my9z7imeFtQdmMUrgZigan6MTRuYlRinomeYQgDTfAVLv8HXqFwwHbljXn5WyXEYTNED11AQN/+aWfYEAIUhK3m8IkSyy6jNZbjrTs3PVSf8/F/u2m2IC2GePDgVtuKK8GwPjBF5yAd1HuxpiwC5A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OGSf3pvA; arc=pass smtp.client-ip=209.85.208.49
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-691c5776f95so3339583a12.3
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 05:47:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782996419; cv=none;
        d=google.com; s=arc-20260327;
        b=VRq/lG5mB3AYQwplwKpY/5LwifM15SDNqfsT5IMP2ive+w/qCvo/K7/k9FEx9FQOkX
         U6MHAClpRqW4AauT4stUSUXQB7SHn5yhQiG1WnGwUymefp/R3X+vatzYcxvi2bm3OifN
         +CW3b/JEjvwd8c8NGZaunRuabUpXGfR59N0yT+RUNvuqPuBjkMqkF5y9vaYylr6UQRqk
         AJfKfGaPrmM0tBDIddSVz7eR9boluUOaO7cryPIQCn0TtrLKnmAUnaaeykBGcBDZ6W/0
         2fxdV144DV37uirGytHkWojAeJG3xi4XcX/By4F1rDyqZ+b0X7PGVOOFJviYVzwuBFBJ
         iCUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=210HKleKgbmFKKFSqfRC++HOJhEM15Vlg9VXrqpCJ6A=;
        fh=FhT8DRHdGvy2pjOzXIy4xLPXe6k2EZRzNj1DymgNGoQ=;
        b=Jk3FSI28cPm3M++RCURj5QlBfFQ0e4zub8ZXpxuGSHEuUcQrLExPI76tJff0u+anZo
         t+bnzOgHymoDQf04IxiDQACc3PEc52A1DjJhArZJteY9lhPPuor2fdQMrmo7epkt1HiR
         DehpIS/cEAIN/uAKTiJXchu+9IGnYq5VzVQIcGkkV6G2oQZqkaq8jxDUc/3WgUyR0+S+
         e4RLt+aZFVxo28TiuZw3dfKEYPPNN6p2i/0hw7JCqcaK9sr4RZQUTqpP7y/ngfyEodiP
         J8GaFoOeop6jvhFrDLa6S9EX0RBLiF9AL3SxUeiKbqX3P+AgS3HCpG2Q1eYxapZXN7ce
         jQew==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782996419; x=1783601219; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=210HKleKgbmFKKFSqfRC++HOJhEM15Vlg9VXrqpCJ6A=;
        b=OGSf3pvAfDCo/V8/DLpcvstiZ/O4yTF2dUdmcfLLtHBGexjBgka30990f3A8qcHTxJ
         qoxy4cIqycg2kJAV8SvAEP1n4Pyk9JJ7sLDcPwphZuOSdBuZNjnoAQWOXhFRsMAYbjMk
         Y8klX6PaAhmM5VZp7aLxZwbzHrirR9mnREYXDDZendu7UhN/AC17l2BLFUaJ/rYdZ2gQ
         rEM0bmvBKFlprmi80+nFPEnEiFnPQodDNjX94WJkibPud7mlfruF5INplFaRDOjtwHNa
         Ys1N8sUk9xKMlmUtB06B5i2bGSYUGEhX+i0FF26Nm8Y+pSW/1R30K/Evz/w5bq9h//o5
         LEFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782996419; x=1783601219;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=210HKleKgbmFKKFSqfRC++HOJhEM15Vlg9VXrqpCJ6A=;
        b=Ct7YUQ7agMgXmdJTHDiOH7IHHzCad+nWiIGlakqwxaAIYHU1jAbsSAl5dTiVpoLW1/
         Oorp60Pp2KxlAVUqv9tCNSN4N1LOIDnPGrX6vb3FPckcj/35VOtZ5Rmn+RlCkyOWlJtL
         H2tVKXh2AQBLQj/PGXdtKkgEouK33PZv/WaxW+AkbiOJgwVUyoKFb7THhCTm9biw7gYL
         T0hho4VOK8VmORg4kKVwb13wVJzi7x7NrICjCjnmAQD/7A2k3AmEvm1XKolB4f+ymH/l
         LSk4lIG9ONiqC8sQEzoicCBj1lwDpQlgDcl9XQ4aarBttgj1Y0lv82Vpixd0u0CDSG0T
         bUiA==
X-Forwarded-Encrypted: i=1; AHgh+RraaXGwcrVa8liaWDfg4lh+kGJgjNoTN8HV/CGWW5iY0hL06cZFjC1izmyz0tb5uiPJxa3/YmAdiHFl@vger.kernel.org
X-Gm-Message-State: AOJu0YyE3PkILFWp9zybMaTZj6ExY7AMsuFH2XAygRLR7r9K76NUJVSD
	aR/aTcKnZSRpZ9o1rvvCHR5FVfHy1G0/JII/rfsaaaiYsPTMk0qvehef/xOAzhtQEQMpUVZB/8M
	GPWBEaHyBwjbaGSkrbOPiStO4Wzk8fob2W8lN+GhcAw==
X-Gm-Gg: AfdE7clqurxoI4nbYOZYTXRYqr1JSN3/696nelGtvvZSfST67LRHLjpP2QPBKkdpGBC
	QKc+/cMm/Hde/zsj1Q+MuxmlpWgYP7o590/BGPeHmzqABMBAagg2M+SoCMLvSTkAACV9nEy3Ow2
	ptNJaTUqd899mouOiydYIV1UF2cJp733E4DPkSYpwiAF9RFjulYgP1l5ZbNpyCbdQJBO2UEZa5Y
	Rn6mK0TbFg+xiAXk1yZbHOMporIMralgLxEcS3Yv21BukThCu7T2x4bHTcFOWDoVmQK5qmR8woA
	trxDv2bAAjtNLvge21/2cZjS5Q==
X-Received: by 2002:a17:906:d0da:b0:c12:64c6:bd7 with SMTP id
 a640c23a62f3a-c12a9e053e3mr203835966b.21.1782996418879; Thu, 02 Jul 2026
 05:46:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203161917.1666696-1-vincent.guittot@linaro.org> <akZcpgDSjAg6gcok@lsv051416.swis.nl-cdc01.nxp.com>
In-Reply-To: <akZcpgDSjAg6gcok@lsv051416.swis.nl-cdc01.nxp.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 2 Jul 2026 14:46:47 +0200
X-Gm-Features: AVVi8CfnsNCvDc67RDsUnObGKCXWxD40T6JSCY5QNMiAlpanyxUGcJsCLPpkpdE
Message-ID: <CAKfTPtDT5NiFcgozfxec0vBi4663fhnNdQGRdGpF6VwpKSJU-g@mail.gmail.com>
Subject: Re: [PATCH 0/4 v2] Serdes: s32g: Add support for serdes subsystem
To: Jan Petrous <jan.petrous@oss.nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, linux@armlinux.org.uk, ghennadi.procopciuc@nxp.com, 
	Ionut.Vicovan@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	horms@kernel.org, Frank.li@nxp.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-319393-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:jan.petrous@oss.nxp.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ciprianmarian.costea@oss.nxp.com,m:s32@nxp.com,m:p.zabel@pengutronix.de,m:linux@armlinux.org.uk,m:ghennadi.procopciuc@nxp.com,m:Ionut.Vicovan@nxp.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:netdev@vger.kernel.org,m:horms@kernel.org,m:Frank.li@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:from_mime,nxp.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1C94B6F8005

On Thu, 2 Jul 2026 at 14:42, Jan Petrous <jan.petrous@oss.nxp.com> wrote:
>
> On Tue, Feb 03, 2026 at 05:19:13PM +0100, Vincent Guittot wrote:
> > s32g SoC family includes 2 serdes subsystems which are made of one PCIe
> > controller, 2 XPCS and a shared Phy. The Phy got 2 lanes that can be
> > configured to output PCIe lanes and/or SGMII.
> >
> > Implement PCIe phy and XPCS support.
> >
> > Change since v1:
> > - Fix compile_test
> > - Use devm_reset_control_get_exclusive()
> > - Fix s32g_serdes_phy_set_mode_ext()
> > - Manage devm_clk_bulk_get_all() returns 0
> > - Fix s32g_serdes_parse_lanes() error management
> > - Move xpcs filein drivers/net/pcs/
> > - Add pcs_inband_caps()
> > - Fix functions in phylink_pcs_ops
> > - Fix MAINTAINERS
> >
> >
> > Vincent Guittot (4):
> >   dt-bindings: serdes: s32g: Add NXP serdes subsystem
> >   phy: s32g: Add serdes subsystem phy
> >   phy: s32g: Add serdes xpcs subsystem
> >   MAINTAINERS: Add MAINTAINER for NXP S32G Serdes driver
> >
> >  .../bindings/phy/nxp,s32g-serdes.yaml         |  154 +++
> >  MAINTAINERS                                   |   10 +
> >  drivers/net/pcs/Makefile                      |    1 +
> >  drivers/net/pcs/pcs-nxp-s32g-xpcs.c           | 1006 +++++++++++++++++
> >  drivers/phy/freescale/Kconfig                 |   10 +
> >  drivers/phy/freescale/Makefile                |    1 +
> >  drivers/phy/freescale/phy-nxp-s32g-serdes.c   |  953 ++++++++++++++++
> >  include/linux/pcs/pcs-nxp-s32g-xpcs.h         |   50 +
> >  8 files changed, 2185 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> >  create mode 100644 drivers/net/pcs/pcs-nxp-s32g-xpcs.c
> >  create mode 100644 drivers/phy/freescale/phy-nxp-s32g-serdes.c
> >  create mode 100644 include/linux/pcs/pcs-nxp-s32g-xpcs.h
> >
> > --
> > 2.43.0
> >
>
> Hi Vincent, all,
> I'm taking over the S32G SerDes/XPCS upstreaming. The effort has moved in-house
> at NXP and I'll be carrying it forward, continuing from this v2 rather than
> restarting from zero.
>
> Vincent, thanks for the v1->v2 groundwork. I'll keep your authorship on the
> patches that originate from your series (Co-developed-by plus your
> Signed-off-by) and build on top; I'll send you v3 off-list first, as you
> offered.
>
> A v3 is in preparation and will come as an RFC, with the v2 review comments
> addressed.
>
> Vincent, if you're OK with the handoff, a short ack here would help make the
> transition visible to the reviewers.

Ack

Thanks
Vincent

>
> Thanks.
> /Jan
>


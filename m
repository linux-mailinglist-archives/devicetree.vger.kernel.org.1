Return-Path: <devicetree+bounces-296721-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBakC5E8BGqsGAIAu9opvQ
	(envelope-from <devicetree+bounces-296721-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:55:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F23530064
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:55:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C8DF430E9AD2
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 08:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2A2B3E51CC;
	Wed, 13 May 2026 08:52:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mxct.zte.com.cn (mxct.zte.com.cn [183.62.165.209])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE88E3E3C75;
	Wed, 13 May 2026 08:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=183.62.165.209
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778662378; cv=none; b=DLGJcMWpa94hMahAOTp81JtZAWv4EdrZFCZAW4Ll1gqH/oduovmT4sx5o/lTQAHM+TpH7B6WH8cemLjlO7mYw46Mj/+EjnORnVnBk234G0Di1hjxmafdNfSaTS1v4TeoXTJVwMmO8HVQ5/cmLpS/1vbSJYUBFjTRl4cRRQAHXvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778662378; c=relaxed/simple;
	bh=qbP80Mu1a36trKx07dO+/MRc6ho71bdg9RhEsoczzd0=;
	h=Message-Id:References:Date:Mime-Version:From:To:Cc:Subject:
	 Content-Type; b=ug5+7+5C3PO8eefM9MUWYgU11Nw2sHCLoUlLhlLRQuTHSYF5Fhc5m9TF8/+OZFKNR5MA4B6r3MaxMQ2wpQRLwosr08xGWkPUB37mloDg1tnTpCxXmFZkWpL51yGIVeTdUTV7bd6T8akAXlFE2YC/2hHq2YohnLUiPURSu/HaW0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zte.com.cn; spf=pass smtp.mailfrom=zte.com.cn; arc=none smtp.client-ip=183.62.165.209
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zte.com.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zte.com.cn
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mxct.zte.com.cn (FangMail) with ESMTPS id 4gFnKS2cbXz51SfH;
	Wed, 13 May 2026 16:52:44 +0800 (CST)
Received: (from root@localhost)
	by mse-fl2.zte.com.cn id 64D8qinh044575;
	Wed, 13 May 2026 16:52:44 +0800 (+08)
	(envelope-from liu.qingtao2@zte.com.cn)
Message-Id: <202605130852.64D8qinh044575@mse-fl2.zte.com.cn>
Received: from njb2app06.zte.com.cn ([10.55.23.119])
	by mse-fl2.zte.com.cn with SMTP id 64D8i9nd027074;
	Wed, 13 May 2026 16:44:09 +0800 (+08)
	(envelope-from liu.qingtao2@zte.com.cn)
Received: from mapi (njy2app01[null])
	by mapi (Zmail) with MAPI id mid204;
	Wed, 13 May 2026 16:44:11 +0800 (CST)
X-Zmail-TransId: 2af96a0439db17e-072d0
X-Mailer: Zmail v1.0
References: 20260213093334.9217-1-qtliu@mail.ustc.edu.cn,20260213093334.9217-2-qtliu@mail.ustc.edu.cn,deffd8c5-df19-495f-8d0d-768e2b9aed0f@kernel.org,20260430171848941pOYQqESXp_aPIsq4zKYPl@zte.com.cn,20260430172926509xJuudyb-WbiqVp7cYlEJE@zte.com.cn
Date: Wed, 13 May 2026 16:44:11 +0800 (CST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
From: <liu.qingtao2@zte.com.cn>
To: <krzk@kernel.org>
Cc: <gregkh@linuxfoundation.org>, <jirislaby@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <marex@nabladev.com>,
        <pjw@kernel.org>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <alex@ghiti.fr>, <rdunlap@infradead.org>, <geert+renesas@glider.be>,
        <quic_zongjian@quicinc.com>, <arturs.artamonovs@analog.com>,
        <robert.marko@sartura.hr>, <hvilleneuve@dimonoff.com>,
        <thierry.bultel.yh@bp.renesas.com>, <julianbraha@gmail.com>,
        <flavra@baylibre.com>, <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <linux-serial@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <liu.wenhong35@zte.com.cn>, <dai.hualiang@zte.com.cn>,
        <deng.weixian@zte.com.cn>, <jia.yunxiang@zte.com.cn>,
        <bai.lu5@zte.com.cn>, <yang.susheng@zte.com.cn>,
        <shen.lin1@zte.com.cn>, <zuo.jiang@zte.com.cn>,
        <hu.shengming@zte.com.cn>, <gao.rui@zte.com.cn>, <tan.hu@zte.com.cn>,
        <liu.qingtao2@zte.com.cn>
Subject: =?UTF-8?B?UmU6IFtQQVRDSCB2MSAxLzJdIExSVyBVQVJUOiBkdC1iaW5kaW5nczogQWRkIGJpbmRpbmcgZm9yIExSVyBVQVJU?=
Content-Type: text/plain;
	charset="UTF-8"
X-MAIL:mse-fl2.zte.com.cn 64D8qinh044575
X-MSS: AUDITRELEASE@mse-fl2.zte.com.cn
X-TLS: YES
X-SPF-DOMAIN: zte.com.cn
X-ENVELOPE-SENDER: liu.qingtao2@zte.com.cn
X-SPF: None
X-SOURCE-IP: 10.5.228.133 unknown Wed, 13 May 2026 16:52:44 +0800
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 6A043BDC.000/4gFnKS2cbXz51SfH
X-Rspamd-Queue-Id: 63F23530064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJ_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[zte.com.cn : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,nabladev.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,infradead.org,glider.be,quicinc.com,analog.com,sartura.hr,dimonoff.com,bp.renesas.com,gmail.com,baylibre.com,vger.kernel.org,lists.infradead.org,zte.com.cn];
	TAGGED_FROM(0.00)[bounces-296721-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mse-fl2.zte.com.cn:mid,zte.com.cn:email];
	RCPT_COUNT_TWELVE(0.00)[37];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[liu.qingtao2@zte.com.cn,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

> On 13/02/2026 10:33, LiuQingtao wrote:
> > From: Wenhong Liu <liu.wenhong35@zte.com.cn>
> >
> > Add documentation for LRW UART devicetree bindings.
> >
> > Signed-off-by: Wenhong Liu <liu.wenhong35@zte.com.cn>
> > Signed-off-by: Qingtao Liu <liu.qingtao2@zte.com.cn>
>
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC. It might happen, that command when run on an older
> kernel, gives you outdated entries. Therefore please be sure you base
> your patches on recent Linux kernel.
>
>
> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
> people, so fix your workflow. Tools might also fail if you work on some
> ancient tree (don&apos;t, instead use mainline) or work on fork of kernel
> (don&apos;t, instead use mainline). Just use b4 and everything should be
> fine, although remember about `b4 prep --auto-to-cc` if you added new
> patches to the patchset.
>
> You missed at least devicetree list (maybe more), so this won&apos;t be
> tested by automated tooling. Performing review on untested code might be
> a waste of time.
>
> Please kindly resend and include all necessary To/Cc entries.
>
>
> Best regards,
> Krzysztof

Much thanks. I got correct lists based on most recent Linux kernel.
I'll resend v2 patches soon.


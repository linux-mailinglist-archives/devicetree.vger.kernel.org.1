Return-Path: <devicetree+bounces-274702-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGUKLWrmsmktQwAAu9opvQ
	(envelope-from <devicetree+bounces-274702-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:14:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BEF2755C9
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:14:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D4A831F0C7D
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BC61373BF3;
	Thu, 12 Mar 2026 16:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="AH0N8IMR"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8109F38E135
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 16:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331700; cv=none; b=dGf7Hhz7CsyzQf9QFraQUGr8+prUfWpuyojZSSwAofVWRSnFLxkevmxil5VnZ+YFwLUuxALvYx5ZQuZ/7R80AVrWicXWpxZv8pIEDffI+CC+sM+sypAHtwUqwKUQ4JY3QXCx9d7svi/lZXD/ECHurx6rCNI3yXCxdwr3QVyIaDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331700; c=relaxed/simple;
	bh=twDTejgFiYBq/oNh2tbzlE4khCqdmTOxTL0v/WfIyHg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=TN6ufs4LCoUZdARH9fldtv5yr+2VZBl2R6pSenATZ36TezuOEoiP3Hm7m0MTH0nsNNDnAGT9iD7dXA2IjuBvNaNtU8Ibm+7repFbx95JyWfSEtwvJp5EGPWfZdRMmt1jQokGNQo6OzB3Y9Scbdd8DVTGnHamYpD5B/wf9NUzSbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=AH0N8IMR; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20260312160810euoutp01726bcc1e7188af45c3eceb6728deb35e~cI8bslWMD0580005800euoutp01E
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 16:08:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20260312160810euoutp01726bcc1e7188af45c3eceb6728deb35e~cI8bslWMD0580005800euoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1773331690;
	bh=twDTejgFiYBq/oNh2tbzlE4khCqdmTOxTL0v/WfIyHg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AH0N8IMRI4fvbzQnNTqfCJxy+BGBh2RhaXCAVdKLuajJaXzFhOgbjhknKrgIgPOyx
	 WvLSQR+NZMI03G8VBjUjW1vOhqITOp7mcxoKKyaS6HR1VsB0QNy6LWgHKknO3QiEYx
	 z0TmZJygFekR6aeoZPq/Gs5NVvLBW6vyE0GLtx6w=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260312160809eucas1p1fc79e4d333f3995a48b68ff07ec7726c~cI8bJgs8W2038520385eucas1p1m;
	Thu, 12 Mar 2026 16:08:09 +0000 (GMT)
Received: from AMDC4515.digital.local (unknown [106.120.51.28]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260312160809eusmtip2a5fe35af5b658b73c3a82109e2b4333e~cI8aQCmCI3247232472eusmtip2_;
	Thu, 12 Mar 2026 16:08:08 +0000 (GMT)
From: Mateusz Majewski <m.majewski2@samsung.com>
To: alexey.klimov@linaro.org
Cc: alim.akhtar@samsung.com, bzolnier@gmail.com, conor+dt@kernel.org,
	daniel.lezcano@linaro.org, devicetree@vger.kernel.org, krzk@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	linux.amoon@gmail.com, lukasz.luba@arm.com, m.majewski2@samsung.com,
	m.szyprowski@samsung.com, rafael@kernel.org, robh@kernel.org,
	rui.zhang@intel.com, semen.protsenko@linaro.org
Subject: Re: [PATCH v4 0/7] Add initial Exynos850 support to the thermal
 driver
Date: Thu, 12 Mar 2026 17:07:55 +0100
Message-ID: <20260312160755.150657-1-m.majewski2@samsung.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <DGYRJ0FUBJIB.3HUS30VW280A4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260312160809eucas1p1fc79e4d333f3995a48b68ff07ec7726c
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260312160809eucas1p1fc79e4d333f3995a48b68ff07ec7726c
X-EPHeader: CA
X-CMS-RootMailID: 20260312160809eucas1p1fc79e4d333f3995a48b68ff07ec7726c
References: <DGYRJ0FUBJIB.3HUS30VW280A4@linaro.org>
	<CGME20260312160809eucas1p1fc79e4d333f3995a48b68ff07ec7726c@eucas1p1.samsung.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274702-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[samsung.com,gmail.com,kernel.org,linaro.org,vger.kernel.org,lists.infradead.org,arm.com,intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.majewski2@samsung.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19]
X-Rspamd-Queue-Id: 13BEF2755C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> I am looking at enabling ACPM thermal thingy but so far I see similar
> issue that temp of all sensors is reported as 10 C regardless via ACPM.
>
> Having said that I am not going to oppose this series moving forward if
> you wish.

Sure, I will probably get back to this when the other series are more
resolved like I said in the last email :) Or maybe by this time I will
learn more about ACPM but I doubt it.

Kind regards,
Mateusz Majewski


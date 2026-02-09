Return-Path: <devicetree+bounces-263853-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KER6CtORiWlz+wQAu9opvQ
	(envelope-from <devicetree+bounces-263853-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 08:50:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 881D910C9C3
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 08:50:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BCBC530063A1
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 07:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 913BC3382C9;
	Mon,  9 Feb 2026 07:50:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6FA333447;
	Mon,  9 Feb 2026 07:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770623411; cv=none; b=tpTTN1FuxVtOYLAA9oJUwWQoRdVnpFKUJUVxxdUvQ/4h1F3M9O1xsT1kCIPCDnZW5r8e1W+i8eiLl6uFSTfYZXf5aKEhE/T8r9S4nx3ztGVYGtuQ9FKFCQjnLOUiXQPepq76B779Q57NngT5QNhFtcmYIQaJSbu1KsYGopODVhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770623411; c=relaxed/simple;
	bh=AeJAKV0Jk789dxUWjf3juEDJa2rKx2DrVjSPZziDCjs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZXszjHeRN3JdgCTE2vG2IpGCpSmucAQPqQl5kL523rvtJbNU+0YbiwfSLtyzDX+YrUHGAZ6v+GZsyapePYAVGv3Zu5/UUA7BEQuNYaOx1Vc82wcf63aDbwCektlU/yfW/tjGJP3ev1sRhkiNJ2sbz0iDpR+daroT1iWcuxl4lHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CD0741A28E0;
	Mon,  9 Feb 2026 08:50:09 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9EDBA1A0488;
	Mon,  9 Feb 2026 08:50:09 +0100 (CET)
Received: from lsvm11u0000554.swis.ap-northeast-2.aws.nxp.com (lsvm11u0000554.swis.ap-northeast-2.aws.nxp.com [10.52.9.11])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 49576180029D;
	Mon,  9 Feb 2026 15:50:07 +0800 (+08)
Date: Mon, 9 Feb 2026 16:50:06 +0900
From: Yanan Yang <yanan.yang@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, qijian.guo@nxp.com,
	justin.jiang@nxp.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Daniel Baluta <daniel.baluta@nxp.com>, Lei Xu <lei.xu@nxp.com>,
	Xiaofeng Wei <xiaofeng.wei@nxp.com>
Subject: Re: [PATCH v4 0/2] Add NXP FRDM-IMX91S board support
Message-ID: <aYmRrjbvlrPylSei@lsvm11u0000554.swis.ap-northeast-2.aws.nxp.com>
References: <20260123-imx91s-frdm-v4-0-1bab038faee9@nxp.com>
 <CAEnQRZBBM6y9Ux8ytbYEY-hQ_D8t+aW1+8OczUpX4=p1gmxVQA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEnQRZBBM6y9Ux8ytbYEY-hQ_D8t+aW1+8OczUpX4=p1gmxVQA@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263853-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,nxp.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yanan.yang@nxp.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.930];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:url,nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lsvm11u0000554.swis.ap-northeast-2.aws.nxp.com:mid]
X-Rspamd-Queue-Id: 881D910C9C3
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 03:41:57PM +0200, Daniel Baluta wrote:
> On Fri, Jan 23, 2026 at 8:43 AM Yanan Yang <yanan.yang@nxp.com> wrote:
> >
> > This patch set introduces DeviceTree support for the NXP FRDM-IMX91S
> > development board based on the i.MX91 SoC. FRDM-IMX91S is a cost-optimized
> > variant of FRDM-IMX91 and differs in several hardware aspects:
> >
> > - 512MB LPDDR4 (FRDM-IMX91 uses 1GB)
> > - 256MB FlexSPI-NAND (FRDM-IMX91 uses 8GB eMMC)
> > - Single GbE port (FRDM-IMX91 has dual GbE)
> > - PMIC PF9453 (FRDM-IMX91 uses PCA9451A)
> >
> > This patch has been tested on FRDM-IMX91S board and verified for basic
> > functionality.
> >
> > For more details about the FRDM-IMX91S board, see:
> > https://www.nxp.com/design/design-center/development-boards-and-designs/FRDM-IMX91S
> 
> 
> Hi Yanan,
> 
> Just got my imx91S frdm board and tried to test this but the patches
> failed to apply on linux-next.
> 
> Can you please try rebase and resend?
> 
> Thanks,
> Daniel.

Sure, will fix it in v5, thanks


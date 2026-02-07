Return-Path: <devicetree+bounces-263569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPcSOEwVh2nBTQQAu9opvQ
	(envelope-from <devicetree+bounces-263569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:34:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4724410588E
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:34:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CDBB3029E7F
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 10:34:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D62B8311599;
	Sat,  7 Feb 2026 10:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=1wt.eu header.i=@1wt.eu header.b="Y89Lr6mN"
X-Original-To: devicetree@vger.kernel.org
Received: from mta1.formilux.org (mta1.formilux.org [51.159.59.229])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF6330FC0E;
	Sat,  7 Feb 2026 10:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.159.59.229
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770460450; cv=none; b=Whz6Z8qhB4NfDuXBx9TC88cXefioVxf5MabM9HdPkvpPLE8jfnHyWET99HAhcnmUC81X3w1JhifQS/puDvTEOucmSf5IlDun5Rtto97lGYG2icr5TvQShf8pTujgpUJb4Wali/E8HtWXYQk49XGrRpNHljN80FA+90XhFwcTDxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770460450; c=relaxed/simple;
	bh=3Qw2WaO8OHqD7BYZ4BtAzAkgvPLClIBH5gYHjw3KANI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X2hQIATjmY/lEE8lqYYSsq045K/jqU5r2Sdcgw794zSpj2Y5hwgU1mhDnF6Cx18cWXbG4aZagrswKFBT5IPh7fs+yUzDIOGBnONEtAGVFCpLtExdcW41X2i9ILwxt2OlG/hEOWwR38O80kQDx+OIVMlClUgR3QXXckcLlkPomkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=1wt.eu; spf=pass smtp.mailfrom=1wt.eu; dkim=pass (1024-bit key) header.d=1wt.eu header.i=@1wt.eu header.b=Y89Lr6mN; arc=none smtp.client-ip=51.159.59.229
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=1wt.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=1wt.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1wt.eu; s=mail;
	t=1770460441; bh=S8T3rZFpkqB2F2oOHjwuLu3hiLWr0/KRvABGeca17KM=;
	h=From:Message-ID:From;
	b=Y89Lr6mNMTu5WWD3DaAOwcrryNt65Q+P+SkniUBIC9nfpcSaEUxZW92EqKRBtdlq0
	 o+NlveY1pqvvBnblLRFsIT3WXzNvSsqAr6HdDiRxHvuwQvUQNG1GJxWLQrOqmKJZUA
	 kyIHfKRTSDcNRX/g9+/bwsrbVs9k6ysCauyB+Wt0=
Received: from 1wt.eu (ded1.1wt.eu [163.172.96.212])
	by mta1.formilux.org (Postfix) with ESMTP id 0E7FDC0B88;
	Sat, 07 Feb 2026 11:34:01 +0100 (CET)
Date: Sat, 7 Feb 2026 11:33:59 +0100
From: Willy Tarreau <w@1wt.eu>
To: Heiko Stuebner <heiko@sntech.de>
Cc: srini@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        kever.yang@rock-chips.com, finley.xiao@rock-chips.com, jonas@kwiboo.se
Subject: Re: [PATCH v4 6/6] nvmem: rockchip-otp: Add support for RK3528
Message-ID: <aYcVF8DkVyH47i5x@1wt.eu>
References: <20260205211901.490181-1-heiko@sntech.de>
 <20260205211901.490181-7-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260205211901.490181-7-heiko@sntech.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[1wt.eu,none];
	R_DKIM_ALLOW(-0.20)[1wt.eu:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263569-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[1wt.eu:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[w@1wt.eu,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.961];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 4724410588E
X-Rspamd-Action: no action

Hi Heiko,

On Thu, Feb 05, 2026 at 10:19:01PM +0100, Heiko Stuebner wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> Add support for the OTP controller in RK3528. The OTPC is similar to the
> OTPC in RK3562 and RK3568, exept for a missing phy clock and reset.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

This time I'm making sure to respond to the right patch :-)

I applied your series on top of latest master and booted it on my
E20C (rk3528-based). It provides me with entries in which I can
read values, like when I applied Jonas' patch on 6.17, so I guess
that it's OK:

  # for i in /sys/devices/platform/soc/*/rockchip-otp0/cells/*; do echo ${i##*/}:;hexdump $i;done
  cpu-code@2,0:
  0000000 2835                                   
  0000002
  cpu-leakage@1a,0:
  0000000 000e                                   
  0000001
  cpu-version@8,3:
  0000000 0001                                   
  0000001
  gpu-leakage@1c,0:
  0000000 0003                                   
  0000001
  id@a,0:
  0000000 4e54 5532 3433 0000 0000 0000 0800 112d
  0000010
  logic-leakage@1b,0:
  0000000 0017                                   
  0000001
  tsadc-trim@44,0:
  0000000 0200                                   
  0000002

So feel free to add this if you want:

Tested-by: Willy Tarreau <w@1wt.eu>

Willy


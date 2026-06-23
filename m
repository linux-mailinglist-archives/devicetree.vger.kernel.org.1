Return-Path: <devicetree+bounces-314848-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GJv/GxCOOmp+/wcAu9opvQ
	(envelope-from <devicetree+bounces-314848-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 15:45:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E9B6B78FC
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 15:45:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cknow-tech.com header.s=key1 header.b=Xvt2Wwtm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314848-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-314848-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=cknow-tech.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6A05530055CA
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 13:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 742B537DE89;
	Tue, 23 Jun 2026 13:45:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C17137DAD0;
	Tue, 23 Jun 2026 13:45:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782222346; cv=none; b=ijbcwEkpVJYKCNR1J+ZFQ0mkpBieSaj7DGzd79bbLDZRs5SIhXkg6CmhsdWFYXUiCNMFbn9hXu95WCTxl+0kucABpWZ+0m5vARXKZA1B7GN0M6g6uH1QlWJxYYwu+RNy5IyVkIyEP1ETOu5HWbDDUDG39NV31l4HXybkru5YMlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782222346; c=relaxed/simple;
	bh=q6rtuqN+Z7tw5EmIRdDkfYl2/euip2mlqTSfSrZt9sA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=iWn49ddAgzMCMO9GHxE2DU3ojq8LbTEoqlakTKWjKxDUCSVH47pethyXscwPKVVKkO0zAVmsrmioiJ2+DtvlOIIwROg6HRLXuOwwSU9ETzD6ZbR/1KB9+rObcQIFM13urcDUl4zCWkm69jeD/0g3kUGmhR4rQiG/qL4xzg+TM0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=Xvt2Wwtm; arc=none smtp.client-ip=91.218.175.174
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1782222332;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UZ4++YxJXc/6SFIqw2u6ldCc2haTxcSXXUeS9bd2ENM=;
	b=Xvt2WwtmOY6PYw8fMMtaKUPwhp00TjzdQIEHqcqaypIosTEKgcmztrkWySTKWpaBWtZTCA
	1L4m4hU0BAGVvOjQ+nMVV0yHMl39CI6/NJfo8JrXcGL71Gtfc2bxxcCIpcQ1/NHm0YSScq
	VixU+qrUJNYvHsjEUT/yHEAyQjSidSJOszChjXClbXTCVq1nBsFVsdfkEQ3XlUrvRKI7Co
	QdXQtaOX2kRLeEiv6rBCwXc0J7rhVqhqtw7KvAZ3ArRpIPUeJEG9l7IjUTcel/3bweDh7B
	moSJILJFXOBN0NCfuwE0orLdYnOz0zgWN6FG/xVbLACwjwdu2UIz6BWcHfUQWw==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 23 Jun 2026 15:45:23 +0200
Message-Id: <DJGH34DVKL0W.3T6UB4G4WYYUJ@cknow-tech.com>
Cc: "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>,
 <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Ricardo Pardini" <ricardo@pardini.net>
Subject: Re: [PATCH v4 5/5] clk: rockchip: rk3588: add GATE_GRF clocks for
 I2S MCLK output to IO
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Daniele Briguglio" <hello@superkali.me>, "Diederik de Haas"
 <diederik@cknow-tech.com>, "Heiko Stuebner" <heiko@sntech.de>, "Michael
 Turquette" <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
References: <20260419-rk3588-mclk-gate-grf-v4-0-513a42dd1dcc@superkali.me>
 <20260419-rk3588-mclk-gate-grf-v4-5-513a42dd1dcc@superkali.me>
 <DJGDSS875DDO.22TYPVYK5X8KZ@cknow-tech.com> <2100447.PIDvDuAF1L@diego>
 <20260623123316.4111002-1-hello@superkali.me>
 <DJGG8DEAKSPK.1GJ8FARAHXPXM@cknow-tech.com>
 <20260623132351.4144457-1-hello@superkali.me>
In-Reply-To: <20260623132351.4144457-1-hello@superkali.me>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314848-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:nicolas.frattaroli@collabora.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:ricardo@pardini.net,m:hello@superkali.me,m:diederik@cknow-tech.com,m:heiko@sntech.de,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,cknow-tech.com:dkim,cknow-tech.com:mid,cknow-tech.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 61E9B6B78FC

Hi Daniele,

On Tue Jun 23, 2026 at 3:23 PM CEST, Daniele Briguglio wrote:
>> md.l 0xfd58c318
>> fd58c318: 00000600
>
> Thanks. Bit 0 is clear there, so the I2S0 gate is open at the U-Boot
> prompt, after BL31 and before Linux. That matches the symptom: the
> firmware on your T6 leaves it open, and the kernel closes it once nothing
> references it.
>
> Given that, I think Heiko's suggestion makes sense here. Marking the four
> gates CLK_IGNORE_UNUSED keeps the kernel from disabling what the firmware
> already left open, and boards that reference _TO_IO still drive it throug=
h
> the consumer.

My suspicion that more RK3588 based boards would be broken is because NONE =
use
I2S0_8CH_MCLKOUT_TO_IO; they all use I2S0_8CH_MCLKOUT.
(And the testing was only done on not (yet?) upstreamed boards)

> Could you test that change if you get a chance? Just set the flag on the
> I2S0/1/2/3 _TO_IO gates in clk-rk3588.c and check your analog audio comes
> back. The series is already merged, so I'll send the fix as a separate
> follow-up patch, this evening if Heiko is fine with the approach.

I'm going to build a new kernel where I did ``s/0/CLK_IGNORE_UNUSED/`` 4 ti=
mes
and I adjusted my NanoPC-T6 Plus board dts to use I2S0_8CH_MCLKOUT_TO_IO, w=
hile
I keep the LTS board dts to I2S0_8CH_MCLKOUT.
So IIUC that means I'd be testing both variants.

Cheers,
  Diederik


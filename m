Return-Path: <devicetree+bounces-265178-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIYzBp0bjmlK/gAAu9opvQ
	(envelope-from <devicetree+bounces-265178-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:27:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B4A1303F8
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 19:27:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 200C130360AF
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DFA927E054;
	Thu, 12 Feb 2026 18:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cZo/kQZT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D2027B340
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 18:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770920856; cv=none; b=hjJ7lLGx/QBr2/GGEw+omyYN2Hj/HSKXjzyefioVGFn62aR1EKk/4ZoxNU5q49ySfgCIHhsxsTWXT2lU8+2Ovmg2ztVmjdj7D1DftkAumFp/LhxUx8yP7SNKc7R/u8JJnI4rwgMb7X7zYApOFouunNjBBNhXWKqpC6l6G/xdogY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770920856; c=relaxed/simple;
	bh=ufmEDOIfuDt3CbFMJGieDgc3OFPQ2BpzxMovoK9k9II=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ufs9eBZEcx45aWCVxl+LJ5ndKgaWK6GR07ohH1QM+Ymzd3u3ad/h6aH0g9nc7b4jND16LuDBArVeDCFo2Isth5krvYfuyHpTW+ynd6DvhpygqZpp85jqUJv0zoDhMLmFqMrzmOyD5S4txCz9pq7UeUZRCvhEQQJc1inBnoly+wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cZo/kQZT; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-506a1b23c05so1732401cf.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770920854; x=1771525654; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CRTCx5otqsXIbaqSTlPHxkL1toAAMDZa7bOrLqMbOPc=;
        b=cZo/kQZTjS2vr5q1bFg8Vzkcsh4BkVL182YtD2u7NDBGXtyKIwaHmSJlDp90L0nIL6
         Zn87QmHrSsapG9WjxiPa9LtqJ4dPMNVlhCwxGbGXuLC+vPtu7RFCl+yzN021OXz7dB5X
         MMV8cITtg3Z8Vm5WVNakufIUctf75pGKbgr0kCAAitQZlk/sppz8zE/gcRfi4UYlyn1f
         N6qDfFizVLeiKtsXlzS9DuyiOYifLxHLXwyH5O95trf19M0b2HSDdIyewu+6VESi6+Bw
         8ktw982Z4Cw7X6GsIyYsrEofeTgiFI7XxswkQYh91xKt6N+TSiEbWrGoaEsiR8hxY0dx
         qs9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770920854; x=1771525654;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CRTCx5otqsXIbaqSTlPHxkL1toAAMDZa7bOrLqMbOPc=;
        b=qILLmXxXaGmsKA72dDK3u7FQLWGUbUyOuuj/t1T/g/QlDtDkgoIO2NroAyasmbPlpR
         oGvq7m/HKNhg7hKPBVHLvy8PI/qp71wPdGNzbC2GrRPCz1aokJBW2UejrEMmeq8hZd2x
         QvTxescD7YBpACUS1qvTunlJBSiS4LSy/tsTOd/2ZT0k7wZf5kHddHATmIGaaKHKEoCs
         QojipK/xVtt9PsACu6C+n/FU4uSd0/BJT/41nskL10u8zGaCcEVWjDMnRtAJhQCIgldo
         AHU0ZrFbUU0F/Rc16bNFj+OyZ4znmTfU/oRNpUXmWvLR6aVxLcO/BxKzuwYlLhprP/rr
         c8dQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAHZtNVD1CN00zqCVv4tpcdRBovSFiw7CLVC46fWhO6/0M8Wq6b5gUv3fYnFHyzNvoEQIFy7Ptxs9t@vger.kernel.org
X-Gm-Message-State: AOJu0Yy79ADCRaWRc8b8wNR49Dmp25xHF55gXLgRWKRapR10q/2S/7M1
	LQ3aEMkoe7+2Vy4tQsSGhIPh2s28PPaT5ZXY257hIrAr9JNfQRnoqsJv
X-Gm-Gg: AZuq6aJbMBCFAIPjkwFfiVcK9Q5N0SLO732bKhnQEvVa/VhqciqQIoymU8+w8VmbhnH
	xebnx4VhdoVxT1ntl5+uz2EerWB3+P9gbDm+e8LLz87PSiNu5d1t0NzOk0ZU+VKczq1ml9z3KqQ
	u8cy0KeL/59Gcocm6P3BeCfy9EX124D3S1TAy1nAW+1O6CnQriPSADsgNhpQ8MP9wc9MGaq7w4D
	CWbDQpxgKOqpsFfpAGCdHNIJMFsgG8QD7nhsAC7dDOWt9Cuq1/JBCRp3rIfIrNVP2xKnSqTr3Yq
	CngfQ8Q7xaOaqwlV6THWBOTm/GjAu52nrbYtgcrPLk/7Ev6h9OkFJegh52jKw/JGyRM6jGXdseV
	PXmWux7ArfY18z05SR/o1bcSyqWsiSPpwpUgKMCswimPEjXULorZDmJWgTCwLLkAJoNcd3cLsyT
	Jm5FvzeeXNTQgVr8fPZ1tdFUigKox+SA==
X-Received: by 2002:ac8:5d44:0:b0:4ef:db28:1f3b with SMTP id d75a77b69052e-506919e9f83mr53865011cf.16.1770920853839;
        Thu, 12 Feb 2026 10:27:33 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cc95acasm43835426d6.18.2026.02.12.10.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 10:27:33 -0800 (PST)
Date: Thu, 12 Feb 2026 13:27:59 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: pm660: add thermal monitor
Message-ID: <aY4br1BX9InqWUd6@rdacayan>
References: <20260210021819.12673-1-mailingradian@gmail.com>
 <20260210021819.12673-4-mailingradian@gmail.com>
 <e72ede03-94cb-45c3-95e7-63dff0ca3888@oss.qualcomm.com>
 <aYvNX718diaXDsBy@rdacayan>
 <f1fc24ad-054f-4731-b982-4c579abf46c1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f1fc24ad-054f-4731-b982-4c579abf46c1@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265178-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linaro.org,intel.com,arm.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.13.72:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 87B4A1303F8
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 01:15:04PM +0100, Konrad Dybcio wrote:
> On 2/11/26 1:29 AM, Richard Acayan wrote:
> > On Tue, Feb 10, 2026 at 10:59:20AM +0100, Konrad Dybcio wrote:
> >> On 2/10/26 3:18 AM, Richard Acayan wrote:
> > (snip)
> >>> +		pm660_adc_tm: adc-tm@3400 {
> >>> +			compatible = "qcom,spmi-adc-tm-hc";
> >>> +			reg = <0x3400>;
> >>> +			interrupts = <0x0 0x34 0x0 IRQ_TYPE_EDGE_RISING>;
> >>> +			#thermal-sensor-cells = <1>;
> >>> +			#address-cells = <1>;
> >>> +			#size-cells = <0>;
> >>> +			status = "disabled";
> >>
> >> Can we enable it by default?
> > 
> > No, the thermal monitor fails to probe if it doesn't have any channels:
> > 
> > 	[   17.728926] qcom-spmi-adc-tm5 c440000.spmi:pmic@0:adc-tm@3400: error -EINVAL: get dt data failed
> > 	[   17.728945] qcom-spmi-adc-tm5 c440000.spmi:pmic@0:adc-tm@3400: probe with driver qcom-spmi-adc-tm5 failed with error -22
> > 
> > Triggered by https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/thermal/qcom/qcom-spmi-adc-tm5.c?h=next-20260209#n945
> 
> You can define the following ones in the common dt:
> 
> REF_GND

Is there any (likely passive, if any) cooling device that should be
activated when this goes above or below a certain reading?

> 1.25VREF
> VREF_VADC
> VPH_PWR
> VCOIN
> DIE_TEMP

Maybe this temperature can be included, but I don't see any other
PMIC devicetree that has this channel ready-to-go.

> ANA_IN


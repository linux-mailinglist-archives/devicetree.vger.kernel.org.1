Return-Path: <devicetree+bounces-264586-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EM/ABXboi2kcdAAAu9opvQ
	(envelope-from <devicetree+bounces-264586-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:24:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 603E1120C5E
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:24:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B35530180B3
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25CE7306B05;
	Wed, 11 Feb 2026 02:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eO/UwQRS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949C5302767
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770776665; cv=none; b=V7TCT+WIqGK34g3S7WsyfBWnJ5oEtmol8PKZx7HmyBMfcqPlK5qCL5HDF0BmZFz7KPxh55dtfNYC9xRKP+TsgDGpBUe0MfmvBoPjbWMNFWBPJGzXf6YoF/lgdoVtewgKcGoDEnzzu5c51Ldz9PP4nxEiEwfFNPmHoIwE3yNIzw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770776665; c=relaxed/simple;
	bh=Gc0gOaoHzXbYc7NYkFtpNl/sc2DX8b0S6Hs8q7uqAEA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y55k0SaXGZYLFb7Q3qWxdKtBYO8YIPc3l7JzV3KhcsTX3ovfagyGtS4XNCiEIEUr+WnRI4iXTZzeBTHJwEj4XzQ6+D+FEn2yoJsxBc3ih6rpkqaqqWZFV+tC73TMou592pwZQ3ml27OA7FFmq4XWmqY/cVTw65+mj2wSIL6NbmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eO/UwQRS; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-8c5389c3cd2so153860785a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 18:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770776662; x=1771381462; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fhFxUnx/Epygu+crt0JPvhltwHI+RIY/8wqwIdbg8HI=;
        b=eO/UwQRSs2J9z2aAFCTHsq5DV2mhRA5jFktG+qJ5bHlSh2RBTQ1zIezZNBxxoEn30U
         OEx88CtmMdEo+L3ahnxkF78oH8EegJn7yhcUM3Nbp4BAPD65kfKuy7PSXBS1gKWf3dIM
         Zmrxf0ZXWeUFae8ZAaRijs9Yu41npY4B1suIrTsnPlOMJ6IbbnmOFmwoxxbY4FAclclK
         3IH9ErqK8SKuaf0vgJMZeze0W2vf1VNt+Y5DZaKTRNlbPg9ggLM57cSEYC1yWyNe0cmu
         rvWGzM8dBTkxeY3je2rQHkgbTuL2HLQJigB4JCYtkoODmPM/vS5S4wJrOnVXEI35gbOp
         Rb/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770776662; x=1771381462;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fhFxUnx/Epygu+crt0JPvhltwHI+RIY/8wqwIdbg8HI=;
        b=EY/CjnZy5aCA6AX9khyPU2gJGLssQMgQpQ6P1Ou4dnuj3qEAsc0etIZptFk6oAw+ug
         VOGmY+i3qsR9ici/4hCsTRdbHxMEGxzkJh+fU5OQ4y3vAW9yX49eKqhp53DkqyVU72jh
         aDxMIaGivZlPCPP7p6UtEAmtKFOh3AKrcLwQ7MbOng4TRj4uZmocMDEGW2EBd1Wtpc1Y
         7Uer8FynbRkleBtBvNgIRKWLOkKm/Rxop8b9uX2c334x4tq4ZDa0XNpDM9XOqNgwAsZo
         ge5XObXOS5DLhzt//Jgier1waMO+xoe2lAbKLUUuAhagC1HC5ZBqPA2wrYemf33r+Ns2
         t3KQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5ILsg8IfApw9DzIVIqcpRngx+7T/K0XShI3is+kniUKgdSQttXq8gm9PyCCUr2AinMaMKg7G+fh9z@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt11PvcchAzh5S1TlIQd7e+4vxqTfAxXZ2fKvEBYAv2k66I0YD
	ubYf/vvYduC96MnHjrxOA8tuD3KnvxdwzE7Z6ZgfSJfozZ+XQT/H7JN79+nS3g==
X-Gm-Gg: AZuq6aLIvNFLz1NqeL+KcgzojswRMJNxSvxgCPp6bL922guFF5e4QC9Z+GkEYvb631B
	MI7sYMjloTmU+ZthLHhADvzz2PRsL+pn5NKTzs1I1M58SrwliNkUe16Bwhe3GnxbtmquF6EMcNY
	a6snRs/LIjZa27pAjHyv3YHehwEHrzvMd1CdqV6+RCuTDJnK5LvcIjn7pOUoxJ1h7d62b3HzKzM
	Egg4VfO9Dxug1UYCdB+6nZaHalWKBRrtuWvAi7kDt/8k6m2D7cw1+K2GiHrZJpcyKrHWvEizvKQ
	O4SxF9eMruRN/UD82Zgmrxc0Lah/qSILf+HbYLvPtEOSsT+2liQRYsxizZZAFZoMpk9Zv68G8DA
	yvONfBmLMybtCwSoPKVmXmqBZDP1YyHqx6i30A6h0rWzpKPITBu3ohJaA+TVOYKTGoCg+1RdUEM
	4UfjHApF16bENMgRrkm8UUoM7mjw==
X-Received: by 2002:a05:6214:d8f:b0:895:9df:cea5 with SMTP id 6a1803df08f44-8953c80675dmr256086986d6.27.1770769732356;
        Tue, 10 Feb 2026 16:28:52 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cc823a4sm2007496d6.8.2026.02.10.16.28.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 16:28:51 -0800 (PST)
Date: Tue, 10 Feb 2026 19:29:19 -0500
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
Message-ID: <aYvNX718diaXDsBy@rdacayan>
References: <20260210021819.12673-1-mailingradian@gmail.com>
 <20260210021819.12673-4-mailingradian@gmail.com>
 <e72ede03-94cb-45c3-95e7-63dff0ca3888@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e72ede03-94cb-45c3-95e7-63dff0ca3888@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264586-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linaro.org,intel.com,arm.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 603E1120C5E
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 10:59:20AM +0100, Konrad Dybcio wrote:
> On 2/10/26 3:18 AM, Richard Acayan wrote:
(snip)
> > +		pm660_adc_tm: adc-tm@3400 {
> > +			compatible = "qcom,spmi-adc-tm-hc";
> > +			reg = <0x3400>;
> > +			interrupts = <0x0 0x34 0x0 IRQ_TYPE_EDGE_RISING>;
> > +			#thermal-sensor-cells = <1>;
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +			status = "disabled";
> 
> Can we enable it by default?

No, the thermal monitor fails to probe if it doesn't have any channels:

	[   17.728926] qcom-spmi-adc-tm5 c440000.spmi:pmic@0:adc-tm@3400: error -EINVAL: get dt data failed
	[   17.728945] qcom-spmi-adc-tm5 c440000.spmi:pmic@0:adc-tm@3400: probe with driver qcom-spmi-adc-tm5 failed with error -22

Triggered by https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/thermal/qcom/qcom-spmi-adc-tm5.c?h=next-20260209#n945


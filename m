Return-Path: <devicetree+bounces-270268-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJmfHpZGpmlyNQAAu9opvQ
	(envelope-from <devicetree+bounces-270268-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 03:25:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 233B31E7FB0
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 03:25:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04E163085C38
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 02:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF00D3750BC;
	Tue,  3 Mar 2026 02:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HhrFmahQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6BF158535
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 02:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772504720; cv=none; b=phgfZCL2wg/B4INBxOt/0cFui7EXyc8vctLERFn6ldtLdCFnIaz6KyMkzQtUkkacVbQA+qACXcCp8TSOrp9wk2TcLrKD26KDyfupKdcLLr9bsh7rDjqdv/q0fwIx+ZhKbi3Jyvg+tCrP6va87CrT9VOjKInn7nTnYdYySV0FzEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772504720; c=relaxed/simple;
	bh=ifvNLhNdiL6AWdShIgX/PWLQhJhpX31rZnlJXn+DfJs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aOJ5+RM4x1Mfx0LWGUI9Ijl9jBuN9TAL7ckoJ9JGz/EcaLqAO/Kyui1L5gZCamGKjY2rURtlaOIjxxl5TIwuPCFwxcjRg9WMCWpm7LQN3x02Zxm7c7RIPEIviHCrY9d5Rn8TDF4Z6FtBaqjAWgPTucMKafxWkiFAgMpn4UWiiik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HhrFmahQ; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-505a1789a27so31030321cf.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 18:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772504717; x=1773109517; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=17vhc0Hs2JiBGh2C/Kc5owCSl8j4M6mqkAnMUAkK1nM=;
        b=HhrFmahQa772OYkgAUf5Re+bF1UNgnpryrs6sWqDM+VLX/LVTjarY3wGXoHhzXWAVb
         gufkibXJPdVSx/9LTI7O0rL88lx8m6mM/1vKwpR4Zgb5CwKbRHTRUQOMtRStSLHRcjC2
         I93pLyX0byzAJOiVJg+BH8TIs3fGeSNMaEGfXN+nP3O/9Ww4j5ykPSNtYpyc998lxc5u
         gcouU2LIKtbBV59smYtTFV7iE92jy8k1AJgCsNBC9ApeNLIuIswVGUiV1Yb6F5dD3r85
         +NynFBJz6JOpsdUlPt093AfSVeh1qO/9NEVnrGGPbrMJC97nTDQPia41fxf12klPz6sz
         vM7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772504717; x=1773109517;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=17vhc0Hs2JiBGh2C/Kc5owCSl8j4M6mqkAnMUAkK1nM=;
        b=vg1/knQp1l/LcCwm1bNR/Vbk8R07ykN6Yvv2iuX2rWRy5w940n9vKfrQHlUY3yqBBj
         qaDqn14ii01cYsIqFEZUwT+IrNhVYYVAF7ng0TUnnXuKcrh6/5pi3b9obxrW+H6AcvUd
         q7ccgu2r7XVtffpl7d6SIIUzkKqd4xbcOgs+8V7JG1EtJNkN3w/GFq4Mrr02D0NMwd1g
         LDP09E66C9IN7xQ276ZtUtlGW8TzKktg9AO4GmpblU7+w9cHSNNgrTgegmxFgLDvldv6
         oktJacEoFkBp/dkEqKR9tHCXU7szBNrCcpt2r9hULlGAnZZT+oOWahbN7YAv5YtkiB1a
         Ioyw==
X-Forwarded-Encrypted: i=1; AJvYcCWi5hGF7yP2DXsPzsKvOKve23sJtfA02OGE46GimLAizhybn62RBxdjRhwGIVYYkRz3WMGhSpVC0ksq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3kY2+8U8FC0JGMxe5MksprQsZPqhV2KQqt3IoAGW75wnQS2yR
	VzhV4zbUDVq7QuBoU7Z66iA77/po5zsmkS9Dmxynt6RRbl7T2ccwdENB
X-Gm-Gg: ATEYQzzqI5Zuc/dy3wI9mnc15Mikn2/NpGGxxihNEA+xRAjtu+b+p4nwbuQhjvf/Esq
	ziU4Fgb0mFzR9Sgq4Ateuep1x+G0g7cA3PlWhkLsjPbjap6gfKswrJoXCjlrC+rFK/EZg06q/9h
	lkaJJFvcOfQLRKWZtmQkHyhlAzU8zVUIKLQoo6g0SX5cy/bxPSwmZwQGObdBzTHckwzSJv2481C
	eMKfyP9YdkUPLNd/KLIV0r4LV4F922kxJFTBy6P4EDWVwJMlXSN3DEkyEOvY80B4rMptUKBZBA9
	tytdmD2ZtjD1nUkXulfueRHSVAj+wtl3jTQM/BZhGXrhTGWyscJtBwWMVC01JAFnZ90oJsftkms
	fAmb+t6pVGNx5aI5hKvbiSakdUat2fq+d7YxTAqg6ocUpNbANiRDVtnqtBAWV+JcNLDjxbnIOn7
	HJ6BQVziuHQuvNLJj5/0r7umThUw==
X-Received: by 2002:a05:622a:190f:b0:4f1:e9f7:4dee with SMTP id d75a77b69052e-5075296e804mr188944351cf.35.1772504717149;
        Mon, 02 Mar 2026 18:25:17 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899ff659b75sm29430186d6.34.2026.03.02.18.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 18:25:16 -0800 (PST)
Date: Mon, 2 Mar 2026 21:25:46 -0500
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
Message-ID: <aaXKyIJQA9SFqt41@rdacayan>
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
X-Rspamd-Queue-Id: 233B31E7FB0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270268-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linaro.org,intel.com,arm.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.0.13.72:email,0.0.0.85:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 10:59:20AM +0100, Konrad Dybcio wrote:
> On 2/10/26 3:18 AM, Richard Acayan wrote:
> > The thermal monitor is used to monitor arbitrary ADC-based thermal
> > sensors. It is suitable for use in thermal zones. Add support for it in
> > PM660.
> > 
> > Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> > ---
> >  arch/arm64/boot/dts/qcom/pm660.dtsi | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/pm660.dtsi b/arch/arm64/boot/dts/qcom/pm660.dtsi
> > index 156b2ddff0dc..7cedf6980b34 100644
> > --- a/arch/arm64/boot/dts/qcom/pm660.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/pm660.dtsi
> > @@ -197,6 +197,16 @@ channel@85 {
> >  			};
> >  		};
> >  
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

This is for the ADC thermal monitor, and not the ADC itself. I don't see
the need to allocate channels just so this can be enabled by default,
since the thermal monitor's purpose is mostly to send interrupts when
the ADC values go above or below a certain threshold.


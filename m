Return-Path: <devicetree+bounces-273802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJC3IA3UsGmLnQIAu9opvQ
	(envelope-from <devicetree+bounces-273802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:31:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A7225AFA0
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:31:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EAC0A301628D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25340278161;
	Wed, 11 Mar 2026 02:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mdmMt3LB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C815226D18
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773196299; cv=none; b=G84n1z7uuLMe28Qgy5wjZ5LxcU3LrcVOA5NEXEq4PdRDqYpr73YwYYX7IMPiYZDOEOwNjpEb0bjoOlmK/SyIV0AhS3/QiQsXR2Ola8xUZzJLBAw4Zq17KmcRg068b0WexbGamBl0hyMJcg6/+2xdocc5saP/FxgZzVz6s4JI7vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773196299; c=relaxed/simple;
	bh=Z03M98zWigFP+44qUkERvggDlIvToobmoebeK/UHstM=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WXf2rkWQuOxVCop2np4imW9dIezwC48kAVg+kHV3zBSjbJlEV5dj2E3mbvJ0qaOWuGW9ENWwkIdfkuwZjwl7T7x2WAleFiBZFheQPQzNSr3DetTwRf8GONyvG1pVD6X5tF6A///Kp60ivOUMVY0f7ufLyXmxkEdGu0Z1FLimgR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mdmMt3LB; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-8cd830404c2so319877585a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 19:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773196296; x=1773801096; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RYASA5o0ARek5BWoJ2TGPTOQANHoirb3AbtC/R8tQuA=;
        b=mdmMt3LBunPA/MJJTZlNIXogCk95vnBkSpC1MeDsk2Gtb3dcrPiOjE7LyhWC0u4VYA
         OdCI3i+G3QjclEPWhLHl/a0M6O01BXDyfz+ogybhweuB/dWJDWwFBmkMnCQ1UIAdLMny
         wVGTD29n99ueGHDXsLh3m7Eo/U756kPPlpE3xgidbqW/EAip9Wa+o1V9tG+AteMfJxfh
         MUCdLLP5Ay+m+uXwny9cO039rXNzRGAHtrap1RJdLZ7jPRUm90PR/0i0IU9RJv7QF99n
         GrAHU6zzJO2lZjsQKvZdtEDcosXsuHT++77k8sCq36R/3WtG1Z2zn845stYL6ezeYcqP
         xYjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773196296; x=1773801096;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RYASA5o0ARek5BWoJ2TGPTOQANHoirb3AbtC/R8tQuA=;
        b=dEVrY3pwvaki2GtzvTR/JpKRHYLX7IknxVm5GpMvwDSlKE2wKDeeDkW4scXIspw8yK
         t/NooFnm2a2U5LzAscN/Ee4DUZcWvz8nA6hie4x9xq5fFhQeZbaAovTfUB8glje6iSCi
         jetMqZGQB3gDm2A+WDJ3L7A2onwCliLY496L4wDgekSj834k/ruGFFGTOh7GiVlpFsSU
         TBRPzc0i3sQH2ia3s3CcP/9N32deJCsIz8v7VQ82yaF1l4nh4B4EQ5TP2TITj0Xi3BEI
         PTHrcgrEwTCNo0KavAD5je35YDieQACfLZ3ThIO7wQ+4OJprMuIAdHjrRIPcA20qoaEx
         kusw==
X-Forwarded-Encrypted: i=1; AJvYcCWOWN9LRH3N0dmkejbdlWMYJOhPK/o2M0QiKVRdelvkXcsSbIS3kxMU3d11PVgUXd20CLmugVfXo4LP@vger.kernel.org
X-Gm-Message-State: AOJu0YzA7jcwPZU0pw6+MbR3JmeV+zx4DD9feFBylOQt+ExdKk/xfstE
	T+FMnaNB851/mY0z9/5x9196siw65if+tsbgfmmTa4D5aYqE71giWgGo
X-Gm-Gg: ATEYQzx+uYF/ps2coUoKNf6uOE5cwyYFLzHNMUoCGfXvP11B7UEw94z4Hyzr46PnIAV
	oKSQQylX0ynmdgxYhm3mTzKHz0biBsnktHNHd3eLdOp6db2YEoiSUq7Rc0aA2wm3VptuC6nTqLV
	D4R3nxtppANzqIDf1VfdLuyZo76tyWqE3WEM+jBsnxWhkjL3Dv1rXAMgB2ExLeSyRtEKVyOcbe0
	CkWuQG0JgubbE+C6bpWefqEIkFBu/4lxwtKMeta+Tcoc8149wqYZLyyAvDiYwx2iC4Y0YtDw3aH
	sIf1e2YXViGRLn8nm/plSomLpSIzLkSn15tNcBc91jkdaqxLNZTI6rpy/U7WfqbcD8q9TQuyFgE
	et/ltWm4v4FFakqbIrNVnw54lHKNjnomMGJzWNFsmO72G7lsl0OoHKD7mQJFu7XAxjXJfnUmxw5
	o+KvFJcH2Oe8hAcAADyAYnFlEI1A==
X-Received: by 2002:a05:620a:4153:b0:8ca:305b:748e with SMTP id af79cd13be357-8cda1a5595fmr128197685a.57.1773196296096;
        Tue, 10 Mar 2026 19:31:36 -0700 (PDT)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cda2166a79sm45713885a.49.2026.03.10.19.31.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 19:31:35 -0700 (PDT)
Date: Tue, 10 Mar 2026 22:32:07 -0400
From: Richard Acayan <mailingradian@gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sdm670: add thermal zones and
 thermal devices
Message-ID: <abDUJ4ymu-Pv7qnD@rdacayan>
References: <20260310002037.1863-1-mailingradian@gmail.com>
 <20260310002037.1863-4-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310002037.1863-4-mailingradian@gmail.com>
X-Rspamd-Queue-Id: F0A7225AFA0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273802-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,arm.com,gmail.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,17d43000:email]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 08:20:37PM -0400, Richard Acayan wrote:
> Add thermal zones to safeguard from overheating to high temperatures,
> along with the thermal sensors (TSENS) and CPU frequency limits (LMh).
> The temperatures are very high, but should still be safeguard for
> devices that do not specify their own thermal zones.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
(snip)
> @@ -2289,5 +2322,372 @@ cpufreq_hw: cpufreq@17d43000 {
>  
>  			#freq-domain-cells = <1>;
>  		};
> +
> +		lmh_cluster1: lmh@17d70800 {
> +			compatible = "qcom,sdm670-lmh", "qcom,sdm845-lmh";
> +			reg = <0 0x17d70800 0 0x400>;
> +			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
> +			cpus = <&cpu6>;

This is not supported.

> +			qcom,lmh-temp-arm-millicelsius = <65000>;
> +			qcom,lmh-temp-low-millicelsius = <94500>;
> +			qcom,lmh-temp-high-millicelsius = <95000>;
> +			interrupt-controller;
> +			#interrupt-cells = <1>;
> +		};
> +
> +		lmh_cluster0: lmh@17d78800 {
> +			compatible = "qcom,sdm670-lmh", "qcom,sdm845-lmh";
> +			reg = <0 0x17d78800 0 0x400>;
> +			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +			cpus = <&cpu0>;
> +			qcom,lmh-temp-arm-millicelsius = <65000>;
> +			qcom,lmh-temp-low-millicelsius = <94500>;
> +			qcom,lmh-temp-high-millicelsius = <95000>;
> +			interrupt-controller;
> +			#interrupt-cells = <1>;
> +		};


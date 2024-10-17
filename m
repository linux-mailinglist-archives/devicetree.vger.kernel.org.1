Return-Path: <devicetree+bounces-112505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8DB9A271D
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 17:42:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBBCE1C20FEA
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 15:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5967B1DED66;
	Thu, 17 Oct 2024 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Rc7X5/7r"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA551DE8A4
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 15:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729179743; cv=none; b=b7BZancYDCFnnaW6wGBiafE5e3OE/H2eag54xAjA1+ypTgWs+abwhsAyhqiT9t2j43AlOcAO6zds1qEYVxBojrU5RmB1ERT70G9+IIrIP0TC2dedXDj3O5xGSTnJDb/rVckK+rfQT11jvJZjbgVjoJ7QTv42xs4k9eE/gLuOOMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729179743; c=relaxed/simple;
	bh=Q5AtdPEm1PuN3XeHZLXsinD5ecrZzps7l04Ib81p5f0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=thIRorI87gC6OEA3BgK6d561G+837bWbtEtDVwrAn+v6AUYrvJeC9tDTVoRRVGRjVO0fKxebcr2ls31XHSEghnexTaAJVCgCwSD15K9DMlbxkDXL44rjehTld/n+6Xpyanr7bOYresPzvFDaamLTBaz27WGEhMjc8+oT4EQr6n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Rc7X5/7r; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1729179740;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=V7nlaMmwkDWBlLKSYgZgz6rCQ7wh+bD5wdO571q/O5s=;
	b=Rc7X5/7rwz/+iPUT2zios+TWYNfn4va16n0+AUUqxIB+L7ojoYaB1p7R264k9bSH0CvvSR
	bgq40Cn68Ni5EKGBX3waAGzfuKxmFXyhTA3S0E5sO8RWRu2xxmDh5+EZdrbBrEIYV3m0o+
	d8HXqumrrrRd84Krd0iIvehEwyL5BJ8=
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com
 [209.85.160.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-81--5xogkFLM_2h41tmP-zI-w-1; Thu, 17 Oct 2024 11:42:19 -0400
X-MC-Unique: -5xogkFLM_2h41tmP-zI-w-1
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-2886d7f00f4so1277214fac.3
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 08:42:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729179739; x=1729784539;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V7nlaMmwkDWBlLKSYgZgz6rCQ7wh+bD5wdO571q/O5s=;
        b=SunnY9sbWXBHW9aPVEXrOWXJYFv2rnzOY1pcCKH3hXKzi8UykbSmzUkwtuzDEuMID3
         h0PUphziuZFCQEDaIHsyzaV6C0khPcALMq5hqdSC8qkr7mB/JNeBq5/xqV5Y1saERzmS
         MebQVLTTqL4WdqkQ+XTuVO0rDRVUGUPsh5PtvNb47dDk/gygnorSGF5AquULXqYQ8Rf2
         Q+xEdujUbA5cErsl4AZDbpyonPD/KokKcOt7SuYpsit5mN03wRWmpLU3xdzw3hvXE5jD
         +PKB5+u5WbEO8i5S/FdMAXAWAsPybp5cc25Dv3T5hUXqVVk1qAiYkquR8etlC2aSpmhZ
         Wn+g==
X-Forwarded-Encrypted: i=1; AJvYcCXFrEKmXriEkBXebvzjdskWZ7+6y3VnsPucqEzfjXH+fF0K2HjRR+6iVcKgUmTGk/Z3IjwHHTgSuE5u@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0Teh2dXqrmeLwkUz0bLmxZ+4no2uepG4jJp68ZXAP0bBXKVm9
	bWCHd/wSCF8ihwvNhJiQ9k6FuxIizzDU+tksGjHY8lWJB67b9LOgklkLqeKcwhEIdoy16cFxFuK
	GaVGdID02A9L+igZFy8ZRAFbQaKfWAzKfnMM/7KTuMM18zntuovfIyMpwcaA=
X-Received: by 2002:a05:6870:4691:b0:287:3fa2:8978 with SMTP id 586e51a60fabf-2886de2fa6dmr17557329fac.27.1729179739053;
        Thu, 17 Oct 2024 08:42:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHTiDT+m1aEWffgqxEy8Wl41c5Qgk4pCN7PTXVak99nDs/BXI21P+GiCClP6rUO/EGE5gecg==
X-Received: by 2002:a05:6870:4691:b0:287:3fa2:8978 with SMTP id 586e51a60fabf-2886de2fa6dmr17557306fac.27.1729179738733;
        Thu, 17 Oct 2024 08:42:18 -0700 (PDT)
Received: from x1 ([2600:381:fc16:a0d2:12c4:d014:b458:d7ae])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-288dac77a49sm1383337fac.29.2024.10.17.08.42.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 08:42:17 -0700 (PDT)
Date: Thu, 17 Oct 2024 11:42:13 -0400
From: Brian Masney <bmasney@redhat.com>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Ajit Pandey <quic_ajipan@quicinc.com>,
	Imran Shaik <quic_imrashai@quicinc.com>,
	Taniya Das <quic_tdas@quicinc.com>,
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
	Shivnandan Kumar <quic_kshivnan@quicinc.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sa8775p: Add CPU OPP tables to
 scale DDR/L3
Message-ID: <ZxEwVShJuMH4J1Hp@x1>
References: <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-0-074e0fb80b33@quicinc.com>
 <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-2-074e0fb80b33@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-2-074e0fb80b33@quicinc.com>
User-Agent: Mutt/2.2.12 (2023-09-09)

On Thu, Oct 17, 2024 at 02:58:31PM +0530, Jagadeesh Kona wrote:
> +	cpu0_opp_table: opp-table-cpu0 {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		cpu0_opp_1267mhz: opp-1267200000 {
> +			opp-hz = /bits/ 64 <1267200000>;
> +			opp-peak-kBps = <6220800 29491200>;
> +		};
> +
> +		cpu0_opp_1363mhz: opp-1363200000 {
> +			opp-hz = /bits/ 64 <1363200000>;
> +			opp-peak-kBps = <6220800 29491200>;
> +		};

[snip]

> +	cpu4_opp_table: opp-table-cpu4 {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		cpu4_opp_1267mhz: opp-1267200000 {
> +			opp-hz = /bits/ 64 <1267200000>;
> +			opp-peak-kBps = <6220800 29491200>;
> +		};
> +
> +		cpu4_opp_1363mhz: opp-1363200000 {
> +			opp-hz = /bits/ 64 <1363200000>;
> +			opp-peak-kBps = <6220800 29491200>;
> +		};

There's no functional differences in the cpu0 and cpu4 opp tables. Can
a single table be used?

This aligns with my recollection that this particular SoC only has the
gold cores.

Brian




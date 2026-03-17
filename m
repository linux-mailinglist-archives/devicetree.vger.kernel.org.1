Return-Path: <devicetree+bounces-276604-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UO6COXoouWkAtAEAu9opvQ
	(envelope-from <devicetree+bounces-276604-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:10:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8332A796F
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:10:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AA0EC300DECC
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:09:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D3723A453E;
	Tue, 17 Mar 2026 10:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y1Esk/jT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAF739D6D5
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773742181; cv=none; b=BF74CFoTMgTDmHGQquW2pUGeNmzNMCbOTIzWa3eD8UiDQUZNsuWwaOUpghlvjIqQPVYPkq/OwVoz8lBop8qqqbaFYWb08alRiym+n66aiXA/FwK3RyX7f+4s/9mONLQvvw/EEB00YBK1UmJjZbpju3qHAqhnuKonvK84GBLImBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773742181; c=relaxed/simple;
	bh=OqmWochZOytzvUoNkxdE9olEAu0hpFtd3wiByC6KQyQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DKHS6tBFuUDGSD/odHvlZAX7vFFXAAP3faRk5kUeWO+19pK5v9LXCPIfSqp1vzFwaMUMXHbXo9DfHN0GVRZjUyu4wWUwwRi71qJwSRgkyOntlc7+ivbyIv4J8kR2J8NaMkrMTAz/XtDMW0O4NYaDpZMwIiSVMPY7IYzTJgRSEQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y1Esk/jT; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c70bfef17a4so3676415a12.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773742178; x=1774346978; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1Un1wiHsgvfes+CCx6awc5HDdn+2ON8vEWorQweNHdM=;
        b=Y1Esk/jTm7/5AIOQI/GhQmm6bLv2S7LUxrptn1P6h/d22Q0VMDjzurDJXf/eTtv5RU
         aJKvzctYMsrLzWqILhTztuWjoQXJtIf/OdjMaRcUbLaR0piNUO+VW304NAl3Q7GKzpHc
         6lR+l3xMvrpj6aw7oM5W4vDAXSC4h480RWstqbm63OSetq2P+LIi4XvGf5K73jWFyC8h
         71rv8okoU0C0EDnrME/x0LjmIkoiCvjoz03SZgEinzhRrG/zdlmbyc1+ZWpAnFcy2ARO
         uHZYK97XJ7JgyzmrBxvJ14ViGtTMX7gJ9SAf8Cep+Lv03oN5REGV1UzEKbsoLTDyRv8W
         x3VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773742178; x=1774346978;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Un1wiHsgvfes+CCx6awc5HDdn+2ON8vEWorQweNHdM=;
        b=f54m/FswQvNqyBkCMw5x3OKa5lDebGW6nK28JtGEnT7HdwDYcxfNoeClsTIyBpA1Lr
         VTIoKWRKUqwOHwa4eQpJzieY8oL6QEuFmRr+blov3THU4XBnA4DXkVQkHAodUKdPkqTB
         yq7+B793KNqQP7yBxJYUGZdYtCLlUXwPP2prvGAD0lXejLG3hTDFXydCxTxMs6E3aC3D
         QNe77cnA/WaRNfrNIEfb0YmnlfSL3Z/Y2KcJbkiynlP9a7CVPfg6HVq4kDBtlm3lsVhj
         IYn8/dWDs7qn/YmyC3ciu+x0AUhU9uzGtHQJBE2f6A13OigUjE9nSDYmVUr90AEk3a4D
         ufPw==
X-Forwarded-Encrypted: i=1; AJvYcCXDu/o5QLfP5BZTx12FdwubZ0ioxptLBOJ056lsYamAEYh3NmVo30gsOFGTkDADc2uGXcU+VYZuiAgP@vger.kernel.org
X-Gm-Message-State: AOJu0YwZBfqbBnCFxh7pKVn9uCO8ygrHkN12L1TP7r/KIjR51rWWOgO7
	g0b9BIZr06UjLQcb1iNO6v4mFPEQ/QmXZZydh3BpmEcyylb6wsKmYtd5yZ1ViXAAkcM=
X-Gm-Gg: ATEYQzzd8gHeWaMHRDjkece+KgmVYWaDTV1p7yFOtQCG77a6qvvAO52sSkx+WqOgN5g
	gGBDPOyIMsS+HCrWf1y0e0cz96DdcxakUkpBdxC92nnb4LkqBlcSHpf00G1KIMU0K6W1nE4FTQk
	vD290XJOYO1keS/2GuzA3ceOwPXU83UBvmPjUSoB0qxFyD6Mrwqwe7Kk9946+1tg4fMAukqfx4N
	ZH3c3uCbgko+6eiRCoM9DIJdqSA82AuDWDDg6923QXzjnlI7BTTLNHkTYlUkWm5Gw9HmI0lccZF
	JubNPymPq+zyeeM6RsI+ijA6GdINiT6qgEeZqef/O97OHJ6cVXAZRXZYC99xs1u4wEQ/O98Hiyr
	8yLtC2Bu9cmNx6U7QvJbCHqdnUGnI3gigFSx8L0OvUZeUT1Irt7LAzCD2Yvyn3ThXbT2oByCLn8
	9CtNdavJq2fQk0hdLB6fKY/9Mr
X-Received: by 2002:a05:6a21:b88:b0:398:b16f:7054 with SMTP id adf61e73a8af0-398ecb6b333mr15143354637.32.1773742178157;
        Tue, 17 Mar 2026 03:09:38 -0700 (PDT)
Received: from localhost ([122.172.81.200])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73eb9966cesm11364743a12.10.2026.03.17.03.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 03:09:37 -0700 (PDT)
Date: Tue, 17 Mar 2026 15:39:34 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Abel Vesa <abel.vesa@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Abel Vesa <abelvesa@kernel.org>, 
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>, 
	Taniya Das <taniya.das@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Fix OPP tables for all
 DisplayPort controllers
Message-ID: <udbyliefljz3p7jokufzc7tjgkp43ekxqmuio5or7abhlzzb6q@wkh7mbj23xo7>
References: <20260309-hamoa-fix-dp3-opp-table-v1-1-1a8141d71f9f@oss.qualcomm.com>
 <2f4e4cc7-2600-482e-88d9-d4b20d328a72@oss.qualcomm.com>
 <drcot4oxpea5lnpa5htrrl2n6tcc4ocxmb5vsho3ocouvajwlo@6ueabivtjy4h>
 <7d8211c5-7b12-4349-a329-cfb51a918a1c@oss.qualcomm.com>
 <6qhpiiroqnpzg44i2j5rgmlw7uaffw4t5z6gv2kgubfoqpktpd@r7h75knlv5a2>
 <87a103cf-d066-4319-ab68-bea3463c0fa2@oss.qualcomm.com>
 <4gxuy4a37yr56p7ialwpovzjeizic522ttjqrsivx2murjyoy4@eolb2sdb5tq6>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4gxuy4a37yr56p7ialwpovzjeizic522ttjqrsivx2murjyoy4@eolb2sdb5tq6>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276604-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viresh.kumar@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:dkim]
X-Rspamd-Queue-Id: AB8332A796F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 16-03-26, 21:38, Dmitry Baryshkov wrote:
> I was sure that DT bindings mandate it. However, the bindings don't
> include anything supporting that definition. It simply says:
>   Devices work at voltage-current-frequency combinations and some
>   implementations have the liberty of choosing these.
> 
> Viresh, what is the more exact interpretation? If we have a valid rate
> for which all other params match the other defined OPP, should we still
> define that in the table?

The frequency in the OPP table entry is the highest frequency at which the
properties apply. You don't need duplicate entries in the OPP table if rest of
the properties are same. If you look at dev_pm_opp_set_rate(), it preserves the
frequency passed to it (well modifies it with the return value of round-rate),
which is then used to set the clock eventually. The opp-rate isn't directly
used.

-- 
viresh


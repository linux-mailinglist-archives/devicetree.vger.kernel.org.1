Return-Path: <devicetree+bounces-317178-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NBbYCUOXQmoZ+QkAu9opvQ
	(envelope-from <devicetree+bounces-317178-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:03:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 937766DD149
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:03:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=YFbWDVIr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317178-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317178-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ACABE326E965
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 955644279F9;
	Mon, 29 Jun 2026 15:50:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B520D423168
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 15:50:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782748203; cv=none; b=aZgi/VSBzkZyiHoMygFggw2gWXW+bZ55ZeqesQFubm+UJJtg/35CeD6+WpTbYUByZXUHjbDXS3plR2uzGN31ZV+3dK3zyOeLlC1uIUC9pC3hjDZjDl2SE2I3LP39EYgh5iZD1cjSpnXp/xpWiNRXrP5l1aHfhogFx7gA1ITmmfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782748203; c=relaxed/simple;
	bh=FvAkBlrDul53MqSf7dXilrxpK5UVNoLSDDz7Vhiv9M0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DCAVd6Xr0vzCI9oSaoZevXocDKGH7s8I4tkGmGjHt7yQCjyQDQ3CPABC5d0fQ4NGYFishx2gsgUeSM1G9ieeeBTQ+P6Oq9SZ/vLZ8lt1DDWfadMgfIzIClrZ6cmDFu8gJdZJ2uUskgZLRqBFfCdtPpaGRwx2M0NWwbSLgxtRRpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YFbWDVIr; arc=none smtp.client-ip=209.85.221.46
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-4624a44e152so3197438f8f.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 08:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782748200; x=1783353000; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S8F/AaDG34/iqAettwKK6d/jlB5pV0kvSFjCSNAXI1E=;
        b=YFbWDVIrWCerve3gbXxWJ39kbKOMTYzPAYwNX47zI/AWo6wELjuFgFDbXmHAYH4P9C
         h7My/ZpbdYaJ82fDuBOaZCq1NLMsmQS3eeTl5IGW84DY8LxFlU6wp0xo+1FR2rr2MnDG
         1urS++pm7yza9dD6xQFAqjQUk3jnIDRRzDceKIHOfD9R7c/UNL5eCF9XHzYGYOx33eUr
         GSVU//nMLK9i2VIjYUv6LkKtz/F+SslY/Kb/GTPEh3RekYfr4caZf42kFMF8Y6mSS3nU
         WAyP5AOrsfU7RYrT+nDaxwXFMKUVeYHaFuhu1axvswOg7pkrPRNW/e4gYn33jACWtn/V
         3szg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782748200; x=1783353000;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S8F/AaDG34/iqAettwKK6d/jlB5pV0kvSFjCSNAXI1E=;
        b=HU5zP2scmKm9z7y9/PlnDaj4zwcP38LfFfjiy09qdgQKv0bh4zR9vtedzGKbw5GQ2y
         mIhtjcmC6ii98do0JRUJuj5RG97iQJsEcOobUvRQtQpj9UP8Q9APqZgVFwJAdW6GH5dX
         pNAQi9/SYT3q6o+HszgLHXvtqLYuu/5fIVaaV8CK8P6Ezn5Ixs/tMzVkhPvpjr3inYt6
         YqhIwkl2uY7CWPmZwWju8Gy8OjwZWT5tGAr1PXyepb/IKskX1NGS+SrecBfEmwctrL8U
         25P9WWxvvvPrEVs+NCjrpCNAKTlT4qO00h/7ymTKIzf192BIppK+cun1SEQOVLcKN27m
         tjUw==
X-Forwarded-Encrypted: i=1; AFNElJ8Z9p+lvf+TwkT3DEa6tzcmii8jU8uRWhcN29cb12VTKBXM5VN3cwtk44LNt0QTL+NaPPzjk2BxE6hK@vger.kernel.org
X-Gm-Message-State: AOJu0YxVm/OK0kWTJSQE4Vz1FF8XDJegt4lDq5wtLQngwn+44/cqmjb0
	YMWnWwioVYqdCVbrSbLmwpjL5gk8VMf8cH2/Ib7NRqU2EDiq6W0qvWsLNLY7sSfLLuU=
X-Gm-Gg: AfdE7ckdhSCaxWySOhanJm/MFvqrJtzp0yCraYaoTChcYu6UTuijzH4LEVxb2jAP8mh
	0CLTNScl4bE1p8JgxUqKdFZrS7TmDlH7RJQaCD+c81y4+5o5Hq52PP3rEKQRLZU0Sz4LHvNw20c
	msIGamf7fYcMNjjjx6c1wf0mHyhySD4Wd+kfqd3Cl3iZVcWjYJBm8zPIp1UZEd9ASIjvHv4Ixen
	y7Byt7+ZTJNWaPns29830G2lzaokaI5ZtYPMDbZQjjNB+CsUZvVg3QFLX08efPtwAuiylXY0cfh
	cUrIpzSn4KgxmFEa7bwwRIN8aKybO0ShrmqP5nDIEV4Dizk4vGiavPZiUlaDf62xyUFXGLHaltA
	ixDO4NIHWhwhifsDHl0d7vY6aBSpsjA2fAWXKJKPIGAzMVa2mmr0ce2WFj9zsN1y5UfmxipVjwC
	KuBlvKUzKYJiWr7tdimQZlwJk=
X-Received: by 2002:a05:600c:6288:b0:492:490b:a604 with SMTP id 5b1f17b1804b1-493b82c3c58mr3530045e9.37.1782748200122;
        Mon, 29 Jun 2026 08:50:00 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff24:7210:5f1:38dc:c145:9ce3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493b76e03b9sm15543205e9.3.2026.06.29.08.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 08:49:59 -0700 (PDT)
Date: Mon, 29 Jun 2026 17:49:54 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Taniya Das <taniya.das@oss.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Georgi Djakov <djakov@kernel.org>,
	Shawn Guo <shengchao.guo@oss.qualcomm.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 04/12] clk: qcom: gcc-mdm9607: Fix BIMC PLL definition
Message-ID: <akKUIsKtWXNYSaxA@linaro.org>
References: <20260609-qcom-clk-mdm9607-fixes-v1-0-5e9717faf842@linaro.org>
 <20260609-qcom-clk-mdm9607-fixes-v1-4-5e9717faf842@linaro.org>
 <022fb465-df10-4d95-a05c-1ff8e59558c1@oss.qualcomm.com>
 <aimlsgJssczxBGhQ@linaro.org>
 <1b30fd97-b298-435d-83a4-944e536bc8d4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1b30fd97-b298-435d-83a4-944e536bc8d4@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317178-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:taniya.das@oss.qualcomm.com,m:andersson@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:djakov@kernel.org,m:shengchao.guo@oss.qualcomm.com,m:bryan.odonoghue@linaro.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:dkim,linaro.org:mid,linaro.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 937766DD149

On Tue, Jun 16, 2026 at 12:52:48PM +0200, Konrad Dybcio wrote:
> On 6/10/26 7:58 PM, Stephan Gerhold wrote:
> > On Wed, Jun 10, 2026 at 10:43:12PM +0530, Taniya Das wrote:
> >> On 6/9/2026 7:44 PM, Stephan Gerhold wrote:
> >>> The gcc-mdm9607 driver was originally based on gcc-msm8916, but a closer
> >>> match nowadays is gcc-msm8909. Looking at the differences between
> >>> gcc-mdm9607 and gcc-msm8909, there is quite some confusion around the
> >>> definitions for the BIMC PLL.
> >>>
> >>> It turns out the BIMC PLL on MDM9607 is actually an Alpha PLL just like on
> >>> MSM8909. We can vote for it using BIT(2), which explains why BIT(3) was
> >>> used for GPLL2.
> >>
> >> BIMC PLL is never controlled from High Level OS (APSS). These are
> >> controlled by other subsystems and voting should be via the ICC for BW
> >> requirements.
> >>
> > 
> > The driver doesn't really control the BIMC PLL here, the PLL is defined
> > with fixed/shared/read-only ops so it mostly just exists to model the
> > clock tree properly and have the clock rate readable for the PLL itself
> > and any downstream consumers.
> > 
> > There are multiple drivers that do it like this (e.g. gcc-msm8916,
> > gcc-msm8939), is there a reason why we should drop this?
> 
> My fear is that the kernel may have stale data at any point.. perhaps
> unless we set CLK_GET_RATE_NOCACHE?
> 

Looking into it a bit more, it looks like this "read-only" feature with
firmware managing the clocks is unfortunately a lost cause...

CLK_GET_RATE_NOCACHE does help for the clock *rate*, but the clock
*parent* is still cached in the clock framework (and only read once when
registering the clock). So if you have clocks switching e.g. between the
BIMC PLL and XO or a GPLL you won't ever see this properly in debugfs.

In addition, when enabling a child clock branch we make a vote for the
registration time parent (e.g. the BIMC PLL). But if the parent changes
later our vote is never updated and will keep clocks alive even if the
firmware already dropped its votes ... :/

I will drop the BIMC PLL and other firmware-managed clocks in v2 like
you suggested. It doesn't seem worth the hassle, and that's what all
newer SoCs do as well.

Thanks,
Stephan


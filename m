Return-Path: <devicetree+bounces-260848-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sF+bJ0NAe2nECwIAu9opvQ
	(envelope-from <devicetree+bounces-260848-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:10:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 10415AF74A
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:10:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE210301BC12
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:05:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 310F529A1;
	Thu, 29 Jan 2026 11:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FuJ5eIDS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C8603859DB
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 11:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769684707; cv=none; b=twlgAb8n0qMF7nOlGT5Te1gORgudzu+B+yactRxow7Fqd22AhX6gy5TVCh8XdyD+YGoccEQFDu/k4tCdOtcOUNOEK5xUANdykEOvYv3SOwsh8n318eIPBYfr5W4cglk/EKxOOE0Arh9A+4ElEl9hZ4suinQgugGY9HCaFtKwGiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769684707; c=relaxed/simple;
	bh=1C4a8bmHV1bR9cg6GUz8xpsNSXo3Op+dXjl2eFKm8/Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ktwKymjlS0mScb0mrxA177bDmTlGRbN/d36eQjquqRHMBpt6IMHAyTRhBDxNeJks3zSdJvx7unNs/1vcceqPBnmc1sSRxmlQXoubDW1Ca020ZqBsw+ULsI5HTMoFWTNyci9bO7q4FgPL8Ts16g/rDqaYiifGh+XHWBoy7tgRSm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FuJ5eIDS; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a871c8b171so4782045ad.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 03:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769684705; x=1770289505; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wtXD3PfRYnYWx1YdvDGzZz/91AEsRvszQ9KSjvNqY5I=;
        b=FuJ5eIDSGqj+Zb15PktG1dG/uc7HjYHkG6N4Z9n/2CHnJcfNsT6mEIVWrYPqU3f+z7
         tcKDUQ5jD+rtDkrsKruvh/pKcqvOHIjiBovJMw/ZNfqARSjHso3L6m2HgPEgW2CbV/Ye
         wf3+m0DWB+FvWhuRXwHPVsxmoLmGqPnssIPJ4nSM4oad87v3j0pAOqex0lZflZnazeLG
         uLdLgDr4AbLVVe8fYP7YRDSAtpwC96oCm7HJ78m2PaxQVnGWzWfjTYXvYCxUOHhV8o0V
         peN2trDFIUIP0y5UnTJ6KixjRcsjqVKjopbVNs+S9oCrLax34Kyw7C5WonTN5aMIM4Kc
         J7gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769684705; x=1770289505;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wtXD3PfRYnYWx1YdvDGzZz/91AEsRvszQ9KSjvNqY5I=;
        b=pfH5rihfMgGxn4dxVKc7EzAzHwmFYkRCaYXypPyyY/9RZ6ImvZcmS0lEJlRU+gC4o2
         Q0KtOyv8TxTH6BjujGgJVi5qjoNpYtRQmhc7VWeEl88RL/0i1EMM7/BbIem8xIXCdNrH
         JfpEe1mFZlI6lDAizE7/Fzo/8yzLugBpYIhGBjAzwQxPG6orlaRVARb4K9KNbDnCQcnT
         1tJ8moDr1CK/xY5Mbn9ipdg8/qLJDWVaYKMK+0dtrRZNe5Si+8yD3g+6D+4cEnTOWS8F
         SbNswth7odVvQH0MHKhHs70mhZbXMLeSsKPYT2u9t5DcOOq0zf87gQT9tAin2BgPPdza
         9TiA==
X-Forwarded-Encrypted: i=1; AJvYcCVvoC0bNsv5PtEsZec+oLDjN29nrCVcEM6uiZhe2v8J4xXADeIEcQKfs2CGTx3k41zdPEgsONMYeK0l@vger.kernel.org
X-Gm-Message-State: AOJu0YxLNX7vzpU09D5wMN6qYWMSbpdncEYeU8AyKZWF+qYRtXardPDn
	gdb0+DWIQbLlvGH1qIlTVY6vs9/zc7/uLRT2zt/4fCDc0gd9CwjR5bV503sTnbOxGZ4=
X-Gm-Gg: AZuq6aJGBWBZIyXfTi513dptI+Syhx7HeEEysMP6itFEjjSjA63UWHNhyai0pYbYx8J
	yMfm5V06xoEfexR0B6l1aJ1yRzLBOgXJmHqJnqQmURl5kMKiqRMciITiU/6yFniIgdKamQqESwt
	yt75qYBJDsdiiJ+OGKai+nTaw82H4SGVr3glakIyF6fgibwp4g5OinbAKytxXJVsvWJMh9bPd7Z
	Jxsh6o0vpFKZt1uH5kkv6T4ySa5mJWzkkv3LdyQ0t02XsEbKlXsQW38RPgOjjdqqSz3Al3nAp1D
	UgbFqd9IJUuPlZ4eJjpaIQpAsL48bbXiLG1rR22ZWN1MwIrrSSpv55fxlntogKgPQIvdO7IQrxr
	SACrpFf/ksNexvVTOvi0GHG7kN1oo4MOsMTVe3mtY4Ze/7bkzw90pFxuwOG7BETK9UtZTGfS4qk
	a9tSCZCO1/VqQ=
X-Received: by 2002:a17:903:1904:b0:2a2:d2e7:1601 with SMTP id d9443c01a7336-2a870deb4c0mr67985905ad.48.1769684704629;
        Thu, 29 Jan 2026 03:05:04 -0800 (PST)
Received: from localhost ([122.172.80.63])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b3eecd1sm46208285ad.7.2026.01.29.03.05.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 03:05:04 -0800 (PST)
Date: Thu, 29 Jan 2026 16:35:01 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: webgeek1234@gmail.com, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Viresh Kumar <vireshk@kernel.org>, Lukasz Luba <lukasz.luba@arm.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Xilin Wu <wuxilin123@gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sm8550: Update EAS properties
Message-ID: <l6vdnit4sd5rx3k236dwrmywudkmydxfjprn2c5i7fsfmlqfnu@tabbezrje36b>
References: <20260128-sm8550-eas-v1-1-fb80615bed5c@gmail.com>
 <fec5907a-5619-4997-9e8f-034efdd31993@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fec5907a-5619-4997-9e8f-034efdd31993@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260848-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,arm.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viresh.kumar@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim]
X-Rspamd-Queue-Id: 10415AF74A
X-Rspamd-Action: no action

On 29-01-26, 12:00, Konrad Dybcio wrote:
> On 1/28/26 8:11 PM, Aaron Kling via B4 Relay wrote:
> > It should be noted that the A715 cores seem less efficient than the
> > A710 cores. Therefore, an average value has been assigned to them,
> > considering that the A715 and A710 cores share a single cpufreq
> > domain.
> 
> Regarding the CPUFreq domain shared across cores with different power
> characteristics, I think we shouldn't be lying to the OS, rather Linux
> should be able to deal with it, somehow.

cpufreq-domain == cpufreq-policy here I guess. All CPUs that change
their DVFS state together should be part of one policy. Not sure if
there is something else you were pointing at.

-- 
viresh


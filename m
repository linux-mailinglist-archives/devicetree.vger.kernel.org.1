Return-Path: <devicetree+bounces-306931-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V/M9GuiQIWoNJAEAu9opvQ
	(envelope-from <devicetree+bounces-306931-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:51:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E14641131
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:51:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=imd-tec.com header.s=google header.b=IaViTx2P;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306931-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306931-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=imd-tec.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1B12C30C5799
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 14:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC823480946;
	Thu,  4 Jun 2026 14:42:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77EFA47F2EF
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 14:42:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780584163; cv=none; b=EM4copWnghycQMn/fu0jxjL5NGQchcRYPrbCT1U414Q9uQ5hqoxqThcpqYdPEq6knT0D+INFJET2yyimI1n55EWnrs7dnqO1RiHfO0nj+6XJRNxPmqAH9afVeiUJ9ocMJaHAGlcIG18Y0IGYc53w/iyc+3P6yjji219CaekaLOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780584163; c=relaxed/simple;
	bh=vhH90Bm+Y5GOubvalLv78JVsHd8rKxCyWDTSa6rsBA8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T4jnGQ7RuTx44NijrFcBSp3JgD9FynjyXBODEN0VjTUBWa0e5QolVvOec8GlgceBHVFTeSdNqKbjque5xMukghu8BGPUWEzp7J4//hrO7BZLp7I0JB+cPAxntg3q0yqyg7Jcw0jat13RMGCGnrRLb4WHXmLTItd7IM/nVJ98abY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imd-tec.com; spf=pass smtp.mailfrom=imd-tec.com; dkim=pass (2048-bit key) header.d=imd-tec.com header.i=@imd-tec.com header.b=IaViTx2P; arc=none smtp.client-ip=209.85.208.52
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-68e5f7c1131so1485969a12.2
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 07:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=imd-tec.com; s=google; t=1780584161; x=1781188961; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vhH90Bm+Y5GOubvalLv78JVsHd8rKxCyWDTSa6rsBA8=;
        b=IaViTx2PqjtTj51chp9MWnZ+wdIKHxJ2+KApRN9DpHrRO6TmPyna9wcaeco7aoaARa
         N7lettrEoh4c8o61E7TFxP0//sfLKj7Zpt4AON0HdrmKEUqdAYs244hoeRnzYQZpejPB
         ucdt9eSdreTci2g0GvOLS5lFv0JCYh0U377H6l2VEepjHOko2pNDePldYQl6dtTZsJRt
         tP8k2szFiO+muPRjkb5Ff0uNfWMVIbrTVnvtAhfpVEH9keDDZ+h6I463pK7DisCrrGZY
         6O0fJ7XeB4albQ95PUC2nJC9i2CfLFRCkfO6qh29wzHYqNSLmOPyO2zXqhvwIQc3FjGX
         xUoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780584161; x=1781188961;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vhH90Bm+Y5GOubvalLv78JVsHd8rKxCyWDTSa6rsBA8=;
        b=msgyrMtCcopO6EFg42qwUqFi2ykb2sKXI/D2WnwsiKn9t1yMMzmnUfPuKDWgE5K+2w
         b41Sf1SF+Gy41hTm/8f5ysC7VeR9Nyg++IJC25N2RmEruFY/k+pw15Ek97rxKnlpO/al
         aT+bUKjByxX00BYu8GSoe5TkeHx6Uj34smJ3aR4stuqfQcZOCA9yQBm9Gv+6+n64gspk
         iJadDD6C5/Svb/v6M+v02rKl3F4pcI1xb8FFp/9rvesJrtvHHrsloTttTckIY1Nmgfdo
         Bl2In80hyNbB2/kooMu2uNWLIbwq9h6u7YkAcmVQE67H2y9kohEYnEnwjkIvLB38YfmQ
         2m/w==
X-Forwarded-Encrypted: i=1; AFNElJ8vUs/nfyrzyD1zEn/YbhYRYz5+q1DwkKWVlBnyWcWzo5IV8PM9kcIpM4KFoLAu8ctml/M/CSl4wNEH@vger.kernel.org
X-Gm-Message-State: AOJu0YzIwU1Vl0ImLPHTIcan8pDgHa7ra3dkdH1n8egrx6NggGRVzTAC
	j0FBLaOwHui3vgYAJ9CIc4Iyr8rW3smLAZzyRWadiz44lBfAeU2vj/ZjhiIK8jnoBVQ=
X-Gm-Gg: Acq92OFPeIFDcxRZcAQsZOLnw/Bed7/MS78bkHF+p9V+CZRUxu+cUbtxy/vuUQSKihd
	xxjWogZXdbL0//ocoAaXHW/gyxuWw+JDg/aaB3bgSOHP2CVWVloE+ntAur+oJzi8mTY+rZAp919
	4YucffhYUnudP8fvFCYqhMylIi6i0C6RL/kwLqhqPTKCmWZGMIzJiMolepUygve70WWssVz6AfS
	huErS5FfnUtjYJGwSjUSqy4l2RjmnvSnqwTvQjzhRLl2dU2fLrGXJ/lLDvUO2Hs/oSJ/fSLsIjk
	HX2xcfgzRE2VyohDiwYodiS4eft/mggL/oPqKlDq6wJZ81rkf4Vg654pR/gHAXqJAR3l+MH7Tmh
	g64K1SzGsXo0RF+bl64A/xiGGs4Ex9sREchR+9+BH4abAe8rYTfOkbc/FDsyeDZYfZn8kev3RPk
	kVNMQWGo9Bufvio9uauBNwqDWwkMvqUyFmd54sQuOtSJkvF1YEjY+NWrKTzdAfT8eGZu1PyKmE7
	Gc9UEqW1R7TNSScqJlW0WQrAylcRER19IY/bqBTBMVHIug0rI1aJC4oWWw=
X-Received: by 2002:a05:6402:4310:b0:68b:b599:870f with SMTP id 4fb4d7f45d1cf-68e7283b37bmr4564387a12.24.1780584161114;
        Thu, 04 Jun 2026 07:42:41 -0700 (PDT)
Received: from will-Legion-Slim-5-16APH8 ([82.71.135.85])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68e65b55d81sm2642563a12.27.2026.06.04.07.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 07:42:40 -0700 (PDT)
Date: Thu, 4 Jun 2026 15:42:38 +0100
From: William Bright <william.bright@imd-tec.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Ram Boukobza <ram@imd-tec.com>,
	Tendai Makumire <tendai.makumire@imd-tec.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8550: add SDHC4 controller node
Message-ID: <aiGO3rNYlJ3oE2_d@will-Legion-Slim-5-16APH8>
References: <20260427-sm8550-sdhc4-support-v2-1-a4241f43ecd5@imd-tec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260427-sm8550-sdhc4-support-v2-1-a4241f43ecd5@imd-tec.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[imd-tec.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[imd-tec.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306931-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[imd-tec.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[william.bright@imd-tec.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:ram@imd-tec.com,m:tendai.makumire@imd-tec.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[william.bright@imd-tec.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	SINGLE_SHORT_PART(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 05E14641131

Hi all,

Gentle ping on this patch.

Thanks,
Will


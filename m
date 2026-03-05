Return-Path: <devicetree+bounces-271486-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MN+JAj5YqWnW5wAAu9opvQ
	(envelope-from <devicetree+bounces-271486-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:17:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B7E20F90A
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 074A63006995
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 10:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87CE437CD25;
	Thu,  5 Mar 2026 10:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VgXgDFd4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0513783CA
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 10:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772705272; cv=none; b=dm1I3sg5iID0uPa5aMjsKw8tkbrN9R++e/RfrQjqQD14GLQfsGdWbu/H59O4oek3qWRg21/JiuslI4hzlQbPl+7TvZnsW1efcvSlmCkbeoNRLP+pkpthUvfemrZaOOfHd5EqTuk6Ag7ZZiD2gwkWsT/V2Lx96RMiIkfksGC2kFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772705272; c=relaxed/simple;
	bh=5E/DrpkixQ4gF4PhrEHz6o0m1Ts94BJPHeqX66PrFAU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eDML1uNYHxDbNg17GBoPQlcg6dBaBuz/7cth38mKlrD5rOlHk/aDLh1dI1EweccUprJhzaMMvKnlq8c7oOTtU2CW6eGjv7vU08kJnPWSWUkEN7biMzceVx3j2T+kGYwUiAHpdTSaiIhrscLdI88wbwdwsyxqA969X8pXDIHgISE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VgXgDFd4; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-439aeed8a5bso4927445f8f.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 02:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772705269; x=1773310069; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cvdX/eNl5nD2MErDTD0kyGmc9AWzS3XjIck/Jl/7K2M=;
        b=VgXgDFd48UrHM9XgormHHx5ryrK90oORBXumwnkqsXbDVJDsPt8lepzXm/Fz5jexn7
         8ICvTZn5NGWn9KmAJtWb4FqAw1lLHl/OENOPEXmjfGRAUi7UOghs8uB7iBuC6iLOKofC
         1/8IvJ4f4wKBai4xvRQUxQX8ytuDKMybanhVHzZAp6M0nN07rj1Zr1TQWMXkIIIaGC+j
         tV9pi9DAlC5Gq/CK/0V2xcAgbOquNgrvY0CXqcIfq7XQveZ6CrPgjR4IWwHlh8a1uvsV
         VALnPJ9hDSNpkItymQbZMDSSHwp/GnGIx32i7ehYM8SkfGI4XY7jGI8WiZyzC+l0pByM
         eBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772705269; x=1773310069;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cvdX/eNl5nD2MErDTD0kyGmc9AWzS3XjIck/Jl/7K2M=;
        b=IwYnPLWvXJy9SV0BWCyp3eoi77Acqvg+iqKyuE7Xg9fpAMbafBkBoOezn2SEu0OxGz
         +czxsF5yZ1C7kJNx7FhJqHP0+2i6Ltdf1AMfxjCqLqaBVEdWJNu1NxMs44bWoqi6rq3o
         JvSmO6IuUPAUCjSvf94fJvg0Vx6Nnu6YwXIN/xW11NTxs30Pf2RAAsVRqUq2ytCDWPkM
         ISBK4jDbtQzYpwgglHIyAz9b06POshlyavy0q+Kih8WrWhm0xoc19H5tljlRkYSBxgH2
         Vi2PdWfZBXIRsKLbaRTeX/p1ytn/h9GFeKsFmmYJnD/3UDQzCZvhRvvLq6BXLHPzPQJ+
         zbbA==
X-Forwarded-Encrypted: i=1; AJvYcCWNEcquVdJspQWnaRvaizK+HtzHlZDzDRnjevINQOCGyfuRYIZxpLppjT8wl3L7U4fr0l98vJuLWJLK@vger.kernel.org
X-Gm-Message-State: AOJu0YzhUeyB+FCYA/ylygF2nfB5foEBkKGr8gvYmko+pfY6TEMC+BZz
	Wg5DiX4hwzV2fDfFLHRmMHEbXdn6Tpnw5M8rWCv+PCEoMEs//Hun4r7rqGG2HqzHrmA=
X-Gm-Gg: ATEYQzxRgK44/WbyR2qEHVgZhpBK7oyTpNxoWi/5NksjjlsWxLkh0kYBvcVajcxYqa2
	6J9KQz1+Pu9XYFP1kpbqDJ+I1ELwHicUj1Jjfu1natv8q/KwEg3Sk3wYb7v9dibS3SRcEjfRjWN
	zJVFxyYfthAlCkHiNbZrZwTu27JhHQDjw8ztGTu+sQnvTk9qdWa6imARinw53AXR9NgGarXgoRF
	a5Z1Ry2czzw4RMdTuw/uM2kTZfeMjMlNhul30kCYqU2uTl+/zmplAP6cI3OI4c9bs3js6h/1X9C
	Zuc+AQG9ehwV/9/sB6okepADgU3dAp5oFoumm2dTk58D02SsrHVAIhJzWuGNDXjKQe5DkeHG9Wg
	lJmqBc5AiMEGeTWfOHvk9tSUekqXRmEoSuMtuXM/+1U8l6Q5yxK1VvEIQWNMJId677l6Ji1QN/p
	zWWfVNWmooVt+4frUzvG/1vOw9riJbGR8Oi57GbHE=
X-Received: by 2002:a5d:64c8:0:b0:439:bdd7:425f with SMTP id ffacd0b85a97d-439c80088f0mr9728183f8f.35.1772705269355;
        Thu, 05 Mar 2026 02:07:49 -0800 (PST)
Received: from linaro.org ([77.64.146.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439abdf5430sm38580943f8f.5.2026.03.05.02.07.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 02:07:48 -0800 (PST)
Date: Thu, 5 Mar 2026 11:07:33 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	Nickolay Goppen <setotau@mainlining.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Johan Hovold <johan@kernel.org>, Kees Cook <kees@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: Re: [PATCH v2 11/11] ASoC: msm8916-wcd-analog: add quirk for cajon
 2.0
Message-ID: <aalV5dBloD1BmwzZ@linaro.org>
References: <20260304195815.52347-1-mailingradian@gmail.com>
 <20260304195815.52347-12-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304195815.52347-12-mailingradian@gmail.com>
X-Rspamd-Queue-Id: 06B7E20F90A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org,mainlining.org,quicinc.com,linuxfoundation.org,opensource.cirrus.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-271486-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 02:58:15PM -0500, Richard Acayan wrote:
> The codec version CAJON_2_0 on the Snapdragon 670 requires touching the
> HPH test registers. Add the quirk so this driver can also support
> SDM670.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  sound/soc/codecs/msm8916-wcd-analog.c | 63 ++++++++++++++++++++++++++-
>  1 file changed, 61 insertions(+), 2 deletions(-)
> 

I think you need some more changes in this driver to support CAJON_2_0
properly. Specifically, the initial register settings are different from
what is currently in the driver (wcd_reg_defaults_2_0). There was a
patch for this [1] (later [2]), but it doesn't look like it was
merged/finished up.

[1]: https://lore.kernel.org/linux-arm-msm/20240727182031.35069-3-a39.skl@gmail.com/
[2]: https://lore.kernel.org/linux-arm-msm/20240731-msm8953-msm8976-asoc-v3-4-163f23c3a28d@gmail.com/

Thanks,
Stephan


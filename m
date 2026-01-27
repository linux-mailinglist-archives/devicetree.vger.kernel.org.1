Return-Path: <devicetree+bounces-260162-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aE8eDCtNeWmzwQEAu9opvQ
	(envelope-from <devicetree+bounces-260162-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 00:41:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 897C09B75E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 00:41:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 470E43006B7D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAE1D2EBDCD;
	Tue, 27 Jan 2026 23:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="azRydJdV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5F82EC541
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 23:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769557284; cv=pass; b=RsvYMZugzEbBxttFeTAfBYyqUCGKFIzMXxyU4h+uVGLoHCyybRnShDEOVwQtIbYd2xre/9DZ3iKAmH4lNslzXa0EQnr3HMBUGov0sfpzCk9ybtpHgYtuhQMXt/xo5MFwL8B3Cv/+2MSS6GJBT/gNVUoQl89igb9hBwdF+MRCx8Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769557284; c=relaxed/simple;
	bh=7kmKAF87tQ+DKHman6EfaO9KsoR3gG9HljeNjO/MlME=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HjYj4J/yiW/uHCG7UanGmXjjkwNqB9TOZL+Iq9JW7E8F6fcb3YSQLgIpQiWIQpwZxAZxlo5LIDJyQ9nyBlz7gohPZwIboDilIHtdvsVicFG2aeXl87p1pSvMyAjmovXtGPpJHPyeGvfavQnC5KJn1CqrNTHXYSo1fTYRt37Zhqc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=azRydJdV; arc=pass smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59ddb31ddcaso6745312e87.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:41:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769557281; cv=none;
        d=google.com; s=arc-20240605;
        b=lITEK5+1ZG1ByCDT5ZXmCxq2e0BfWcUNv05xuE6bE40yTSYA6e5XWM97I65mGtNlYY
         AisqKWRMGWdHbm/c+Pe8y5768DqsAgGgj0PRxOlBv7qJRgGiZNSPrQSpR+SK7cRCr+Q7
         XjxEubxslR9VpIBVjqnZnTv2js5oeU6k2JgHHgECw9X98ZySjC9K0+DDICvGg03RprxV
         YQCMwsEaWpGIc4/Pcu2j4pdA2OBZizej0QFG4jbuiQI+3kkdjSKIBZ/PGCmD7PVM6ytI
         ZlDRswPx25B9N3++UsCoaZ3kcLOKGMLNqr+3rxmr8qdYlgQqevziTGy4W9wyOL+OKI9h
         r2RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7kmKAF87tQ+DKHman6EfaO9KsoR3gG9HljeNjO/MlME=;
        fh=j+PTGn4ilu9DSY9RriPqTqKFjK2HpthQOehLdw9D6xQ=;
        b=PBZ+utPY2FpejKDhVQhSuJ3c0Pifud/N4aXUjvKeNwukrY3pEsWjDtADRTt26D+Y8/
         6+U3sslQfuiNkLMm5yEH27qp7KWE5LBneUxbL6uagEqdJo4zRld08sv/Wb6xXy9HJIdA
         YmHMmOkwGs+SDLVWq7MrY2FU9gSUsAUrNNTmFEecs2Lzb5zfQThfZ9K/HvnNT/tyBdEL
         P/jtBRODsrETLYTAV4WyrySfJOkRQDeFmjJIby2f27yEtkXt9PiSg0p6PfQ2qgPOrkV+
         Jpr5s9fVessfupfLvfbcSKI/s16ZCLyXqSY+wqtUwS3s/eiAgLN2kkNOkxjAphFX4xK9
         5UNA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769557281; x=1770162081; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7kmKAF87tQ+DKHman6EfaO9KsoR3gG9HljeNjO/MlME=;
        b=azRydJdVdqlFvkYom0AEj3h4R3dnYKL6ARvpkx0LF3fK13bM6v/d2FykasDckTNPFP
         NaZW0OnWCy1wstYZc/6rntXtP0KtjbgXGy3K9IwnZ0po7dA+JxrcQpgCyWSZByeqKVu5
         i4HYw5LNkS0FJhBvRvnUhnaGNPhhdA0teQswmFSchyyoclpi+TBosU5aRjslMXLP+/EI
         Z+HMdqToGQ6Ep0Q53ysWManDUKDQLFq3vYVZAgrfdRKzBHgPBFOzcpS4GajxhX0KvVSl
         qDWfLwGz1Y76MVvd6kbJOTZ5APx6mK9A+qk/eM651ZnzMLYDBbd0mjR5hkJlWh2+m8zF
         /DEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769557281; x=1770162081;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7kmKAF87tQ+DKHman6EfaO9KsoR3gG9HljeNjO/MlME=;
        b=cFuhTODo1/RwsrtEuRNKpyYhRGA0fD+lHjo8e+1cOCEyYra0dnLLHVhzV3e4RnTHK5
         x7DAC5rYxSJs29U/PCLQ4u1UGAdtL6a2LoWEUFOjMPlF8d3zC5AVpZPG/MiRp2vWU7i+
         4sLe+y69PFCRxWQ9C4BRa+xHJOXoW5c1miB6fOzm0Y3Il0AD4EP1urE5ysfAiyH1+CUj
         tvs1WodRdSqatgGXm/zGBIoVwQa+D9AfidhZqBY1xnoO7yoUNn/0FW8NOwavLNqqG/OW
         7KUEiqYvam07BrqSns6ZJCF/yyycZpD8USY10KeeV9bIh/PFM/sAAhf8yzrwrGwav47w
         5PeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWVl1+mRyIngubl7RGedNHYuo5JEmj07k6KLM95i8u60VoiUamHXLBwEGdgEDjjTOe9rWcg3nWE8jL@vger.kernel.org
X-Gm-Message-State: AOJu0YzEZa1SOqBvtP2VlPpxLnkHlMZNqAHqpi8WVN01PIUU1a9lFhPC
	ro0SGdWJEVOYy0QNo+fKLCiBrHjY/BUBgSFF7az6Z/YC/ZxrOYI5seGPYOsZpMtDMem2gXKDQZr
	yLR+FU81b2YYh3ldMBfm6v7SP9bqwwqQ=
X-Gm-Gg: AZuq6aInyA0U1y70KvDvi4GucdTkb1tNBr66b37FA2RpWfHmAmFTrawbaaaorku6gCo
	0pUpv2Ap3RM807AuAKOL3VpD+ZDt/VVd1D8rD/r6SuuMiPfKbATyVisCNis4G5C+nOJLINLz5oP
	H/LoD+PWrZGKx59hrMtTp9/LqWnuMpouRKb7ZD+DcvJ+/78ZYcAJhlGhpRtJsyXiQkfoufczus1
	rOjgzq7UgL90/Ih2OaO14toxgQnT+5/oIe4kv7WEQtWBGkVet6lFCvdVSBj9QsVHX2TWYbiGEhT
	FFM1Lq7t65BFNFrnAirDHGsLkx8=
X-Received: by 2002:a05:6512:23a3:b0:59e:71f:cc1c with SMTP id
 2adb3069b0e04-59e071fcc42mr546862e87.1.1769557279804; Tue, 27 Jan 2026
 15:41:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128-imx8mq-gpu-ahb-clock-v2-1-f32548d46188@puri.sm>
In-Reply-To: <20260128-imx8mq-gpu-ahb-clock-v2-1-f32548d46188@puri.sm>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 27 Jan 2026 20:41:08 -0300
X-Gm-Features: AZwV_QirB8xtJhi5kl9yJ2qWiZEFsvTE9M5XNO8kGqz4pRn84DhojBOVsgWwGyE
Message-ID: <CAOMZO5A64Qy+3n7ZX2QG3FfXEwEX6KfMZaMhCi+5jFhWfBn=qw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mq: Set the correct gpu_ahb clock frequency
To: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@puri.sm, Frank Li <Frank.Li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260162-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[i.mx:url,puri.sm:email,nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 897C09B75E
X-Rspamd-Action: no action

Hi Sebastian,

On Tue, Jan 27, 2026 at 8:28=E2=80=AFPM Sebastian Krzyszkowiak
<sebastian.krzyszkowiak@puri.sm> wrote:
>
> According to i.MX 8M Quad Reference Manual, GPU_AHB_CLK_ROOT's maximum
> frequency is 400MHz.
>
> Fixes: 45d2c84eb3a2 ("arm64: dts: imx8mq: add GPU node")
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
> ---
> Changes in v2:
> - added Fixes trailer as suggested by Fabio Estevam
> - Link to v1: https://lore.kernel.org/r/20260124-imx8mq-gpu-ahb-clock-v1-=
1-11c2e7c857b7@puri.sm

Reviewed-by: Fabio Estevam <festevam@gmail.com>

Thanks


Return-Path: <devicetree+bounces-277883-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPVIDBgjvGkptQIAu9opvQ
	(envelope-from <devicetree+bounces-277883-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:23:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6812CEBAC
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:23:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DC8D730B886C
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD9253ED121;
	Thu, 19 Mar 2026 16:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jwmTd4t4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801C33EB7F0
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 16:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773936046; cv=none; b=UObxGVpCydOZnQ8dBP6c3ui5sckf8cruAQwBH9T1CSVYW3CmXfPMc9vHQ31dbHX+32Pi84zfUd7Ow+4NmP3UlNFSQYvgFaTmjyZwMVnQCTgz9ESSfa8Yd1ZHsSeUKZmVJsADFSq4wBfyc3tlrAVZLmq4g2/oJCRVVqW8XuixPPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773936046; c=relaxed/simple;
	bh=YU4rvkgh97p9odQ7CVIxch+Qex3dGL72dN9hqAFelpo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZYzc2oTcHtc2+W4MIPuQIUUAvU1rKaJoQSNYjt2POoXzCgHnw2k6RrghcrMFNsWjgqgHlDsy6KmMtRdv9GDdc7DJ34cdsPz+ic8xf/pA0XIUkPS9s3Kw34F53339E8KgjwwQXs69uva+S1e9FtyO1de4R9hvu+/eThtnpvVFmZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jwmTd4t4; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-439cd6b09f8so821449f8f.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773936044; x=1774540844; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uks/f97JENhrvnsThvZhzUZdvgjh3JvnUSmJzAdelLo=;
        b=jwmTd4t4t0xeB8j0FNIPcXgvQc+ZudFefAylk7zhed5E/0nFai0eSOrDgsjJk6sRsv
         ReYAvL/HL6ABT2Z+7eCdcipC40T7MkyzdAZsZSf666g0xT0686VT9B5pdaR4lqTQ+1Ok
         4M2y4M3Xz3743k3SmrymfF/UFAUySXZHl8Pd7Czc/YN/07s4qMxvHorNSWTOhXu8TGdN
         YQ4JF2MMohNrMZJUfuu7vnNT6iZNHrY3i6ztdV6bQ9HSMLgXwBVEAKxeMc3QOCTqJMYr
         GHE3jCubk27h8kmkclkFwQF6tdUD/3zWiNngIRZJXCRGDuscogO2Q+UWq6GvhMwDad3i
         SCeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773936044; x=1774540844;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uks/f97JENhrvnsThvZhzUZdvgjh3JvnUSmJzAdelLo=;
        b=cmWaWCUesGpunR2FLbvPRNDRnRGyz9lYMs2IikaHMqeoHL9qm+4YcsA2Ik+tbwPSNc
         mbPx8d/cwZRZ3FcHYVHXl4NIBbHF4A/zcR5mLDCxhgeMimVUritO7UCkv/CFZ0VmZNT8
         AAb2cdUtmgv6YNwKx7448wjlMDRnu2vW1qEbNFEBHzMg9AtQEaI32EK58997a3qo112P
         WhvYg0LwDitrw4N4dMjilE0+F3Pwsv2AdQtp5LOkA2EFoTSxqZ3yjhCbKKH9fCyW2A8B
         /9MOwYiE7aF1QW7AtOm0qfo0hT8Z4N14hxVZv0rp+aP8NWQsASMmo/KnCQ3TZ54g6YAw
         nBNg==
X-Gm-Message-State: AOJu0YyDJ0PFA9tJI+kdWLAxFZb3OYF65ZltM3b93JozkafbmhXrkNW4
	Aw2tfNwBCS2qG2jw3/VMHYjtkjLS6GP+aJgDiOIbqO2ZCR6kcbfc6ipa
X-Gm-Gg: ATEYQzxU13rikqNrKFI9C7crfStxhXikjL6z/6tmzs45FgyUWb08K7SSW1jGGjh1QXf
	f/XL2WLisrzNrl460vZvvqX3bnj6o4s1XFeVCn4Kdab965f2XgsVkjgMWoZ9JFLK8z52jll7UcS
	MpLevDhJDdEHv8FGAJIyEO3ih4josUJpaJsFJO6v3klhk1SWtAgcOjehc51Ilwk22EP3Hj8tqgu
	DRpAgqhmeN8V6qMb8tvOW9U4hOfzVREuSAmEOHQGG1HTm8Qnen9CUkMPs1wbpvl9ptB1l70UhZr
	VbiSrOM+8eQd6vX5BOBaISCpMI5r5ho1fc3b9a54iOeNAFesF61s8SQez2oLVOjFSU53tVUacho
	xxAK8XX7AbMaSsn+RI6E8yAivFLH0A6QCzmmgDAtyoTv1W80R6wMa3w40NUOyrfSGqmU0AQoSpp
	wrMfSVdjpVXowmXJeDUcVwcj2zYMdtfQKU2jxdDbW/HWpP2CtulmQeLINxWcnbalbEhrZUtia47
	NYlxDMUVekJ1uf9at1n7dybCpE0In3J1ol87kSFTQ/EMz4=
X-Received: by 2002:a5d:5f82:0:b0:43b:45d1:f44f with SMTP id ffacd0b85a97d-43b527c89fbmr14188968f8f.41.1773936043147;
        Thu, 19 Mar 2026 09:00:43 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5189964esm16332268f8f.29.2026.03.19.09.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 09:00:42 -0700 (PDT)
Date: Thu, 19 Mar 2026 17:00:40 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Frank Li <Frank.li@nxp.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v3 03/11] arm64: dts: freescale: imx8mm-var-som: Update
 FEC support with MaxLinear PHY
Message-ID: <abwdqN23q9Kx4V-D@Lord-Beerus.station>
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
 <24d31e0ca71c9b2dcb64d39117a8501d85cf945f.1772898346.git.stefano.radaelli21@gmail.com>
 <abQzAM1cxsFJoTJ-@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abQzAM1cxsFJoTJ-@lizhi-Precision-Tower-5810>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277883-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,variscite.com,kernel.org,pengutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.878];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Lord-Beerus.station:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CD6812CEBAC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Frank

On Fri, Mar 13, 2026 at 11:53:36AM -0400, Frank Li wrote:
> On Sat, Mar 07, 2026 at 04:54:39PM +0100, Stefano Radaelli wrote:
> 
> Any enet referent to this gpio node, otherwise can't guarantee device
> probe order, maybe enet driver probe before gpio. rst is critcial signal.
> 

Thanks for pointing this out.

That was just a leftover GPIO hog and not actually used on i.MX8MM.
It will be removed in the next revision.

Best regards,
Stefano


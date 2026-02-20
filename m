Return-Path: <devicetree+bounces-266968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPwfJHpqmGn4IAMAu9opvQ
	(envelope-from <devicetree+bounces-266968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:06:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EF6168270
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:06:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 068C8303E49A
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09DD334BA42;
	Fri, 20 Feb 2026 14:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fE7sq6+7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A165D34B43F
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771596386; cv=pass; b=MgYAu7kSqxOfIfiqJUkt7APCQslS2hwo8gUoc8TJw7UsjOIQ/xIhBKOO8QQmYibkNk8XgZkmVKyA7zfhBzQHks96kE2f4Cxz3dk4dhN90352C/tUniP3X8dGqdLnRkxhMerXrz/kJHMqz8aXo9yF+ig+BzdUOHyzevYm+HydAec=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771596386; c=relaxed/simple;
	bh=QRaCONRc5hdaV5yD6G1ws4j28HOx/kIzkIfaOLPIQzU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VqgvDH0nJmBITn85ElDfUjx1nKwk6LyjSxc9UKP/zJm1VMV++HlvadD7Icruea5SasANy0cLYCw7X99I+P6j145F1nntL8If0QZpxMoapOeHdF5gaXtF46xx8TNlFxkBmPLLxgksX8yOk0D50Y+5/cSSBdTWIVhMhoPnzLbv2ko=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fE7sq6+7; arc=pass smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-649db2b6cdcso1838910d50.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:06:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771596384; cv=none;
        d=google.com; s=arc-20240605;
        b=AvQt76+MAxd8u/orD6fluBZIHg9BMfq+yfJle0+xZqsv8SUcphR7SX6pfR1grLzTKH
         rovWe15Trizw2jTuqY1RlKSxNs6zPUSFojRgDcN61Ainh4/5t6SnLlj5hSZ5R4hP0lLj
         gWRyBZ8x3CPoZyH8wTtOD6jAGjMLEJr40gB+IHZSZInBEnzbry5Jz8bjj4hr+dtb4/d8
         KbqEUtZzP9cMfA34liAbi9/B1E/0NX8p2H1irNpRRcbqbdn6epWqlZ3T4RboXSQHIj2U
         4Zoq/318/3XTaHNcxCnevHp8svDF0MmnhB4PYWtJ7SerpuDi1lsdH79S1tFI1u0I1FYG
         BJPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UOgAazGljr+ot4x0/70qWQLnH5bbSRlyxZpCa4QF8mA=;
        fh=hObIPMRKuH+9xserchz4q4lzlfZ4WW+PP7uQlx5Kzv8=;
        b=TGTVLjjFl6/ZXGlVGCWcLqW+cyjSD+9wbcI2pBweSYfc0IXBuuRYn7Oqn+yEJ27kRi
         0mlN1/aio8sw93i0ExJjMgw2tWgBowi6jVP/prGOPdORwyYFhbnRgVqqaky8eUGr3Wpu
         wG1Jo8dQ39pFCfT1TAGs6ktKeZxV2E6OBFc+3rbMxPQnGPNU+lkylW0ZRrg6StUlOAii
         g8xnIx27EAAmP1DnBGjnacU/66tPoPxeldQBTI7FJDTvYA7liWdxzmQJRz/PN6QTv/Nw
         3KRaW7bndPZEDnPWEW4hr9BBZNUkCGTICDLWITfaQ/QGCp8wzAmyMX7X93XZgtyW8+OP
         PnnA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771596384; x=1772201184; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UOgAazGljr+ot4x0/70qWQLnH5bbSRlyxZpCa4QF8mA=;
        b=fE7sq6+7n/vZGu23M9dvburjHPuonzu6oq1/iW+uZ3eDSvK/5bS9+lV8UDBE3t9va9
         NzKaOgX3sTXlBjenjkQ953ToHpwfpFYa8ARUfHp2YLe4YaufPmKCI23brCOU01Guj1lR
         Y6qOzfBxQmdktAbHYpJ8KajakAJULEpihNELlmIfyuKdEuwlHVpojYTAI8c1ex2uG6DJ
         03SUwfdL+nu88eH/GrLhFnuFlPJwaLgZkwzYSPJUC2r08Lo5KbtLLPFjXDefKYCJcoJi
         /rql8tObUltBabzCb+d3/kiUoHf4eoqWQbk7zhhMX2otvKZ3VZ5xDoH7SXmZQKKnj2rR
         AvMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771596384; x=1772201184;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UOgAazGljr+ot4x0/70qWQLnH5bbSRlyxZpCa4QF8mA=;
        b=FoIpZE9mctsLP4nFtZ1nPP+qBh6wDois9pcg/EQ+fQnZJVeMHhI6yVCuGCzjFY599i
         m7BQcp/rB8B5gTLPMEf7cEdgK/U9eb18grGB4xChsgvxM24EvdotMRHQFic/jZN0EuJO
         FP/xjvvzP9vcIdZ/uqxOiXAAHWzlSJSoljEJrmp7UNHYX32pJ9pCuOD89JXGTDztchcx
         V1ta21HX73Zd8tftt+d3sm7QQeFMwLSowBC+LoH0ok6xg56KCinJrS/8rKQF7pX8IHW5
         MmWZdkzO+bEv3cAK0gmmWeiGP6+WruMQw51Hl8NCS3kB01pUCqO48z0MtTOAXct8BJre
         rHew==
X-Forwarded-Encrypted: i=1; AJvYcCUTZs8J/VIyoqQmQUP7jRrjcpTfC728GJfDfSlBG11tk8+qEdnG07iVhGy6zgncafVQ5e0zxdEpwf7R@vger.kernel.org
X-Gm-Message-State: AOJu0YzaqdmuKphTNZy9luynTxpDIxpy2N4MGghIi/LHNn2PC+tVqteI
	p3t/dhjtYvuvkZUX3AMBqr10Y9o2K1Il3IZIydRInjXFIk5vSuogrCF0rHB/Eij5/MINqj7Bnny
	Jgc5vNAYAGzu/fvQiXikJZqop/WGEXQ6NZ1ykgVsFVw==
X-Gm-Gg: AZuq6aLDGOTOrvpSRtjPlnoOKxbbc+vv//ntbyIgrsSP1tbjYwoVbiSTwAKTF09x2OS
	ENANPxpo1ASd1Iud8yQQ1OHL3pVrchbVG6avppa9l7u2lKWZQV4IIvIaxnTXFW9oplO4lcUsbea
	88VX0s4UmHxUSVUrHkEOS8ULX6FlNwmXfdBYjbhijMqiUuuHazPQ5SPxHmDh2yuRDxxmHQuBBj2
	hhZoxmS7Dfh+2HjGCzdUGiQznN6exfp7z6JBQS7Q51qvwiEIO/+mjG7YPFTyUY/IVCCRSNLHMcg
	CAkX/iM0Sl4Twvfhs53mcuZCvG1SkEWDY6FrKFKgr8mQVkINRl92YRG5jMjaoYeg9wXfq9E7Eue
	5r9ihnvu1sc6uVhGhTc5IMQVZ6VOH44asbJWv
X-Received: by 2002:a05:690e:dc6:b0:64a:ea66:bb2a with SMTP id
 956f58d0204a3-64c21a68e0bmr17293799d50.21.1771596384461; Fri, 20 Feb 2026
 06:06:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
 <20250912083225.228778-5-srinivas.kandagatla@oss.qualcomm.com> <DGJTU2TOFZR7.2MOU6I6J8GV4L@fairphone.com>
In-Reply-To: <DGJTU2TOFZR7.2MOU6I6J8GV4L@fairphone.com>
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Fri, 20 Feb 2026 14:06:25 +0000
X-Gm-Features: AZwV_Qgk2erDViJ_8BJxfIIzRd6Ulo2V3D2EYpqI2bpv3wyflTdm2QSyvgXPDbQ
Message-ID: <CANgGJDri==VUhMKhEeDYs5tmkcGcOBHbzMT3U314bxK79z4mTA@mail.gmail.com>
Subject: Re: [PATCH v4 4/7] soundwire: qcom: deprecate qcom,din/out-ports
To: Luca Weiss <luca.weiss@fairphone.com>, 
	Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, 
	srini@kernel.org, yung-chuan.liao@linux.intel.com, 
	pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266968-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 52EF6168270
X-Rspamd-Action: no action

On Fri, 20 Feb 2026 at 13:34, Luca Weiss <luca.weiss@fairphone.com> wrote:
>
> Hi Srinivas,
>
> On Fri Sep 12, 2025 at 10:32 AM CEST, Srinivas Kandagatla wrote:
> > Number of input and output ports can be dynamically read from the
> > controller registers, getting this value from Device Tree is redundant
> > and potentially lead to bugs.
> >
> > Remove the code parsing this property along with marking this as
> > deprecated in device tree bindings.
>
> Could you help suggest how to correct kodiak.dtsi?
>
> I'm seeing these warnings on QCM6490:
>
> [   36.952517] qcom-soundwire 3210000.soundwire: din-ports (0) mismatch with controller (1)
> [   36.952524] qcom-soundwire 3210000.soundwire: dout-ports (5) mismatch with controller (6)
> [   36.954285] qcom-soundwire 3230000.soundwire: din-ports (3) mismatch with controller (4)

Such messages were present on other platforms too, this is not only
Kodiak. IIRC on sm8550 and maybe on other little SoCs like on qrb2210.
It would be good to have something that will work for all platforms.

Best regards,
Alexey


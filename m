Return-Path: <devicetree+bounces-323789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +4ipIQakT2oslgIAu9opvQ
	(envelope-from <devicetree+bounces-323789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 15:37:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E503E731A46
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 15:37:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b="LfM5cbj/";
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323789-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323789-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 889D930F93B9
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 13:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A4772C235E;
	Thu,  9 Jul 2026 13:29:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAF02C029D
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 13:29:05 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783603747; cv=pass; b=Xc17nIcdT6tNyTrjInQ+hc6CfHkko7Gmk2EjLqeOH/sJDCPvexfRrOhYalgvN1KX3bCNk+ThxzKVnDspfDvc3jjtp9JNnWdUU9GV+f8JxvrX+Cqyg++SRjLalxCXdjuxshu09pLN1EJflBF30cASf39W3/HugQmXNU322DmeC6E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783603747; c=relaxed/simple;
	bh=fy4AU9FWUyaAiS8Jr4lYhNN0QnZMjnaBoIWT5Ykot6Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aRYla5lO3QMZuYX1E5U67oVZmtrGwh3od4YrqdmqgNScsf4jzqV3NNuU8Zkg+qg2dwOV+YQrxnV5gIEyrRqGwqE6Nak/gc5hbsmGn1Zx43OCAjSf9umNXK7VphLwu/r1gn1UcX1KWfHfOwgA3VQHqriTRu7h8QZaNk63NK2giCw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LfM5cbj/; arc=pass smtp.client-ip=209.85.221.177
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-5bc4a1130adso443819e0c.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 06:29:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783603745; cv=none;
        d=google.com; s=arc-20260327;
        b=m1CL5bXBlKepvnmHmTPKt40xu68Gn5fYXazPa3MCZHwA0W42aq4LswJGE3w8YXp4Dl
         I0iJhc86wppuQttHBGoEMDKLiPncCbnxLEnzOkr4RdiRNi4MjhS1EHStdn0P9+gfFWcL
         3nN949i0EQQbOKs0HsSlJtX2JEB3vHmfoKmg7m6MR0HmAVSd6W3XClAlTO1qBMgq2PJ4
         ylRCG3ERvCq08V10drPt0NpVIy2keD4+QamqqLScBkbktbOKaW/xFYBsVfwLAviT4QqT
         buKFtuCuZ9viF1uxBx5ajUXzZFSz28H671MVWsyVF8cZV6/HQTaflfnhMQQVf6Cp+QKw
         /LOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sYnuvdL+MuprbAstUVA/KMXRVODde6kDTXIYHwY7dts=;
        fh=8Yq+ui/HDW/MZUK/oQgB8w7JDVF6fiu4a7pNXZCmn+Y=;
        b=URPqnvHEIm629KALW0l7osgdLC8ooAUZtEh0QHNz4D/22dvlUt/s0B++7cMtxcpZV2
         YNFN3VtoyLZ6r9EnUpV9tqZNJ8BFYdWh9NCWiP0P2Lpq/11DT28mwD4P5diE+WGY4oUZ
         ypeucnF2Qn5kQ8KMkWOsMagBzx3fk+iyktoBtowvH95kwITjtvbZtuMGNA6qyv/fkPWe
         wWgFTrMf4W7Kr4yqOOAYa0mA05tiNhqpniLrANVmNXSkiMyxM8UluX2G1iqmzhRJXdrv
         EkDAAiFj96+LY4iuyYKcqthBXKTsjqeb03wfTkWrjx13Xy0QIo1++vtfiK5wOaP40iyp
         wmjQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783603745; x=1784208545; darn=vger.kernel.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sYnuvdL+MuprbAstUVA/KMXRVODde6kDTXIYHwY7dts=;
        b=LfM5cbj/42Hh5pnG5nNvBgVwwxQWg7QlTxmKcRO9WUlXc7FzzOagFfyjWgisQJHFj2
         OZmzJyCpnLeFKMba40jkVd3p6DMynIZYmPZtrTVVn9fwMxAP0c0EnIBK1oVVUrJ2KUGc
         6x6nXgq4M8b7nibDwxElAq6Jl5Knq6USMQzGm8svji8FhbUA7YCsJaXWkG7yDCIv/bPz
         LYZmBn7OpBwRztnkLIfU/WARG6vtfpRRPum/2u+Rwo+VvFV8CQNMpU9M4tPCc0ZXRKOJ
         wCwe7ML3KjlVfdcioLYNU0/h4LPwD/QM3eQmzp9hGq5xTo+cwP1xkV2BNGJfJSD+HSVH
         /zMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783603745; x=1784208545;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=sYnuvdL+MuprbAstUVA/KMXRVODde6kDTXIYHwY7dts=;
        b=ItYUrDH7/MbTiONnIfMpYAxkQs8EySb8QF7g9PGP3Ed4saCFI6KO4m7cqs9ibbFXNo
         hHABG4riK9O0SvdOoq1oWf4Dzl/k+C3oM87QqXW/pFfGvXJjAjtLRR13IjxdfuKO2jg6
         yjKsM4eiYct0fHj6UDRvYjBt/7VX/VQ1DMDnCZ62zFdAZ5SDly9NSSOmhdDS6FUwyu2R
         xUjebpC8Xt5x/tfMHnlrw/W/dGX+zGOW3O0EcxvQuK58CekS2X6v41txx4IYaIzLQPHH
         +4lqaqUnQdvVrSGfrNPb1rUZk4C1SevtP7PRBWZwW6j+nV84jepqzn2GUnKjL0ezFMOm
         +BfQ==
X-Forwarded-Encrypted: i=1; AHgh+RoC98mZIyLoMiynh/v8TQmXKo9OdWufrU4paenF3PwifXEt+gNowI4g/Rn6MXaARcxnQTauULwNwQl6@vger.kernel.org
X-Gm-Message-State: AOJu0YzfkwOZJn/dfa1A0t1ItlZMe96MdH1+dM43Nb91uf1kvgE0JP3s
	8c8vKSBGVpi3O3Je80HGTwuY3xfyf10Ov5FGVR9WoebVhOSq0Om24g3e+xYVLWk99MstkDeMDMs
	VpI+R210oPNTtjtD4TX8MxyNdy1Y7Ca35s2hp2Ll/eA==
X-Gm-Gg: AfdE7cmOWbecXffa2IklLSuwxMctKhuyB1j+Wy4Z6S9fM2mIONjdaFDkG0PpPMMKHQ/
	lfBGu7JAq6BShy02ji19b3BMmQ8qoO7qZdvZOlZAj36eEb1Q686tbU9zaKMH3eAiGumNduInoz6
	2X+4rYo8oXDu9sVqj31mSfzjaV/1lRA7qujKReK5cnHpryjPJD/DTqDT9BHu0CLzWUht3laK/DI
	8TmoMOhKgWGzAZD1N8eBpMvTx1AGZTcGKbXpKb1rLVit/U+xKQHWcS9vpp+CfuWfFp8UeIakPKt
	THXe0r2+CFkwaMuQZANAUuouCfKGCFE=
X-Received: by 2002:a05:6122:3790:b0:5bd:ba0e:1d6e with SMTP id
 71dfb90a1353d-5bf75eab5e4mr3740101e0c.11.1783603744635; Thu, 09 Jul 2026
 06:29:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20260627165410epcas5p3567172b20a463006bcf3686b3771f212@epcas5p3.samsung.com>
 <20260627171228.2687857-1-alim.akhtar@samsung.com> <20260627171228.2687857-3-alim.akhtar@samsung.com>
In-Reply-To: <20260627171228.2687857-3-alim.akhtar@samsung.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 9 Jul 2026 14:28:50 +0100
X-Gm-Features: AUfX_mxnCWBF3-jtSm-4vtEit0N4j6s0qQ7pEzHoCtPwv8N5Ycj70d6sCmI8TM0
Message-ID: <CADrjBPrR_N6SrCitTtWxa7JUM8816cCbTY1rae2qyqnRVWWd3Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] dt-binding: pinctrl: samsung: Add
 exynos8855-pinctrl compatible
To: Alim Akhtar <alim.akhtar@samsung.com>
Cc: krzk@kernel.org, robh@kernel.org, conor+dt@kernel.org, linusw@kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	hajun.sung@samsung.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323789-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:alim.akhtar@samsung.com,m:krzk@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:linux-samsung-soc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:hajun.sung@samsung.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:from_mime,linaro.org:email,linaro.org:dkim,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,samsung.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E503E731A46

On Sat, 27 Jun 2026 at 17:54, Alim Akhtar <alim.akhtar@samsung.com> wrote:
>
> Document pin controller support on Exynos8855 SoC.
>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

>  Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
> index 7b006009ca0e..c4773701c92e 100644
> --- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
> @@ -53,6 +53,7 @@ properties:
>        - samsung,exynos7870-pinctrl
>        - samsung,exynos7885-pinctrl
>        - samsung,exynos850-pinctrl
> +      - samsung,exynos8855-pinctrl
>        - samsung,exynos8890-pinctrl
>        - samsung,exynos8895-pinctrl
>        - samsung,exynos9610-pinctrl
> --
> 2.34.1
>


Return-Path: <devicetree+bounces-258880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBpZEK1Lc2lDugAAu9opvQ
	(envelope-from <devicetree+bounces-258880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 11:21:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9614F74423
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 11:21:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 322353150B14
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC9337E2E9;
	Fri, 23 Jan 2026 10:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w78DC35E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D663374726
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 10:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769163316; cv=pass; b=iC16bIEpPmdG0oIMpKYJkuF3zbfoUZxLd/ljAy6t4tlBC5vP0tP8Q5qX+B0i/oI3uJSCmOCLDfsyFDtR9Ini+1yQ6pUajtC4t9sXmLsE7E8ZM5bPilOtKIJ+JbwgPwX11/GLQsOujQFxWVlKFOm0KVUS3JXxMtbz8zNHj4wi46E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769163316; c=relaxed/simple;
	bh=l1LWw/lLO2Mxd163sD1iwfH3mnjzIBvX0B0bzcnxAn0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cOnPjI264Qj+2CrdQD96+mPvZkyh6iJiLy2kfXUawzPL5ZN9tLqyzbDHI2z0jFzXjdEAN9KtwfKm5sTqK0SZc4tN3z2nK/1B6XDBwf4IQ3UKxMbyIAZbVxtslDBHvsRtB21h+ULMqIQ4ou85Dnay9t5LHPhZxlTjhOTbWOUZ5s4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w78DC35E; arc=pass smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-59de2d1fc2cso2046554e87.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 02:15:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769163310; cv=none;
        d=google.com; s=arc-20240605;
        b=kTQPsSRPiNwLkBXsoeoOVN2kD4wgNhqLmTvBh9nq5mvz/OXlI22fYluYH5pd3I2eCy
         vN2ux2D4tvWdO+Km4LMbni+b3iPpZxyWPvutuvLDox3AGuD/Dr8BOqBSHXLlHz4Z42rA
         XzIr3k/Z4Xc4hJRgR78xy4Kvs36IfxNQh0r62OXNFw7ahUnPE46OiaqBPBvaShDakDGt
         pCvMFwBPnQ6RqcVa3Sb7xzkftZsBfZgDH+JulSPdLOUUydO5Mh1JBG/C2PvjjAh9WZRm
         jrORHJcKIPc0tAjufRVbpTsYkeGJMFj8p4f6kH3J3uYcM5RdV9AE3yXRdZLxZ4CzeItR
         ZNoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=f1NePwJCHgkmaOrOX/MEPkH/zPtNPeBUxGf5rTLnWwg=;
        fh=DQnnt7w4u4U9pRItmA78aRstI2eIkaDGx0IbZFBN7FE=;
        b=WhpQAh2Ba6Q40esXuBHwZJnlGek4j3n/mCFcuHdoWK3INg3quAjQS7wLDAO/0alDfF
         Z0Pg1DapvHth89CzBUE2uMIlzX3kalwAmL6/k309kmnXUSexi5aw4g0w2QPaqf+/xS8g
         TuUPIuMLF2q3VdkLYU91HoJDj/ROw/Eq5/2UWDD2TWpGqCJxSL6k/UXtPBz5fFweMrgB
         WY+Qvp7v7U7KBw9qF28xKlpfgco8y6Ds0dS9asRMwr5KELaQHD+Lb5WiELuJHXtylz5I
         3PJCWVe5MsnPPAfxqhf9BG2m5fu3tbXhtSY/BOvWKmYsYT+/ZDdWvXIdsNcE5DDWri8Z
         xfEg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769163310; x=1769768110; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=f1NePwJCHgkmaOrOX/MEPkH/zPtNPeBUxGf5rTLnWwg=;
        b=w78DC35ELycFtKwMaFjS7E+iMLkwyA3ZmyegPYFrRLlsh1YfSCC5U3MP1QrPJQ3zRG
         jva/7SQc0SrihAzSaVkEej8TnaGd+Ksu9HsJFPiafIkSZJRlGVx8JE5gzXVwvzuEqfQk
         m5dLVxIHeWfKhMgvtnDfwVO2om4C6vHUYpaN3XH6FhSL+LdozEutWqt3tjovXDK9zHzg
         mCTi/ApFLoaHPbNLlSDxvGekHfQNr2n4eLHB2Ahmmh40Mf9zogDtu/+Jhrq18QxgoAd1
         BFLFD6W20HThpboUasj/jdRAdMq2n8Z2kZoKERiFtVsrUXmWwXVYcG8Cf6Xdz3Q5gkZC
         pjhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769163310; x=1769768110;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f1NePwJCHgkmaOrOX/MEPkH/zPtNPeBUxGf5rTLnWwg=;
        b=V2kaMQV3z/n/LbFWV5tWf8GGEsrvXYHgmDzKBdtkzjXxUFvGZDVi2rLcfehEl2+iTk
         /thnMH0inV7aDZmmliMSKQBpCtcNVSJBbUq5I5UMkqsFQDDCgCDGQ5kjSfqApNxJjHpX
         y1JcZzk/PJlpGyKiW2EKkfPItO0PsdVTdDi5trIOXrnaOsIUpwdl+8aHEISrbDmjd2Z/
         ZnqBXvHpwgh6MRt5qfdVbfVxgpmmj9XrAmmtzB5vXINCqvnIhKM+Bjab9TS4WFoEXK0r
         byldguMP1AMzMhxl55vWbqEqN5T/xqgUMIwXQwttU/3JOLVKqyjaauWkpHkJ4S1cv267
         7s+w==
X-Forwarded-Encrypted: i=1; AJvYcCX0ScbfdKHAIPG4SlV73yj9olHHILzbyKNWtbOx82WrJc+LhF5AiI/n4qjWDZfEgqGv3mHLqx4ygzm8@vger.kernel.org
X-Gm-Message-State: AOJu0YxWGhfJiLbLuOCjxY+UTSsW/MtfXlyomujO6YrLWRr5SMWjQkLB
	Zb9Jx5Hii8wntGI6HmGbKrSDkJxXsg5KgyhB2wCjqOYGsrOmtKcVbVkeuhMQIzldAbevbPXEncU
	tRElWwjJ9A86qg3NCI2wEj+4eEqNKK3ZvR+o3AM2fQA==
X-Gm-Gg: AZuq6aK3jcHCEyyZ5W5c/5sRYx6F8A9uaDbY7qNHcvlT7U2joR0adK/UBEn2bSZcPAw
	m3D7J7oLSvVMRBFPkQFz431IfIrH4JH7rMK9EAwz/JqhS7Ewy2RfMSyhcRQFZfVGf88T8rwoQJ5
	WDBOMsF0H4EsrOnG/KwlJy13B5ojIElxrjGwiIejpo5r04kkUaf1wem/3UOB8xlOs2vQMbsNJNY
	6w+lNKBMtC1pFciiN/4ryIX2DA4wXPP3kgQ5BDL7rplVmeexiH/9ZY1SgaUpP4cCmQwlVOz
X-Received: by 2002:a05:6512:10cb:b0:59d:ccb3:2f0d with SMTP id
 2adb3069b0e04-59de4922159mr793933e87.36.1769163309685; Fri, 23 Jan 2026
 02:15:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1769132482-177365-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1769132482-177365-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 23 Jan 2026 11:14:33 +0100
X-Gm-Features: AZwV_QgGSg-BBq9S7_AV3LtbRn4AJfL-B908kIEEoaE0Y2St9LA5MAJw9GzsJKM
Message-ID: <CAPDyKFp_Hw68uf=Bw0ndc9EzDOTQpp-dLejuy71wrygRSyBV2Q@mail.gmail.com>
Subject: Re: [PATCH 0/3] Remove deprecated mshc alias support from dw_mmc
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Wei Xu <xuwei5@hisilicon.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Jaehoon Chung <jh80.chung@samsung.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258880-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9614F74423
X-Rspamd-Action: no action

On Fri, 23 Jan 2026 at 02:41, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
>
> The support for the mshc alias has long been deprecated[1], as the mmc core
> already provides standard alias support for obtaining the controller ID[2].
> With mshc aliases removed from the last Rk3036 plaform[3], the only remaining
> users are the HiSilicon hi3660-hikey960 and hi3670-hikey970 boards. This patch
> series removes support for mshc from the dwmmc driver and updates the DTS files
> for the hi3660-hikey960 and hi3670-hikey970 to use the standard mmc alias instead.
> Considering that the hikey960 and hikey970 are open development boards, users are
> expected to use newer kernels, and the need to adapt old DTBs to new kernels is
> relatively low. Therefore, backward compatibility of DTBs is likely not a major
> concern here.
>
> [1] https://lore.kernel.org/linux-rockchip/20211124184603.3897245-1-john@metanate.com/
> [2] Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> [3] https://lore.kernel.org/linux-rockchip/c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com/
>
>
>
> Shawn Lin (3):
>   mmc: dw_mmc-k3: Remove mshc alias support
>   mmc: dw_mmc: Remove mshc alias support
>   arm64: dts: hisilicon: hikey960/970: Convert to use standard mmc alias
>
>  arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts |  4 ++--
>  arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts |  4 ++--
>  drivers/mmc/host/dw_mmc-k3.c                      | 22 +++++++++-------------
>  drivers/mmc/host/dw_mmc.c                         |  9 +++------
>  4 files changed, 16 insertions(+), 23 deletions(-)
>
> --
> 2.7.4
>

In general I think this makes sense, but we need to make sure that
patch3 is merged before we drop the mshc alias support in the dw_mmc
driver, so please re-order the patches in the series to make this
clear.

If we agree that the $subjeect series makes sense, I could potentially
help by taking the DTS patch too via my mmc tree.

Kind regards
Uffe


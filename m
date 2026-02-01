Return-Path: <devicetree+bounces-261508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAEGCymxfmlrcwIAu9opvQ
	(envelope-from <devicetree+bounces-261508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 02:49:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CABC499F
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 02:49:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F08B830069B4
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 01:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2486B1EE033;
	Sun,  1 Feb 2026 01:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XiDw3CgZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8BC32B9A4
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 01:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769910561; cv=none; b=W8jHpQkXn9h8Co0GwknaJa+oy+fFMdMFyWZA3q16IiZxypNh6FWX26x8OXt56pGjGoMBUkoggubay8B3DX0TBvGx2NK6+YTuuRcolhZ7vIHljUduEWtWfo96OAgWb3c3DWam9jrtQLTsS2G033p3aYsi4pOhRyxRYbxVwTDtWzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769910561; c=relaxed/simple;
	bh=jIM6ploEHr2xj4xww6y64sZmcRorm+yWkDbVtgVT0r8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p0B7lfFlnPGAd4vO2I8pkbqEbl4DBjtAmTThdSf/2kGD6/ettwJDjn+iQDUhvUypjq4trD4+Gt9hyZ7iMrYR4B2mMtA1cq6n21b5nhP4AfXxZLVF3X3zxinyvuqA3/qv6C9Rn2iaNTPPJy0w/gi5poZUA6FKhrVrmzRdpNUhxgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XiDw3CgZ; arc=none smtp.client-ip=74.125.82.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-2b7381d2d95so1807779eec.0
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 17:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769910559; x=1770515359; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fDZPiyu35gI7ry6ULQRYnogAcGNCJsm8fgf787oYOkY=;
        b=XiDw3CgZaIuk4hQt1sjqU270Hodr3ZR+4VRyndOiOH7zRyMmMc/9JGUXVr1ltDX/3Q
         DjbELBgpGWZVRas60rFpLuYLrvyIvk1cEKo1Uee7tShQG9FcJoXU+jVGS91/aAYEChGb
         crbvcVXYuZULFVxvtPF0BC6tgzRzB4xray+oy021gTyPcHsf2tIPj8TRwdiatteg0M7p
         3znZANxeEZydI1ifUZKQY5LgSr7n8ES0TZvbP9awbcvPxfqyECfu4mwwYsh4FTkDdiB3
         Q9f0ePw7GmK6uuNpJyaPc57lVmS7o4iWbD8eZZv83nqGUfsuuo7wUshcoad1Wn7wQQ1Y
         G9fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769910559; x=1770515359;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fDZPiyu35gI7ry6ULQRYnogAcGNCJsm8fgf787oYOkY=;
        b=Hes1JhfFyJ+ZAtBntxA2gF4OJqxi35OLlw+fQmVgZBmDJLLfOxJbwe4nO5G0IEeg2x
         Df06Gl42cjkAzbIx7sVNZ2q7E+3XiaNmQVs/ioi3ZW9uVMx5AxvGsKdiqNQqKVX12iR9
         ElktYCCuVMTe2ufPXoeh0AiP4z39ZtQMtiUMBOFWQlJK/0KFyZCPQfDtTgvGfm23tod/
         0JsMh1DSF/UY0Bu+lkYn5qnzlnZrwv5ATKf4ZXmO/0jOHC967SifGfG+wP5V3xRmzZQf
         PiQtrTAIaMCsuwrG1Nahq+nnwBNGXUJ+JNnl3uaP0CfGUTbut3MpOp0DYC5dfjDDnvjX
         bX2g==
X-Forwarded-Encrypted: i=1; AJvYcCWqNFNgeA0eUVnPpYP2uwV1emOmvnRdu91FowHL0/TwHGQ2+/BBdgHKDhr2ljy/nQveUro8U/RikOgR@vger.kernel.org
X-Gm-Message-State: AOJu0YyrAlnVgYVcNhrahPQmaa9+wdRKmkA1QIJbwswMTtJcniYOJwfC
	24BI3I2vVFcGRuHYNEk/FEsLyScW73otGfmSlEsVg4O/2GCOPTCcQkCp
X-Gm-Gg: AZuq6aJ9Z7AL5W7DPBnn2eboGxCq6GYimcR9UXuE/tCJ/Iqbck7Rm8SM7/E9Xr5SNP2
	vZuHyU5a3tW+Rx9hvPGFkPvgt0i10Iw0p2d0w2CVd3HZfxVM5h0zT2JDnfQFs/gWu+z5ZX8SQyx
	Lom3VimoRdisCd7UMKRgVKKYCMbqMG2kljtnPHW6m5v1l4XV0CparkelDcCrrlhFfQbs3Oa0xF1
	af/ntDPcxsxGopjJJTFogSJtzFuIxkrlWw3tzpHDdRZ3qLFh7+AqtVPGW9t8Ra6sddYCIb2IS9U
	+rzAMDAMZ4amTbk8C5tgSBVCxzhmB45lkAQkCYu/rQy1vFBxmLKNbS10TtJbrAuL4Q6tJ1EMEB2
	O6q29xpNVH/auBIctjkufd3GauzZXaqgKsuC/H3kDoiiwZ3lm/FtndDgIEqNTm/dkXI9b/QvXKB
	Rm4okXwW5XKIhTAadH+n4=
X-Received: by 2002:a05:7301:9f0b:b0:2a4:3593:ccbb with SMTP id 5a478bee46e88-2b7c9124abbmr3386218eec.2.1769910558628;
        Sat, 31 Jan 2026 17:49:18 -0800 (PST)
Received: from google.com ([165.225.242.183])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a1abe92dsm16914029eec.17.2026.01.31.17.49.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 17:49:18 -0800 (PST)
Date: Sun, 1 Feb 2026 01:49:15 +0000
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Luca Weiss <luca.weiss@fairphone.com>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 2/3] Input: aw86938 - add driver for Awinic AW86938
Message-ID: <aX6whqw7XyaKMd9m@google.com>
References: <20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com>
 <20260128-aw86938-driver-v2-2-b51ee086aaf5@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-aw86938-driver-v2-2-b51ee086aaf5@fairphone.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-261508-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 52CABC499F
X-Rspamd-Action: no action

Hi Griffin,

On Wed, Jan 28, 2026 at 04:51:14PM +0100, Griffin Kroah-Hartman wrote:
> @@ -717,9 +746,19 @@ static int aw86927_detect(struct aw86927_data *haptics)
>  
>  	chip_id = be16_to_cpu(read_buf);
>  
> -	if (chip_id != AW86927_CHIPID) {
> -		dev_err(haptics->dev, "Unexpected CHIPID value 0x%x\n", chip_id);
> -		return -ENODEV;
> +	switch (haptics->model) {
> +	case AW86927:
> +		if (chip_id != AW86927_CHIPID) {
> +			dev_err(haptics->dev, "Unexpected CHIPID value 0x%x\n", chip_id);
> +			return -ENODEV;
> +		}

If we are able to query chip ID why do we need to have separate
compatibles? I would define chip data structure with differences between
variants and assign and use it instead of having separate compatible.

Thanks.

-- 
Dmitry


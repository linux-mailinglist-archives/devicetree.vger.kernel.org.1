Return-Path: <devicetree+bounces-268524-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOrjMINWn2mIaQQAu9opvQ
	(envelope-from <devicetree+bounces-268524-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 21:07:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6862819D0C8
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 21:07:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 909CA301E5FE
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 20:07:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3003E2F3614;
	Wed, 25 Feb 2026 20:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XQ3u6Q0l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FE7239099
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 20:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772050047; cv=pass; b=X+9hQhBMeOig8zC2cBH18EfGkSUh02rqxSskY//DI32+W2PeAn4AESXxusrCSDBqKnILg2CSGNdbVXMwb9vo6AQrcC21SDEWQXRycheL3tRhymiJLbDbKGHssn4ywEdZ9ob7e5qkEvDjRwlg+cWTa3eQJVOIKH3AKL3U31P8cBY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772050047; c=relaxed/simple;
	bh=8b/vlFFpL7CJfKxCH6fo9uCkw3bN2kaYlhwt61QcN80=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ubEQwgA4tzWC9ZaVw/8DMTuDjTiCH+CcxjKWccvwrlkx4CDn/Imw4MbjJnCdVGN94nTtg2SeAnWSkwqC+S/iZvtU0+WstjfE5WfKPkkkf/jhMOw/+kL8emdIiwIYwSludgSjVKVF3VmgGpI1S8TR74D/gx8U8g+94FPM+gcYV7o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XQ3u6Q0l; arc=pass smtp.client-ip=74.125.82.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-124a635476fso79832c88.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:07:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772050045; cv=none;
        d=google.com; s=arc-20240605;
        b=V4vBNopOG2GfqguCVrGVRjuGatw3IwAc1wCwUkjrOoKqZhlPnJe4lm56c6TNFEIGDK
         UlE3W+C38arKMQD+zFh4mitLW0QhRWJKYyECKBO9l6KKZakYv3D55RlMnQK/7zaWEfDh
         OL94d/5UZYLOWsU1XUGArtrm+ciN/bVZ+WSR0NO8caEeDFjGHAjmTmLBXGbCm6P7AOYp
         gJj0U4A4d1FCJnA9qxVGtBqDf7j5n9i4gCO2MvPF8NqiZrw0uJKUQdqfghov+EjH8WYj
         xVC3AwhK6p/G/7me80sdbgvsf8f2NDoGvCyH3uBMHxseg5xawMmsyRuflxgPEZPxOgWq
         SjTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8b/vlFFpL7CJfKxCH6fo9uCkw3bN2kaYlhwt61QcN80=;
        fh=XMZv1CvVI0pQ7xc2uqQbE3RtR5LPJiVblPTMcuoV3gY=;
        b=a04SrRc7ZrnrcxefzGpoG9IvAiucz3prmPTfxu/4ocRjZDN+PKXCaJmAIv7ayLd/9t
         tbvlyJBA9DnkV/j+Z1NPc+/ptukjVGiKuHaQj1UagJ0WTFo2p9tc8juO4FQr/OMIJcxi
         d6OqOifeIBeiXehE7oxwHfTOY1ApHBQj1TAhlXOie4eCg2C/jjqWgDYrDw1w35/OZmC6
         h12QDiEv2o8l9zq74EhzBSUX4ggxDWKJXACHKVSAjYc/iIoIFIO30RKZJrF3QMmkDc2C
         JsW8ms+pmqbrxL3ndkgkteqjILKSjp2hEjr6JaEExIyvrvmyofmKoFsnC12EXOVFG6Xi
         F3UA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772050045; x=1772654845; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8b/vlFFpL7CJfKxCH6fo9uCkw3bN2kaYlhwt61QcN80=;
        b=XQ3u6Q0lQ4L3rHuzOerncBsto547HY4xJ6iyiqvyssaP6lGg8L1/SJu+SKfjPEqgaM
         78mHFdkx9kGfZ4cGfaZEhqRE/S/Ws9xnR2bdm77ZINh8UlBajYwqIowlyzb2NU6iXxm5
         ZxucNelikyBhgA+GtF3aU4cyxzaUBhgmYMYH2RntjcU+2RPzhsAoSTzKCBeYcbxLsUrd
         8854k1OVH7zk7b7Pec1sSl0bueMYFYCrnfXddfRnLt5orq2DoFHc19nw/LKPXLceOgud
         uZSmPtmGoyaiJ5ShsVPZ5/YnJ5Cj+CHUWnzH1U+0dA6fa+63qxBkitOivmlhDy/D/FeK
         vBUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772050045; x=1772654845;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8b/vlFFpL7CJfKxCH6fo9uCkw3bN2kaYlhwt61QcN80=;
        b=E/PlLK2HqJAe/sRF+KdtpeuvDZ8Pj/CVBzCqaOMpMLZFjys7qyaJcj9YoVFJKfr70G
         eo2KPiHAclPrC4w0uP/qsfwWRpnnTBjEtnvan2BSALlF7veTjP/8mzv8x+gIw6MDusXA
         wKCAPXMhCLnCeF0CQc6eQclJ+T8yn2hvrSLz3P5msg2ij4gBycp37HQ1q0nreRFt3eaN
         EOGK70d7cY7ltekyryWL6HBa6QbNuAToUAz/3Y1QpACpaAUAEJhOhTRj22F14xKHAb25
         B4SLuxVZZCRtzwNh8NL5OChUJJNw2PFB5lgWeiMdXsKJD73KPwr5AhVZZVUYY10y1++1
         jbDg==
X-Forwarded-Encrypted: i=1; AJvYcCUsDmqFFKd079TXK6ND9E29V+rAe+TrqTV9J4ui0UzNC1LBC7ueifav+dAnhtQSpZF5XlbS1TUhTyCV@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3sBm6g67EVFaGLMZvZZ80xAdzxLJxnfzllR43Ibf3Prad5oYA
	p7xCjVGvovLVTj6JsDJeVeG1OH7rC0szGhh7TTjW0U1nCI1W7P3dwiyE90ZHpVNVzvryhp59YdZ
	KhraNJ7LUnE7KHkVyhmwWAYc2daOLuNs=
X-Gm-Gg: ATEYQzwSKsRNH4+nYB/AP5tRLTrEw8E+qgfveUM6nMxw3WPhZFmB1QHvLzay/J+cdl5
	N1u7VQGWG5L2z9F6wzNg/23RchfZPQToygL6PMnA6aW1eim4Or8NJXJWXQStHw951plSJRU3I3/
	birTveGwjpsm9Htgntpgt8S0TKi9A11oUigVYwqU7g3ROGF/JuzPP/qXzhUUj55Oclti5iRbjMP
	9lL4MYreRXE+sg8zC6wlhuQM0PA2Joe35fValNyjhakp8xcywI7NSpnFGM/m8VV/GEmYmVxYfoE
	ywcbw6k=
X-Received: by 2002:a05:7300:134a:b0:2a4:3593:466c with SMTP id
 5a478bee46e88-2bd7b9d9839mr7568138eec.8.1772050044982; Wed, 25 Feb 2026
 12:07:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223-panel-patches-v2-0-1b6ad471d540@gmail.com> <872fddf3-959a-4fd4-8f93-cafdf8414ef7@oss.qualcomm.com>
In-Reply-To: <872fddf3-959a-4fd4-8f93-cafdf8414ef7@oss.qualcomm.com>
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Wed, 25 Feb 2026 22:07:13 +0200
X-Gm-Features: AaiRm50iTeIljUJY3zqhpqdL0DmyOHNEXBH71A5lwURdxPgX0-EwH6M5va7Oca4
Message-ID: <CAHuF_ZosFSDRk6Spsw1hnFea2+Zx=c0M0STvKTvhFC+85yV7Sg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Add support for the Samsung S6E8FCO display panel
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?S2FtaWwgR2/FgmRh?= <kamil.golda@protonmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268524-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,lists.sr.ht,lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 6862819D0C8
X-Rspamd-Action: no action

On Wed, 25 Feb 2026 at 13:50, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 2/23/26 9:26 PM, Yedaya Katsman wrote:
> > This adds a driver to support the Samsung S6E8FCO display panel found in Xiaomi
> > Mi A3 (xiaomi-laurel). The driver is generated using
> > linux-mdss-dsi-panel-driver-generator[0].
> >
> > The mdss reset dependency makes the screen work more reliably.
> >
> > [0]: https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
> > Original tree with patches: https://gitlab.postmarketos.org/SzczurekYT/linux/-/tree/laurel
> >
> > Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> > ---
> > Changes in v2:
> > - Changed commit title like Dmitry asked
>
> You got more comments for patch 3 from Dmitry
>
> https://lore.kernel.org/linux-arm-msm/dko7l6iage7blup4zbpsm32d2elvxpengqwbzcsv4v4zedjmpb@rsdrb77acgme/
Thanks for pointing it out, I missed it. Responded to that

> Konrad


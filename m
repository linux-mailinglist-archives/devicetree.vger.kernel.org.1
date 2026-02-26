Return-Path: <devicetree+bounces-268876-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIjzFrNYoGlPigQAu9opvQ
	(envelope-from <devicetree+bounces-268876-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:29:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC34E1A78BA
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:29:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 307D63063AC5
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C70C3B5304;
	Thu, 26 Feb 2026 14:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hLfzHGy3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBA03AE71A
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772115731; cv=pass; b=EFdX/tWIMkI2LrMg+mN2JLalcJt7kXYtOhd+3+K9LaYk58tdx89XTPhOycBfMRFMAMag0/UiH37NcdyRvDkzXCn4hmfJez0iCvKynl0KCEAvojoSmtSHnXtsvwxjs3v4U/JPak36DsN1tS/5bLJGVCo1C8nqvWgrciqBoQPiw2E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772115731; c=relaxed/simple;
	bh=I14dkXry/WUF5t4Qh55P8WfyJKkZ75qa+hJAzRq5FZo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k3ofjVufv9OpJqLjhc7DBQN8HNbL3fJNvI/6v+r2osrvn8UmY6JeB2xKpIjLqzfZINWjZBtwMrN/kOW+sA7xwzkgc0bDGGyR8+yTcHL8nLfgz3dGCRPcVzAzTGk+VyfrECm3coW9NVqyCuvRYXsI3EqX6iaj0z7aJY04RpaImuo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hLfzHGy3; arc=pass smtp.client-ip=74.125.82.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2b6b0500e06so1130845eec.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:22:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772115729; cv=none;
        d=google.com; s=arc-20240605;
        b=b+TJ92NwLpMjCkZ+c+EYQJFVh2NAi7Wb6nYy/ExYJGRe3WC48uWcS1zd3zF/mWfAl3
         mt7zn9tK4cZZibxnW3xgENIy45Kawmrr9utcgVJgfmN4Ay/thL7dfBngr/fe4b0biefR
         oowAvoBj2fIHgoMPaqaeUqAhlwvFSoM0OOdlWDUHMtVpbQIcsFOPkZVqQdUT+Mgz1L4g
         w/F4cfJ3If6DUHbL9KXVwgK8ueiuVROM9Y+ZZQ46+i90HFaTf7yg82P03O8XYmEwm5x7
         cjKrgvnGKLhZC5BZ+ia4neASliqe+r21B5prJ6yrvbS7xYTSrnlgr+xKebvn+ZhMBRvq
         eWNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2hlesacO2IXzOls7xphFVXkWYV7iYxmey5eNTFKv+p4=;
        fh=lXBL1jII2qafb9cZ4pzj25vw3P0/ner7mnvDOYr+lko=;
        b=dNlEiqcirvSJupJ+WkomJYbaSBpMmpPCcYn2cFiw89NiXoqnwQcSVEZWEhgo9vHQaa
         L0pQI4sy8rYMSgtQ5OXR4+mhQBOf2d51sX6oldVpookZ4HpnLXXuff2FqzMM/VrKd49F
         HeiG/tSSCHQPJCdsXot49HTXJS3+30neEQ2cq/Ab2XAyXJ2QzG31DecPlnfKw0KxIv8L
         YEJhFp+d8CSq8PPKJtjb44dpBxlxpQMWcz99dNFo9wg8T1CAtoBeu43WflwNGrwV5YZc
         QXKAo9z6pBZcJrKgq/RGibOgr3ZpHA5hOLpwX+CvRQ3tC5tpHEnhPqmN01r94XVGjBAx
         BItw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772115729; x=1772720529; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2hlesacO2IXzOls7xphFVXkWYV7iYxmey5eNTFKv+p4=;
        b=hLfzHGy3C/O72r5vOpf5r7oF+AFBWaWGCd0C6i5QtRI1fUGgUSBx/TM/YsCWpyZVef
         uLpQ7ONBAMddAU6/SuCB6SUd0FnUMpyRCnvxpWxUWKC8/rOgAIgYOqllc9+WS+8weXQI
         yAdw0xGq8hs3T0lEKWwk3QqBxmErE19iK1dbLL8oGVknO92S/zGDqhb3unKiOw2sSFav
         iMu8hgc24Y4WkWjeX/K30ZZutTcFOyH8bwAkPvih7D3JoiIPA1WIxZ1Ja3DyJEFCb2q+
         VVDcLCZC0si4OuscGzthtgiAKpOB2T91aFQp2a5bSyoDnL47ZcVrb/0UrhyqKQ0dj3tW
         P85Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772115729; x=1772720529;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2hlesacO2IXzOls7xphFVXkWYV7iYxmey5eNTFKv+p4=;
        b=JWbHR1WU14yTXD9cQbPrb2OBEapQcl9bpgNZMb8rM0P36da0Yv4UZ/c/ALfOqkEHpE
         JUiYbBR4WmFlhpBIeZkzh0x9RpQDKN6yyANaGjSh7XJj/hngANxFRe7gczhAEtebdzIl
         2130SAcRBqf2oPt0MrZZnumjF2QifuG0a3DGNE7MG0ONDiT2SNKFRHMbpvgH3Mi70gyw
         Gq6XDUHo583B/c4B74KXxM6lXQGZjVU9IdvWqKCuTv280buMO1wLwqpsuPHy1Mdzjgmk
         eEMSUdsUO3cW2FVSYTZ81W/9oFMEvaTqxazh02h0wmyULTzxbPEzS5A8Q+Gif8BDRSIW
         j9xw==
X-Forwarded-Encrypted: i=1; AJvYcCW+DRoft0Gpe/50xqcGlI/AjHSbsWtoWsrLgbLRH4Rr3jAeFpBy1V4WOVZ2W1b/OBiBRwviJua60ULS@vger.kernel.org
X-Gm-Message-State: AOJu0YzvHj4M+xd/tsoNtOe+NrP0lWnPkanG1H6pB4aoG7Q9TC6X5sD6
	AV+xapo/GwY0CUesX+haK4NbTAM/1PwKuhqnadcdrBtaZl4YgVKRRUTLD2FtIDi5szh/wA18RcM
	WzG6q4aQ9LQbLHrXPlJd8CBtkgCvPFr4=
X-Gm-Gg: ATEYQzz8mhvX/fi7rcIQ/mIWz26SfCSCcClS3K7xTgHAS5RsRH3RyI6aF6O/+gcveUh
	VL2L1jbMABup0cnknFiufyvpRYON8jnBVRICrKPQpeiXAAf2h4Vyab+kYJEn0oQuBrs5+9FH9/A
	/n2gyVmnwi8vb14IkmmBi9U0lU0F3IUfZ3M7wdfA4uzAHKYWbpdqTcjlo5C4t1yJAx9jbLKD/pE
	J3nZVP2W7JmEdKnGgvPwpr2pxmz9YreSqAu7l9EkqiYy1VHHEgwO/1saHoTYQKhyKGDsNOkb96M
	/ig2Gg8=
X-Received: by 2002:a05:7300:72cd:b0:2bd:d1e0:edbf with SMTP id
 5a478bee46e88-2bdd1e0f061mr1060447eec.15.1772115729246; Thu, 26 Feb 2026
 06:22:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223-panel-patches-v2-0-1b6ad471d540@gmail.com>
 <20260223-panel-patches-v2-1-1b6ad471d540@gmail.com> <20260224-bulky-rabbit-of-courtesy-83fabc@quoll>
 <CAHuF_Zq=Rpg0HoRJv-BSREEhT8tYH4r+BCbZ7obrG36vSmwMQA@mail.gmail.com>
 <54abd390-113a-4c99-b024-2029c4d68099@kernel.org> <CAHuF_ZoEAT+91trLabyo8rc8afXW=Wd0Q9yxu_v53nXoRFJMTA@mail.gmail.com>
 <26dc41ef-1a98-4a16-a60d-c7654acba758@kernel.org> <de83847a-67b9-4877-a52a-ee1976d68ced@oss.qualcomm.com>
In-Reply-To: <de83847a-67b9-4877-a52a-ee1976d68ced@oss.qualcomm.com>
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Thu, 26 Feb 2026 16:21:58 +0200
X-Gm-Features: AaiRm53NJdysK5cQihGYwFMsFJSJchpZpGioTorVxUfiq8Iem_ldmJOfMXkJJC8
Message-ID: <CAHuF_ZqA0cQwbRehBaKxUxfmhtnYTX-xLLMAfEo3E0EN_ABP=Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: panel: Add Samsung S6E8FCO
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?S2FtaWwgR2/FgmRh?= <kamil.golda@protonmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268876-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,ffwll.ch,linux.intel.com,suse.de,protonmail.com,lists.sr.ht,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_WP_URI(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wikipedia.org:url,mail.gmail.com:mid,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,androidfreefile.com:url]
X-Rspamd-Queue-Id: CC34E1A78BA
X-Rspamd-Action: no action

On Thu, 26 Feb 2026 at 15:42, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 2/26/26 7:55 AM, Krzysztof Kozlowski wrote:
> > On 25/02/2026 21:03, Yedaya Katsman wrote:
> >> On Wed, 25 Feb 2026 at 17:45, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >>>
> >>> On 25/02/2026 16:29, Yedaya Katsman wrote:
> >>>>>> +  vddio-supply: true
> >>>>>> +  ldo-supply: true
> >>>>>
> >>>>> LDO is the name of the type of regulator. Why is it called as name of
> >>>>> the supply?
> >>>> Can you explain more what you mean? Do you mean to change the name of
> >>>> the property? It seems that all the regulator properties are named
> >>>> foo-supply.
> >>>
> >>> I just have doubts that the device has supplied called LDO, considering
> >>> what LDO means.
> >> OK. I don't really have a way to verify if it's true, all I have is
> >> the downstream dts
> >> which calls it LDO [0]
> >>
> >> [0] https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/d3766fc8cda2d96de2850faa9ce58e5a37ea9f9c/arch/arm64/boot/dts/qcom/trinket-sde-display.dtsi#L24-L36
> >
> > Obviously the regulator is LDO, so they called it. Most of the
> > regulators are LDO, so why VDD IN is not called LDO?
> >
> > This is name of the supply in this device.
>
> Yedaya, in case you didn't catch it, LDO is an acronym:
>
> https://en.wikipedia.org/wiki/Low-dropout_regulator
>
> The vendor driver probably calls it that, because the input leg of
> the panel's driver IC just so happens to be connected to a regulator
> of this kind
>
> If we don't know the actual name of that input and have no way to verify
> it, I think 'power-supply' would be a good generic consensus, it happens
> to be reasonably common across other bindings
Thanks for further explaining. I managed to find the schematic (Thanks to
Kamil finding it first and making me look for it)[0]. It seems that
this specifically is
VDDI supply regulator, while the one called iovcc in the dts is
actually a VCI regulator.
The vddio-supply is called VREG_L9_LVS and connects to the output of the vddi
regulator.

My current plan is to call them vddi-supply and vci-supply in the
binding, but I'm not sure
what to call what's currently vddio-supply.

[0] https://androidfreefile.com/wp-content/uploads/Xiaomi_Mi_A3_Schematic.pdf
> Konrad

Thanks, Yedaya


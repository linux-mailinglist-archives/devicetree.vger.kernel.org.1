Return-Path: <devicetree+bounces-144964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D772A2FCBA
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 23:14:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30BE71651AA
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 22:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43A5724CEEB;
	Mon, 10 Feb 2025 22:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b="x2lPpGA+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f100.google.com (mail-wm1-f100.google.com [209.85.128.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E31026460A
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 22:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739225670; cv=none; b=MwpHtyC0pCmiB4brh5yVN9Pra+TxlGsAvsGGhczrO+VO1ks82iW5TEvRBMnoKDCSQy+G0V0KH00X7lzs2VX7YUYjy9lK7I82ec/LXTgWui6rHv043zMyOOk9nC84DLzlPfqZwYxF9FEGQloPHP+aDtxneEjwGRP5gPsiyHADxyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739225670; c=relaxed/simple;
	bh=BlvLOsZBXF+TnfTSys6rDGUcPi850mhrSsFCRxUvl3k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cbQdxCkMAh2rzpmqFVNlwCwu/hfHy5XJNwW3MWXI3Gh4zT5QGydp2M9loJi6iCFZjidK29rqhY3It2pVWiMNhHzD5dSVB+Dsj4IvDAtm+m6dmn4b0oMp3KYqAFBD2Krz2dqCyVmQ7WuzhvT2yQgOCDmWmQgYFqaQy5Xp4R2CVio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se; spf=pass smtp.mailfrom=blueri.se; dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b=x2lPpGA+; arc=none smtp.client-ip=209.85.128.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=blueri.se
Received: by mail-wm1-f100.google.com with SMTP id 5b1f17b1804b1-4362bae4d7dso32464085e9.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 14:14:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1739225666; x=1739830466; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ozhv3Vnu4lRs9Pkbjl4o5rRMNwS9TWIXe5qbazgH48Y=;
        b=x2lPpGA+3yRGxzq5QYl5ZVE5XHeS+yX0hR38Q745Xq2UOzMNEoa9G5zo4zz6Vx3pPV
         Vb59GFmeSGQAnltd1Z6NplOXUA58JDZmbe40RNZ+LXeqsah8RlwF7Z5Onk566oKBFIhK
         yirFRVflRpsli4vCubJuazCLctW0ZTmrPskwH5046gT+/ljc4kyFCp7IZHmk3AZOYwKN
         Rc5zqI4cC3a+RcSMUMGm0VBHPuLKmpKlWIpTvfIVOIxChlUcJVvOYoZ79YC/HXFOtgSE
         AxbpUMPyd2quE85/sgD7Cux3NagJc5EMJsHCLHMi23zMIMK3yxa/BVU/CHc/BfFzVQEv
         ummQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739225667; x=1739830467;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ozhv3Vnu4lRs9Pkbjl4o5rRMNwS9TWIXe5qbazgH48Y=;
        b=MGKN+mv30bgodgkvk+fWckVqXHoXhfE4B6dtI6Qr938nyBpAst2dqeiseR3wtUc+zW
         NccXqDwi+2pyRnaiN+DRNAnZSXuOlHafJrEyC2XP0Z//7L51FadWnc3vKRcOoq6a4RuN
         ahtKfkYOURVSnP2T4bg1mUYGO6DT5vFwXOH7Dc4D9gTF1H+Tt/f/0nyE3CG6vVQesThJ
         cL9nUKqrg0Z1q/oSn2dtdp5WW9JNG82i1a1tp/OdSSj7ZqxnqX11HMRCzsSpor5/+P4l
         nV/s07nn8k4A+Cdrh5IqD3hQCRkqBG46Vxbc9KGlw2YhGPv41UM6I3A7g13eOaddHX3u
         SWmw==
X-Forwarded-Encrypted: i=1; AJvYcCWB3hJvhuqZ6smHNqPUSYluisCSOAB3Vl3IgpZD0y3u0YoF0mjhhwd4vgNAtkM5EJWBRESVQliu2O2w@vger.kernel.org
X-Gm-Message-State: AOJu0YwYIxSBZmt+bJtqZhlgLdmZKfGDRZsqpIRpctmPq4yRSgDKv55p
	e9xw4xtZItM6cjANiuZKnUc04URllLTzsMifyEgy0mwVt5cALkLeDcfXmMMk6o70s+oEOwjOmds
	V1IBK0xnMlhs4glSkkkPRGY2ZWIgBQJAy
X-Gm-Gg: ASbGncuUeze+bjtaKvehpNNJy77/eTAY4qiWPqDfxw18xOuBxV1gI5AEyTbkKEY0F7D
	4YA7HbmlT+V3w29Q50IWsQn12QnbKy3jcWEUkPn+FWskWwEy6N+TYcA21cBSsLSu90RqjAlRu1i
	ZjhAP4/3gM2/OiqGMIaVzSBwGU71XOcn3J/JiTozTCY/Ha+iAjNTGPGg7Y9xNXXIFTsfFEq5ILP
	OVzwTaAHgww4WXO7rYG2Km70Den2cvOaiF+mJjW/ZKnB/U3s+UX0cjLGeiQwNCiO/KMUqOO2bJA
	QLjKY6KoKDggk0hM1f4fmPwQEMxMtIzy
X-Google-Smtp-Source: AGHT+IEtVEvJBTL7NTyIlWVziNX5ymcX1eXzKuEmInRMi/mZ4WjeAQ95vMBKEwBIFHdMmikZVxvQOGgC0ZpM
X-Received: by 2002:a05:600c:8706:b0:439:350a:ab52 with SMTP id 5b1f17b1804b1-439350aacbemr93761305e9.30.1739225666202;
        Mon, 10 Feb 2025 14:14:26 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id 5b1f17b1804b1-4391dfd4ef0sm9443255e9.37.2025.02.10.14.14.25
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 10 Feb 2025 14:14:26 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Mon, 10 Feb 2025 23:14:23 +0100
From: Patrick Wildt <patrick@blueri.se>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add MNT Reform 2
Message-ID: <Z6p6Pw34JsEa06Gc@windev.fritz.box>
References: <Z5toOecuMiBXM6aF@windev.fritz.box>
 <Z5tobRnjXmr4dl7j@windev.fritz.box>
 <cd6edfed-08a8-44de-9bfb-5199fd2813fd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cd6edfed-08a8-44de-9bfb-5199fd2813fd@kernel.org>

On Thu, Jan 30, 2025 at 01:05:45PM +0100, Krzysztof Kozlowski wrote:
> On 30/01/2025 12:54, Patrick Wildt wrote:
> > +		rk806_dvs1_slp: rk806_dvs1_slp {
> 
> No underscores in node names. Missing suffix also suggests this fails
> tests, so standard disclaimer:
> 
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=1` (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
> for instructions).
> Maybe you need to update your dtschema and yamllint. Don't rely on
> distro packages for dtschema and be sure you are using the latest
> released dtschema.

Hi Krzysztof,

You were right, I did not know about that; thanks for bringing that to
my attention!  I've prepared a v2 that I'll send out now which does seem
to be happy with the schema, and hope fix those issues plus a few more.

Please let me know if there's anything else that I might have missed.

Thanks,
Patrick


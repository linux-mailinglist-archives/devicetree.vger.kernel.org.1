Return-Path: <devicetree+bounces-291991-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMKIOeuK82md4wEAu9opvQ
	(envelope-from <devicetree+bounces-291991-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 19:01:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9DA4A6270
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 19:01:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CA6130158AE
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 16:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78E00406297;
	Thu, 30 Apr 2026 16:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e4AoGdM7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB6433374F
	for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 16:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777568306; cv=pass; b=cMWn/SkNs8z2TOJIA/nvCySOwTjvbH0N29XektEc+Fj9A1NxXBJ9gRGTy/zZrAS2zSyXXLNmC1a63tUv2JGbr5lu1Bg1c+Z8iIMsjX9TpN6RHGPINJCskGeGyFoRJhb3pbTxKCj95uNa1/sqkb6gYriD6ceTx6+W1+2o9dZV8Vw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777568306; c=relaxed/simple;
	bh=nisUT47V1FVp0iHBXYyXaa3Y6j/WBUFvunEgUBCG2IA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VHfWhSi7jpM/GMcc45eqkyPWx4DM5kEKyNLpcpxAagvfrgm4TVTTqGBtJ3EFKfAJQBVDqyJ9qn+nF0A2lo9c5MD7KQMjcfaBZErHdF2pBK5chBebKPv8bpDgB1OzG4oEXoASi9vH/SgFWRGbxjHLrHhhmCmR+AyjAvNQC+mbtfQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e4AoGdM7; arc=pass smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-59dea72099eso1301955e87.0
        for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 09:58:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777568303; cv=none;
        d=google.com; s=arc-20240605;
        b=S0uOf5PRQS+mLSp3SbYFQ5Rqg5iq+TYlCZOvtf4f/nNGw8CfuET0nrL6y7l/sl9nLN
         9e1ss45dEsx/9go7hzu1dpzjZODRe/TKGjRohEvmCV1C8kRfiY3ITJCH02DGT8UIJfCe
         K+GXUZbx+cftHKv7w46+oistxStQTxU08Db7MvgNsQhzft3ykjtK3AQHDCB9PKLbxBZY
         gC878Qhvjj2Yc6FtWqn7x8u8SwILI6DlxhvjK4XO3j8RnqrmSUEh8Moc9smrw9A0Abuo
         B3UZuaUcFpfuDHkmku8Q9yQebIm3jfksHKhpdNi7UKJReB0oR75+xzQHuFyavl4gq45Y
         CBrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nisUT47V1FVp0iHBXYyXaa3Y6j/WBUFvunEgUBCG2IA=;
        fh=xXeGc/8hr+744B0p3CCbp3suBoOEA+BsQ13oquCkScs=;
        b=lYSEo6uUofZGYhSZ+S3DbvahKixbG/xsq41uGMZJtIOWHqiGns2Lv37QCDoT2CpZeE
         tzXaVNL699U3WzbxWHyN7v3t+IdL5H9CRNiJ492jPF7msgd5KfVoe5fyzxdGvYMMFHZc
         S1QPgPA6a52cPDHvFJRoCkiv6PYboP6smPcOkpAvkn5PYTROhBP7H63o++PC4ONTb6sZ
         3e8JNvLzLogtXuWZYJUOG/Xit4pnXNIjqyD/mDxTtgPQ49dqMjBBFax6SByEPGKuMooq
         0nCcrPf30v0hg/Nu7Z+09kbnhSATnjN0CyGXUqTNYbVQJNMadGzmC1nI/HUaPZkens/+
         vWqg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777568303; x=1778173103; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nisUT47V1FVp0iHBXYyXaa3Y6j/WBUFvunEgUBCG2IA=;
        b=e4AoGdM7picFSihMtmgwIU1q+jHZWWJdoskxyXtgXFrJJ6Bi0JuX6Tvx03trIlXejT
         pJCTBgWAQ7KObEDUGXMAGe2RJZJ7fTnYrOSyRoZK9ZtidItW1+bp8ApSOip8XwYj54p7
         /gkTM9esK3jp+gEgZAykeH37XeerAdH9WAUJ47wAkk9YJtWAfbogbd+/SOPkSXciyF5d
         Dj7nQ79bXWewxn1S34P8tEnKNv5YdkGtuXm7ala/63Tan6mk7yFAO757KbHURZNTs9MG
         aTRyM2EOrk3BsC695jLZGy+uXf8IJ7vMxsXyjr9Oe1ft2STZ3wFj7Q3pXrg0ZuMH1G3I
         W/xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777568303; x=1778173103;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nisUT47V1FVp0iHBXYyXaa3Y6j/WBUFvunEgUBCG2IA=;
        b=r2iS5tCtWh4y+FJOoQAtIWJVuSHXTgbBNHEhym+2SNmYsZQBuZt2sBNF8XvT1s2Pjb
         2aGPB3pGYta4kKF4e5TQJU6oSXhof+NeqaVxCB15I0sxV09b5k4iSIigGaOAFFMK3Syx
         mgAQ9ZG3Uaxw2H5zcRhHBUBxQZ2/YERF2QzxiJI1HDslr/4j4X3n+K34XaA4KjY/asZg
         dVIBYGpzMFUbY+n30NeBtnwr5s/OWcFkWZ4VT4glQa2qTenlQpFiHpvv3r61cDuoN7MF
         tiHR81gl+UaOUwCiaaj8Ux/z7hIBC06rDHrkAzONuPsWAlOXz2aV+YVFS7bWKd34FiM4
         TLYw==
X-Forwarded-Encrypted: i=1; AFNElJ8WtwprOcnh/HnaWXPDT8cO9ro4qN8rsRC2CBeSTLzERGdE8F+toWWOWkkk/8ZHFwES8as3n3Pqk+1r@vger.kernel.org
X-Gm-Message-State: AOJu0YzFEVI9caUU7PQXuKsRRt9zOt4TFOOGv5aF6wUTxDuQzVQS9l+7
	B725luALt71VKlHyH3sB2lH002gekFRVa9qDhA46ltIUpHOpoGvwCoItq//0606TRdMRNSmD3o/
	pXL7W8anzY41rZh6BmmsrtsyUTFndrSQ=
X-Gm-Gg: AeBDiestwSR4Vm5ES/08qCbk9Hjsy1JTYTqTs2Rqjq1qO9OHQZLGJmGBBUO4SQefPAx
	qYl/x/nKm420P8p+nhuSJGyczJC2gW6vTfNJvl/mU1F7vN+u4jTNZeZkWJtdn8M5xKGStQ5xlVg
	fzAyH0Vrf0zfXjIjbuPZFZkCuFQzwSbXIOBW9JCmAKPuVHoXSomzpsXdVnPC4223e5mLVxXqYaZ
	MlVri1n3HmhdXhFBxj6BxllRfo9z9rtSp9xAjhCC1xsxbtpz0cGQKbKyzz91PwBlWxUJmQ7RNkQ
	XL2IW6Wh8s3j8GyKpPd/AfSBSVhZwJE01mu7GSTrvuPVzAcnvTjuYq3AgSWF1nkVD1JKmfjGM+Y
	YwYs=
X-Received: by 2002:a05:6512:308f:b0:5a7:42d6:529b with SMTP id
 2adb3069b0e04-5a8522dc224mr1428269e87.34.1777568302856; Thu, 30 Apr 2026
 09:58:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260430-ayn-qcs8550-v6-0-06a7e7b54aaa@gmail.com> <937db5d1-f5d4-4de4-879d-e6f4d51e9ff4@oss.qualcomm.com>
In-Reply-To: <937db5d1-f5d4-4de4-879d-e6f4d51e9ff4@oss.qualcomm.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Thu, 30 Apr 2026 11:58:11 -0500
X-Gm-Features: AVHnY4JWkHZ20Y-U_RZaj-Yl5ComMNiIZbxrscpuaLfRBxPzEEQ62ta7CaIdPk0
Message-ID: <CALHNRZ9e7cbs2e9-4df42HqXtyk4Q16CFi-GEQUYcwvyp7Zysw@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] arm64: dts: qcom: Support AYN QCS8550 Devices
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Xilin Wu <wuxilin123@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Teguh Sobirin <teguh@sobir.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 7E9DA4A6270
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-291991-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,oss.qualcomm.com,sobir.in];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,mail.gmail.com:mid]

On Thu, Apr 30, 2026 at 11:38=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 4/30/26 6:03 PM, Aaron Kling via B4 Relay wrote:
> > This specifically includes:
> > * Odin 2 Mini
> > * Odin 2 Portal
> > * Thor
> >
> > The original Odin 2 dts is not currently included as it has not yet
> > been verified.
> >
> > The initial port was done by Teguh Sobirin for ROCKNIX and was made
> > available on the AYN github [0].
> >
> > Support has been removed for things not yet supported by the upstream
> > kernel, these will be added later when the related drivers are submitte=
d
> > and picked up. Such includes:
> >
> > * All panels
> > * The Odin 2 Mini backlight and touch
> > * All rgb leds
> > * The built-in uart gamepad
> >
> > [0] https://github.com/AYNTechnologies/linux/commits/sm8550/v6.17.5/
> >
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
> > Changes in v6:
> > - Fix comment style in patch 3
> > - Drop a pair of unnecessary pinmuxes in patch 3
>
> It seems like we've had a bit of a misunderstnading.. I was referencing
> the output-low property within some nodes specifically, not the whole
> nodes

Oh. Yep, I misunderstood. I will add back and send another revision.

Aaron


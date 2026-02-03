Return-Path: <devicetree+bounces-262032-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id K8GBAcd4gWlhGgMAu9opvQ
	(envelope-from <devicetree+bounces-262032-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 05:25:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 437B9D4626
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 05:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D740A3056174
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 04:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A816323ABAA;
	Tue,  3 Feb 2026 04:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MlHeREWt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5CD201113
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 04:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770092738; cv=pass; b=KEy0BXl41fH11pArycEsHVQw+bSSRopIJG8yHZV+9w0j2LPEkXVWqdqmO6KlXJtF31WHHE3AW4g54smH1QtnSJr5GrAmd0KNQOkhACjh+J3hdjxne4kjIbeDWwB6R8mKB5CxdCqW80cBGnfLr15JVy/0mCEfEkuvYpc3C4CdKc4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770092738; c=relaxed/simple;
	bh=EdHU03bhYYZ7yFrfwataaL8rRDvCETz6LV0rqKOKdtY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TmSpZRjF5c4FSs7xMUdwANY0QLmWUrFCSR2vSw3e9rxRxoINKpYtN8V7B3TbMxs4nGLy4Y287yruq2UiNiq7yFSIqp6PIZz3hOavsPRCMt/kjK0RZOL+hW9SVH3ITMuqSr4z9fUTkETQfB6AAQNhYNL5Do57ubMpHn91mKxeI64=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MlHeREWt; arc=pass smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-385b6e77ef9so38931081fa.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 20:25:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770092735; cv=none;
        d=google.com; s=arc-20240605;
        b=YYem6deq5Fx801gFCxrWWqb+9JqKqN2tpQmsULmOC0mm+Emf5XdZ1bAhEcFvigyPwl
         ieQb5FGhaNPjw5GqNeZuL8LknBrnNwYDH73RlDOKYjfbs0/XVLo4jM5wANnJXqszZQvr
         EYBzI/95ctqjpxarOsjvoDv4LWBv+rorWDB4N1eRcHAz2wTVG/hiyy2wBCqotps7jyX1
         aABBX/hWVCw1WdAoqy7SjEiHX7zod8ToISYfDr65rAVmqsSP2fv3qzSLa/4EqR5cMzoY
         5w1aZXi67HF0EdQvSPD6NsHiLM6jjb/w0toF4Y/bXmA02IBBoCrzwVuafz1WP9bq6gLc
         ZkZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Jt2Dm0RbGbWNotmQ8EzW0yNDULTzCqKQ9mn6zTmoL/8=;
        fh=e/IJlVWpz9LWQqtbQVYoh8LabgfCzN5kv5IVyWDPFIM=;
        b=OFOwFCgZKbkm6YJRbixZ7SO5jj2ndyBECl+VpJ7K5Z3pIEtpApHZLrH2/63zCFgdjp
         XbziE4o6FHLe7Er4cxiVfhuVQC/dJUvRZDeduDczNU5wZayg5ojFwocsbfnV3ln6aeDk
         Ftyv0DKryDrmny6kqkZFjOwBxg9aaTgsHvo4+Un8JhkR2D7lGCfUyol1LR5e4Vi3rTQL
         oSFyV4T599bdRR7bwwBTC/bJ1gia80q8EE8QvB+aUXIGVfhiFq3Kl6TeV9/2GZMsNH4o
         jJesRonCaa0e6CQxG8A7+uGfV6PAZeU925oCupTLfbJOz4KEWUQ+cfptRzKMyq8i0MjU
         /unQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770092735; x=1770697535; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jt2Dm0RbGbWNotmQ8EzW0yNDULTzCqKQ9mn6zTmoL/8=;
        b=MlHeREWtz0oHlfTYkLxR8Dv2w1uGKnTRGwmBtz4vf2oT/faDERbNmIeJ0qFmnxs/KF
         8/sgmsqLgc/1MD/bb5id2FDgYv71VILJnwS2Q5yWL/I+DbPknjSj+J2kQAWOlLkI5+vO
         EPTThuikXSzW5g5sD9aiYn7tyaM8aiTSwDrB670czWDYviEXRyHCw9jux4VGORUdJ/d5
         ACyMhC5E6tZRqRrYARtgjiIyFVgkxG7V8cbpGvn6D4asR29/ydlGQCbV9YmWJ9pQSNbF
         XHwafpGrvSJBOL26/QZ+3+tnSy+T1nr3q+Y8tNaCBjzJ9PU4ZmBGti+F4ctpp3RPXlSv
         ROXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770092735; x=1770697535;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jt2Dm0RbGbWNotmQ8EzW0yNDULTzCqKQ9mn6zTmoL/8=;
        b=hPi/dLMHA2na7oiXKMKL+zHPJK7nT0A9oZdZkOFVX6wEN0OSX1flVOMP8aEscxhpRu
         baXNdGvDgXxOHHTyuWSBx2TircIoOGFMlAiSF2/ntCt/GujUHEUd2+Y2zaPnb/MIIqCs
         qrdInje2W+0grTJRipcgB5yNLN9xV/ph6NC7+iWNbHR8/KVxaV26SeF/Mqm+yQqI7KOF
         jsDwKiUuUiLITU7AzIYlVuOgdrWxcfOcQ+RBxM45vEkwl2NTe1tdxlNMG2sMhCabalxc
         u+zX6P1OX+f0mlVzUHWutWo84m0VPCiS0y8KDrPMDRpCfs400JPHnUChQCMs+BcC709s
         WPcA==
X-Forwarded-Encrypted: i=1; AJvYcCWKG0RNeh0Cq1u285cAmJ8cJ3bZvhC1qKsFKMvcfRuW3neZyl3Sc7K+Ir0oZvXb7VIj3l1MT4kl5+A0@vger.kernel.org
X-Gm-Message-State: AOJu0YzIJl6VWe0JnbpoXBlNjlmT2Nmcv4sAjPbuj3hQXSjRYcmI4/95
	eXTM+I0bLWWMhLkbQZTXpL2v0WASPYpWoh1swjbHoFsM0txOHciG4JDu+/cIerDH0K9GscRGEI0
	ScGEgMdfzXAwCrFhl9Ih6kR13PMGT+AE=
X-Gm-Gg: AZuq6aKmSlZnOivu7pniylRQ/6J/luhpugnQ9ptdO/oPM8TnGy6Ul3kb7EDGss5iwDK
	G2YMKz2/Bnmq0cV+ZxUa/mVbRXKx5CjjUFO2CL6eduRZdSfmtNPjLC+1iZDG5KKFmlGhnHjTCQp
	wfG/YbrfXTi/wC4JsIZn33hclzF3Ept3X+VhCWNf9RM6OfR7D2GT3KNmQ6fEJIvVMU/C+Z1MH4l
	8c/qeO5sSfDd+fCIbCoeFm9cbsLTVIz37lVThfLFIZ8Sb+gVz3OWk+AwJX43pBmF9j1jTvxr2fc
	3vccMBpbrqx9GkVkMgqdnWX7GIugnYIuula5gVXrrJuNASXvSX/2Ppky
X-Received: by 2002:a05:651c:2128:b0:385:d78a:1f34 with SMTP id
 38308e7fff4ca-3864657b9d2mr40077461fa.17.1770092734914; Mon, 02 Feb 2026
 20:25:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260129-sm8550-abl-dtbo-v1-0-abca3be14024@gmail.com>
 <20260129-sm8550-abl-dtbo-v1-2-abca3be14024@gmail.com> <eef70e37-3841-47f3-a436-13e18c157176@oss.qualcomm.com>
In-Reply-To: <eef70e37-3841-47f3-a436-13e18c157176@oss.qualcomm.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Mon, 2 Feb 2026 22:25:23 -0600
X-Gm-Features: AZwV_Qhb8SSPNF0MwFMC1mpUlw4fi159-QRmg7Pfsiv0KcqLf4mSC9L9Xt3F0w0
Message-ID: <CALHNRZ-aj+rR0qFuiU+cPNsHWQgMJ2mMjzysJudY-TPN9tY3gg@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8550: Add tz-log node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kumar Sharma <quic_vksharma@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lei Chen <quic_chenlei@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-262032-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,146aa720:email,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,146aa000:email]
X-Rspamd-Queue-Id: 437B9D4626
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 4:59=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 1/29/26 8:46 AM, Aaron Kling via B4 Relay wrote:
> > From: Lei Chen <quic_chenlei@quicinc.com>
> >
> > Add DT node to enable tz-log driver.
> >
> > Signed-off-by: Lei Chen <quic_chenlei@quicinc.com>
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
>
> It's nice that you preserved the original authorship.
>
> Please extend the rather lackluster commit message to explain the
> "why", which is notably different from the original downstream
> addition, since your goal here is to mainly appease a grumpy
> bootloader.
>
> >  arch/arm64/boot/dts/qcom/sm8550.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts=
/qcom/sm8550.dtsi
> > index e3f93f4f412ded9583a6bc9215185a0daf5f1b57..740e3c238e8ed0f162dd168=
291f6e307ace66e80 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > @@ -5136,6 +5136,14 @@ data-pins {
> >                       };
> >               };
> >
> > +             qcom_tzlog: tz-log@146aa720 {
>
> If we were to implement qcom,tz-log upstream, this would definitely
> not be a node randomly in the middle of /soc, rather a child of
> imem, most likely.
>
> Could you please check whether adding a qcom_tzlog label to *any*
> node makes the BL happy enough? Does it need the properties that
> this node has?

It does appear that ABL doesn't care about the path name, only the
label. And given that the original change that worked had the label
pointing at an empty node, it doesn't fail if all the properties are
missing. I moved the node underneath an sram node and the bootloader
loaded my dtbo just fine.

The imem/sram node, though... The numbers don't add up. Per the
downstream dt, qcom,msm-imem@146aa000 has size 0x1000. Then
tz-log@146AA720 has size 0x3000. Which... starts within the imem
range, then blasts quite far outside of it. So... what should this end
up looking like?

I should also note that an empty node at /soc@0/tz-log fails dt schema
checks. I presume that adding any warnings would immediately get a
patch nuked from orbit, which is why I fetched a real binding and node
from CLO.

Aaron


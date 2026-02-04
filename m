Return-Path: <devicetree+bounces-262494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEHbJN65gmlVZQMAu9opvQ
	(envelope-from <devicetree+bounces-262494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 04:15:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B5874E1336
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 04:15:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 56FA0300698F
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 03:15:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 129BF221D96;
	Wed,  4 Feb 2026 03:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y+139zli"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369E43BB48
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 03:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770174938; cv=pass; b=fYokdBnlDhHmKb7S3sBuREz/7ET+Cmb8AXM1mBJTihwDdNmu5vyu1f5JfhukJ0daF5rV6Qob6Tmjfo++aWezgUH/iYOlkPzCVqiS4LKeXL31ypcSfNsMUNSeGHhQQ2LJ6fSC/Srt9YzV4Dg4kq5Axx7Hg9f3LErNbDNt9USoYdg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770174938; c=relaxed/simple;
	bh=w3RuX0EdoJywT/ZF1+wVVMneHP7KhgEH3rbWMXD3qyk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HYBIPFDgUAs4lcvkqFkNhbUeyrOyAmSz5+86MyffD9l1W5WC+NFr5vBOZ3A7koPyteHHXmOLcsq83T6uVlU8FP/WnsP8oaeGEOsKZo6LhkwtbJiEYCBbxwRviB6xrQlWiGpX7msyYdyYxlAR17P756oIrVrxj/u3nNKsfxhmEeE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y+139zli; arc=pass smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-37fd6e91990so63766621fa.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 19:15:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770174934; cv=none;
        d=google.com; s=arc-20240605;
        b=j1xfMJzJsLH8eeYQMx0WlHSmGZgcjRtWKYRifl5Hwm9SvS33c96k7VBku1YF+mXOGT
         DemFAAtMJaGRQve0YhMX1pLGFtubux3E8XkfxGhGVNEbeu1qZozK3ChCyvClmbUpqaYC
         qGPlRtiKD6pWMsepEKAVtlskvnzv6L0u0sk7LnEBbiTJSd6rZBt1FlgpUrMLqPbtH/Jq
         uEPa8/OJIov380gzW+plJ2aYhOk3b1Fldkok3zp9d9BXFC4b9AZLIeK9cq1Q98wB5bEd
         ONzfV45LFSst957g/yMLX7FeyNi2orKjJIitY0kfYWYPIdjCKydIa8nD1WAZ/pHpO+ko
         4oPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0mVglm06ujR/mwhHNvcx2p+M5YQoSYv8FdwgcVKEQ1g=;
        fh=pBNAEuzkgE0LGZ9idKoEg+/K6eQCH2yWcR6CGODTurM=;
        b=V3bRb0HOHoThjkGP4Oio5vzVt8mMMfUbTC45GWfhwQrDM7D8NAAz6wS/Fdj3DUKa+b
         vCrjJkh8kAEm+9jlUrvyL6Td3d+xvyaQNLY9KQ4Rh8C0mM3FrBf5TwasPzsR3V/3iZrw
         mxkTxY8JJcWQfkQzx+fAvtARp6h6ub94eFWGVnk3owmMb/LuKOf5hpZonrEkX2VSeVsP
         yRDo/nGO4bghk8Ckbd3d2wS0WwWjOWm0ud1K8Fzyo2gT/zJW1e76/36lQf91nEB53hrR
         YXLlwTX8E2CKiQD+d4pePwHZ/H+n9goi7A61J2pMJ+EdEW343hUdBiVtcYaYbz/yR66o
         09KA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770174934; x=1770779734; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0mVglm06ujR/mwhHNvcx2p+M5YQoSYv8FdwgcVKEQ1g=;
        b=Y+139zliNaMhhcuIS9mo/kT0+WBVexdMO3ez/p+8xGqq80WdywkP2696nWte3UP2DP
         wz5FTRqOTLFbodSFpW9wg1YyJLYdEvLWsf8Tue2547S89ybXRnsEGJJ2OIiAs/keiMWg
         qgZsU/02yW+YRkW1N3MXZ0gNtLvPfaxuHbgOJyXsNswd9mGntxTky9FfSXTNx4TCNlEM
         TN/tpA02qyHaDxep2pKraU1Ld+ShcbjRC5WkKO9AhnmOfF0xBDhjQwnWhrjEiS785otq
         OQQ/J15fQsU2HYUMF9MiiTBqKavxNLFoZRBXjdbVYPC8vbw33a6YMAo7Uh+BN54PcQFz
         SeoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770174934; x=1770779734;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0mVglm06ujR/mwhHNvcx2p+M5YQoSYv8FdwgcVKEQ1g=;
        b=rgVWM//ZfSGLxLv1brGAzhKprAca6tEwhukHjSJbOyl2To8ShbmbZzW4D7wEAYpf5T
         ds0JW1txYTwqDW+S6tqwYI3ZnU015C+hEdGxC1G8JcCtATt+MCqReHy/kFjYHC4EwiDn
         6fE6Mcj2wlizqveExJeUxE/iYJI9rF6kYokihoKHlcgsMfIiumx2OJ5qB0T4+lM8Z0Ev
         o79WsmmfnqZKtStrt73hkTSdQI/vOUkckmK1N0zEE+3kHkdhBNUWuAeFlPkJv/0kjxrd
         fLkTJgfhu9UlI0HQrIh8RTh5uQ6OzKZJ71v2M0HTrMgecB95ivrBAbVBIoZMsP3yVmlt
         ceIg==
X-Forwarded-Encrypted: i=1; AJvYcCXLtuY3g3aRQov2BxzXsH+RNHgmUnyJEoITxNhmGpON1y43R+lwAVYe63+wKaJJ6gziph5UBCx8zRwl@vger.kernel.org
X-Gm-Message-State: AOJu0YzAIEvgh7+diq3Gd5U3YDeXyMD3RHc4g5rIrKR1GYqtXO5gchqo
	sr+GrciU3KVcyJPAo7VD/UNYE4w1oL+CujT1hpwZSkZLO9nx/JMAAaoB8gYkgFon+AR8MZHUJNr
	Ht1AHMwYv7Sm1Jr7jv7h9klShhGMwoFA=
X-Gm-Gg: AZuq6aKlNdyYmTy5jAPwjqTNmLtQbYrTG8aG/H4YQapYeQrYI9x2DRIOXu3Mid10MO7
	IgCj8GTW10Qj73Wug3xcr0IHLnaqieIjmFaX7SdfU4uFHpA7BLmCFxX4LbT+EVaUCygeKW5/nkA
	dmnz8DmU0fgiXGiPupWwU+oYWQ3caoMsnD1bVBOIOU3bZsXhuiJ+xEI7J+BGMctsGoBe84hcghn
	0rbHg6MHPOtDHOvMC445QtGNhFzqr/hKjqOaK3KZXouhCGTjeJqLVYr7nr87QcNf9ulkkWT2uTR
	5SSSl3Hx/l/eSGSXtIpEeCSdGl3+zK3LRa9ZNWS2QsTmLiIOrEjX0TZO
X-Received: by 2002:a05:651c:1990:b0:383:20cd:52fe with SMTP id
 38308e7fff4ca-38691cec340mr5911831fa.17.1770174934088; Tue, 03 Feb 2026
 19:15:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260129-sm8550-abl-dtbo-v1-0-abca3be14024@gmail.com>
 <20260129-sm8550-abl-dtbo-v1-2-abca3be14024@gmail.com> <eef70e37-3841-47f3-a436-13e18c157176@oss.qualcomm.com>
 <CALHNRZ-aj+rR0qFuiU+cPNsHWQgMJ2mMjzysJudY-TPN9tY3gg@mail.gmail.com> <74380f3e-eb76-4fb8-a1a5-d2151fb410f6@oss.qualcomm.com>
In-Reply-To: <74380f3e-eb76-4fb8-a1a5-d2151fb410f6@oss.qualcomm.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 3 Feb 2026 21:15:23 -0600
X-Gm-Features: AZwV_Qg6JaMOWhGu3NI6D8PK2uS0zXrXjlMa9HeSddgrW6ZSwS_RGr3V81bbK_k
Message-ID: <CALHNRZ_uWJRWEfwW_NjdBcWSf_NTYWLg6DJGAyH0-KmonUQFXg@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-262494-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,qualcomm.com:email,0.0.0.0:email,quicinc.com:email]
X-Rspamd-Queue-Id: B5874E1336
X-Rspamd-Action: no action

On Tue, Feb 3, 2026 at 3:28=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 2/3/26 5:25 AM, Aaron Kling wrote:
> > On Fri, Jan 30, 2026 at 4:59=E2=80=AFAM Konrad Dybcio
> > <konrad.dybcio@oss.qualcomm.com> wrote:
> >>
> >> On 1/29/26 8:46 AM, Aaron Kling via B4 Relay wrote:
> >>> From: Lei Chen <quic_chenlei@quicinc.com>
> >>>
> >>> Add DT node to enable tz-log driver.
> >>>
> >>> Signed-off-by: Lei Chen <quic_chenlei@quicinc.com>
> >>> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> >>> ---
> >>
> >> It's nice that you preserved the original authorship.
> >>
> >> Please extend the rather lackluster commit message to explain the
> >> "why", which is notably different from the original downstream
> >> addition, since your goal here is to mainly appease a grumpy
> >> bootloader.
> >>
> >>>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 8 ++++++++
> >>>  1 file changed, 8 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/d=
ts/qcom/sm8550.dtsi
> >>> index e3f93f4f412ded9583a6bc9215185a0daf5f1b57..740e3c238e8ed0f162dd1=
68291f6e307ace66e80 100644
> >>> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> >>> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> >>> @@ -5136,6 +5136,14 @@ data-pins {
> >>>                       };
> >>>               };
> >>>
> >>> +             qcom_tzlog: tz-log@146aa720 {
> >>
> >> If we were to implement qcom,tz-log upstream, this would definitely
> >> not be a node randomly in the middle of /soc, rather a child of
> >> imem, most likely.
> >>
> >> Could you please check whether adding a qcom_tzlog label to *any*
> >> node makes the BL happy enough? Does it need the properties that
> >> this node has?
> >
> > It does appear that ABL doesn't care about the path name, only the
> > label. And given that the original change that worked had the label
> > pointing at an empty node, it doesn't fail if all the properties are
> > missing. I moved the node underneath an sram node and the bootloader
> > loaded my dtbo just fine.
> >
> > The imem/sram node, though... The numbers don't add up. Per the
> > downstream dt, qcom,msm-imem@146aa000 has size 0x1000. Then
> > tz-log@146AA720 has size 0x3000. Which... starts within the imem
> > range, then blasts quite far outside of it. So... what should this end
> > up looking like?
>
> The real SYSTEM_IMEM range is base=3D0x14680000 len=3D0x2c000, not all of
> which is accessible to the OS
>
> Perhaps it's high time for me to respin:
>
> https://lore.kernel.org/linux-arm-msm/20250523-topic-ipa_mem_dts-v1-9-f7a=
a94fac1ab@oss.qualcomm.com/
>
> > I should also note that an empty node at /soc@0/tz-log fails dt schema
> > checks. I presume that adding any warnings would immediately get a
> > patch nuked from orbit, which is why I fetched a real binding and node
> > from CLO.
>
> I don't know if that'll be acceptable by others, but if all we need
> is a label *somewhere*, I wouldn't be totally opposed to doing something
> like:
>
> /* The bootloader fails to apply DTBOs if this specific label is absent *=
/
> qcom_tzlog: aliases { ... };

I verified this by tacking the label to the chosen node in the sm8550
dtsi and abl carried on just fine. If this doesn't get a blocking
comment in the next day or so, I'll drop these two tz-log commits, and
fold this into the 'fix dtbos' patch, and send a v2.

Aaron


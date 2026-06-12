Return-Path: <devicetree+bounces-311012-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lxxWNbIeLGoILwQAu9opvQ
	(envelope-from <devicetree+bounces-311012-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:58:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 339F367A601
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:58:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=imd-tec.com header.s=google header.b=HEO3pFkf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311012-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311012-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=imd-tec.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55C4A319A3DE
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 439E4331EAB;
	Fri, 12 Jun 2026 14:56:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4923387361
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 14:56:42 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781276204; cv=pass; b=d1qh3K7HdWTnqz+2jp9ZlZFONE9BNqMWnDs6v5rIK/2WSlSB7W5C87LVnKHOhvERCPZVk41sCbvJ+D/r6FogZLX+8mQwhiJlgVTTRR41LH7c215otMlNLfdEUd15f2NRSu8gb5I9jSptp39q2qzzFIEq7KMbrMLsaxfaJ7rS5DU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781276204; c=relaxed/simple;
	bh=QIW62ikKZcv1KNzbDJe5YxTSN/5XVxBnzFHD2epcV7Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=neP1GFT83+i68PrboS4hyaQ5KFevkz9a/e8wc+k1rujsZj3qTGgvWNNQj3p2TCSCVLZ5UhErVYI+fCcU7FEZqRT7xKjCz13LtLc13PyRsUyup5f1XoAb5TWGPe/BnlyZyIdfkfmpdq960Qz1ri4/Lkwc/EEYbFu55JNkpwEp2UI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imd-tec.com; spf=pass smtp.mailfrom=imd-tec.com; dkim=pass (2048-bit key) header.d=imd-tec.com header.i=@imd-tec.com header.b=HEO3pFkf; arc=pass smtp.client-ip=209.85.217.54
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-6c4a2458683so446103137.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 07:56:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781276202; cv=none;
        d=google.com; s=arc-20240605;
        b=h2sW3iduHkLxtPg1COkNYpD5hiyJNN+ErD9Tzi5H1sSv03+F1CE7CJk92UhG3WnNcO
         GTNNBzYYmWYulzgUptEuYwczrcgppsFhxDky0qD26YselL0s6c80JPhY1m8cMQk+hXEl
         SsoHCdc0Bobwtnzgy6vUGYbVc9TKv/pVaIKOz/gAEPAQZe3IP2Pye5le+kPTT60Rlgc5
         x4FGwozcaXT0QuIsl14l1L6RQbjdTZ1G2iTxvMjfl57CD5OTyudcFW5u5M49bp3QlA80
         PkFm+22jZDLK0PjD4enHDKI3UMPm3A6rwynoedShtBi1fJDPy8Gf/VLOvyT9hiE/Tgt0
         EELg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=lG0qX+ayOcM7ycNEY66FF0f5sN+HRaPLdeR2N8mYiP0=;
        fh=1s1QR4659EUKEdc5KB7QLmP/AddU+OVF94peuXThhzE=;
        b=fusxDRP/UF71TJRkehVDQ8OB/NRcVPOPPfu2Nis5Iu0mSofEaUDXXja5iI9TDhKwHg
         MCfS11S1VbljwNRp8Hd7gblrf4Q06szEh5OGnTW5fmfezJnc9ffSUGRMV9KMOZRJZ2tj
         AmEtnsX1kJtjVc7Ut0n9C6TbuAi4aLLO7Hm6bYglqRL2hV49zArMvIt4vDdNBWvgTCq3
         DqRBvuyZVxRIBmzm7F4Qbl6unx66QI6vPyolNYbkALvjZ2U7FbhSbkSAMrsQVJcS4FWr
         ihQ4aK0qVGVaxG8BGr1D5MEZZCfL3NrNxgLZJan+pxqKzt/su2dQgbgt4zhCD6zDyg7p
         5abQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=imd-tec.com; s=google; t=1781276202; x=1781881002; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lG0qX+ayOcM7ycNEY66FF0f5sN+HRaPLdeR2N8mYiP0=;
        b=HEO3pFkfpF5FYECoxFiZO0nIVVFG5eXvYB5h/5xdgh7ilA/gtRk845A0nVTIyj2/fH
         qEaN7dKhS1Ip1JK0DyJgtwWoQSbQKK+/0Bu0LWamdybbjryATSCYdhYiOWHTgTZD0VdI
         TewM/e2BS3OKJR7HnNOLszlCuCfRDZsNJkMjmFYiYwvtYTPJhISt08ctwBZogFXBOwzx
         92QhtS4O3wdhV2aPM0IQE5fGBTbyzls9/H+zOXTXwX2XK9axiGxWW84XaHDgZZpC4L4f
         T/uSE9u1f2CbC40X3zNBSKYURmEj6AjmDHQD5aTP+R2oy1ty2cKnrth3qRM6037B2adX
         w0GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781276202; x=1781881002;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lG0qX+ayOcM7ycNEY66FF0f5sN+HRaPLdeR2N8mYiP0=;
        b=r2oCsiWOtQLdSDSVwoO79M+cpaVCkWrFVB9e2oiEmvyL9Zz2JarGZ2vptT7S3VgLBw
         BDejqGCv1wXP0M8NNoQLUjnDh+HNWMSUXAlTVgub1o8VhKoTluXlStAe52KrxIWZuNh0
         IrdFPGu6DPNSrCI5eubUNCs22CGARYhqaencxQXnzrC0qr0+EnKDMS18rmjDgDdgmiUI
         SJX6iWZkyTrI+f9vYqiYumVT/BhZQZUx1o9Ezg2KviDmed1//JjofN+VQluC2BFGF3Ty
         lnzIuTfZrlaEMG38otAiVrh3rP+xTpNGsODiwKSfvEMyOdwYpARDZkXnrqWuP+tlbmmT
         GeZQ==
X-Forwarded-Encrypted: i=1; AFNElJ+BDwKb7RIDGIZ9k8d0ukik3xgeuppDdQyUIKRJ3QYUMRrolxqi/LJOO8/VjQS9pza4vSzxbmobCVy4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+3jfY6EaasmChGFEl8OvxQJT07wIyTlKfgL7sYzCMeX1xj6Ua
	oFF7KwUkrVHLrOgAaSA3ACeUmuGTMrDLzUuIbfTxd2pJTEuxpSD3dJbt8iNumrEQQwpnMA+uVTR
	63nYKBBezJeCU68xQ+pJhLvlH2cDPROKCxbUFYl1q8Q==
X-Gm-Gg: Acq92OHnbZf12Ldfni2WJKbnmbTHvA31bAWeD8FH7xjaeiNQia/HRHc3hnAkmxa5u1M
	bJBUiObYUJpoSBar8vRReV0lsyrb7zzZaxx/bcMBsaNF6gGR0WcTP8FCoocg0GrcZyWMDnPll4w
	mYSw59fI+ZPG69k7sQ/OxieEFW+HC/Z8Vmlil+JJC+8W64wBIA+e1QlQwkvKp8UEE3Wm7gctZ0x
	XCGZf9cmosCGBK50BWcOSp9yD5F4HlrAdqFefN531djbQFv0cnCgmtTBPDvCrTcqVdfkfdRpRwU
	nQtFEWnzBXdUz48j
X-Received: by 2002:a05:6102:644b:b0:631:4cd8:b6aa with SMTP id
 ada2fe7eead31-71e88c54814mr1696500137.13.1781276201695; Fri, 12 Jun 2026
 07:56:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260427-sm8550-sdhc4-support-v2-1-a4241f43ecd5@imd-tec.com>
 <e0731edc-81da-429a-a12e-a1d1b75f9544@linaro.org> <aig9licCxhtZbHMq@will-Legion-Slim-5-16APH8>
 <5a5cbf8f-07ef-419a-8d30-c1b0b2786312@linaro.org> <aik1ZYUT-cnpfdQn@will-Legion-Slim-5-16APH8>
 <00643a25-040a-4bec-8324-f52b30d84f9f@linaro.org> <aivHs6p28uN3d6TI@will-Legion-Slim-5-16APH8>
 <aca9bd93-9dff-4493-a1c4-daf9ba27aad6@linaro.org>
In-Reply-To: <aca9bd93-9dff-4493-a1c4-daf9ba27aad6@linaro.org>
From: Tendai Makumire <tendai.makumire@imd-tec.com>
Date: Fri, 12 Jun 2026 15:56:29 +0100
X-Gm-Features: AVVi8CeifV9qAmQffT_sMCM2pBZ4K5zACZU61maUzZh8KhZaZlMdzWUp7xFuXTU
Message-ID: <CAPF-P6qT4FL9FDSx44JCP+oOiAYC47x3XVuEbqaQtJTPeMXB4A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8550: add SDHC4 controller node
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: William Bright <william.bright@imd-tec.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Ram Boukobza <ram@imd-tec.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[imd-tec.com,none];
	R_DKIM_ALLOW(-0.20)[imd-tec.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311012-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:vladimir.zapolskiy@linaro.org,m:william.bright@imd-tec.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:ram@imd-tec.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[tendai.makumire@imd-tec.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[imd-tec.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tendai.makumire@imd-tec.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 339F367A601

On Fri, Jun 12, 2026 at 10:11 AM, Vladimir Zapolskiy wrote:
> If Qualcomm supports their downstream Android kernel running on your
> board, it should be worth to contact them.

Hi Vladimir,

I had previously opened a case with Qualcomm when I started trying to get
SDHC4 working on our board and we didn't get very far with them. I did almo=
st
all the work here without their support.

What's interesting to me is that we managed to get SDHC2 working at
UHS-I SDR104 speeds quite early on. And the traces for SDHC4 on our
board are actually shorter than what we have for SDHC2.
The only difference between the two controllers on our board
is that we don't have a level shifter on SDHC4 and the pins are
connected directly to the IW416 without any pullups or pulldowns.
The signals looked clean last time I measured them.

Tendai


On Fri, Jun 12, 2026 at 10:11=E2=80=AFAM Vladimir Zapolskiy
<vladimir.zapolskiy@linaro.org> wrote:
>
> On 6/12/26 11:47, William Bright wrote:
> > On Thu, Jun 11, 2026 at 10:48:34AM +0300, Vladimir Zapolskiy wrote:
> >> Looks like the SDHC driver behaves expectedly then. For me it's hard t=
o say
> >> what may be the rootcause, I believe the lower bus frequency should be=
 fine,
> >> so it sounds like a hardware issue, but could it be PCB/board specific=
 one?
> >>
> >> If you find a chance to copy the SDHC driver (and its small dependenci=
es)
> >> from Android and test it on your board, and if it also fails, then it =
might
> >> be well concluded that something is wrong with hardware, still it won'=
t be
> >> quite convincing that the SoC SDHC is to blame here.
> >>
> >> Hope it helps.
> >>
> > My colleague Tendai (<tendai.makumire@imd-tec.com>) had the same issue
> > with dll-tuning failing in SDR50 when working on the downstream 5.15 ms=
m
> > kernel [1].
>
> If Qualcomm supports their downstream Android kernel running on your
> board, it should be worth to contact them.
>
> > It does sound like a potential SI issue so I will try the following:
> >    - Sweeping the drive-strength values for the sdhc_4 lines to see if =
I
> >      can find a set of values that work
> >    - Scoping the lines to check SI when performing dll-tuning, our boar=
d
> >      is very dense so this is challenging.
> > I am guessing this patch is only acceptable to be upstreamed once we ge=
t
> > to the bottom of why dll-tuning is failing?
>
> Apparently if Qualcomm confirms that SM8550 SDHC4 actually has this
> discovered and unveiled defect, then this change will be accepted for
> all SM8550 platform like you propose it to be done.
>
> According to my experince SM8550 SDHC2 operates properly in UHS-I
> SDR50/SDR104 speed modes, this can be verified on the reference boards
> like HDK or QRD, and for me it sounds oddly that there is such a problem
> with SDHC4.
>
> If the proposed change as is does not enter upstream for SM8550 SoC, you
> may keep it as a necessary change in your particular board .dts file.
>
> > [1] https://github.com/imd-tec/meta-imdt-qcom/tree/kirkstone/patches/ms=
m-kernel/files
> >
>
> --
> Best wishes,
> Vladimir


Return-Path: <devicetree+bounces-277939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mN1kERY3vGnGvAIAu9opvQ
	(envelope-from <devicetree+bounces-277939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:49:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B399B2D046F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:49:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BEB7C30078BB
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFF4C3F1655;
	Thu, 19 Mar 2026 17:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IDRwsKEM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEFB3EAC81
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 17:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773942515; cv=pass; b=sKQHANFGXCibtY3VPMejcMusouQT8qe1JIcVhxfnPG6n1Azm9wb1Zay5RwS8PQL/BXqKt3Je4yruW4ekAywd6J4MozwbdePwAMpoJF1ZnXHp6AuQwndEqp6gb8RQlZeAsFUQyzCsmaDD+jXEyj9M5DSK1vs7SmgvsxeuAiJUTaI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773942515; c=relaxed/simple;
	bh=WrDhgfFwGfVHHj1HMTtxgwEW21+qVX7MC2QJe31H68Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hoHZTu087NzH5LXpT+vkoNcD7b9jxmR3hoS9ifza/zTTm6mB2FkTBfurhENYtUSIILDcWhCCCD6/t2u8qB9QIFyssWzo30iGQ2fJ3Skac3dryVGrMb5zjIr3TOapyRPY5a51Fmi5bt9z3cwRwPnnWcBM6ZrS47C5icBvJ+4AMPA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IDRwsKEM; arc=pass smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5a159c1e65aso1079797e87.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:48:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773942508; cv=none;
        d=google.com; s=arc-20240605;
        b=PoUkqMiRRDhZ7yrmyWtPLRIUvwXGq3PLHkFLzDtEpth2/50rYFTFGzQJevvA8H7C4n
         ox9z1nPNMqma4etmksYsdR+xXHQ32GDKxj1akgVcosGjci/rE0TjRiuWi2xnCNEG04ih
         88KIo6UYCCmouTVm4vjJ8mLOkbCz71IE+zr0fl6dyaorjzoxucfKG71xlsvSkG3c/CIx
         417edWN5no9UJPpa6Qkh+o3qTsRCqqwbuT2/g8ELvPdFdreoXGJLJFlMBe/pjgPGf2OX
         MuqTqDWFp3/b9iDrODbgC8yCcprB/RaBPywJ5WZxv6gUS6iUtE11lhviV799yBpPAKdf
         G4DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=hG82PI/sd6f19ho1TLWOeLNBvYrL7242Yv2902nK2LQ=;
        fh=JtlfMLRdQOvF2vGcX4ako8PA7fJW5GecUvtOPDCeK24=;
        b=iFUIFhPQGrfnrZjR4LYlee8ISoohaY5+GsjakROaPdiwrFsRhTjmO2Qun4ftXENREK
         IFnLM9ozQr1nzAbwBOu8I9hWdt71cRaMcXA4rxuNSIWnzFBp20czwdAbi2/lMpwqzeLm
         USM4WnwQIVT36i9Tu4aLO8I3Fizp9IMLBVtwen3ex3xOZlKih3G0k4eKz+fH9XK1xfcP
         DjcvgO3Lt1AemFP1WT48BK2qyfE1feLdVMRauk3LxQvE9OT4/7alth/fAif3jBuip3eC
         4JhvBG/GsoG1RDviSUXfCTXNjX1u0KQjD4V/HTVVfLiK3oADsu8IbZjFQCpfhOKAWs+y
         q5dw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773942508; x=1774547308; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hG82PI/sd6f19ho1TLWOeLNBvYrL7242Yv2902nK2LQ=;
        b=IDRwsKEMmtotCDdq4vJMKaPaUreXcqUSBb+098O2p7OsNRDkP9FOXJUzqh2yRe5hzU
         w7ruvKVjEZIQMgDzP0q0RMrGT847dhFXQiot1LFSc3AwWk7R2ONHKjlC+cE2mhocvOH1
         OOVzn/I565JjOIbf/t/5TbOygkksiiWzR2bvGLgtmnCvGGKAbC6ze0RPPcRRuIPkvLcT
         CBSF9/GokGT4JXO4fiOdRnTXbaXjeTYPL2Grvmb52SfYqM4crO6B/CTSc/RubjSMvAUr
         bvoIOenJjwpcrlX+fG93GDcXWnzIpzQWnSk1YjwrU9gYDd0XdCJL9i16Xi7ffLzBl47F
         RkkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773942508; x=1774547308;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hG82PI/sd6f19ho1TLWOeLNBvYrL7242Yv2902nK2LQ=;
        b=I3PAiHbJ6zjg0YdqvIkIgZc52S+oV2Ai7xGtv50w4/L+LhhpSqE039sC7QCvpzbrEw
         8mtOoXWZeImZ4KTd48jqJ3YrfukgvLr6hpkt8qt5eRHiZn8Fd3iobFPvKefd1gTE9RmM
         0m3mZa6fmkf//H5sCeuBsOVmp7nECR8WorDAMfr3+cqRSOytQEMt5msi9XR/6kYh2xlS
         UMUbGhieyab7BFJiPc5vAJ/hLINguWL7o/fUrvGxMe1fCCeHF4rS/ZkS6I2wn4VpB69c
         mlLifIpDZqO1qkRv363RTRh0bTuPBuFJ6mPJiJ/JsEREt95EHebwefWd5yBhqs/ulLGm
         1agw==
X-Forwarded-Encrypted: i=1; AJvYcCXq53KT0iRZRKRHUtNbQlvaqUFKEMebBO/lB1D+A7pFzrg5cbp3girj8heb0jlepcHRHasLgPmGy0uV@vger.kernel.org
X-Gm-Message-State: AOJu0YyxumwGmAe6h962WqPT5lZXMhxOp0g47FCv2juOJ4bJSccKQGE4
	TQB9mFucZ0TyLLjYJP/zrkeXZyrJzCMs+3GKCHEX/p3JvsnBKUBg3rYpGNZBQLAsQHDWRNAArcE
	qcYE0zYoVYifE1B8azaTQEtO+Zi/qREk=
X-Gm-Gg: ATEYQzx28rbUDJcIdSfozrcv99TDSsRT8NbISFvlBtYNrWzrtZr0MW/fwgWTW61FGzX
	xgUegqAC+KKZaEU1rU5hDaewTrwsYne+NcinqIgwTz3kYuqr1FnHpf06IhuHiHxIl5yOF3r1KJQ
	oo+zwCEZZXFFvpNsc5+Y/Uv8+OJUbGNCv5k667oJ6o3cCfuok93Gh2oTxBgTlzRlYt6vRKtLjov
	0IvlwIuwX4e6l3BeO8YAa2QnscQAIHFnYKPgA3kOsHsANB4Fy5wVAFFp2Uui8tsFjkoPO3j3gRR
	OTTPuYAXgMGoaB6CGBhQtSc+7ITccANGMhBfi3nNmRfs3oZlWSx7k//FqMZy/P1Vbn1i
X-Received: by 2002:ac2:4303:0:b0:5a1:3f54:b3db with SMTP id
 2adb3069b0e04-5a27958551emr2698841e87.8.1773942508108; Thu, 19 Mar 2026
 10:48:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311-ayn-qcs8550-v2-0-e66986e0f0cb@gmail.com>
 <20260311-ayn-qcs8550-v2-5-e66986e0f0cb@gmail.com> <16211bef-2360-4bbd-bd2f-72c1d6993a1b@oss.qualcomm.com>
In-Reply-To: <16211bef-2360-4bbd-bd2f-72c1d6993a1b@oss.qualcomm.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Thu, 19 Mar 2026 12:48:16 -0500
X-Gm-Features: AaiRm50o3rn2ghnk5mErj8pByoXlp43M_qTNlsb4C9m6TK0MVPM6M1ialjJ0WoU
Message-ID: <CALHNRZ_5_2zypBAeZT=YM6ZUq=wv-8GO+DEJTOgtJ_8nrB2REw@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: Add AYN Thor
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277939-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.862];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B399B2D046F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 6:32=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 3/11/26 6:44 PM, Aaron Kling via B4 Relay wrote:
> > From: Teguh Sobirin <teguh@sobir.in>
> >
> > The AYN Thor is a high-performance Android-based handheld gaming consol=
e
> > powered by the Qualcomm Snapdragon 8 Gen 2 processor featuring dual
> > AMOLED touchscreens.
> >
> > Signed-off-by: Teguh Sobirin <teguh@sobir.in>
> > Co-developed-by: Aaron Kling <webgeek1234@gmail.com>
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
>
> [...]
>
> > +&spk_amp_r {
> > +     firmware-name =3D "qcom/sm8550/ayntec/thor/aw883xx_acf.bin";
>
> That's perhaps a dumb question, but are they actually different between
> the devices?

To my consternation, yes they are all different. Most of them are even
different file sizes, it's not just header or signature differences. I
am assuming they contain tuning differences per device, but I really
don't know much about what they're doing.

Aaron


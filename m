Return-Path: <devicetree+bounces-264752-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLx4JxBljGk9mwAAu9opvQ
	(envelope-from <devicetree+bounces-264752-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:16:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB59123C88
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:16:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 392C230078AE
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3527F36BCE7;
	Wed, 11 Feb 2026 11:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CfXGL1hd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAD236BCC9
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770808583; cv=pass; b=Z2KcP4JpKpML6CMMYwdwtaF6lRi8542/DyBSzKj7b4zbbhUgK7ZMrk0WY3cDOQE+helV8kzEzGwsiF2HqWp4vw//C5GBMrVKkZONSY/iOedDMR1goKzENkqNRQWhk6kdaj4aMlBlC/gjNDls/MCFGmcVKsZtYvybVsO/vXOTVCs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770808583; c=relaxed/simple;
	bh=TQtFWDUFC9Q+h9eakxOpRHAmmpm/Bi7YwUotB1e9/dI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gGHKDuaTFxaupZWcH15OwGMPUI1/Y9YXFF4D3Roj47NBZmwhjz+8BoHsHsEb8HFHRTrSxWUqkvgHGBkEPk1QJ2gmf0T6a5EILbq+amlFK/SdUkcRu4ADIrvBw6pDzSYZmk6Dx2RVP2OpAw61y2PbuNEqEKGAgW4XGigMvohSTNc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CfXGL1hd; arc=pass smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-3545d66bb3aso2524412a91.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 03:16:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770808581; cv=none;
        d=google.com; s=arc-20240605;
        b=igWaxXudSmf3T89Xk1KfE0ajx7NzDXNf87yUgN9hGedkKHb9G0Llh2ZeUJpnrkMC6f
         Zb9E5bqwV+Uz37NXv0ha3se4BEpczr/xpJJLWtt92JEf5MwN5OcRjvl+Bl7DFnugdSxt
         pngqaVu4hNwid144egGNmnBxe7vDSFD4CZ6J9EEXGyZDWttHZpLooAGE6FxU3Id62KHl
         JcR6KriqkHvehwEdmfguppDPnudhcsHnl2WqJAX9L2TeIbdsLgopvSbkUstKgnV0mrH2
         0fpJwlEUWeYZP/lC+bCn5WJczqEL/b6Gk+Prx0VRnYwc9q5SEJUCToM7DrLL6+LKNdSd
         hy+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ITSmsKKlErBQAfGAY+FolV5NlpcuQ4Y5Vyb6mMkMFY8=;
        fh=xidP0psKU2XRVRCby+Iv51Gz2rKsl8x8pxg3kjgsb8g=;
        b=j4wAxFSIXPTAvRaJO0dXSfFk+IDd24fjSWewXVL8VM+PcBGV0d4N0uZx/Y4O2FOX0G
         TSVQfs6RUyosnmaCh2526mX4OwnoxsqOMSqfjfP4t5YiqYK9+vhnT2aUp7IOPCmc4V6G
         D4+qabmjRy16b/drLeUbSnCaplactOH/bFU6xNCePAtWvtlYbea/NQiXx3If/yedL7F4
         OvAwLCwpVVGkmOhrYc7GU1kfReMRq5E/aAcyfW1yQ99PuHITZatuxR+ON4W4MCm2Jzh4
         oL6hXw1V3TU0CHygBPGWD8XOVXusvzK0lg5MhOdxBMrWjUs+bdsJca/gx4LazPcaPkMl
         Sp7Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770808581; x=1771413381; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ITSmsKKlErBQAfGAY+FolV5NlpcuQ4Y5Vyb6mMkMFY8=;
        b=CfXGL1hde1RT1PdcaOAD2qbOJGhODWqvNC3FoLQR8FOqA1Pc9cN99U0pwBj2dyDb44
         E2IiJvew22QsVSpNBccE3+tfG+vlOeHJ8gUCCmxWMIK4GyUeC+qNbgctjZQKvBilFmcc
         +H7SdJOkwPGujODeDDMe7u4l5mgCC5ywbenw7HQoLf9NcVqkLFSO4OMzuMqaD4hYz74l
         dB1p6JNlxzOrcdlPBqGyfQSndpd5BTXkCvH7nGsTolIHXBOK2s/wVeP/HwQv5ATt7U/m
         DQ12Lggd5RN7gUE6OVsWj6OpXPPHo3fRa4z1uahn1b6VB2VHsUEocvsDsWFlz8AWu7Kk
         4vFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770808581; x=1771413381;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ITSmsKKlErBQAfGAY+FolV5NlpcuQ4Y5Vyb6mMkMFY8=;
        b=Hco9TqMQB15y+HdeiwmkChMctlUL0OYQRvZyjF1qJJO8N7BuLWPUqt3wDyYfVNlLy0
         Hvz+g4LdhW1BJ7ClFvYT9E/ZM3IIKdS+rpRk6GAjddwxR84HApPOtis69XH04Z8HhhF5
         ibJtUno2gdOi+EH+OF0zRgBjOhZ8yHuDa8IjmPNQK6F/4ImLVN26IzHOjhncobEeftkw
         XSjec+IkyDOHZuZCcI4SL9AlzGRFdht+9phMVUxlOznANucxOc6+fX4AdaXANAVkADMR
         LRpaPDX+hgaJG0hBUnb38jQvtfvdTV5YxRREXum7PPGb05F/jFY8MDEPIq3CzpWkBFoP
         K+NQ==
X-Forwarded-Encrypted: i=1; AJvYcCWA/EuCWCgz3i7JZcde4PUj33c9tk7C+9pR19XRPP+Chgr8vVswL/JlHZD5QiLxK+1QXgaVg90y1HOx@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt2rkbofADDyHu58eRsCf6wJ2+vA2vuleqTb941tyruD1+PsSR
	Mu57iPDfKhHTUgkyYqYVcsL3iEFn4VOmqhmoQKTQUBtxN4V1+Sj5AjWyfKQQD5h+X/pjXywMtnd
	l2Od5iMTTSexVYuMPpmeuPHg0AW1etWo=
X-Gm-Gg: AZuq6aK7EfURg+PpKjuiADYoiob935l8WPk5/6grNSUDeorrleX2LeQ351RJ3zzFKMS
	qMBbcPASvR8L0i8QqQQY6BwQx0rQ2EfkT2+9l9besNK58Ff4NFWMJvyASO65NP7eMK1fYyfPGbg
	loOO7a+WeWeEa0WFSy5O1a3zvzLrk5uHPfnK/DjSyBnhvD5X/jFwl5XsQTPIp8hVHlr5bBlLiUd
	QiJcWTwW1LfcT1pYXXPDnICBvG4dLLeNTAa1vw4uM5MhOkHLwfFFM1aSgeYXGJtBIkNAOZIvE7n
	XyRXxS8r
X-Received: by 2002:a17:90b:53cb:b0:356:2872:9c4e with SMTP id
 98e67ed59e1d1-3567afe7649mr2129330a91.13.1770808581422; Wed, 11 Feb 2026
 03:16:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211093527.2892297-1-shengjiu.wang@nxp.com> <20260211093527.2892297-3-shengjiu.wang@nxp.com>
In-Reply-To: <20260211093527.2892297-3-shengjiu.wang@nxp.com>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Wed, 11 Feb 2026 19:16:08 +0800
X-Gm-Features: AZwV_QioVTPx_waJOo959nlczDUw9t9C76e7lTpAVfsrBU6_oLABfAgvqJj0ovA
Message-ID: <CAA+D8AOXGbBurD1FO_rXhanDisO9zeNn+qp3ufp8A6u-CJxwcQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] ASoC: ak4458: Fix the supply names
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, perex@perex.cz, 
	tiwai@suse.com, ckeepax@opensource.cirrus.com, 
	andriy.shevchenko@linux.intel.com, nichen@iscas.ac.cn, 
	kuninori.morimoto.gx@renesas.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264752-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,perex.cz,suse.com,opensource.cirrus.com,linux.intel.com,iscas.ac.cn,renesas.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,nxp.com:email]
X-Rspamd-Queue-Id: 0EB59123C88
X-Rspamd-Action: no action

Hi

On Wed, Feb 11, 2026 at 5:37=E2=80=AFPM Shengjiu Wang <shengjiu.wang@nxp.co=
m> wrote:
>
> According to the binding document, the supply name characters are
> lowercase.

According to the change history,  seems caused by the patch which
converts txt to dtschema
So should I fix the binding document for this case?

best regards
Shengjiu Wang
>
> Fixes: 7e3096e8f823 ("ASoC: ak4458: Add regulator support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  sound/soc/codecs/ak4458.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/sound/soc/codecs/ak4458.c b/sound/soc/codecs/ak4458.c
> index f81cd8cebdd8..bfd4c039bbb7 100644
> --- a/sound/soc/codecs/ak4458.c
> +++ b/sound/soc/codecs/ak4458.c
> @@ -24,8 +24,8 @@
>
>  #define AK4458_NUM_SUPPLIES 2
>  static const char *ak4458_supply_names[AK4458_NUM_SUPPLIES] =3D {
> -       "DVDD",
> -       "AVDD",
> +       "dvdd",
> +       "avdd",
>  };
>
>  enum ak4458_type {
> --
> 2.34.1
>
>


Return-Path: <devicetree+bounces-277212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCFVDQ+lummaaAIAu9opvQ
	(envelope-from <devicetree+bounces-277212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:13:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D01D2BC02C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:13:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26FBF30C3999
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 764433D75AB;
	Wed, 18 Mar 2026 13:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fI02eSrZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F34E3BED11
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773839397; cv=pass; b=R/ipyAeo63I9GII503KAL2TtW7XsCs3jhY/nk7U89n1f1RTMWcAkZ/rAAsyX93RnPSbvyjdOkZUtBvLKGtk1Go1jQjF8uDesGRofw5zZGVnUWngU6E0U5I9fkO7xz/W84TS3ACEa4DoBijx4dxqjkY1HttQDvwfOLR+a9VPvlLY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773839397; c=relaxed/simple;
	bh=mX2Hn+cjlm40dMz9dWd5Wuvnl08iJaqNpJW4nK9UZ5c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nh1KPpf+nSlPrFGphDAzljBvf1vg4lc8dnkYNXU5O6CSiNq4SAhOAyGlx0RXlBd7PC3sinNMN5WCp1qLFhvp1WygaeNkUbuKieSv5SN1FY9U3LZHrRa7Hgj3zqDs4kYLJ02LrZY0GPU4+FYEbTEddh7mc9CwzIGeF/reKImCEZM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fI02eSrZ; arc=pass smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5a27b5ad832so595181e87.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:09:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773839394; cv=none;
        d=google.com; s=arc-20240605;
        b=bOOWLfwDv0yMFKX/1NNvqPBwpyOVM2LVsQNsHKIdF9RFkG01KArOIB++QDKJqRS6n0
         VBeJMnoRcjxipGLVDW2k+w8jr+gyOSAEPpgbbxjc/RhhuzVfj00AOXmw6NbNnFzQi3xI
         lEsSTybH119bkW6vgNhk6jcKmARO/xNKRsqrYPcgUDTN4E622BQXqmYOFxd5sqVCw7Oe
         igyRXr4csGgCFyWZ+Ral/WqKDogP8M6f03clF7Gh0b9XtHGaTRMn9sIT4NFuM1/H3Gdk
         EyB9oHQtyeLx/5a4mkVOE79e2gbeeJ12iOMmEUxPlpOSNZU1f2RvWimv60RMNxoEG8np
         N9Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mX2Hn+cjlm40dMz9dWd5Wuvnl08iJaqNpJW4nK9UZ5c=;
        fh=dRFM6GFkDN++bMfo8bSSuX+M12aLDj0HMEhNzDnMarc=;
        b=eSAHnX1U61P3VQztOslHeNGvGXkl9VUXmMCb8iz1HxRhU4VMdnD5sjLAspyI3o5K1X
         UD1X4+ZsDjY9llzzgLnv33KkvK9DVn3vSxwW1EAZGn9ADFaWAJ+NjYbx5WB4PycLpJwe
         zqO9RhW+FsWZfOq7PaK3UmUuECNjy+s+e4Wa34BPPYEW5PM1gAD/+4SrmGUbxqS6EKi8
         MYbUVHyulxNJP49E7i88lkUDBPqJstKIN/z2sU+WQpFTne0yNuEBSsKBqtAaFRWvj88z
         fq8ttpB3dv0zJ8ZJ0787xs5ctsXOhqEPkbx9a7vrHce6XakCmn3bH/gHhRFjTPjzUHZC
         2tSA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773839394; x=1774444194; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mX2Hn+cjlm40dMz9dWd5Wuvnl08iJaqNpJW4nK9UZ5c=;
        b=fI02eSrZkRC1LLwoic8QysLHYwQniZ4lWJdHZ2CjCjRPtuMVJjDMhGpJmvcrwPYtqj
         uk2l/ls/85p0qaFlgNg0qD7t+sbfC1HCNBhs9wV9b+pINqrbXyXsN9T8SBBZaAabQ0gq
         vQWdrE6XQWeGKHztHk8YxcCTXGT2yVzaVerbGsGTc9JLbJNQLjxGYeJtGLloy5sKlRyv
         7OB/edYkH/kO1tyk3OfXqtznIwKbpojYacRlv9DtiWSwnFRz4qyoos1asYyJH8azgVGk
         rb4UVNKk5JbLShdYxCdTKh7pyzrdRAj0FAXxf8ekQmFRANFPxMhKUOItReunSNcdboZn
         pdxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773839394; x=1774444194;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mX2Hn+cjlm40dMz9dWd5Wuvnl08iJaqNpJW4nK9UZ5c=;
        b=R2ivg5LibbBhTu0gvtMCVBAioLcS/mGIbHK8+J41T3v1+w+VL2HVFT2nrciLvTUfQv
         RXavu8HLFDVeWDABTSbRgW3TNeSWuERNA0OHIIasVr5Q1mjVLbPYk3BGl67O+CIwhGB0
         EcsaeIxvWPetppa4XqJOyD57EdtQMUBjLCKDYwWNykjD+koHYx/EZWD4l/Vi6rPD7yHE
         tNz0wZD+rHB47wz35fMRCZU6FO2xPJVrEXrE0kaZtwGZtOD0biPG9CBPVrWB8gXof+Xn
         PYNjCmJ7+VZDulfGZ1UrxwdWWnK9h0Zykf0Hs8DvX/ZKbINEGZuW2X+XHLBnkl8mfH9Q
         6OYg==
X-Forwarded-Encrypted: i=1; AJvYcCUm/Ug2eHkwsBcXSbw5vLCfKBdTjzEyOK7EeEyzoTW+7o3AMMZaUMVqOtYw0ttQaxICdsHmu7zzW94Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzCEMBOiH6s/Nh14yzKb9n5DqceBe7lnFCFNDSsXN9+MnVQ7JFC
	/YP/tPtYc1z6aYCJ7aeIjyInBMH4JxdVEXMUHFQz4L5mRa9z4C0Z6N/qSVb4McXhdB+jLyR7kKO
	HNEqLdbtK/1rzzI6KnAI7/dshndGWegg=
X-Gm-Gg: ATEYQzzc2fT9g4DttbR3WfazKF6H3jlnc2Qr6sl8WbybxLUywI3JdFi1get6ubS6GHG
	PaDLpByvqAXrN7Gu68sl2N87SITum7sCjgwtKcGoxSvuGYDiw6fXpUYwQCkKNMD4zmtgte5ONMu
	s/gYc16RbcOvh9BWe1BOPRt4ltA0nZHFRoiJAUR0N6DWHwkRkllRiV+wZ2K//UQRe2QXpNdkPuu
	GkJ6nJqlDu+/cIkIHlXtwsbsyWkK3o/hY6nZM8vew1ar220VSUl7M/AwMD053PrZCVpdq+yNNlX
	Ln7Uz0yd19UZFO1j/6pp3nDpHxKQVesYF5wMuWKRgWoeSAuz4wKHU/s2240bPRlQWfE04aUheR7
	cOqb/aMTu
X-Received: by 2002:ac2:4469:0:b0:5a1:3ee1:2756 with SMTP id
 2adb3069b0e04-5a279598756mr970100e87.4.1773839393861; Wed, 18 Mar 2026
 06:09:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260316211348.230923-1-piyushpatle228@gmail.com>
 <20260317-cassowary-of-authentic-agility-05dec5@quoll> <fc4cd40e-ad7e-4851-a483-125b1c1c1697@sirena.org.uk>
In-Reply-To: <fc4cd40e-ad7e-4851-a483-125b1c1c1697@sirena.org.uk>
From: Piyush Patle <piyushpatle228@gmail.com>
Date: Wed, 18 Mar 2026 18:39:16 +0530
X-Gm-Features: AaiRm51JPC636QkcUizg--m4enX73V5zKFNfoYdrsLB9EQZyZFUybJRy9GnWn0A
Message-ID: <CAMB+xkYRcRw9q7u5oQSJ=R7op91tQ5rgPeVpMfS_oULKjoPsew@mail.gmail.com>
Subject: Re: [PATCH v2] ASoC: dt-bindings: adi,ssm2305: Convert to DT schema
To: Mark Brown <broonie@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, lars@metafoo.de, nuno.sa@analog.com, 
	lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277212-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,metafoo.de,analog.com,gmail.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8D01D2BC02C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 6:23=E2=80=AFPM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Tue, Mar 17, 2026 at 08:28:12AM +0100, Krzysztof Kozlowski wrote:
> > On Tue, Mar 17, 2026 at 02:43:48AM +0530, Piyush Patle wrote:
> > > Convert the SSM2305 speaker amplifier binding from text format to
> > > YAML schema to enable dtbs_check validation.
>
> > Missing DCO. Apply your patch and check yourself.
>
> Specifically the issue here is that your signoff needs to go before the
> --- since everything in the changelog after that gets deleted.

Thank you for the feedback. I have fixed the issues and will send v3
shortly with:
- Signed-off-by and Reviewed-by placed correctly before ---
- "YAML schema" replaced with "DT schema" in commit body


Return-Path: <devicetree+bounces-269960-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aA4IDv97pWm6CAYAu9opvQ
	(envelope-from <devicetree+bounces-269960-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:01:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8CB1D7FC9
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:01:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E3C17302D965
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 12:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25C32361DA1;
	Mon,  2 Mar 2026 12:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="Zj5l+/mW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C535525FA05
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 12:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772452836; cv=pass; b=FZ9Fz/roblPyoBEvnNXg8x5r4qxeTdjV96/2R4CKe0HdhG7I1SvHFL5hgyYs8hZSge1L6Kx9/BRCdWrA866h8NW3jw9XmKr0x/2lbX/LOyGXI0NhPTUFxSkKp34gxyHQTbkfRMIMuSNdJLFjGiAJG9MJBP4eADkZGtNNKHqN7t0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772452836; c=relaxed/simple;
	bh=8LmPtxyT3YMtIL63fEHFCEyYwnCRKHRTqMjhB0pBD88=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZRKzf3+9Efj+PbzZ178bci89of0G/y53+JDfMxtEVPCvambvxWx4AeKI0mpMBcS44cCiWrCsa4ca8JxUXuNC/SprMv3RJsTI+ngwmGKo0NUCHKT24VXvukMiub98bBHDwdO2wHt9LEQbTV52zeG1gJ2LFfnuQaxUFEQW9UQFtWk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=Zj5l+/mW; arc=pass smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2ae50a33ff8so6267745ad.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 04:00:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772452833; cv=none;
        d=google.com; s=arc-20240605;
        b=D1JNXjwnXc2ooVlO6QzG3QqPf5ZZ6RNSaQKMPYGfbVe4oqy+zPBRzTQcjf+nSnSBUn
         LMMc38E591OWBvZVcxv19pc6QuoINcOGpYWXjrF2OWKX/ECeoycLLxjEdWRk4gR3kf/F
         We264EcyMq5UhxhFn0solhgUEfLXxf4D/PluXapOVz7jMbIFifRaYcdconE/7OCy9i0F
         yq2B/VxjLRhKq+7qtMvQbuOzbFJ5PGW3OhVU09frnIjCNFRJTooX3ZeHUOPscPK2Bt/J
         fI2bn/QQNRDGA8kvk8AKU4rfIkzugie0fFhLv0hQynP+qaSVvcVwVALIcioDVf3wNDXY
         5uYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ArgC6tchR6EEgYRqqpyMGswMfqPtVUgik7Fa59Flxok=;
        fh=yelLFZB78eHJLiXbi5MnCnPh/e1G/gGDqdViS6/PjYc=;
        b=O8947gDb6y6A3B7jCGYDANIgB0comhfRCH6ZeUqC5hW/wkwoz091F3aRTrhLDbhCFc
         jSr0wlGVtakgQsX0HIRe1aiUdsxoaEOhxihk+I/YEeI4iGC3bhLNh5Q8eTwuvJaUciop
         EuEVawSJk+SFf+bXrQisxmbUpwKHZqmkNCXGECrLTKIT/vXEVSk7r0XHf6LdSsH25VBU
         2ZSAZpJPQdBmFN8vZTSK5zrgm1kwWFgog8prqHi+cTDpdWMzsRdxo8qf4IzYAQa1oHnE
         /P+cYFo9uKN+wAbgAnuZE+/6LQR4hUC5QPyk4DP/CzlaapGDjGkDdzByVZb3+xhqB75N
         dTEQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1772452833; x=1773057633; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ArgC6tchR6EEgYRqqpyMGswMfqPtVUgik7Fa59Flxok=;
        b=Zj5l+/mW3UhkMmH9aIqlKGV4S8Uvjyz2AR3kfRrftWeRCwCkpd/nPzrEx47mXvXeZq
         umjFMANq7L9KF+AGOfYqa1gz4cZ7XH3J1gKRIsEO1Zo0RZ28kmeU66Y3wEQTZqOA1r8O
         WsAv4LyX0ajB5gmwzA4cVSlGBvSZ2me7IkF/weZTMMORNQgtM2YKj2qkGvV4/JW0mHZp
         AFDxpxXn5LANlXVXj31WIn1p0hIJ/thiuAhJ1ogyrzX1Z4n0zOaUu2/ry4mcnmlW2TOi
         N86ypAD0oAhcnoFYmR3jjInTdBJ8or5MCYDYWh+U65GzEcxi6Fi6F4xq5Eh2KGhWRwVb
         Eaaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772452833; x=1773057633;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ArgC6tchR6EEgYRqqpyMGswMfqPtVUgik7Fa59Flxok=;
        b=q4mxBWDCbtCKf2ckq/UF2GWJgu8MrfMbEpREuefkPQnmdUoOm795q5UTZO9aeP52i5
         oe/GKNvg10jk54lE67Mp7c+5+KTUE69euAPsxGmd9U+y1pAMOLrymsX/8sGTLseOAuHX
         Ziyj2yMbOGZ4t6e/lBPg1PeAcsiSBWVWuCasnoc7HG9c3SiALocifW0txwAbJ8rIKaC2
         4pav14JdAJHNmP2UgrTc7LXYGLjGxUibZcaRjbIgJjrK2FNM/pJ5XAM6U00Io5MP6UDb
         4VR0Njb4jjTUK19BZSysLvyuJ6A2noH6VS6PliKbYotCLBM+FU2PVvdEVL8df0CtUNe+
         pcqg==
X-Forwarded-Encrypted: i=1; AJvYcCUeCHTa6TSgKU2SGnBD/2T6dUIVFfVqAJvYuoWTlxIlHx73DyZL47a6zkq+Z0Fvdcv4+Agq7SwztM9n@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4sxwSG0FNGhWAb7UNgstVtERAn7ci7q11Rlr7pqgOW6o/YFgN
	ZFdmXsa63yn6KABYYZML+6m8xTJGCppnr9DqAVv6tWEgNGqluM95BxvfkTjQm4OQ2Dss3u9ai8A
	/HOKWVQ8AY2VPWLxH3CE1QZFhBmOUZq8=
X-Gm-Gg: ATEYQzyOXyGpeF/CE9mgKWQNAKCVEOLXYHMxt5LZ/QsUU7LLNtg2tTvLTQPsoaIlPWc
	otu644O/TERIKNDE6CdxBYuecddNiWqIjgqFJ6fnxVTe+hQbMEhqaLZzWOyBvVL6Wgi/tbHTvtZ
	kMtuznwJQDKg+HnOyAIrx9PAwhkaqaSIel57WlghujsVdHizPe1FRxH6o7oPGLNA79jReAoBWtg
	weOidwJqTM7v+2NEDLfIkTi+2OnAxE8LqAgY2kRvxiTWzTUz+2RdBil3Ihs1GO+CWJWU+OfZGPH
	HDHjSinpfVDTcjHy8hLx2SwfvdoYQ2qOPhK48gxu
X-Received: by 2002:a17:903:2b0b:b0:2ae:5a44:ea73 with SMTP id
 d9443c01a7336-2ae5a44ff28mr9115965ad.30.1772452833138; Mon, 02 Mar 2026
 04:00:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228065840.702651-5-nick@khadas.com> <202603010009.VfPuPoeI-lkp@intel.com>
In-Reply-To: <202603010009.VfPuPoeI-lkp@intel.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 2 Mar 2026 13:00:22 +0100
X-Gm-Features: AaiRm506ikB27OOPsiZaHy57remzQl6Z49Wi7FBnTFU4vfPVcSRrRPvLCZYsf3Y
Message-ID: <CAFBinCDBR=cgQjhv9VxYLFAmTp2p+Fm_mWCZ5o5P_SA=Rb0R+A@mail.gmail.com>
Subject: Re: [PATCH v1 4/4] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s:
 add Function key support
To: kernel test robot <lkp@intel.com>
Cc: Nick Xie <nick@khadas.com>, neil.armstrong@linaro.org, khilman@baylibre.com, 
	jbrunet@baylibre.com, krzk+dt@kernel.org, jic23@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, 
	llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, 
	linux-iio@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, xieqinick@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269960-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[khadas.com,linaro.org,baylibre.com,kernel.org,analog.com,lists.linux.dev,vger.kernel.org,lists.infradead.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,googlemail.com:dkim,01.org:url]
X-Rspamd-Queue-Id: 8B8CB1D7FC9
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 5:16=E2=80=AFPM kernel test robot <lkp@intel.com> w=
rote:
>
> Hi Nick,
>
> kernel test robot noticed the following build errors:
>
> [auto build test ERROR on jic23-iio/togreg]
> [also build test ERROR on robh/for-next linus/master v7.0-rc1 next-202602=
27]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
>
> url:    https://github.com/intel-lab-lkp/linux/commits/Nick-Xie/dt-bindin=
gs-iio-adc-amlogic-meson-saradc-add-S4-compatible/20260228-150346
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git tog=
reg
> patch link:    https://lore.kernel.org/r/20260228065840.702651-5-nick%40k=
hadas.com
> patch subject: [PATCH v1 4/4] arm64: dts: amlogic: meson-s4-s905y4-khadas=
-vim1s: add Function key support
> config: arm64-randconfig-001-20260228 (https://download.01.org/0day-ci/ar=
chive/20260301/202603010009.VfPuPoeI-lkp@intel.com/config)
> compiler: clang version 23.0.0git (https://github.com/llvm/llvm-project 9=
a109fbb6e184ec9bcce10615949f598f4c974a9)
> reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archi=
ve/20260301/202603010009.VfPuPoeI-lkp@intel.com/reproduce)
>
> If you fix the issue in a separate patch/commit (i.e. not just a new vers=
ion of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202603010009.VfPuPoeI-lkp=
@intel.com/
>
> All errors (new ones prefixed by >>):
>
>    Lexical error: arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1=
s.dts:50.18-24 Unexpected 'KEY_FN'
> >> FATAL ERROR: Syntax error parsing input tree
It turns out that this series is supposed to be applied on top of
"arm64: dts: amlogic: meson-s4-khadas-vim1s: enable LEDs, Keys and
Bluetooth" [0]
When applying this series on top of the other then there's no more build er=
ror.


[0] https://lore.kernel.org/linux-amlogic/20260228063750.701887-1-nick@khad=
as.com/T/#m2f4d30878fc8252f853bdb3005042c3aad97961e


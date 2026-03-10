Return-Path: <devicetree+bounces-273541-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOsLNworsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273541-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:30:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD10251FF0
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:30:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B991F35A692E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:24:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95D8238D687;
	Tue, 10 Mar 2026 13:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QJAScIgJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE7F38B137
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773148498; cv=pass; b=i/AajXfi+8hT/P/XyQQ3w5xlNItazM5L2uA54vhVgaj+H9q94YNgA2r7xplT6dE/pEaFbosqGUXwcZoOZsMTpsyIfPbhlTmMLmq8YmAN5HYcnEujxruJSewlCPM1t0GrZ+nig+Lhhr06k1cHFv+u/Q+OHSDfoj+gMhEW22pkjl8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773148498; c=relaxed/simple;
	bh=OvafpqEGtS/OiggsxcjnYSMqpd/KvJAmp7arL+ZUBVY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s0yUXhvH54ALZuogcbQlf8ozEYPZsyTl8nMiO+T2fOgCy00yE14AmeN9e5UKdyrcNqtTlODTGkJlOjVzNb22BMsU6/yL/wxxY3S8Drest2NQqxRoCKzEFsZIK1OjMpbCKD5kp6S5ST4w/Tcfj8a3JRSNomZ9YJpDxOjByXAWFCc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QJAScIgJ; arc=pass smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5a12cd0bcd8so7563300e87.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:14:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773148495; cv=none;
        d=google.com; s=arc-20240605;
        b=TK+5hkqqP9YKweNKSudOEvduHi+VDAymUmbO+9Fo4quJBJ3/ZpXuzdbAPXZUcCRRue
         /Fs06pJwXwr/J2cyY0NKXDNYC2mQgVsEQPezOvPlDx8nh0NRUQ2hHjsBabt7m81Bpr7a
         877UQifeo8bdVzFEH3+3T58ia03nBZyl6DumvmzNxpTEo3kA++XpzdtUWiHu4Dda5ray
         OoKsCIj5MouCh7KSW8CXcHLjtxFkEFkkRJ37tVPpCNmibDirR27LSmsOgPO4nomkL1Pk
         kTDZzd4MY/kKZSVzLqCL1755yjQyMi93j7aWamu/MF/dzbB9BiMal+vnTVmqOTmumr4t
         FNoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=OvafpqEGtS/OiggsxcjnYSMqpd/KvJAmp7arL+ZUBVY=;
        fh=fibECaXu0bssJHxxiqFfLfQ2vaAxpxvZidk/dnM/qA8=;
        b=dbzFVvvggH+KNywzRNAuis44gcyRGsFvzFvjveQhu575Hvmt9+L594SvBz70ceK3WN
         RKvFFH4gLkBwlMBpERhNnJOP/J3k7Imh4SonJFMqXL0UngoDDwbWq4Hn6+mz2lGyFA4R
         5sCPzdNFt6NdbEkGv7KEccEgYftbyeQAHNco/itubVpsbVtpg267hmHZaoLTdb0smJZG
         A8zZ3aX/mGVeK2ziPq0+jclf92DthqUuTC/BpL68pE7pywLNb9ZKjBMj4NAEv62Txzur
         zTTEab5iz7q0XmOUiZTcPmtJZGeLVAToWk2BuxPO3BcO3eCH+Het97rZoBPyq2068b8y
         a/HQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773148495; x=1773753295; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OvafpqEGtS/OiggsxcjnYSMqpd/KvJAmp7arL+ZUBVY=;
        b=QJAScIgJKquU+lT6DMpPPjA9eBGH9jPgxw5aomDvehxrMYrXxNL15Lu5APV4pFkwyj
         +Rb6UC9ueC/9xNqRcfvbbCw1BS8toFJYL/FDtkY03f5JuEmG7simESNhlQV9vl+Fv+Ww
         TnbOpJKx8pIaFoyMXe8kGUHs4G4u4yFUShCFIYFW7nqy9FMyyRRKFBAGZqeNjcAtc2gz
         4cqsB11EZi+bKn1EwXH+7YNYnLeRue/KxotoT9eu1Rqyh4t6XPsB1nkcVN4QJ0VmEfP0
         17ILYNdAV6urE4M25+yjTnsbfg9j97tS9eY1iG9XfW1edbx3Af0LG027KgbTVz7d1Ky8
         ERxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773148495; x=1773753295;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OvafpqEGtS/OiggsxcjnYSMqpd/KvJAmp7arL+ZUBVY=;
        b=eF8bWRUFl9wVBmeiDmrVAbitaXlPrnqcsrQiIykXf+B73sncKGfjjR9If5yJ9SPEK5
         gO1Tinhp+/HpRaBFNSeRosFyUGYMr9ibTm7P1YMcm+/wmUMQHkcRBQwm8Z9ZGByaTW/1
         HmhJsvvyJHelQfImkPWFjfVxP98UK6K+j9U0+xrDcrXNSgZx2lVTi0ASvaPlHXhHr4G0
         trJJfoJGsc8Hga7K6BJxA4jlaH9Ncygst2b6L7JipJywd4NIOQyYiBivTha8okWuCkxp
         1UGqiv/R97z35s+4TZ//D9VTXjQBJV3YZmDUTPExZmWZYY3Sz2CLCT2tEIkHmEY//BCK
         fsEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcEWZSeKDtzWgEvg5o656YBeoqScS2KCpgBK66cd7+pgJOFKSggNXcA9Hpt1D2kzJu+H8zb/e0E/1J@vger.kernel.org
X-Gm-Message-State: AOJu0YxSKL3KAcVckqHjjfCqFjPcQUzNWiwQHdvZxJ5lgxKfBZF+I24z
	WbnSZoKDsYhqaYTvZxtHbrGOk3D3CcmMKvSqWUiC5H/sdJ6CY7aqMWITIbJpCQu2iaJYnf1E2z8
	zGPbrGN7rwu9M8aC/qjzXShJNYgmKFLk=
X-Gm-Gg: ATEYQzx9hNtT2AueITYQ+j6g4t0LT9w+IqbdnCyIZSIF0qe+dIMCNt5kKs6o6Iaa8/W
	t4bFXEwRRFzy4jjMP7HXy2yuKANMa+3AYLEDrPLReljXpAcXibJQD/nar9mwGfSy02nVGsqo7aA
	RqkiPtpHqHNS6tLLrX/YG0RyWaogqs8UbYSEhIzrRflC6vWe9w9vaTjrWk44/Rz6MkOBN/URPaN
	NyEszkO4GeIF2g3KwDws/0q7EtJ1SM3pMRZICJ+Pt8lILAainezrgQsLx0H7f+esQ0mCmQ+xaCq
	XzcuMU1EMGR0d6powNC36XupAds4NATnQKEcujqZxOk4FM5134zVopJe7ZzfdrUKE9DIbl0=
X-Received: by 2002:a05:6512:3ba8:b0:5a1:43cc:9f97 with SMTP id
 2adb3069b0e04-5a143cca133mr3775932e87.48.1773148495109; Tue, 10 Mar 2026
 06:14:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310124950.1345117-1-andrei.botila@oss.nxp.com>
In-Reply-To: <20260310124950.1345117-1-andrei.botila@oss.nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 10 Mar 2026 10:14:43 -0300
X-Gm-Features: AaiRm52E00LdH2rZwxuFYXGjz-kZKy_GcD7ZYQ2nDQ3vRAIkTC8eVlnQwrS5urM
Message-ID: <CAOMZO5BVtRHW1+qtMEH9akO7ULS3LppzGXMB2_M-JJVwjbv1oQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: s32g: force S32G RTC as rtc0
To: Andrei Botila <andrei.botila@oss.nxp.com>
Cc: Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, 
	NXP S32 Linux Team <s32@nxp.com>, Chester Lin <chester62515@gmail.com>, 
	Matthias Brugger <mbrugger@suse.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 5DD10251FF0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273541-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,kernel.org,oss.nxp.com,gmail.com,suse.com,lists.infradead.org,lists.linux.dev,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 9:50=E2=80=AFAM Andrei Botila <andrei.botila@oss.nx=
p.com> wrote:
>
> S32G RTC is probed after the RTC on RDB (PCA85073A) so the S32G RTC
> ends up on /dev/rtc1. This causes the suspend/resume or hwclock to use
> the wrong RTC since it takes by default rtc0.
> Force the S32G RTC to be assigned rtc0.

We usually prefer to use the I2C RTC as rtc0 because it is battery-backed.

What's the exact problem with using the I2C RTC as rtc0?

Is the S32G RTC battery-backed?


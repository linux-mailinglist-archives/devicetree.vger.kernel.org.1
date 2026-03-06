Return-Path: <devicetree+bounces-271808-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KH8qLitBqmlQOAEAu9opvQ
	(envelope-from <devicetree+bounces-271808-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 03:51:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4954821AC16
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 03:51:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9BCC53028C1D
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 02:51:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0B3C36682E;
	Fri,  6 Mar 2026 02:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gaOmjGV/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534EE36656A
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 02:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772765472; cv=pass; b=pUpplasNuDAy2ACUU863QY3vDwmEcEZLRAhrkD0eri1dh/QODIY9433fFF7VsPQ1goh/7/I32hVxQ037KyQuqOTucR/r9eCbMHYwmniMCngjtM75NgUtscq3IsDUS3dbRD9xlaCtA6vHUY8Luv8ekiQKkrTTWoPsCXX9j8VIQLs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772765472; c=relaxed/simple;
	bh=le9pM75U+VH6RnwbdxgpjIvWcDTvW+QXlb5uvCpDhYk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n9JFr/WPa8PkfPt1iLnTp5DKHGhnJ3o+a2MMgDrLaVq5RnwNMUgHhxWqCatnXPLQFGpzNwzjrLKSPweDIe6bID9dTjpgLIOWA8boJMmx6mRqmVvz21ZGvusqCdL9FqzGsmNPYwOTPTnwjpB7S+hsed5wQY2Mr6YTpsmUtUuE1z4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gaOmjGV/; arc=pass smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-389ff6e5885so75868591fa.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 18:51:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772765469; cv=none;
        d=google.com; s=arc-20240605;
        b=L5MD9+qZrFsHV8ZnbjKE9IoEmsB1HQcNl2ND2CBhsAGrjNpEPb8AXs0GSTNJtQck2k
         dnqlQ8YOZ6ryvPbDXTjvMHwpWJuOJfoi2/oylajntcLxzC6mohO6/zW5o+dzk6EnaL5s
         D8c1IwD9K9exDfLcsMb0KVaWpkvQsPWpErxxksR1VWYirbOQzG8Aj9wSwy7Gj/VZpq1a
         wEtTcHeA2BwVm8hPSaXlDEYvaFEOVrs2KZIWAlg/9108x48YVYkvru2orkAjy5EoLv2C
         Ov1iXSsooLDs/t5A3//cYuQ7VQjVtu0RUEcQmwv+lQRfKOMrmoBg4L0S0XgRl4wKpUDp
         Dj8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=le9pM75U+VH6RnwbdxgpjIvWcDTvW+QXlb5uvCpDhYk=;
        fh=effLVTWAbDUtF7r+gN5oaPXK/ojM/9XezCasCyFX7DU=;
        b=XDjm4tilbAFZ8xoScu4lCi6/rYOBSUuqRH94XL75K29s5+Cd1/HQB09Fuf2Yzm5Vn3
         Vk+sME//xIZ9aYnCv1P22FP1BJFSdAzD2sFzAzGVq3J1/s9C4SPfV3uPXFji4xEyBuOw
         vT1tTfS1t2WTljxczvtgVSRRWAGmXf6tc6zKczgq/AYhbLUj/P5/vfvMmkxlxd2N499N
         oqKWijrfsGA7SKQmKqRRIGSS0Ukwr+P3sfHkH8JIG6mCLwreFtf/2szE/GGu1dewybNH
         hPy5Apo2RZLhfuKS9wdvVbNbTgpVdqhZAk+xUjKXhXAZx1eTxlaoeNrZGTZvKda1kkLj
         KqWA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772765469; x=1773370269; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=le9pM75U+VH6RnwbdxgpjIvWcDTvW+QXlb5uvCpDhYk=;
        b=gaOmjGV/MnvegMQD43mTuN/tEvcrsygWtZ2F6HcvIctPdB/3LGd5sSytzCJfQURBmJ
         Qdz+hJEg9h78MtBQiNfp/Xf5+WytzDbiE7NR/20JF6yJeIEgiBXzSnp/P7pK5lq2Zoou
         2YUa9OgAdQTIqUfCsBWVfpf0T07yzZmWEqnHIuBuSOGksRKBMhBkBxS//dgvwHq7/cYy
         IEEhyl50PxLsi/C3iIzEMQ6VT+Z3FEZYoxTyS3PEY3teev13aFRjK66WPmXzCAJcUKhu
         xFUyCCPTljaY94be7nNXz7+ogWrMWWBb/4k+RQ0i18e0uIEjuqujpscJkaOrmYv+r1tq
         GMnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772765469; x=1773370269;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=le9pM75U+VH6RnwbdxgpjIvWcDTvW+QXlb5uvCpDhYk=;
        b=NjQy77lxn49fCv4pAk7QbOVwmHgCCNPk+0cVNPCFRoCwz8BYEaxMec0+gc6BBbcVrC
         yVQEwKwX+WNQECqMgKnZt4as8AfASRyMCbPSLElqd9r6r4KubEOMyCzgsTbQ7xgIg00m
         L2k/XRJjrI77fm3Wg4o7cMqLiNarbxIpQyKXr5SMkGZ52fWJPc/3rx/ZUD8ENFnzG279
         LEzGMQO1urzotP98M7Vtum+h6pPNyN1kQ1EendBBAS+7DxN6K4r/KZdfjb2BBdy3sDA5
         pq/MIig3mgdOz4eEC35Qqo5FQkAFr1qFpmVCWhy4P4njsTXx3DtUyxo76WbvgcrHTG3y
         9isA==
X-Forwarded-Encrypted: i=1; AJvYcCUdaUBeiMMSjPxD+cpDdRbToZ9CcNaAuQp9Ynh3KQH42QS+MDODtrFre4owFzVWHd+C7lJn3agFUJhy@vger.kernel.org
X-Gm-Message-State: AOJu0YzhgmKl0Jnfg78GZOg8WU5hVdiQtY5t7SXqnXaiWz7HgRJoK4mc
	oJxQYDWNNIHS2uZQfubhgucJf6IHuZSfRfoId0Wwui1+4fMQdHzj+i4/7/F5+2oUNww38jlpNrF
	yU7SoY4wXYhlSVgEKBUhLgdQmtkygH50=
X-Gm-Gg: ATEYQzzmTaiK3EJxG4qwEsTFxTBkOIvfE5sVYIt2q/6Veh+lJ9QBrjenIsU4axw9SPJ
	a2aj5/ClZreHpuQlgrH97D7osJdBWTGgd4xDkzs4tadJFQuV32zbEpadpN/l6zt+VaYTyYOcM4F
	UU4q97HbFkhL7TB+yC5fxJK3tQHxiL2dtpCBlq9mcqofXsjoPyIpJur8bySA7uPRLBOu4n5B34+
	bNjUKuApCo0EKZu8AGxYb0nhskJUbuearTrpE+r/oDHwD/7DGqZmjzr8pMtUnStcrUK35Z9cQuZ
	bz4M5ZYx7tgEQ8GovK1wIeeXWNLLxz9E3+I6R2DpmxIxA9eUeRbXvK3/1P6RVomEQx6x0eFd
X-Received: by 2002:a05:651c:620:b0:389:df67:64ef with SMTP id
 38308e7fff4ca-38a352a4a0amr11338661fa.20.1772765469411; Thu, 05 Mar 2026
 18:51:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306022406.760-1-ming.qian@oss.nxp.com> <CAOMZO5BP2aLD+a1r7hVd3F4Qvfovxb8PgQfzcVRKknBHWYBmtg@mail.gmail.com>
 <61e260e0-4544-4c51-99bf-c4815367fa94@oss.nxp.com>
In-Reply-To: <61e260e0-4544-4c51-99bf-c4815367fa94@oss.nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 5 Mar 2026 23:50:58 -0300
X-Gm-Features: AaiRm52ueFUXaqQfpowdXyDTPs2aKgG6aHElJW7IWO6H3_-P9HAhh7hH09TPm6U
Message-ID: <CAOMZO5AYRWBykSdvogO0Ea6JidjgY_h5drnBpcDNFrU_oo_L2Q@mail.gmail.com>
Subject: Re: [PATCH v3] media: verisilicon: Fix kernel panic due to
 __initconst misuse
To: "Ming Qian(OSS)" <ming.qian@oss.nxp.com>
Cc: linux-media@vger.kernel.org, mchehab@kernel.org, hverkuil-cisco@xs4all.nl, 
	nicolas@ndufresne.ca, benjamin.gaignard@collabora.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	sebastian.fricke@collabora.com, shawnguo@kernel.org, ulf.hansson@linaro.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, m.felsch@pengutronix.de, 
	fra.schnyder@gmail.com, linux-imx@nxp.com, l.stach@pengutronix.de, 
	Frank.li@nxp.com, peng.fan@nxp.com, eagle.zhou@nxp.com, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 4954821AC16
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271808-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,xs4all.nl,ndufresne.ca,collabora.com,pengutronix.de,linaro.org,gmail.com,nxp.com,lists.linux.dev,lists.infradead.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nxp.com:email,checkpatch.pl:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, Mar 5, 2026 at 11:47=E2=80=AFPM Ming Qian(OSS) <ming.qian@oss.nxp.c=
om> wrote:

> > Drop this change. It is unrelated.
>
> But without this, the checkpatch.pl will report error:

Please do this in a separate patch.

The goal of this one is to fix the kernel panic. Don't mix other
changes with it.


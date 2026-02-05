Return-Path: <devicetree+bounces-263148-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLrYEFHxhGnR6wMAu9opvQ
	(envelope-from <devicetree+bounces-263148-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 20:36:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D12FF6E15
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 20:36:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4A4B63003821
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 19:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E5730B52B;
	Thu,  5 Feb 2026 19:36:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E67237180
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 19:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770320201; cv=none; b=QSVXLhFLV2gno9L/Ak3RwsJFgqqBoPKtcIlkBPdHYJEwYLoYVetXbm1F/h6F3QLbQmNVCgDoUDDRy1pH0fGsevXUZZ/llokEnI6Sl87JxMdtms4jVSCI0vdFKrLAH3m55LWYJ17VSlhCd7x0gVnqDqZoO5POcr+KNro1Ea6HPow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770320201; c=relaxed/simple;
	bh=NADkIUPSPYJ6eoj468PahRViRu/F/G/7pnep2BZi9j0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o8AIDFFSL8+i4+OvdOLmUZscddlfy7Jn31vnmigoM1YOV86BoL+smYJUDZ8SgLo0/2pvR4zzJmjWdoeimOeRz0gXgmkrQDzdsasr6MjTvXMjpCTrjEbr2+qWUim6IiIOvtqBPNcBfckl2eV9g9jjoqQFCijDUhCXIp5fn3gbCWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-79430ef54c3so14130077b3.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 11:36:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770320200; x=1770925000;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NADkIUPSPYJ6eoj468PahRViRu/F/G/7pnep2BZi9j0=;
        b=ESvWHeLNT0gk3SiLJL5ibcgo/PNoiAFhVRDtYSQPP+dUkLZpH1YEbKAdEsDvyO2tPd
         0sfQNI+tRjxKXt9uStqBmGKewlaRhNK04cqj7B+xjIaRhngy12zDKVkx2a0gpPECNzFh
         8kAYRefuzrtNMBU6xZU6qJ1Q5117IHwS8JMStspnAg92xbfHoyFoZVhV+byCDjOcOrBF
         U12JJtqonntL2rrykdlGV2HCEr4I4YHgY+6LUpL9cP74jqHf1TGxajk4qibbB6PrViCI
         PI8Jcei8n55jiCX3XYUG7y14BEWa8wxoizDLpel+BrPp8wY4crmrW6/aWtcrrtrS7WtH
         j8tA==
X-Forwarded-Encrypted: i=1; AJvYcCXyh3I5iNChD/oOaRqRqEOdXBnxkTITdRolfbrcj1A/3B3MlagjnHQLXYkkQGmgBXz6g+keiJ/t0oKu@vger.kernel.org
X-Gm-Message-State: AOJu0YyO39mPIOuLcPl5eYy2+EEsuiQZ1R7V/DN9PPTnCwIb9Zdg3p8f
	6wcy358a1JPeiZPVoRAWBuk1gMHgMbNB+GUF19DQRVz+kP0iU4fZ+IxB0L2jdQ==
X-Gm-Gg: AZuq6aLll4o+N1No+qL6Ut4lCGUkJh9st6iZmus8pHhVSg5ws3htK+VrkraaRrdSKGA
	do3AJMpgTEnwnqLYvYAo6UCdodQbEvi0MoOueYnOn0rSLO0A53SHsRSltE4n0m3HCap/PlPiYjq
	Dzq+Rop3n+Vf+Iko5K20LEL1yaPhqhOK0FoxJe09wFkrW5ibf57fBN8tOJD2cSiAIaXUbrVaDNq
	wnYyR+wrPAkQr4KfmZFLJimgZ4gmM4jViej9OlGUB9vNSIbu6dChYzEuE0nKLxpBi14hoNVmORC
	w766peVhRmLaeqBthMpSRRVvNqBaG1EEBALu7Msa6q66qqbC6bpflpEUESfNEvtQeW/oFBEij6F
	37beuh5mfddRpzlbk1ox0RKgFba2efJA2I1qawY+kXtp5Iinhlu9O0wmkHOHrBjzKn0hFqjRko2
	EiyiTdJ8zUtaPvsEAJqgm/WwbIcN4hxyo7D1wICgYDIQ==
X-Received: by 2002:a05:690c:dc4:b0:794:a7d:6bc4 with SMTP id 00721157ae682-7952ab6f3f7mr2716027b3.58.1770320200336;
        Thu, 05 Feb 2026 11:36:40 -0800 (PST)
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com. [74.125.224.51])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7952a1e34f5sm3879587b3.32.2026.02.05.11.36.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 11:36:39 -0800 (PST)
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-649bb5a0ba1so1533157d50.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 11:36:39 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVaiASlckMHwKg4YUi+2vOwnLe/a6z9UmWkJsttMKd9DecTiIy8S5zOZ4krgLz/lbIcVqYDqolkcBYl@vger.kernel.org
X-Received: by 2002:a05:690e:24c2:b0:649:40ff:2933 with SMTP id
 956f58d0204a3-649f21b2ef0mr353888d50.97.1770320199620; Thu, 05 Feb 2026
 11:36:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128-rubikpi-next-20260116-v2-0-ba51ce8d2bd2@thundersoft.com>
 <20260128-rubikpi-next-20260116-v2-3-ba51ce8d2bd2@thundersoft.com> <20260205-calm-aboriginal-mastiff-b07eb3@quoll>
In-Reply-To: <20260205-calm-aboriginal-mastiff-b07eb3@quoll>
From: Roger Shimizu <rosh@debian.org>
Date: Thu, 5 Feb 2026 11:36:28 -0800
X-Gmail-Original-Message-ID: <CAEQ9gEm-A8mDS=6V3h=2gHOhtM39q+bR79sSFhDTvbEJbDJRWA@mail.gmail.com>
X-Gm-Features: AZwV_QjZObttSH7jw-q62i4ilWQ9P8pUKpyBFPt_sGdKcdebjL-CU0t2EfBq4Fc
Message-ID: <CAEQ9gEm-A8mDS=6V3h=2gHOhtM39q+bR79sSFhDTvbEJbDJRWA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: qcs6490-rubikpi3: Use lt9611 DSI
 Port B
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Hongyang Zhao <hongyang.zhao@thundersoft.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[thundersoft.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,lists.freedesktop.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-263148-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[debian.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,thundersoft.com:email,mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3D12FF6E15
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 5:09=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Wed, Jan 28, 2026 at 07:15:47PM +0800, Hongyang Zhao wrote:
> > The LT9611 HDMI bridge on RubikPi3 has DSI physically connected to
> > Port B. Update the devicetree to use port@1 which corresponds to
> > Port B input on the LT9611.
> >
> > Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> > Reviewed-by: Roger Shimizu <rosh@debian.org>
>
> Where did this happen?
>
> https://lore.kernel.org/all/?q=3Df%3Arosh%40debian.org
>
> And again, v1 was completely different so how pre-v1-internal-review
> could be applied to this v2?
>
> Honestly, initial guidance is useful but continuous development behind
> the closed doors is not.

FYI. v2 was updated per review feedback, which is public:
https://lore.kernel.org/all/7d9041a3-9d2b-469a-9fa7-89d53bbd2a1f@linaro.org=
/

-Roger


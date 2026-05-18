Return-Path: <devicetree+bounces-299578-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gND+HmlLC2o7FQUAu9opvQ
	(envelope-from <devicetree+bounces-299578-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 19:24:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D7428571987
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 19:24:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6DABD30056CE
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 17:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 900953815D4;
	Mon, 18 May 2026 17:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ftaiTXkn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DBA34E764
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 17:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779124873; cv=none; b=d1CfAC8GY2SURi38+EowLxJDbOzj4mrZzkh0RJ+RYpGnHvv1im1C1rHQKOSQOlSb4rj+eIOuF2NMuxzRR7v7dtXZLLquhf/aUw4pNuzEjByUHa7H/PcEp4ek+d1cdN09/C9GRGwMo6sXuO4NZdepbOQ7Svm6VPUBnBtb9vLKMgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779124873; c=relaxed/simple;
	bh=sOJxMZchOv0WgrC6+6PbayYyvo16Eg4LJgmrDhVE/y0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t3cVcHVP38FSgEy2X6c+C1AMpB1XHYlTGc1VSS47IkWzOHWj0OUpOMQwC64uDBPbqVEUmKL4SnwPg+NZ7fy25CQxUa3kb/xcoC5ul+OPcNS/VFJGZQM32a2SsrCGaQjV50ifToRtls4Ng2YTIRrd9oV/xLD2++mBEYfUZDQTfaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ftaiTXkn; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-90d13fa59e8so273628785a.2
        for <devicetree@vger.kernel.org>; Mon, 18 May 2026 10:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1779124870; x=1779729670; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0QbJKB2lw5vG8p4X0Zp1dtcwqkjeJLsy09spRbfmWxU=;
        b=ftaiTXknJQU+tPhf0Ef736xQ2IC+E5HA6zTcjLkHRXdJ4AUh+yYunRYSmE122A9jKX
         FAoB107kSN/sju/DbzZh3DvGCyW4VIskIsYyfhX83BE/G5u4ojANrkHz9H+dg489oJs+
         yfLRoAajB826OJmHgOA4t+hR71BsmCVBFppOk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779124870; x=1779729670;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0QbJKB2lw5vG8p4X0Zp1dtcwqkjeJLsy09spRbfmWxU=;
        b=gHp9QbuNiglWbBdxgy9mrvw+Y72PWySniy73fgH8ns2Gswqt1LW+7BF0/rQonm3mS4
         w9mtfjjR5JdBOT1dXl6fMJgQAUdPG3Uhd1e2Xs5SQf9wI+Pp2MUg6CqAi2GFzPPnhggX
         PS4O47wo2B0vTg7zWlCFCONPa8NNTcv4w7nMEYcijcKDszRR9HWf5De/njbtf3ReQuaH
         Wf4y9bxGbRzXDazG0hp4Eq8FBTuWoku+tJTLRZKQFMmpNFb/SKrM51N2JwCtZ83MSq8j
         3u9tQ7/gTBlIiuwR1Dc8uEEHM1S35uFOeda8AGYOoXAxJ+CIUsaPLfmtqWGUVDRKOnQP
         fxmQ==
X-Forwarded-Encrypted: i=1; AFNElJ+FoY3Uj4y7A/NFU+ksaljTmfzpPP3xsoOn8ArapucDR5n2LbtOcXnWMThVQWDl+O0UlsyUMZUVv/cv@vger.kernel.org
X-Gm-Message-State: AOJu0YySATI7nI6DV9zIHTqOUra2i7oP/cmM1WpueXEbsvozqDv+Ieok
	+hgCYMTo5tK9+Ju2t4iBWXBqyTrMxii3t/UloGZUJsnIXTqDhKDzk5PLJnLed9Qq0UbLpJVpb+P
	jeto=
X-Gm-Gg: Acq92OEmzomU4ZqRlJLqPJ5BJEgo4ELMYHq1JXca3+piOGg/qrOZNF8YXMXKiCqM9yn
	8Xazm8TnA0aVmJMh+Fau6RTXBzr/h54qV0b/0hFHuLDTnff090bQm34/41b2SlNWZHRH03iS28+
	MLMU368fpYbjHlpM+YGZ6LO40M9JT0m6ROOV5RS3DL2HRZ9HWnaUjlLO+fFqWWX+ff0AxaoD3aa
	sBPhSp1O864r2lSxmkPcA2KVntOryJv83xxBbYnPOdnV9xnNRydTnxNS4QaLRStTPRkYohsHZIT
	xt+LHDTzgfTjZYbiBzA4nPl6G2zS8uHNzcdGcTkE79cSCnpSv6ESlhRqKyVzK88QyPzj3+tcUs/
	MJQ3GjoO+xngyOZVxpl580L0SbS/Yv+5A3AtE1gB2G3exo6hKcdbX9r22vCJIty89TezEC2gUZZ
	7Jk9AteT5K01/OxHtqGiwLZDI50QWvTQnKdRvfAQJC7Rten2A42gefLJIlF5M1tGNJlvekmIxC5
	Y5eA/TtAxM4C6E=
X-Received: by 2002:a05:620a:a196:10b0:912:1206:ddce with SMTP id af79cd13be357-9121206e079mr1618945885a.6.1779124870466;
        Mon, 18 May 2026 10:21:10 -0700 (PDT)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com. [209.85.222.169])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-910bc83b18dsm1547625985a.31.2026.05.18.10.21.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 10:21:10 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-90cbb2b50ccso204431585a.0
        for <devicetree@vger.kernel.org>; Mon, 18 May 2026 10:21:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+NjgTuIZuA6HlRXbo9JSRNsPcwhRM4U+P9+xHRRVQ8FN8DoW65QyXl7pdfTbbdLubwmyvG/gTJYgzD@vger.kernel.org
X-Received: by 2002:a0c:ea46:0:b0:8be:1620:a95a with SMTP id
 6a1803df08f44-8ca0f67c3d3mr193127066d6.27.1779124505831; Mon, 18 May 2026
 10:15:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1778822464.git.harrison.vanderbyl@gmail.com> <9e749a3a483e4a3c684eac3ee6a4b241c94a0362.1778822464.git.harrison.vanderbyl@gmail.com>
In-Reply-To: <9e749a3a483e4a3c684eac3ee6a4b241c94a0362.1778822464.git.harrison.vanderbyl@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 18 May 2026 10:14:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W-T3gnhsPY1TPaShBcj6MtXhPntAm=ecZ8pK9aKg=LFg@mail.gmail.com>
X-Gm-Features: AVHnY4IADEBlAYng-Vk8ynfnLq-alsFZFnj4hN5gU5NdDYItYKJ7p8Mb41QcTng
Message-ID: <CAD=FV=W-T3gnhsPY1TPaShBcj6MtXhPntAm=ecZ8pK9aKg=LFg@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] drm/panel-edp: Add panel for Surface Pro 12in
To: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, 
	Herbert Xu <herbert@gondor.apana.org.au>, davem@davemloft.net, 
	neil.armstrong@linaro.org, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	jikos@kernel.org, bentiss@kernel.org, luzmaximilian@gmail.com, 
	hansg@kernel.org, ilpo.jarvinen@linux.intel.com, 
	Jessica Zhang <jesszhan0024@gmail.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-crypto@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-input@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299578-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gondor.apana.org.au,davemloft.net,linaro.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dianders@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:email,chromium.org:dkim,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: D7428571987
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On Thu, May 14, 2026 at 10:43=E2=80=AFPM Harrison Vanderbyl
<harrison.vanderbyl@gmail.com> wrote:
>
> Add an entry for the BOE NE120DRM-N28 panel,
> used in the Microsoft Surface Pro 12-inch.
>
> The values chosen were tested to be working fine
> for wake from sleep and hibernation.
>
> Panel edid:
>
> 00 ff ff ff ff ff ff 00 09 e5 c9 0c a0 06 00 07
> 0a 22 01 04 a5 19 11 78 07 9f 15 a6 55 4c 9b 25
> 0e 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 62 53 94 a0 80 b8 2e 50 18 10
> 3a 00 fe a9 00 00 00 1a 13 7d 94 a0 80 b8 2e 50
> 18 10 3a 00 fe a9 00 00 00 1a 00 00 00 fd 00 18
> 5a 5b 88 20 01 0a 20 20 20 20 20 20 00 00 00 fc
> 00 4e 45 31 32 30 44 52 4d 2d 4e 32 38 0a 00 0a
>
> Signed-off-by: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Pushed to drm-misc-next:

[5/7] drm/panel-edp: Add panel for Surface Pro 12in
      commit: 02f48ffdf96c83ca3e6600fe5dec872b34b68775


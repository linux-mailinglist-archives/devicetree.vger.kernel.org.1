Return-Path: <devicetree+bounces-285209-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNSZFafQ1GlJxwcAu9opvQ
	(envelope-from <devicetree+bounces-285209-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 11:38:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5201C3AC2A4
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 11:38:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6721E3008D0D
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 09:38:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0C753A5426;
	Tue,  7 Apr 2026 09:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lx5pJPqL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC6C3A3E9A
	for <devicetree@vger.kernel.org>; Tue,  7 Apr 2026 09:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775554719; cv=none; b=uk345OqAYUJwtJozVIzC8aSgNsmpzaf8JgNHx+ts37Hm3Q/9Ke9zR4vQ9v9snrNUpePTPQRcnhlO3okj6BlwIRNgB9R0Ht5pY16BJK1Hkv4l18eUM0lGgAiAeejbjTZAoZ3J51mnqmDVS65eMxD/xVep45EnTWhZ9r1ZNG2YWng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775554719; c=relaxed/simple;
	bh=qbaq9SOSmcdlK6NYNjMAzasR5YXSYeew4YreKIiRi6s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oR4LTVxBCFputwjIijZyJr7dNgvHFW5C17qeEt42KogyyI4lIkK1H2ZlOxCaapKyxHmuCq7Rchai+cgP8+xAJGoxjc88Zmc71mF91LLvW2GegPmV83r8wY2RzAMlZQ4/HEyb9UADc/ZuFbxaDvD8qcRG4TzfB7US5Tbj8fnmkOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lx5pJPqL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1919C2BCAF
	for <devicetree@vger.kernel.org>; Tue,  7 Apr 2026 09:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775554719;
	bh=qbaq9SOSmcdlK6NYNjMAzasR5YXSYeew4YreKIiRi6s=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Lx5pJPqLMn+Ew0GMFQwy9BSmW9OWtPdYd4svuWD4HPDsXdDt41HC5squdUR+3TfUI
	 WQKK/fCTLSZW9L3IP+ELfFxDjGkMyTGh51Z8BaqCAnMYLVA4MmkltPMtJY2B6qhxEc
	 90xrs2AmtZKKEh1Nl/2fMO++eybPScjtJmG5OFVWDbctpt8MYWf3gG+njm6s1rlzse
	 Lik6kozC+x2dy8nzsSCJKb+xu0LK2rf1plQb4xGfcyVfilxxhlHuuy4ZIDucTeU+ku
	 xqHkFSoafuPKV5BmIQN+CUCz8AsYOK+V0pCSUypIFRatHBBxyAqG+t6QmufsAe2WL2
	 6imJCRKaUC3WQ==
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-79827d28fc4so39864387b3.1
        for <devicetree@vger.kernel.org>; Tue, 07 Apr 2026 02:38:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU50SkZHMQ7lPN+zc22j8KRO7DRYK5plbOQRAOt9qTMsMbuJGiFfBLh4Uhrn36gICfISo2Hlctz4oAP@vger.kernel.org
X-Gm-Message-State: AOJu0YwDh5e68eXFSp5Hr0UKNzpjvO7Ops0xXCFGXi68pgh6Q4fpI6iV
	W9jY31AI3hBc099TSpaXZ4gyUfqnbcvYs2nADktDjpiGZG7LODYIVW/M1F5Nh6FiiA2Jj1qq2MG
	E67XkKshC7OAO3Y6VUUtpPWIoLDmEGRE=
X-Received: by 2002:a05:690c:2610:b0:79d:62ed:31a1 with SMTP id
 00721157ae682-7a4d6447e08mr154470037b3.7.1775554718691; Tue, 07 Apr 2026
 02:38:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260401-waveshare-dsi-touch-v1-0-5e9119b5a014@oss.qualcomm.com>
 <20260401-waveshare-dsi-touch-v1-1-5e9119b5a014@oss.qualcomm.com> <20260402-sticky-wooden-silkworm-5bdff4@quoll>
In-Reply-To: <20260402-sticky-wooden-silkworm-5bdff4@quoll>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 7 Apr 2026 11:38:27 +0200
X-Gmail-Original-Message-ID: <CAD++jL=T9eOXujPSpTp_uNJ2rxN9P9Ybt28+H-YF_=3+_RXCkQ@mail.gmail.com>
X-Gm-Features: AQROBzALI39VVdEDsFgw7SSBvHbcnyWw7WWRVVsV9Lkg9uQSRntSmFhNhKeoDIc
Message-ID: <CAD++jL=T9eOXujPSpTp_uNJ2rxN9P9Ybt28+H-YF_=3+_RXCkQ@mail.gmail.com>
Subject: Re: [PATCH 01/19] dt-bindings: display/panel: himax,hx83102: describe
 Waveshare panel
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>, Ondrej Jirman <megi@xff.cz>, 
	Javier Martinez Canillas <javierm@redhat.com>, Jagan Teki <jagan@edgeble.ai>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285209-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,huaqin.corp-partner.google.com,xff.cz,redhat.com,edgeble.ai,lists.freedesktop.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 5201C3AC2A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 2, 2026 at 10:30=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
> On Wed, Apr 01, 2026 at 10:26:20AM +0300, Dmitry Baryshkov wrote:

> > +          # Waveshare 12.3-DSI-TOUCH-A panel
> > +          - waveshare,12.3-dsi-touch-a
>
> I don't think we use '.' in compatibles, so waveshare,12-3-dsi-touch-a

Qualcomm happen to use periods in similar cases for their
"qualcomm universal peripheral":
Documentation/devicetree/bindings/i2c/qcom,i2c-qup.yaml

I don't know if the policy changed since, but that's a big and widespread
platform and I never saw it challenged so I think it's kind of established
that we do.

Yours,
Linus Walleij


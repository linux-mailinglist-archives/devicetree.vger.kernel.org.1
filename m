Return-Path: <devicetree+bounces-263684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hPPpBOVoiGkVpQQAu9opvQ
	(envelope-from <devicetree+bounces-263684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 11:43:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 569A710867F
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 11:43:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4F50300A626
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 10:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 616FE3469F6;
	Sun,  8 Feb 2026 10:43:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FA320DE3
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 10:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770547426; cv=none; b=pDdbiqjR8+ET4/MhbVlnwC00YI7Yv24V5a3w9TAx8CnGPYe5AK4Ve3vKfCSxRW2Dnzn8OHoz75dWVC3hDbyiA411qaz+TbyNnsk0SKLj+ffIdOiMT0vSU0u3SV32wEd2nIMsy5Ej2UD4hEwx19WzJcu+t/JAomGGOMp6oCmE0i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770547426; c=relaxed/simple;
	bh=aZZzfxoP/OAR63tqh89B9La0YY1hyXKXoHsZ/sLOQ6o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eN15kiA1SIEDnChiMlP1JjajIZoWlGqQXGgA5odS4BROMtQPCW3rk9oTbh/wY6wZg1ooQk8na9VAToPivWvNBnzZk0vH2MvyZ1Vqxk5LEqmsKG+ssS9097pgUrGRGbn1NLGuf/xDr2qVNcXEBbfKkENcY5OxSSeTETKZDKSLhS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-4042905015cso1299800fac.0
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 02:43:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770547425; x=1771152225;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=haeg3n1GXO743Ijog6kKrEyqSkcsBt7foGPftVqFxYs=;
        b=LFHZTgJRzMKzh4WI/ZqvA9FB4Ffm0j/zz6Gap6EYxZjhwKNZFspqQ020KpKffogb/A
         lRKCOMzX+VOMemxfbezhfqaKOIyZp75DU1ovxzoq7uvHp6kEVQIFuTkF6/gP9QJQr/kB
         ckSguAK6PKBsk/8+DZWPkeLzL0kGn6L0Yzii3emBxauq0NiDNIG/AbZE1L7BS8Pl9KpQ
         Iwhk1sv8TGtkKjopkY4aJUIYGI+efBuVcTDT69e5yhcur3E9lTA1Xw05CozhkzVKqFXG
         IYAB899K7j/qvWbySnReLA8R/CgRm9CIK6JXWNDyeengp+kHdZnpXBZvR98IQkrjlJkL
         To8w==
X-Forwarded-Encrypted: i=1; AJvYcCWp40zEPBsFRvoo+KsKDKmJTVT/4MSpoYF9eLHb3iohll+6abTPvrdDsjLwPCa5jODfiAYFpsDa7ycY@vger.kernel.org
X-Gm-Message-State: AOJu0Ywk9HPcHrtpPk6Z0CWpYUbhEwOIT/tNEuW2ppGc/G44Q2mfbW0X
	U2s3nsIZYhqMZ34a9d8pGZu7QaI/FYEKVEoTnzFWdm2Ol8xitAgnzm9sStfzug==
X-Gm-Gg: AZuq6aLyGgQFTGJR90B+2vkBZmFASn9b/6+EwuP6FEIERBpkX3h1rPpJ8s5HBkwQ2M+
	mJ2gkygPbnpV+3t5U2AdaLVML7vJe0M06677Wx3vdO4b6oLIIInIONGg4Y1nWcBBEZ4be5wcx7x
	dr5L57TTTPR1bfn/DYPIPtsd+zVO+KFjo1JoCH2V7bJI3GvcVUVjhRmA0dsFJy2xTmyf2FICIQw
	ijBJu/KwPyyJ/3b9goWmWkslpUh8lXAaJQ4EY0PKCi4RjCeRF40ScQe70ta5bMqqVjidCr3mcZU
	sOwfDIIkcMYLD0Y6r2614v5oavBl53BxLC9BsP7op12k8FczTae+onbI1Jr5uTIKPH+xuHjbtU+
	ooIR/rKWQ++SciZEvuK2THQxD9Ax5TYNNAxQHK19Wo0ZfsHSOeoL1ircQqGm51wKt6etoVVEeNM
	qJPmWM58jc5Md7t+OyAYyzz3o85hcsYLdQaW2kcpiBxQ==
X-Received: by 2002:a05:6808:3c4f:b0:450:a9d0:b799 with SMTP id 5614622812f47-462fca80f8amr3765380b6e.17.1770540634632;
        Sun, 08 Feb 2026 00:50:34 -0800 (PST)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com. [209.85.210.47])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-40a992edd71sm5612756fac.5.2026.02.08.00.50.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Feb 2026 00:50:34 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7d18d0e6d71so1403364a34.1
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 00:50:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUFNpmjUe7Nb0ScXSlHhh18Izb0/7tPsAs87Z8aPhca4Tfo4h80a3G1qHCC/4OP+xEG10Temr58fDqL@vger.kernel.org
X-Received: by 2002:a05:690e:4192:b0:64a:d1bd:8c65 with SMTP id
 956f58d0204a3-64ad1bd9100mr3953663d50.95.1770540244041; Sun, 08 Feb 2026
 00:44:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260207-rubikpi-next-20260116-v3-0-23b9aa189a3a@thundersoft.com>
In-Reply-To: <20260207-rubikpi-next-20260116-v3-0-23b9aa189a3a@thundersoft.com>
From: Roger Shimizu <rosh@debian.org>
Date: Sun, 8 Feb 2026 00:43:52 -0800
X-Gmail-Original-Message-ID: <CAEQ9gE=9xV7i3afybmWvE+W9aLgYWSo1X=gC4cWRMkTJYBLo3A@mail.gmail.com>
X-Gm-Features: AZwV_QhVsL319mpFfmBVf16B05oxLi4h6s2zjEvcVQi8QHoXqqVnbGWDOb-EoSo
Message-ID: <CAEQ9gE=9xV7i3afybmWvE+W9aLgYWSo1X=gC4cWRMkTJYBLo3A@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Add DSI Port B input support for LT9611 HDMI bridge
To: Hongyang Zhao <hongyang.zhao@thundersoft.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Christopher Obbard <christopher.obbard@linaro.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,oss.qualcomm.com,lists.freedesktop.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-263684-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[debian.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.935];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,msgid.link:url]
X-Rspamd-Queue-Id: 569A710867F
X-Rspamd-Action: no action

On Fri, Feb 6, 2026 at 11:33=E2=80=AFPM Hongyang Zhao
<hongyang.zhao@thundersoft.com> wrote:
>
> The LT9611 HDMI bridge has two DSI input ports (Port A and Port B).
> The current driver only supports Port A or dual-port (A+B) mode, but
> some boards like RubikPi3 connect DSI to Port B only.
>
> This series adds support for using DSI Port B as the input source by
> utilizing the existing ports mechanism in devicetree:
>
> - port@0 corresponds to LT9611 DSI Port A input
> - port@1 corresponds to LT9611 DSI Port B input
>
> The driver detects which ports are populated and configures the hardware
> accordingly. When only port@1 is present, it configures port swap
> (register 0x8303 bit 6) and byte_clk source (register 0x8250 bit 3:2)
> for Port B operation.
>
> Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> ---
> Changes in v3:
> - v2 incorporates significant changes based on Neil's review of v1,
>   so remove Roger=E2=80=99s Reviewed-by tag from the v2 commit message.
> - Link to v2: https://patch.msgid.link/20260128-rubikpi-next-20260116-v2-=
0-ba51ce8d2bd2@thundersoft.com
>
> Changes in v2:
> - Use ports mechanism instead of boolean property
> - port@0 corresponds to LT9611 Port A, port@1 to Port B
> - Driver detects which port is populated and configures accordingly
> - Link to v1: https://lore.kernel.org/r/20260127-rubikpi-next-20260116-v1=
-0-0286c75150c5@thundersoft.com
>
> ---
> Hongyang Zhao (3):
>       dt-bindings: display: lt9611: Support single Port B input
>       drm/bridge: lt9611: Add support for single Port B input
>       arm64: dts: qcom: qcs6490-rubikpi3: Use lt9611 DSI Port B
>
>  .../bindings/display/bridge/lontium,lt9611.yaml    | 15 +++++--
>  .../boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dts |  8 ++--
>  drivers/gpu/drm/bridge/lontium-lt9611.c            | 46 +++++++++++++++-=
------
>  3 files changed, 47 insertions(+), 22 deletions(-)
> ---
> base-commit: 46fe65a2c28ecf5df1a7475aba1f08ccf4c0ac1b
> change-id: 20260127-rubikpi-next-20260116-99c1dbea50e4

Reviewed-by: Roger Shimizu <rosh@debian.org>
Tested-by: Roger Shimizu <rosh@debian.org>

-Roger


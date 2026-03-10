Return-Path: <devicetree+bounces-273570-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MNBDjcysGl2hAIAu9opvQ
	(envelope-from <devicetree+bounces-273570-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:01:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6C5252C98
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:01:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8B00032B0A02
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:57:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9586D38D6BD;
	Tue, 10 Mar 2026 13:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fxyFtemr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE1438A719
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151025; cv=pass; b=MqFARQYzEZZTcxKShWD0QO0zXuAn/sbSnEkK/j/YaabP0+jOco9Fqyitpm6d6EUDA55fRBXW73R0ex6rEdiZ8llmksrbKz+UQmKq6K7ExWp6237ADeTP5OrpwrjrBOywNkpk4OyOuNtAC8mpNtTEajr0BylNZvG7uysEwdn1LJQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151025; c=relaxed/simple;
	bh=fndeEqAuDVgc4a5e3LthkRwlxHKHwkDLwf9KDwUYmBg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bk86Gtz27cPl4P/EfA32mBKomz0oqFcnQ4ysq//+ty2rBJl0dRTLYhL1j6oPPzsnVg1vfRzOuLNMw14QxtDuE+O2EYZ2FbFpZXfOZsIFyJ3Hl2qb7m88luRNsXvwOZ4MX6VOU23utDytH2gehsCBi5G5k0wOjqcgUCtE3nzTv+I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fxyFtemr; arc=pass smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so40166295e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:57:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773151022; cv=none;
        d=google.com; s=arc-20240605;
        b=MwnYy+d+lTssZSf6V/nDUEe56VwcAfCLytr/yg9TBdh7thQ5tSbxVGulD3H4gUSRID
         Evr4OrWYY8JSnsIoPC/LFeSJ9F/CMpSdBtcmzzZh9ZtMVa9w60Yes4difJRvtR15BwUK
         djEY5EdFPhBr9sgP+hYvaUo7AWF5xnq6JxGFWaUH9qfgKBpuWhiKjMUmnEX1EswD/FpX
         kkPmnHcf1Dyns4TYBpwBkj1ohwYi+v5yBHUZXm+FZ6WFtPEXu9ha1ZpDd3KGXny5ECLm
         NhbFoecgND0hur2T5UtvjPrG/yJcpUd+iOXzQbgkOtCmAKT0dGc5BzImWxyUsgn+dvuO
         WNOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YVrT5DwBQRDw1GyHnusxzzwnsgUlqb6Y+XFCaUa9WkI=;
        fh=ba8QaSxnSIy21U0urDfpGHvjlAAviL1MK/QAavXQnhU=;
        b=HOq2Z+hMRY5aSoqLKxeKHEggpLFrdM2k6fOm4ygsOr7MFxI8yLMAvS5nZPrzfbFZ3x
         vjN1JupAL5YK8baMqBgJFu/mIGgN6P5/bdjFe3zOAYcKqplCj/WV2Q0TeRo3XuU9aJLZ
         nEZ22e088+T7cro8cTjCtCN2qcb1yhuDybLF8XQrwrspwNbTZe6Ul+qnHuLju7rBI9li
         6kUUxcVhSKpd24+CRjwiGjC4C2nu/6VHDAVDYC9QjzXqUTtGQsOVEJS6Qr3yq+61L8Mf
         F+nk6fU/jej/TSJ+4idoZu/Yp3Vh57raQ5QLWEIGZBycodEtg+0Nrlw/nuH8s3LYwAF7
         asLg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773151022; x=1773755822; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YVrT5DwBQRDw1GyHnusxzzwnsgUlqb6Y+XFCaUa9WkI=;
        b=fxyFtemrWnQPhdOJyY4t8Yzp5gCBlDi4zMt0chE73DEBTcLr590cp9bFXXrKPUudMs
         1eXkrtikhU1ZlmftIq3bhWQ+6rYiC0TxL9FGgRFozc7lmzXnKRLWUcVvUrkYbHDZ3fMK
         t84r6Jasv1uHPYRB2NRbJQvlWVG67bgMQAJZ0eP4Sqdi00l76aXo5P2G9jYPvzubAMgA
         D2IrRXsB5QEKKvCNIc/JlB76FbKCTj8iZ1ByYE7rmps4LzKpwTH8xKSp8D/xpYW5ULFG
         vrS24oLXHLofGCGymxnx8d3JUPZWGHjJSi9IArvpbmJqCFkXhnGa3pKtg9VirXr0+t+q
         r0YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151022; x=1773755822;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YVrT5DwBQRDw1GyHnusxzzwnsgUlqb6Y+XFCaUa9WkI=;
        b=P6CZkQ0MGELpfgSKD8TVdlk/8hZS2yvmrL4XVBUekP1q6n1v/5O1wSxJaGcwJe4rHQ
         uoPid0PYHvdd9UukTDu0ZCVD+abZZ7gQEMhLB82KYu2nyOZQnS9LSXisFM95hoHNhCob
         TtcCTDfeAcg/MEHOxzbdRFn2fCVkzik/7vH2FcVg4W8bOAJbTWJF+4iY6QSdJdtj9Olh
         up7yyiO2zbHx1EJPFD2kiVV1l6vUI7ym3eGd9ooPL684RwmIQGYSpaRfUVsn7zFuvmiP
         WddSCpPkYtvom5rEwaE2Bys3o584bz4KF/ewA2tmCa/t985/twiXOahFEhsXFAuheRx2
         Z5gQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0E7kS9wKpp8SSAC+rLxGM+M7SdeDZe45609ZfOVxtg4yI+994TQuLcRIOzt85Xe8PTvTQGexfvJX4@vger.kernel.org
X-Gm-Message-State: AOJu0YwvezlsJlBwhpLIfa/1Cpcf6BFwbVypXYxKsIfoK8IbzdCP4Z4X
	Q81Db7zlLjtdegC4dv+e2zH3w6lbMO12pTPlmAXdJnDc8hmKNJovRqH7pHlORZO5lrIaMsTVQmz
	mKu5DZ5/WuEZeZkiauIxzso5Sp/BUcaw=
X-Gm-Gg: ATEYQzy9kmcV76bz/YnMOnq7Ki8x/QVDYiPoATyvoGfBRha+eZIMENm8UkHdFUzX7Kh
	C1si9ljJCNxrDyxf9bgflKZaKDYMUcHKiFkzby+SZw3lTlslMwLcNV5/vWFkX7Uz9e4pMiIs1ZZ
	N16e671l0hdWLZ4Ai2ew8VU7NkSJiaWQrwE2MqN/P43+j1ngJh/Jf+nNPnFDXdQd6jeqLot1QR3
	bAFQZpdCbPMkON/7pBlukZKhMZvRk9+E37vKxW9hG/I2BTSLOHzFmw0N+rGcxJTGb9wy38L/MY0
	c0SVeVSW
X-Received: by 2002:a05:600c:4e4f:b0:485:3a27:a960 with SMTP id
 5b1f17b1804b1-4853f4214fcmr94113195e9.0.1773151022520; Tue, 10 Mar 2026
 06:57:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123073411.7736-1-clamor95@gmail.com>
In-Reply-To: <20260123073411.7736-1-clamor95@gmail.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 10 Mar 2026 15:56:51 +0200
X-Gm-Features: AaiRm513jZbYHZH-jbD9t4bjxPuNYrSJZmGRPKmFI4w_w6vZ2_WSNyOVg3gjMEY
Message-ID: <CAPVz0n37YAtC9=AhRL+VFnzAHDrqxzMLJigHsM4udhg5CZr8SA@mail.gmail.com>
Subject: Re: [PATCH v1 0/1] dt-bindings: display: bridge: ssd2825: inherit
 dsi-controller properties
To: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: EF6C5252C98
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
	TAGGED_FROM(0.00)[bounces-273570-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RSPAMD_EMAILBL_FAIL(0.00)[clamor95.gmail.com:query timed out];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

=D0=BF=D1=82, 23 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 09:34 Svya=
toslav Ryhel <clamor95@gmail.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> SSD2825 being RGB-DSI bridge should inherit dsi-controller properties sam=
e
> way other DSI controllers and DSI bridges do.
>
> Svyatoslav Ryhel (1):
>   dt-bindings: display: bridge: ssd2825: inherit dsi-controller
>     properties
>
>  .../devicetree/bindings/display/bridge/solomon,ssd2825.yaml    | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>

Hello Neil!

Would you mind to pick this patch if you are fine with it?

Best regards,
Svyatoslav R.

> --
> 2.51.0
>


Return-Path: <devicetree+bounces-285308-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gG93Edn+1GnOzQcAu9opvQ
	(envelope-from <devicetree+bounces-285308-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 14:55:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A664B3AEB70
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 14:55:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8AD130247D0
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 12:53:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8DD53B5854;
	Tue,  7 Apr 2026 12:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="E5L+tIP7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432DC3B52F5
	for <devicetree@vger.kernel.org>; Tue,  7 Apr 2026 12:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775566405; cv=none; b=ZeSp5+RcoXauixMCNRBZRtWyBtBfIpkxGqM3n0QPHfiUCuvc/JHaeuSNXY/PirtgCrgE+TrXy5YNjAVPH/CrKKkHgzWjrKowbJaM4kF77aXv/xqiCmH2doKDQZ5af+0UWd0uu/CK/NUI4OcLSdXrNedFK/LGdcdL8DgvIQ+HCVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775566405; c=relaxed/simple;
	bh=i8Ky7jN1vb219gvtLaR6stiV3r09kOF9IWgMsLPbH74=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H3qpn4UkE9RyL2WqE4mvjPfqzB0EHFSfukcyCh3Sw3ms52ososJ6OoWgMGyHOaLjMUZYnJzR9X04+vFz3/Q0fY/RWTwQmrdKTeDdXTL6YQbnONT+KXRqYG14mk5UPVrR7pLLBrlwQWxtFDcO+zm032wvQ0WIA83hnnrXuOYJ2kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=E5L+tIP7; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-488a9033b2cso27639915e9.2
        for <devicetree@vger.kernel.org>; Tue, 07 Apr 2026 05:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1775566403; x=1776171203; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i8Ky7jN1vb219gvtLaR6stiV3r09kOF9IWgMsLPbH74=;
        b=E5L+tIP7T+DMdfClqkLA1ICGnLO8AazFzSe4yy26akpw+Lnx/u71Ufschq6FXkXI71
         etuQpCan2krsnTaIXneaLntwL2k8OwOnIfZ3YgJSmzfhnW/vHNHtJgNhpOO/8eT05miu
         KAcJqOMQZhIJYZTF1hcGa6YCzBVrVIDaVpt5o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775566403; x=1776171203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i8Ky7jN1vb219gvtLaR6stiV3r09kOF9IWgMsLPbH74=;
        b=MYGvJ2NWVBXDZwAryXPuyMlpKyX+0z5VKsJhfpCNnzzAkCRAloVSFsgncl6S/00Lt8
         OgLJhgPdDb5bF/Vr7mMh9Hwl0PC7l6q+BCuXJb8k1XyXTRTqT8iXszF/I7Pj9sthQJSq
         TSC6KVUpt52aFCtNi8/iNmogQ9nLEAodXT0ADX0n0NW/vA7L8WgqDV4M1FO3uoGw9aj/
         Rf7owEAaQYFp1cSoAJHbNUpuoBg4IM9JduuY45mmW4Buxaemyb4G9THheR29cglsEvLx
         S69aKsAaOXzTtYsf2lFag0b2qT3AD1x6wwZn0GOg/9lABp4HGCHVbhRKTk4ownGEgm/A
         mCqw==
X-Forwarded-Encrypted: i=1; AJvYcCUVeIopTEVK9adz2lc/HhTfCEa+NhP93LdOQHzdMKqbP2os2ZSY/Ui6pLHBTLQX7DDH5qlGtOnKVJfx@vger.kernel.org
X-Gm-Message-State: AOJu0YyblnJT9HIBYQCefmWhyb+eW6JIcuol4Xx43AVSYV+gs56pk3JN
	j9e3wkMgLyhd7SsyHWOd0xloOkvhCS2yie4cuX0+yFk/18avYbLQCncWC9RKw23lW+g=
X-Gm-Gg: AeBDies+JSjm7fkrQnbsyisW+xtiNZ9GtubNhlUZE2orYQgfCeKeXcXsqWfCx0fvTf3
	v5+BUk18diEoQsHaauU14K6d3KzLinZi7mjm6Z4EJwSl7Mtv+uRuJUymDuGigyzpDyOOne1Bulz
	fG+s5cZv4K5TFidk6dvpYgfFloK0oH3sl53aRUrEj8RmZPEcGvZmAP2AaXfih5c3b0OCTBIz7p0
	gdDwNX6M0oZUq3/nN8oeQC7yn8A6hG5kBo68MT7ev8SVPcQOVOPQKEeGGll0BPmxhXEddlTvDtW
	CRklD6mfpchEzEfxzXOI86nTq1IPvgqTwJBEv8TjikUq1XMLYY8XqLJGNSm82ufCjrM1Hg+ttAh
	WQ0r6KHhcZptgK48on3mNFHDmf8WEJqf3g0ghnyecm8270cyvf7vze3KYGIKHxYctpj+hj8+gMr
	FDUnmcGSEywZxdkIaHbxQVpk956K+4/YIxeWucdNNriFfVXckQZRD4yc/v
X-Received: by 2002:a05:600c:4ed3:b0:477:a1a2:d829 with SMTP id 5b1f17b1804b1-4889970ee1fmr245541745e9.13.1775566402659;
        Tue, 07 Apr 2026 05:53:22 -0700 (PDT)
Received: from riccardo-work (public.toolboxoffice.it. [213.215.163.27])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488a221aa9fsm127567945e9.3.2026.04.07.05.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2026 05:53:22 -0700 (PDT)
From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
To: dmitry.baryshkov@oss.qualcomm.com
Cc: airlied@gmail.com,
	brgl@kernel.org,
	broonie@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	jagan@edgeble.ai,
	javierm@redhat.com,
	jesszhan0024@gmail.com,
	krzk+dt@kernel.org,
	lgirdwood@gmail.com,
	linusw@kernel.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	maarten.lankhorst@linux.intel.com,
	megi@xff.cz,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	simona@ffwll.ch,
	tzimmermann@suse.de,
	yangcong5@huaqin.corp-partner.google.com,
	Riccardo Mereu <r.mereu@arduino.cc>
Subject: Re: [PATCH 18/19] dt-bindings: gpio: describe Waveshare GPIO controller
Date: Tue,  7 Apr 2026 14:53:18 +0200
Message-ID: <20260407125318.282288-1-r.mereu.kernel@arduino.cc>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260401-waveshare-dsi-touch-v1-18-5e9119b5a014@oss.qualcomm.com>
References: <20260401-waveshare-dsi-touch-v1-18-5e9119b5a014@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[arduino.cc,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[arduino.cc:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,lists.freedesktop.org,edgeble.ai,redhat.com,linux.intel.com,xff.cz,linaro.org,ffwll.ch,suse.de,huaqin.corp-partner.google.com,arduino.cc];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-285308-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[r.mereu.kernel@arduino.cc,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[arduino.cc:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.996];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arduino.cc:dkim,arduino.cc:email,arduino.cc:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: A664B3AEB70
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 01 Apr 2026 10:26:37 +0300 Dmitry Baryshkov wrote:
>From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>The Waveshare DSI TOUCH family of panels has separate on-board GPIO
>controller, which controls power supplies to the panel and the touch
>screen and provides reset pins for both the panel and the touchscreen.
>Also it provides a simple PWM controller for panel backlight.
>
>Add bindings for these GPIO controllers. As overall integration might be
>not very obvious (and it differs significantly from the bindings used by
>the original drivers), provide complete example with the on-board
>regulators and the DSI panel.
>
>Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Tested-by: Riccardo Mereu <r.mereu@arduino.cc>


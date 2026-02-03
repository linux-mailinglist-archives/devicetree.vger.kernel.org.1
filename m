Return-Path: <devicetree+bounces-261984-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NQHFldJgWnNFQMAu9opvQ
	(envelope-from <devicetree+bounces-261984-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 02:03:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8906ED335B
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 02:03:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 473CF3004407
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 01:03:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C5701917F0;
	Tue,  3 Feb 2026 01:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A4TTZCmi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54461DFF0
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 01:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770080595; cv=none; b=I8hZctgjVjL+E0jCEWPhm/o4qvLywJCL8S69Nt0t+9ebU0wMPZ54yZqMpmlFcZIeZQZbQxzIWvGylr2qjxgDPlnIcVGYAuEQZun/GCU8NChNgaqo/QdkwzrhoskJK/5mjV/Aw8O69F/ZGs4sao5bXQNRtF0OOkEw0j3XiKPPbwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770080595; c=relaxed/simple;
	bh=OPkQDVKI9hLiMmF3foIYgDEoUTaWIv2KJG43+nRXSRI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gWWguSsb0mi+bbNm/VWmPvUT0Gmwyvtabn8I/jv7o4GfxmT1cKc473df81RfpEekOzQCNB7/c2Wa7g1MAXuYtjxWR4UVfqQSO2s9WCXi57TwWBny6th8FLF+MKefsv8kVCwqGH9R7n20/Wb5fxWq1dz3rTQXEq7f8uhkD3I6B6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A4TTZCmi; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-8947e17968eso58164986d6.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 17:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770080593; x=1770685393; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4HDdB99E4CdIl4ZvDTOk2E5hND83PuSdUEsGJyDFfRE=;
        b=A4TTZCmiMYOLtMg2gfDl4HwqPZfAuRoxjqNQGudqDTL+vwhLm+8Wyykehv0s63WO9Z
         M9u9pB+c1mUUj07D/LVDvcWRDBvUAP29whPqnaCbVQ4EHK+aDSkpBvMiy1cTGuXz/LkW
         Ou7L2m9AdUt79EvZ+LbCaHzIcYJgoFOI24OP2K3zsZBueIhXwmKEL1sVKuDZeJ/R5WvH
         eNstFJjGZViS5WoJpoO0rvy+ASXNXBOi08JZwHp5C4d1aaIMaTboRV3V3rbWVk9NPYdL
         auC2fI6ODcDiwYDXRRRppw0/vRUZ/IRm+SObSsYVtAujz53QHGQuwY4R6ZecojVCTrMX
         eZBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770080593; x=1770685393;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4HDdB99E4CdIl4ZvDTOk2E5hND83PuSdUEsGJyDFfRE=;
        b=GhBlRnEoPpYhWIiXjTNGt/LljbGJJJI47Hh2PwthQE9ja05JhKiLi0M3/Wbo3/ny2E
         HjRyDBfOGf93RIP9sRGT/q1aanAWXrTAQ9O8Y8aSMHPIkXB83Xso9XLMc1V4K73RzIWE
         kxuBThjo2BXvix7X8jDvtPNEoYxP2ReJyVNd4tDrkyTNMjfbdPmXVHFSYVwfxLK0Wy8c
         B9N9cT2yMEOl/fYDY5Wmm97XKMxXsZrYfOtMHf/mbq675je48yXPFeoQvrVW1lD7M+oB
         PZPOlFyeb+VC+OoZvgiFj6SK6sqT2DTI0KJP1+gx9gzDgC1OHbEuxV+La8NHCyqkfKes
         IgAA==
X-Forwarded-Encrypted: i=1; AJvYcCUVmqTgRPR8kv002lF1Qh6/YIPsIinP0c8BA+4HzVMxl//VkjLPSEaB0mE4ru481JsEghtrFlGbZGaY@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5jKx9KE/o+EL21/AfyPNBcsO1qGPkalqG2B5hW2H6zZb6KXgp
	Vb7N5fSt35q7RbR3Dzw4yvHayCCdJhUxF+bic96C4IIgBJpLkmyDR7g0
X-Gm-Gg: AZuq6aJLj8ONBz3Ix1ZcRRS375pFoO20Qa6G9dMHCNRiP6EOjG63kdDRFIaq5Uvrf5n
	3KFtWfgfeu28PvSfm8U3TQIHRUlfaUuNXKqt6IBXGd6u+2zOItQymAmrWPsG+9Fh8pUTHtRMJSz
	UOvGpPxYQp1zIlHrW3UgoSLhB09OP+Ia1udPsXWjCmVMgDj08mJZgzsNeZN6HJJTYtyl2i47rSl
	f3qhJwKbxgabOGgsmcn/UfGgHuVSIAcNn7hFMO7eNAAXt3KSg8IqlgLHHOsAFJqU+wh1p3fXbXJ
	/bOW5Sx1pWw/DPS4WoZ5yrjyXVerTLgm33R1KoOhfvCUC3N8FnXBA9mDaMEWLHPDsZ1Ca4CPYuk
	NSHCGK/j5kqs6A2Yl35OlezMLTGz1WZl9tGgCJUMLk3qTw5LThqoQfsz9I/Bw+jHHMFvAf1HDif
	XRTq286WIVJUG8KWsUm63MTD+rpZGj9s0xkt2OXqdxJoRcK747hOlCDjOKp2FloZQTCKvU0ZYL7
	Supl36lqDotBQ==
X-Received: by 2002:a05:6214:e49:b0:894:48f7:9919 with SMTP id 6a1803df08f44-894ea10065amr196085236d6.56.1770080592742;
        Mon, 02 Feb 2026 17:03:12 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894d376e0d8sm123753126d6.53.2026.02.02.17.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 17:03:12 -0800 (PST)
Date: Mon, 2 Feb 2026 20:03:47 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v2 1/4] dt-bindings: display/msm/gmu: Add SDM670
 compatible
Message-ID: <aYFJcxOXWpuuC41I@rdacayan>
References: <20240806214452.16406-7-mailingradian@gmail.com>
 <20240806214452.16406-8-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240806214452.16406-8-mailingradian@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261984-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,quicinc.com,linaro.org,poorly.run,somainline.org,kernel.org,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 8906ED335B
X-Rspamd-Action: no action

On Tue, Aug 06, 2024 at 05:44:55PM -0400, Richard Acayan wrote:
> The Snapdragon 670 has a GMU. Add its compatible.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Ping, the contents of this patch seem worth including in the bindings
but I haven't gotten a response to this patch.


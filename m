Return-Path: <devicetree+bounces-270132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ArGKmO+pWkbFgAAu9opvQ
	(envelope-from <devicetree+bounces-270132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:44:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B905B1DD1F8
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:44:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 399E03091923
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 16:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A389441B376;
	Mon,  2 Mar 2026 16:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="kNr4l72T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2219641C0C9
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 16:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772468947; cv=none; b=WZDccK3BBUIZq6ae6iXXq4o3qgfj+9jO6mYXwbDpNI1RMIeuxgdy7pmz/8DV1LxoDEIN6xZlgjzg9bd7fzBVknsdkuf+xZo5lUepTRzipBi4ZXwzBVSlqsjs2jq8UeK4qzAz+9wdyEqPASDAI/hXGs5kpCuUzfiYeexl1tvwCmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772468947; c=relaxed/simple;
	bh=6zebDHH0MXAjRuBUob2liKRQwdfSBVsejIj+VytuWVc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QtXySyMg3H3twMNUko5Ncej2rZfd1728gbPtWnZT5SQYkH7vXihIJApc4SffbNuyqSiHQ/S8aP7kASswRQvXw0Im3jvhHzO+A6xvFtrHzqJixQ7Z9ghLH/Ol+acXkey6+dq8Dm7xfcqwC25fJeN52be44xxKdcbTuIQ/Zz6cTVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=kNr4l72T; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4806cc07ce7so52858025e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 08:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772468944; x=1773073744; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZzuO+V2q2Kb9c67E3GUSaMIdKWjmbJeyWojduVxXxN8=;
        b=kNr4l72TlIzHpDTnHn2g5qcBw2isibg03krsRvb5hCGWMeGiPPr7JAEPqR+UGwuKqX
         5X+MXLkO62iX+qWmLYu7IDNTH/EcwaoEABIltKNNAYntkURcpel1f8paqb7Gpu1+hmN8
         X5X80c9yN8urvS0V2Ms2Ptkl6JfJIiJTtD41mR3z2dYw3eExlJ+Wtwm1IfI4Jw71ll3D
         poPU2z6LAfFTqWa6zYQcyBqVci/9qrO5sCKORYcoAgIPEgt5aCrqKXAeyZj8OVFzkPPZ
         hgJQe+C4ZVJTGequltszX7+MFU2+ZFUpM9gJRQ+RyBNFbMhuE5VwMyOAGR70SNZOFrHY
         1p1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772468944; x=1773073744;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZzuO+V2q2Kb9c67E3GUSaMIdKWjmbJeyWojduVxXxN8=;
        b=rx6rvrQ+DYjBIKq1kSiEbBIi++4/QWCh9hYLapilsGZImqKyOw+oPVkP2dQ/gbw/Np
         Uy5sIqhrZQxjHoXQIoRFNwZAtr5HvBWYRnBy5rfNG6rbqZKXfl1rkX9NHXPJJvGBphEy
         pCveydb9XV1p/lU6eGoWs5xMKyj1qxS+L4+CobHytNuRRrkjSoMcH40IK4FM2ti6xn2b
         DyHyqXK72g8JG/UQA1r39e8OjoKGatwt3Nl7KiVOto8ePLa+PGk0iZgId98s60uN/yDS
         07N1E8ozEanyvCNCk/sGtxRGChoxOWWTDo8Rcg+SYndwqHVco5Pchn0gr/GRs2wWcchN
         lF5A==
X-Forwarded-Encrypted: i=1; AJvYcCWoXDoZhakTVJ1bGYmdI7Yd+s4YDCsMaPJ9wnJkzrFOABP6gLnULeohUhsilkBBKBZvXrhAFlrchWiK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy+3rrjuaIvXIs/tGZSpUP+pWYWIiroB6RteHH+3zd4QnefJV8
	hdvh6IR5k6j73AcaVwuqXcQcYbjK4ggrHtj1jVLqI5Y85oTM9wb0/uPEMx/ZOb6d2yQ=
X-Gm-Gg: ATEYQzzVg1lByJZv3ajRfca0AheRF7TlSWO6u5fL0ajKtouP3MQuF3jW52LQx9donyj
	i74hLrGAbgP7cLkuXHijQQF6YZ/FQCM+l4cRaiSjEFJG2Fm7d7RKDoyoZ26lLKF0sNQjcNxdgaw
	weB7o58YFkP6L9GVLNvpaQwVhrWxZD+2i57OuENqgYAI94Oyj+eqabACiydQoAGoaf/ZVrMK5FG
	zMwLur6w0aWVyyz/4BcDxtYSs6DeHhtipFkbLbdX/VT5yh1katQ+dzHZCGK1aQX9OsfwIi59Hmj
	ArXCGPFcjILaaXapF8coX3tRrSHqEqwQXt6miXJ0vlw2xfyrn3lCtFEyMlti5bTejSFd8FKSKxh
	G7xAHMwiMqq1qcHPT8d6WDSMqWi1XCSZj5fFX7FvwPr8//yd4jLe+pzVAg1rgzDxSamadtVLCoD
	XeqyouQ4hmeM6VFDwrCCC2vByQwI7KqRqVOBfw
X-Received: by 2002:a05:600c:1d06:b0:476:4efc:8ed4 with SMTP id 5b1f17b1804b1-483c9bb1e14mr220375005e9.11.1772468944495;
        Mon, 02 Mar 2026 08:29:04 -0800 (PST)
Received: from [172.19.170.194] ([213.233.104.147])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c35910f1sm248099125e9.2.2026.03.02.08.29.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 08:29:03 -0800 (PST)
Message-ID: <fccb529c-28c9-4393-bd35-921384f4307a@tuxon.dev>
Date: Mon, 2 Mar 2026 18:29:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 07/15] PCI: rzg3s-host: Make SYSC register offsets
 SoC-specific
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260227153236.55988-1-john.madieu.xa@bp.renesas.com>
 <20260227153236.55988-8-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260227153236.55988-8-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: B905B1DD1F8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270132-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action



On 2/27/26 17:32, John Madieu wrote:
> In preparation for adding RZ/G3E support, move the RST_RSM_B register
> offset and mask into a SoC-specific data structure. Compared with RZ/G3S,
> the RZ/G3E SYSC controls different functionalities for the PCIe controller.
> 
> Make SYSC operations conditional on the presence of register offset
> information, allowing the driver to handle SoCs that don't use the
> RST_RSM_B signal.
> 
> Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

As I didn't give my Rb on v6, but only mentioned LGTM, I'll give it here, for 
the record:

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thank you,
Claudiu


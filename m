Return-Path: <devicetree+bounces-301613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHSuADMQEGq4TAYAu9opvQ
	(envelope-from <devicetree+bounces-301613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 10:13:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9975B0635
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 10:13:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6BDAE300D9E4
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 08:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42C943A6B92;
	Fri, 22 May 2026 08:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Aqy4m03t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CDA23A6B64
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 08:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779437615; cv=none; b=uXuxpuxhrlh+qLm/opl0297V2ytq8ECTAv3wrCuWKGmbLzIxWZfiunCCMA2D9iqhYB+AO5p34CVeKlup+9jpwz+k2A8+5eK5si2skzQZIIoNHEajd+fRTmnNoSqhT4MXFNH2ZwHW/2+Mw3Jo1QBvtoSph5ud/F10qi1uWCLaBEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779437615; c=relaxed/simple;
	bh=jomel0oPADXBx3RNpLJWhpNzh5YZTgxCIIU5WRUNi1c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=snl/F6FhDiTeYm8MgMyMAiSPDaZ8SDIDECmNNjFueePFd1ag+qs9k6FpiVqjaVb/ljiurhDy7Y1ALb+f6dNOQILjHFRJtKCY5HtYpbYXA+cFsU1wSBQNXp6cVr9NOuNWbYhiI6mt8R1yTnhERK08vT0EbTgcbdWModqQ/I3eiD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Aqy4m03t; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-49041fb8c23so4254715e9.0
        for <devicetree@vger.kernel.org>; Fri, 22 May 2026 01:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779437612; x=1780042412; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=krd+xtZLkefnPN4mdCrGXGZmFdEnpHSMkyhgQXQ9R4M=;
        b=Aqy4m03tDopC4Btb7imxDuXHDFDlm6ZG80vLjzAG5oj6bOwcf0sQ/dIeBeR2xxNRyi
         yr/w/VIxSMzozD3JJH+0JGizh2CcR9hy8SNXnmP0K6cfzX8HYIynDD2ipHohBwtLDSJS
         WRGD9vmwJ+F3uV8SeSQRAGyb8a24c/ItU+ZwugcbWYOsnXZlRspRN7NFYq+835ujCINx
         UpcEjUro+Ffh2Oy/9wrz0f5TitXqlBjdvpU64l/GN7u/4+A+ReKrMus2AvKzelr/sQhf
         JQIkZdukCsJYVlE/sZGihRqGxaGbtVls6d1lTSbbNDOrHPp1a6qQkHUdHr6UqrQHXJnm
         uFNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779437612; x=1780042412;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=krd+xtZLkefnPN4mdCrGXGZmFdEnpHSMkyhgQXQ9R4M=;
        b=LXe3i9Q9Iz5L+6QHX7Vjeqjs6s9ouZVIS6tcpa1NqJTh1NftrvSvD89TusBKjz7kJO
         hsMMELpnkY3hLs3VXdUbcFhrkjo4Wb8xrRzrn3WSYltNfiGMbJ52/VOCiTVFw7Qp9bqx
         bKWAMy3goLuoe7mpJnaBRXrbKjn+w8frA4/04JxM9OydPNrU1Dlmt90BfhWCgmaM1M3g
         JH1WcVPbaM1Zl9vZ7bcAuPwbjfjfhk3tYb9hyF9LMbDtj/HQRtOZcEGJiIJ8KhmBbYEY
         rF5za3CgzMgGJjeSy5KdGjZ1wHcvv72Q2H+izdbRMcKg4fb3l87EZSSt+BOFaKmD24yt
         AGNQ==
X-Forwarded-Encrypted: i=1; AFNElJ86A8+Bh3jwt6BaXkJ+K2N6R2k8vUC802GxNsaeGPmGU4XF8unAh/nq3sBKoNvSiCb8qxvDuIJ38fZf@vger.kernel.org
X-Gm-Message-State: AOJu0YzUhT3Ay17Cluqbau/n/6/RU1/dDCnzgJJxxXviJYnB4ELol5tD
	X6R4HdMjNQrxQx7Q1sNUWstiJazXCOMUg9RrX8SFfUCxS1dDYApt+vUk
X-Gm-Gg: Acq92OFPiXtsBoOErm/yFP1J8fzlv74KACEWnqrcU3zfQespc0TsoLjD98nr0VCAwoW
	nkCm7pTGA8+IE15s9/xYbtpC3qPtrshTBz6y/sLp4rZFz6TboY3zY376o4DHYm9t6sjx2lW+VBw
	l9sCovjRwvg2Za9DxJBpHGx9q/vNQU8lFt+GML9kvIporZ4g1yryAxSte6IQBxZ0byUhm9YMGrz
	c+8cYcJoywsfQxUcCjN7lMp1VdFK2zqAKbnpJfXSAOnPmh9iOnMler1WrjNSE8vBvkcSiPhGVTc
	2mqfPX8ud1hxAgDgmsOXhL2Sn9K5DnkXCMeLncav3AG7fX+3um5CiyJErkn75ixrk2yaXslZ0aU
	1YQSyVyEBsxHY4Tt1nDYXBWBNPBzCoS6IgSdwKDYch8vFy8IxQYc5MVbCfKH7X2VMpE8bwNnQno
	VnAs7sCXzKGeQbLyvKWW3a
X-Received: by 2002:a05:600c:c04b:20b0:490:3cec:52f6 with SMTP id 5b1f17b1804b1-490424ac920mr21743465e9.2.1779437611814;
        Fri, 22 May 2026 01:13:31 -0700 (PDT)
Received: from legfed1 ([2a00:79c0:61a:3200:1ebe:eb51:3a97:3b47])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49045620c05sm24502425e9.14.2026.05.22.01.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 01:13:31 -0700 (PDT)
Date: Fri, 22 May 2026 10:13:29 +0200
From: Dimitri Fedrau <dima.fedrau@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>,
	linux-phy@lists.infradead.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com,
	robh@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: add support for NXPs TJA1145
 CAN transceiver
Message-ID: <20260522081329.GA1983692@legfed1>
References: <20260513-tja1145-support-v5-1-38720a7ee63e@liebherr.com>
 <20260514051738.B2D32C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260514051738.B2D32C2BCB7@smtp.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-301613-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,vger.kernel.org,gmail.com,linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dimafedrau@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dimitri.fedrau.liebherr.com,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[liebherr.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,infradead.org:url,infradead.org:email]
X-Rspamd-Queue-Id: 6D9975B0635
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Am Thu, May 14, 2026 at 05:17:38AM +0000 schrieb sashiko-bot@kernel.org:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [Medium] The dt-binding omits support for the `max-bitrate` property.
> - [Medium] The dt-binding omits support for the `interrupts` property for wake-up routing.
> --
> 
> commit 853ad7c93ebe1c2a625ddddde401c4aaad496a8e
> Author: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> 
> dt-bindings: phy: add support for NXPs TJA1145 CAN transceiver
> 
> This commit adds documentation for the NXP TJA1145 CAN transceiver, residing
> in the generic PHY subsystem bindings. It describes the required SPI
> configurations and supply properties for the device.
> 
> > diff --git a/Documentation/devicetree/bindings/phy/nxp,tja1145.yaml b/Documentation/devicetree/bindings/phy/nxp,tja1145.yaml
> > new file mode 100644
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/nxp,tja1145.yaml
> 
> [ ... ]
> 
> > +  vbat-supply:
> > +    description:
> > +      Battery supply voltage
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - "#phy-cells"
> > +  - spi-cpha
> > +
> > +additionalProperties: false
> 
> Does this binding need to include the max-bitrate property?
>
No, the max bitrate is know for the device. See:
https://lore.kernel.org/linux-phy/0b4b8291-40cf-4faf-a79f-48c56677f9a2@kernel.org/

> This property is standard for CAN transceivers to describe board-level
> capability constraints where the layout cannot support the chip's theoretical
> maximum speed. Since additionalProperties is set to false, valid device trees
> specifying a maximum bitrate will fail validation.
> 
> Also, does this device tree binding need support for the interrupts property?
> 
Not at the moment, this can be added later on when there is an
implementation for this features.

> The TJA1145 supports partial networking and wake-up functionality, which can
> route a wake-up signal to an interrupt line on the host processor. With
> additionalProperties set to false, it is impossible to describe this hardware
> interrupt routing in the device tree.
> 
> -- 
> Sashiko AI review · https://sashiko.dev/#/patchset/20260513-tja1145-support-v5-0-38720a7ee63e@liebherr.com?part=1
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy


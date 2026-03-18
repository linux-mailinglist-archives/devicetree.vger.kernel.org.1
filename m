Return-Path: <devicetree+bounces-277460-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIJfMkcKu2nbeQIAu9opvQ
	(envelope-from <devicetree+bounces-277460-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 21:25:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D07A32C275B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 21:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CA35D3029445
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B36D36D4EA;
	Wed, 18 Mar 2026 20:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TXW3Sg8G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337CB36D4E3
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 20:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773865505; cv=none; b=WS4vfi05c6lmXUAD9lM9kysQWQCdoybbUvwHxrGO0yrY6T58COhj/Imu5gyqpQb+yWT8x/fUjU3OzxnAywE4ZUchoOCPzaQFFbBNoctfFl5to77MeuxSexvHhfxhCdDeBgmb2ogbaeYffzuPjDdWlc+07NiHjROZbxUF2oOHzrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773865505; c=relaxed/simple;
	bh=uSUd0T/ZiybLth957Mpc5O81gAE0RpkiqdCwRp84VZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rfcP6cJIpi4pamHViOlmfVUO1oanC4xy6Uf/yzsCOjglvnGNmQOpivzJ9xPWGQ7NXOjHUNWhhE87+JI/wQOy0u4LMNQsx17Zeb5oo9jFnxCMO0EC7vCKg6q36Iq7qHXB3MfvjFnlqveUsmXO9839OB6anr6lrqI2DoVgcOcAKxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TXW3Sg8G; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-82418b0178cso205550b3a.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773865503; x=1774470303; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/c7Z1vNAla1UqiQqigVemwFAmDse4jQT/gO6OkNgIBY=;
        b=TXW3Sg8G6lDsRzA9AMxpxwlwo+Mu6GzZX3fClXco5bKn+Za+pYwoXFMW66Yh2OiGwr
         BGFRe8boOBDHlME8SenqHAAcFpMh+ixja0adCj6Xz8+2N4yVfDOwUgWwtL6tTc8zkopo
         erZYLAlzLM3SXl8yr7wVeLI6YRSzwp7TYBHezowPOZqwE0eAXB2oY/Ty9FTZjL3acX/1
         Ut+S4KB06dEDPDpe4V++DqCLfyG2/nXFCuB3OANBPY0bksZZXjd4feRuR9RpoxsK0X//
         8nmV+YRVJhdoCtqHcAmCUKHyzNRXEmDvLzlIFcj/Y3idcBO6d5+6bPLkboQ4PusqwhWn
         Bs6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773865503; x=1774470303;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/c7Z1vNAla1UqiQqigVemwFAmDse4jQT/gO6OkNgIBY=;
        b=IF3o6SFeM643Cn884CsT+aeanDTgtpkpbNwGfLvVTKTmi+eWQHPFxCcUSJI7KPfYl7
         RJAQeVVDUaoQc/lM0+xSCp/xB9Rll+gfRNaFTFnTPvtPRCVtldFTyPKtJKo1EKReILJ5
         egLhTXdHuFKhv+UitT6GYcph7zNvhRcNjl7cNDMIikEg5cZ5ffsx/zHtN5IcgAhCq9jN
         8csg8rriYmVj8UgV0sh6H4uYUr1fM3Q69B/R+AUESrNPgeb0113qHRTN6RLsUvLaFURh
         W2i/zb/J45HDCRi+YODmpycPrwvKcnLHC0xGxiIahm7AHABcdrRm58ZLvfI/HaPNStzi
         qD8A==
X-Forwarded-Encrypted: i=1; AJvYcCUx8g4OH/T33zRRXhJi6drvqw2rtdlKOpOZZp7BkkuUWBOmzF01+8pHjMdV552UMwzRGAgLoeJzFj6t@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3mrlvPTaCuTeLbxQaqCmM/E4+EitbLT/isYiOTMsS3oQUfkv/
	0GRn116yxWf3/mRBlbR6BSLtQFS+KABoIR8H3yC54wwA6IuRcuTRjSfp
X-Gm-Gg: ATEYQzwmIyAEjxCnvuI4aikQLEiCUXb22heBzwHMeRDcXvefM2coZ9vrk+uHYWSI4/j
	zFP2TpDNlqq+Nli9psXjtbamx5xOnp6vr+LRzESr5lPb3eiI3uuwCqWLEVE+/99Dfv7upGJEgNK
	AnjKV9ucy2ws8DM5DdtD76rxbTPfFswF+kRAgN7V/L3tbz7cc5ZRKiadsnECQgoQaQqcriY6ZJc
	OZuwTR7DsCxsTDkxfAOZV7mnAn8yQcOxUIxuDzOinIgjow++R5PZPWU2vpqwXmg6jIN27WsLtxQ
	JlRLED8qjYaHCPMLHBu9kzTS8xckbAfe0kCsXYB4ctJKHwjmmT5Am3nCq7fiFEyOkBCSwNyDr7R
	4bPZ1KCYjeaf/nWzfp2akKCqefcQKTT58Z0vz/fC7IWfuWR+goOHXuzank3AAHke/qRSHjn6GAL
	ZGoHl3x0m9VSneG2mY1O+BHRBSVOuF9OlCaTZMTN+s8Ep3
X-Received: by 2002:a05:6a20:7f90:b0:38e:9220:ebbe with SMTP id adf61e73a8af0-39b99d6f450mr4339851637.23.1773865503486;
        Wed, 18 Mar 2026 13:25:03 -0700 (PDT)
Received: from google.com ([118.150.148.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c741e5691b8sm3286559a12.25.2026.03.18.13.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 13:25:03 -0700 (PDT)
Date: Thu, 19 Mar 2026 04:24:56 +0800
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andrew@codeconstruct.com.au, avifishman70@gmail.com,
	tmaimon77@gmail.com, tali.perry1@gmail.com, srini@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	venture@google.com, yuenn@google.com, benjaminfair@google.com,
	jserv@ccns.ncku.edu.tw, eleanor15x@gmail.com,
	linux-arm-kernel@lists.infradead.org, openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: nvmem: add nuvoton,npcm750-otp
Message-ID: <absKGJbrWX5xtPX3@google.com>
References: <20260318193538.246853-1-visitorckw@gmail.com>
 <20260318193538.246853-2-visitorckw@gmail.com>
 <228943f2-8f1a-4da7-8663-7f17f5e2f21c@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <228943f2-8f1a-4da7-8663-7f17f5e2f21c@kernel.org>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277460-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[codeconstruct.com.au,gmail.com,kernel.org,google.com,ccns.ncku.edu.tw,lists.infradead.org,lists.ozlabs.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[visitorckw@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.835];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D07A32C275B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Wed, Mar 18, 2026 at 09:17:19PM +0100, Krzysztof Kozlowski wrote:
> On 18/03/2026 20:35, Kuan-Wei Chiu wrote:
> > +maintainers:
> > +  - Kuan-Wei Chiu <visitorckw@gmail.com>
> > +
> > +allOf:
> > +  - $ref: nvmem.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - nuvoton,npcm750-key-storage
> > +      - nuvoton,npcm750-fuse-array
> 
> Your driver says these are exactly the same devices, so you got only one
> compatible. Otherwise explain in commit msg why these are different
> (current message speaks about purpose, but is not what is needed here).
> 
Thanks for the prompt review.

I will drop the content-specific compatible strings and unify them into
a single "nuvoton,npcm750-otp" in the upcoming v2 series.

Regards,
Kuan-Wei


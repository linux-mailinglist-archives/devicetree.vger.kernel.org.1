Return-Path: <devicetree+bounces-257453-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JR7CYCzb2nHMAAAu9opvQ
	(envelope-from <devicetree+bounces-257453-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 17:55:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A333B480D7
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 17:55:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A7CD2989EE5
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 14:55:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F5144BCA5;
	Tue, 20 Jan 2026 14:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="addTdSaV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0692244BC9F
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768920220; cv=none; b=pQ0m0Cl3JbVRzmVKxVu4klN8fqS2j4bB8O0b6EfIbaTVTt9fceI8p267taYT+NCSwk5jJorl6c1UCNaUd8i6iLX3plhpY2cUeAjacqNY0FVDWzvGlTHBkirQqbFxm5cFm8nutb0Ec5VaW7H68lYu8l5WfxpqagMLsTjciYw1O/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768920220; c=relaxed/simple;
	bh=JKm8v5gQghaPXU3hhx0iZpbdqTnozchlbnx97d9bBLg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UEMcNo7v0M407SXI3dKp9/OpvoHdHjQ2i1YA45QdGs4pX+PJuhCivcgoTPpyomBlkzG+TV2+tBn/znGyHER68TtONRGh+fbZSIuncGcKWGLseL+Y74MUhnIoPYmWPtgTcfOiExJtcp8kh4C5EhUwCS90lneeit5Z1lQjYcamrWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=addTdSaV; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47ff94b46afso37383745e9.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768920217; x=1769525017; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0BBO7s0q0gk9yVOm/GXGA0GPwp+Pc4tuwtNZFcNdboA=;
        b=addTdSaVbaGkSPCDxNtizSkIbXqaHlXJZb5VGK8a06cwjsgPyR1bWPNu7Eg5Fr3bQN
         ocnPq3VFujStqGbQqLiIvXM+Gzyxb3i2rzlfmnU7lBKCaW4mzFZfA6M+YpMTu/63gg+j
         GAzDNei/k7zonWAj67dsILyxB/hvsziWZVYtq+A3MDMN/LN4x2AAleJwAU59oah3Q5xG
         0yB6Zi+DDWD/rlmriGEefeP1L+WFejzCkZMG8ZrOs6FGzigspVUzQ1cuYB+u2D7uKlOg
         AChCCaWwSmbPXkXMugpdqhP4Pjwfvj0ES+Bkjfxv/iGskbzOP1hwfvgrIQo2+HZcLnKX
         1AeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768920217; x=1769525017;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0BBO7s0q0gk9yVOm/GXGA0GPwp+Pc4tuwtNZFcNdboA=;
        b=KiTPNVMtAr1qGbirDkb9JP0vrB4eFMiLw7XlRrXGIKraanlAjzTyM0HtxiX35kWcmW
         QPIj1PyycGguYID1h8U5/FyB8PrEQE8wwJaSxWXWsPgPxWdvlFgXcsN0yXuHi6ee7kOp
         4FtZGBV13aiZP2ZXkURjVDW3gHkV8bwo/26ACFdnOwkJk4cbrInbuXFcjJZDAIG5j7/h
         kzoqLh0bcrIuhs3WnVhQV2jKDYdhKq7O/GzBGi3rslbj0OtUyhQEsylxLL7DXQx1Coog
         xuTSYhSCccHWRRNacyfVtDMivKo3CQL2g67GPGcAvAG3mkP77/SpbpmnHfEM9CouPgQs
         xuRA==
X-Forwarded-Encrypted: i=1; AJvYcCUertFz4Wv9kW1gqLGHzxEW7Z40SJck/TV1VsP8wI1XWEYsAFszqdS5G6D4PKJ5OSFOC0CAQG8kS4ei@vger.kernel.org
X-Gm-Message-State: AOJu0YyhxqiJzdCqGx9qyAneT1rF5OBdc/I6qS1sqqHcV86LgrsGvlKq
	hCn9YbhaxPHrJTvAmihr5qo3wfBx5A6gVnPFSCLEXeNHuu3MiD6YbHVx
X-Gm-Gg: AY/fxX60a2G1OhcVLNhEaiQA/6/tHhTJKqSxKhZ+Ewc3p+U8beVQnOztiIOtzJ36tS/
	nEOJgQTTwJxxZqF8x5Wz0Jy4+zJK2Hk3S+/pQWTXVonTuE5cuuBgcD8eY+3/CChfoYuJBjNcad6
	xJf9NPuxyRFM99meKRfl7k3pwf/cbQYyI5GNY4T9Q7Hrj0X/5PfSd5Q2XQeP1uDaQX2hz++WbJ6
	xzccVWfJllYu0NtrHtCfYGV9sEMRt6KAP3MFM+DXI6t1ZHUHNx9x44LDcv0RVl3yZWtymtThEsJ
	q7AIgR6vhlw+kc8xF4wq58R34eOSCDvY6BPM+EmRZi1L3F2HgjfvDYt7uzjVoIZOOkf0yQe4J21
	CV6VvVuvnbf3S/AHabaXXpPgwO9kpo2EqdTe4ciHq7okQMXeiPFL4tw5oNlL0vl26fdkY5koL4a
	KvZ/Oaz8EwvsEcmTVK9Vz/zYUNv/ET1WWWjPyPfbhJAZ7NS+3CGdyw9vo=
X-Received: by 2002:a05:600c:60f:b0:47d:52ef:c572 with SMTP id 5b1f17b1804b1-47f4289abb5mr153488945e9.1.1768920216949;
        Tue, 20 Jan 2026 06:43:36 -0800 (PST)
Received: from anton.local (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4802dc90068sm192581885e9.7.2026.01.20.06.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 06:43:36 -0800 (PST)
Date: Tue, 20 Jan 2026 18:43:31 +0400
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 3/6] dt-bindings: codecs: sophgo,cv1800b: codecs: add
 ADC/DAC
Message-ID: <aW-TRX8Bv60Aq-W-@anton.local>
Mail-Followup-To: Krzysztof Kozlowski <krzk@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20260119-cv1800b-i2s-driver-v3-0-04006f4111d7@gmail.com>
 <20260119-cv1800b-i2s-driver-v3-3-04006f4111d7@gmail.com>
 <20260120-rapid-turaco-of-discourse-fe3fe6@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120-rapid-turaco-of-discourse-fe3fe6@quoll>
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,outlook.com,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-257453-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,anton.local:mid]
X-Rspamd-Queue-Id: A333B480D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 11:12:23AM +0400, Krzysztof Kozlowski wrote:
> On Mon, Jan 19, 2026 at 08:30:44PM +0400, Anton D. Stavinskii wrote:
> > Document the internal ADC and DAC audio codecs integrated
> > in the Sophgo CV1800B SoC.
> > 
> > Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
> > ---
> >  .../bindings/sound/sophgo,cv1800b-sound-adc.yaml   | 43 ++++++++++++++++++++++
> >  .../bindings/sound/sophgo,cv1800b-sound-dac.yaml   | 43 ++++++++++++++++++++++
> 
> This is not what I asked. I did not say squash patches. I asked to
> squash into the binding. COMBINE the bindings. We do not need multiple
> documents.

Oh that makes much more sense. Thanks. Will do. You mean single file for
both codecs. Combined description and "compatible" like this?
properties:
  compatible:
    enum:
      - sophgo,cv1800b-sound-adc
      - sophgo,cv1800b-sound-dac
everything else seems to be identical. 

Can I keep single commit for this?

> 
> Best regards,
> Krzysztof
> 


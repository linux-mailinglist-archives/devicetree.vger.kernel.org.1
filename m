Return-Path: <devicetree+bounces-7561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 277707C4AC6
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 08:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61BC91C20DA4
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 06:39:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A19D615481;
	Wed, 11 Oct 2023 06:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="R769nHu+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062A214275
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 06:39:15 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B378598
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 23:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697006354;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2AQICOphbR/iChM23xva2V4U+VZ5WTSVXUiRAK42TaU=;
	b=R769nHu+xwjasbKDXh+VSUbi2rzJfe1KTmbf+k/lfPu8FFqqPGAcfseHQuX723K0Hs8TJp
	V8glWQIUxabXHXE+GB8gNd7IBpo8exczSPi/YUTsHmN0sKGvVAkec3l4mrYWu/L5YLDbBN
	M12HhjAfKYISZgHGctPxyJcVX4jWvrg=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-258-vfIF80dNMDWxBHxmdCyZVw-1; Wed, 11 Oct 2023 02:39:02 -0400
X-MC-Unique: vfIF80dNMDWxBHxmdCyZVw-1
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-326f05ed8f9so4680170f8f.0
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 23:39:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697006341; x=1697611141;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2AQICOphbR/iChM23xva2V4U+VZ5WTSVXUiRAK42TaU=;
        b=B1qAFaYEpqySz5yIG+M7o9FWpiOL0VksfhxtMV/aVhuyKRRQMh0DtNl6yS0RCaaiJv
         OCahS7evjzZQTsRCffPAiLlmwX0afCq3ziCnI61KAW0lGgqto08NhZQZQJtVNALycNvB
         OuooCBWbAwXQWpfOhlWIsOrwHeYehgzU33ps4mDn/BrvpqUmaDNNWHlI5r2FyffasRlV
         Dl71+olu9gyar8YxaLofMu3qVRZ0WuqsvCV4a7Qi28Z3zdtnJJz930/vCEVmTMtF/bpC
         4xVjrsuwuFm9f+rHaHQrL0wBboMgXnvb7Fzb3aduCpwAefgthrIMtgAIRqwPRiGOE02Q
         98Ow==
X-Gm-Message-State: AOJu0Yxp2vTSyZ+Hiahnyj2nuJe+8DH0nuqAUs/dpd+Y6meHZdtDELdi
	jCc80Saz4+47fetH6RDyHYfuvoMIkqQiYEQL18Ffj0yMHlw7m43pT5e8g0ZR/mIloqSS+B/vEQB
	uJdSZR9JXZsRrJ1UKx1lsrg==
X-Received: by 2002:adf:fc09:0:b0:31c:7ada:5e05 with SMTP id i9-20020adffc09000000b0031c7ada5e05mr15801533wrr.51.1697006341649;
        Tue, 10 Oct 2023 23:39:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEP8vt8qsdEsiFmwa873YPkNT/MZf/VyaBdGjVbnmKBvLnf6NE1iPBeouliki4SV7iFb1ottA==
X-Received: by 2002:adf:fc09:0:b0:31c:7ada:5e05 with SMTP id i9-20020adffc09000000b0031c7ada5e05mr15801526wrr.51.1697006341282;
        Tue, 10 Oct 2023 23:39:01 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n9-20020adff089000000b0031ad2f9269dsm14433335wro.40.2023.10.10.23.39.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 23:39:01 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Thomas
 Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Maxime
 Ripard <mripard@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 8/8] dt-bindings: display: Add SSD132x OLED controllers
In-Reply-To: <20231010165838.GA1039918-robh@kernel.org>
References: <20231009183522.543918-1-javierm@redhat.com>
 <20231009183522.543918-9-javierm@redhat.com>
 <20231010165838.GA1039918-robh@kernel.org>
Date: Wed, 11 Oct 2023 08:39:00 +0200
Message-ID: <87v8bdslx7.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Rob Herring <robh@kernel.org> writes:

Hello Rob,

Thanks a lot for your feedback.

> On Mon, Oct 09, 2023 at 08:34:22PM +0200, Javier Martinez Canillas wrote:
>> Add a Device Tree binding schema for the OLED panels based on the Solomon
>> SSD132x family of controllers.
>
> Looks like the same binding as solomon,ssd1307fb.yaml. Why a different 
> binding? Why does that binding need a slew of custom properties and here 
> you don't?
>

It's a sub-set of it. Because only the minimum required properties are
defined. But also, is a clean slate schema because the old ssd1307fb fbdev
driver only supports the Solomon SSD130x family, so there is no need to
follow the existing solomon,ssd1307fb.yaml nor the need for backward compat.

[...]

>> +  solomon,height:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description:
>> +      Height in pixel of the screen driven by the controller.
>> +      The default value is controller-dependent.
>> +
>> +  solomon,width:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description:
>> +      Width in pixel of the screen driven by the controller.
>> +      The default value is controller-dependent.
>
> Don't define the same properties twice. Either share the binding or 
> split out the common properties into their own schema file.
>

Agreed. I'll do that in v2.

> Rob
>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


